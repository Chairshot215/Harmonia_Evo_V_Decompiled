.class Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;
.super Ljava/lang/Object;
.source "GNRegistrationPostHandler.java"

# interfaces
.implements Lcom/gracenote/mmid/MobileSDK/GNPostHandler;


# instance fields
.field private callback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

.field private config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

.field private httpStatusCode:I

.field private result:Lcom/gracenote/mmid/MobileSDK/GNResult;

.field private resultData:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V
    .locals 1
    .parameter "inConfig"
    .parameter "inCallback"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 23
    const/4 v0, -0x1

    iput v0, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->httpStatusCode:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->userId:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/GNResult;

    invoke-direct {v0, p1}, Lcom/gracenote/mmid/MobileSDK/GNResult;-><init>(Lcom/gracenote/mmid/MobileSDK/GNConfig;)V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    .line 26
    iput-object p2, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->callback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    .line 27
    return-void
.end method

.method private parseRegisterResponses(Lorg/w3c/dom/Node;)V
    .locals 8
    .parameter "responsesNode"

    .prologue
    .line 82
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->parseResponse(Lorg/w3c/dom/Node;)[Ljava/lang/Object;

    move-result-object v2

    .line 83
    .local v2, results:[Ljava/lang/Object;
    const/4 v5, 0x0

    aget-object v3, v2, v5

    check-cast v3, Ljava/lang/String;

    .line 84
    .local v3, status:Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v0, v2, v5

    check-cast v0, Ljava/lang/String;

    .line 85
    .local v0, errorMsgStr:Ljava/lang/String;
    const/4 v5, 0x2

    aget-object v1, v2, v5

    check-cast v1, Lorg/w3c/dom/Node;

    .line 89
    .local v1, responseNode:Lorg/w3c/dom/Node;
    const-string v5, "ERROR"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 90
    const-string v5, "Missing or bad CLIENT information."

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    const/16 v6, 0x138b

    invoke-virtual {v5, v6}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrCode(I)V

    .line 93
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    const-string v6, "Invalid clientId"

    invoke-virtual {v5, v6}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrMessage(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    const/16 v6, 0x1388

    invoke-virtual {v5, v6}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrCode(I)V

    .line 97
    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "webservices registration error: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :cond_1
    const-string v5, "USER"

    invoke-static {v1, v5}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->singleChildNodeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, userId:Ljava/lang/String;
    iput-object v4, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->userId:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public doPost(Ljava/lang/String;)V
    .locals 6
    .parameter "queryXML"

    .prologue
    .line 41
    new-instance v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v5, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->callback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;-><init>(Ljava/lang/String;ZLcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNPostHandler;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V

    .line 43
    .local v0, myService:Lcom/gracenote/mmid/MobileSDK/FpxWebService;
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->setTimerAndWebservicesBlockingPost(I)V

    .line 44
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->webservicesBlockingPost()V

    .line 45
    invoke-virtual {v0}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->cancelTimer()V

    .line 46
    return-void
.end method

.method public formatXML()Ljava/lang/String;
    .locals 5

    .prologue
    .line 34
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v4, "clientId"

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, clientId:Ljava/lang/String;
    iget-object v3, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    const-string v4, "lang"

    invoke-virtual {v3, v4}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, lang:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNQuery;->formatRegisterQuery(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, queryXML:Ljava/lang/String;
    return-object v2
.end method

.method getConfig()Lcom/gracenote/mmid/MobileSDK/GNConfig;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    return-object v0
.end method

.method getResult()Lcom/gracenote/mmid/MobileSDK/GNResult;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    return-object v0
.end method

.method getResultData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->resultData:Ljava/lang/String;

    return-object v0
.end method

.method public postResult(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .parameter "resultData"
    .parameter "httpStatusCode"
    .parameter "errorMessage"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->resultData:Ljava/lang/String;

    .line 56
    iput p2, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->httpStatusCode:I

    .line 58
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->httpStatusCode:I

    const/16 v2, 0x198

    if-ne v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    const/16 v2, 0x1389

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrCode(I)V

    .line 61
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "webservices http status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->httpStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrMessage(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 62
    :cond_0
    iget v1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->httpStatusCode:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    .line 64
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrCode(I)V

    .line 65
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "webservices http status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->httpStatusCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    const-string v2, "resultData is null"

    invoke-static {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 68
    invoke-static {p1}, Lcom/gracenote/mmid/MobileSDK/GNDOM;->parseDOM(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 69
    .local v0, rootNode:Lorg/w3c/dom/Node;
    if-nez v0, :cond_3

    .line 71
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    const/16 v2, 0x138a

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrCode(I)V

    .line 72
    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->result:Lcom/gracenote/mmid/MobileSDK/GNResult;

    const-string v2, "webservices xml can\'t be parsed"

    invoke-virtual {v1, v2}, Lcom/gracenote/mmid/MobileSDK/GNResult;->setErrMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v0           #rootNode:Lorg/w3c/dom/Node;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 74
    .restart local v0       #rootNode:Lorg/w3c/dom/Node;
    :cond_3
    invoke-direct {p0, v0}, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->parseRegisterResponses(Lorg/w3c/dom/Node;)V

    goto :goto_0
.end method

.method saveUserId()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "invalid userID"

    invoke-static {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNAssert;->Assert(ZLjava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    iget-object v1, p0, Lcom/gracenote/mmid/MobileSDK/GNRegistrationPostHandler;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->setUserId(Ljava/lang/String;)V

    .line 113
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
