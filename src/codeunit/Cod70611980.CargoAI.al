codeunit 70611980 CargoAI
{
    trigger OnRun()
    begin

    end;


    procedure SearchSchedulesAndRates()
    var
        RequestJson: JsonObject;
        ShpmtJson: JsonObject;
        DimentionJson: JsonObject;
        DimentionArrayJson: JsonArray;
        UserJson: JsonObject;
        FiltersJson: JsonObject;
        ResponseJson: JsonObject;
    begin
        RequestJson.Add('origin', 'JFK');
        RequestJson.Add('destination', 'CDG');
        RequestJson.Add('departureDate', '2024-10-01');
        RequestJson.Add('offset', 5);
        //RequestJson.Add('', '');

        ShpmtJson.Add('product', 'GCR');
        ShpmtJson.Add('pieces', 1);
        ShpmtJson.Add('weight', 100);
        ShpmtJson.Add('chargeableWeight', 167);
        ShpmtJson.Add('volume', 1);

        DimentionJson.Add('pieces', 1);
        DimentionJson.Add('length', 100);
        DimentionJson.Add('width', 100);
        DimentionJson.Add('height', 100);
        DimentionJson.Add('weight', 100);
        DimentionJson.Add('stackable', true);
        DimentionJson.Add('tiltable', false);
        DimentionJson.Add('toploadable', true);
        DimentionJson.Add('weightType', 'PER_ITEM');
        DimentionJson.Add('loadType', 'DIMENSIONS');
        DimentionArrayJson.Add(DimentionJson);
        ShpmtJson.Add('dimensions', DimentionArrayJson);
        RequestJson.Add('shipment', ShpmtJson);

        UserJson.Add('country', 'US');
        UserJson.Add('cass', '0000');
        UserJson.Add('iata', '0000000');
        RequestJson.Add('user', UserJson);

        FiltersJson.Add('withRateOnly', true);
        FiltersJson.Add('liveRequests', true);
        RequestJson.Add('filters', FiltersJson);

        RequestJson.Add('timeout', 25);

        ResponseJson := SendRequest_SearchSchedulesAndRates(RequestJson);
    end;

    local procedure SendRequest_SearchSchedulesAndRates(RequestParameters: JsonObject) ResponseJson: JsonObject
    var
        UrlHelper: Codeunit "Type Helper";
        ResultTxt: Text;
        Result: JsonObject;
        datatoken, embeddingtoken, token, token1 : JsonToken;
        dataarray, Flights : JsonArray;
        CurrFlight: JsonObject;
        Content: HttpContent;
        ContentHeaders: HttpHeaders;
        RequestParametersTxt: Text;
        //RequestParameters: JsonObject;
        Client: HttpClient;
        Request: HttpRequestMessage;
        Response: HttpResponseMessage;
        Headers: HttpHeaders;

        Textvar: Text;
    begin
        //RequestParameters.Add('input', RequestText);
        RequestParameters.WriteTo(RequestParametersTxt);
        Content.WriteFrom(RequestParametersTxt);
        Content.GetHeaders(ContentHeaders);

        ContentHeaders.Clear();
        ContentHeaders.Add('Content-Type', 'application/json');
        //        ContentHeaders.Add('X-RapidAPI-Key', '4e0b1f4256msh495190b4a5139bbp129a8fjsncd0873e84ae1');
        //        ContentHeaders.Add('X-RapidAPI-Host', 'air-cargo-schedule-and-rate.p.rapidapi.com');

        Request.Content := content;
        Request.SetRequestUri('https://air-cargo-schedule-and-rate.p.rapidapi.com/search');
        Request.Method := 'POST';
        Request.GetHeaders(Headers);
        Headers.Add('X-RapidAPI-Key', '4e0b1f4256msh495190b4a5139bbp129a8fjsncd0873e84ae1');
        Headers.Add('X-RapidAPI-Host', 'air-cargo-schedule-and-rate.p.rapidapi.com');
        //Client.DefaultRequestHeaders().Add('X-RapidAPI-Key', '4e0b1f4256msh495190b4a5139bbp129a8fjsncd0873e84ae1');
        //Client.DefaultRequestHeaders().Add('X-RapidAPI-Host', 'air-cargo-schedule-and-rate.p.rapidapi.com');


        if Client.Send(Request, Response) then begin
            if Response.IsBlockedByEnvironment() then begin
                ResponseJson.Add('status', 'blocked');
                ResponseJson.Add('message', Response.ReasonPhrase);
            end else
                if Response.IsSuccessStatusCode() then begin
                    Response.Content().ReadAs(ResultTxt);
                    Result.ReadFrom(ResultTxt);
                    ResponseJson.Add('status', 'ok');

                    if Result.Get('id', token) then
                        Textvar := token.AsValue().AsText();

                    if Result.get('flights', token) then
                        if token.IsArray() then begin
                            Flights := token.AsArray();
                            foreach token in Flights do begin
                                if token.IsObject() then
                                    CurrFlight := token.AsObject();
                                if CurrFlight.get('flightUID', token1) then
                                ;
                            end;
                        end;


                    ResponseJson.Add('message', Response.ReasonPhrase);
                end else begin
                    ResponseJson.Add('status', 'error');
                    ResponseJson.Add('statuscode', Response.HttpStatusCode);
                    ResponseJson.Add('message', Response.ReasonPhrase);
                end;
        end else begin
            ResponseJson.Add('status', 'httpclienterror');
            ResponseJson.Add('statuscode', Response.HttpStatusCode);
            ResponseJson.Add('message', Response.ReasonPhrase);
        end;
    end;

}