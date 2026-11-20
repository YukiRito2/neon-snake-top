using System;
using System.Collections.Generic;
using Newtonsoft.Json;

// Neon Snake TOP: reenvía al chatbot de TikFinity el texto que manda el juego (argumento "message").
public class CPHInline
{
    public bool Execute()
    {
        if (!args.ContainsKey("message")) return true;
        string msg = args["message"] == null ? "" : args["message"].ToString();
        if (string.IsNullOrWhiteSpace(msg)) return true;
        var payload = new
        {
            action = "sendChatbotMessage",
            args = new Dictionary<string, object> { { "message", msg } }
        };
        CPH.WebsocketBroadcastJson(JsonConvert.SerializeObject(payload));
        return true;
    }
}
