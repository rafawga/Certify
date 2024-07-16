const axios = require("axios").default;
const qs = require("qs");

async function _criarSessaoCheckoutCall(context, ffVariables) {
  var successUrl = ffVariables["successUrl"];
  var priceAPIID = ffVariables["priceAPIID"];
  var customerEmail = ffVariables["customerEmail"];
  var mode = ffVariables["mode"];

  var url = `https://api.stripe.com/v1/checkout/sessions`;
  var headers = {
    Authorization: `Bearer sk_test_51PanpqBHJiDMTi8zyDlwWh6CdQYx9b08SsCFZZKOhwDoHPrbwBJk3yt72e0rDiUf81w55eZ5xE19ntUTVykFf9L8009zGUlA0D`,
  };
  var params = {
    success_url: successUrl,
    "line_items[0][price]": priceAPIID,
    "line_items[0][quantity]": 1,
    mode: mode,
    customer_email: customerEmail,
  };
  var ffApiRequestBody = undefined;

  return makeApiRequest({
    method: "post",
    url,
    headers,
    body: createBody({
      headers,
      params,
      body: ffApiRequestBody,
      bodyType: "X_WWW_FORM_URL_ENCODED",
    }),
    returnBody: true,
    isStreamingApi: false,
  });
}

/// Helper functions to route to the appropriate API Call.

async function makeApiCall(context, data) {
  var callName = data["callName"] || "";
  var variables = data["variables"] || {};

  const callMap = {
    CriarSessaoCheckoutCall: _criarSessaoCheckoutCall,
  };

  if (!(callName in callMap)) {
    return {
      statusCode: 400,
      error: `API Call "${callName}" not defined as private API.`,
    };
  }

  var apiCall = callMap[callName];
  var response = await apiCall(context, variables);
  return response;
}

async function makeApiRequest({
  method,
  url,
  headers,
  params,
  body,
  returnBody,
  isStreamingApi,
}) {
  return axios
    .request({
      method: method,
      url: url,
      headers: headers,
      params: params,
      responseType: isStreamingApi ? "stream" : "json",
      ...(body && { data: body }),
    })
    .then((response) => {
      return {
        statusCode: response.status,
        headers: response.headers,
        ...(returnBody && { body: response.data }),
        isStreamingApi: isStreamingApi,
      };
    })
    .catch(function (error) {
      return {
        statusCode: error.response.status,
        headers: error.response.headers,
        ...(returnBody && { body: error.response.data }),
        error: error.message,
      };
    });
}

const _unauthenticatedResponse = {
  statusCode: 401,
  headers: {},
  error: "API call requires authentication",
};

function createBody({ headers, params, body, bodyType }) {
  switch (bodyType) {
    case "JSON":
      headers["Content-Type"] = "application/json";
      return body;
    case "TEXT":
      headers["Content-Type"] = "text/plain";
      return body;
    case "X_WWW_FORM_URL_ENCODED":
      headers["Content-Type"] = "application/x-www-form-urlencoded";
      return qs.stringify(params);
  }
}

module.exports = { makeApiCall };
