.class Lcom/gracenote/mmid/MobileSDK/FpxWebService;
.super Ljava/util/TimerTask;
.source "FpxWebService.java"


# instance fields
.field config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

.field fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

.field postData:Ljava/lang/String;

.field postHandler:Lcom/gracenote/mmid/MobileSDK/GNPostHandler;

.field timer:Ljava/util/Timer;

.field verifyXML:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ZLcom/gracenote/mmid/MobileSDK/GNConfig;Lcom/gracenote/mmid/MobileSDK/GNPostHandler;Lcom/gracenote/mmid/MobileSDK/FPXCallback;)V
    .locals 1
    .parameter "postData"
    .parameter "verifyXML"
    .parameter "config"
    .parameter "postHandler"
    .parameter "fpxCallback"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->postData:Ljava/lang/String;

    .line 53
    iput-boolean p2, p0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->verifyXML:Z

    .line 54
    iput-object p3, p0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    .line 55
    iput-object p4, p0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->postHandler:Lcom/gracenote/mmid/MobileSDK/GNPostHandler;

    .line 56
    iput-object p5, p0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    .line 57
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->timer:Ljava/util/Timer;

    .line 58
    return-void
.end method


# virtual methods
.method cancelTimer()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 275
    return-void
.end method

.method getClassifiedPostData(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "postData"

    .prologue
    const/4 v6, -0x1

    .line 61
    const/4 v0, -0x1

    .line 62
    .local v0, index1:I
    const/4 v1, -0x1

    .line 63
    .local v1, index2:I
    const/4 v2, -0x1

    .line 64
    .local v2, index3:I
    move-object v3, p1

    .line 66
    .local v3, str:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 67
    const-string v5, ""

    .line 96
    :goto_0
    return-object v5

    .line 70
    :cond_0
    const-string v5, "<CLIENT>"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v6, :cond_2

    .line 71
    const-string v5, "-"

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 73
    if-le v1, v6, :cond_1

    .line 74
    const-string v5, "</CLIENT>"

    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 77
    :cond_1
    if-le v2, v6, :cond_2

    .line 78
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, strToRemove:Ljava/lang/String;
    const-string v5, "-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .end local v4           #strToRemove:Ljava/lang/String;
    :cond_2
    const-string v5, "<USER>"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v6, :cond_4

    .line 84
    const-string v5, "-"

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 86
    if-le v1, v6, :cond_3

    .line 87
    const-string v5, "</USER>"

    invoke-virtual {v3, v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 90
    :cond_3
    if-le v2, v6, :cond_4

    .line 91
    invoke-virtual {v3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 92
    .restart local v4       #strToRemove:Ljava/lang/String;
    const-string v5, "-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v4           #strToRemove:Ljava/lang/String;
    :cond_4
    move-object v5, v3

    .line 96
    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 278
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->postHandler:Lcom/gracenote/mmid/MobileSDK/GNPostHandler;

    const/4 v1, 0x0

    const/16 v2, 0x198

    const-string v3, "Network timed out."

    invoke-interface {v0, v1, v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNPostHandler;->postResult(Ljava/lang/String;ILjava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 280
    return-void
.end method

.method setTimerAndWebservicesBlockingPost(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->timer:Ljava/util/Timer;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method webservicesBlockingPost()V
    .locals 37

    .prologue
    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    .line 109
    .local v30, startTime:J
    const/16 v23, 0x0

    .line 110
    .local v23, metaData:Ljava/lang/String;
    const/16 v19, 0x1f4

    .line 111
    .local v19, httpStatusCode:I
    const-string v13, ""

    .line 114
    .local v13, errorMessage:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->isNetworkConnected()Z

    move-result v33

    if-nez v33, :cond_1

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->postHandler:Lcom/gracenote/mmid/MobileSDK/GNPostHandler;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x198

    const-string v36, "This device is not connected to the Internet."

    invoke-interface/range {v33 .. v36}, Lcom/gracenote/mmid/MobileSDK/GNPostHandler;->postResult(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v14

    .line 119
    .local v14, ex:Ljava/lang/SecurityException;
    const-string v13, "Security exception occurred. Please check the AndroidManifest.xml"

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    if-eqz v33, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->postHandler:Lcom/gracenote/mmid/MobileSDK/GNPostHandler;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const/16 v35, 0x198

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2, v13}, Lcom/gracenote/mmid/MobileSDK/GNPostHandler;->postResult(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v14           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v14

    .line 129
    .local v14, ex:Ljava/lang/Exception;
    const-string v13, "Unexpected network error while connecting to webservices"

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    if-eqz v33, :cond_1

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 136
    .end local v14           #ex:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->isRegisterNeeded()Z

    move-result v33

    if-eqz v33, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->postHandler:Lcom/gracenote/mmid/MobileSDK/GNPostHandler;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    const-string v35, "Can\'t find registration information."

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move/from16 v2, v19

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Lcom/gracenote/mmid/MobileSDK/GNPostHandler;->postResult(Ljava/lang/String;ILjava/lang/String;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->timer:Ljava/util/Timer;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/Timer;->cancel()V

    goto/16 :goto_0

    .line 144
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    if-eqz v33, :cond_3

    .line 145
    const-string v22, ""

    .line 147
    .local v22, logData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-object/from16 v33, v0

    const-string v34, "debugEnabled"

    invoke-virtual/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_8

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->postData:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->getClassifiedPostData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 153
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "\n<<<<<query webservices>>>>>"

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 157
    .end local v22           #logData:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v16, "http"

    .line 158
    .local v16, httpMethod:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-object/from16 v33, v0

    const-string v34, "webservices.httpsEnabled"

    invoke-virtual/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 159
    const-string v16, "https"

    .line 161
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-object/from16 v33, v0

    const-string v34, "webservices.hostname"

    invoke-virtual/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProtectedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 162
    .local v15, hostname:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-object/from16 v33, v0

    const-string v34, "webservices.path"

    invoke-virtual/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getProtectedProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 163
    .local v27, path:Ljava/lang/String;
    const-string v33, "%s://%s%s"

    const/16 v34, 0x3

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    aput-object v16, v34, v35

    const/16 v35, 0x1

    aput-object v15, v34, v35

    const/16 v35, 0x2

    aput-object v27, v34, v35

    invoke-static/range {v33 .. v34}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    .line 167
    .local v32, url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    if-eqz v33, :cond_5

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "\nwebservices url: "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 172
    :cond_5
    new-instance v17, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 174
    .local v17, httpPost:Lorg/apache/http/client/methods/HttpPost;
    const-string v33, "Content-Type"

    const-string v34, "text/xml"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v33, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->postData:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "UTF-8"

    invoke-direct/range {v33 .. v35}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 176
    const-string v33, "Accept-Encoding"

    const-string v34, "gzip"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v26, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct/range {v26 .. v26}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 179
    .local v26, parameters:Lorg/apache/http/params/BasicHttpParams;
    const/16 v9, 0x28

    .line 180
    .local v9, connectTimeoutSeconds:I
    const/16 v29, 0x3c

    .line 181
    .local v29, socketTimeoutSeconds:I
    const v33, 0x9c40

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 182
    const v33, 0xea60

    move-object/from16 v0, v26

    move/from16 v1, v33

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 194
    new-instance v8, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v8}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 195
    .local v8, client:Lorg/apache/http/client/HttpClient;
    move-object/from16 v0, v17

    invoke-interface {v8, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v18

    .line 196
    .local v18, httpResponse:Lorg/apache/http/HttpResponse;
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    .line 198
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v28

    .line 199
    .local v28, responseEntity:Lorg/apache/http/HttpEntity;
    const-string v33, "Content-Encoding"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    .line 203
    .local v10, contentEncoding:Lorg/apache/http/Header;
    if-eqz v10, :cond_a

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v33

    const-string v34, "gzip"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_a

    .line 204
    invoke-interface/range {v28 .. v28}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    .line 205
    .local v21, inStream:Ljava/io/InputStream;
    new-instance v20, Ljava/util/zip/GZIPInputStream;

    invoke-direct/range {v20 .. v21}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 206
    .local v20, inGZStream:Ljava/util/zip/GZIPInputStream;
    const/16 v4, 0x1000

    .line 207
    .local v4, BUFFER_SIZE:I
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v33, 0x1000

    move/from16 v0, v33

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 208
    .local v6, baos:Ljava/io/ByteArrayOutputStream;
    const/16 v33, 0x1000

    move/from16 v0, v33

    new-array v7, v0, [B

    .line 210
    .local v7, buffer:[B
    :goto_2
    const/16 v33, 0x0

    const/16 v34, 0x1000

    move-object/from16 v0, v20

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v7, v1, v2}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v25

    .local v25, numRead:I
    const/16 v33, -0x1

    move/from16 v0, v25

    move/from16 v1, v33

    if-ne v0, v1, :cond_9

    .line 213
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/GZIPInputStream;->close()V

    .line 214
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 215
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 216
    .local v5, allBytes:[B
    new-instance v24, Ljava/lang/String;

    const-string v33, "UTF8"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-direct {v0, v5, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .end local v23           #metaData:Ljava/lang/String;
    .local v24, metaData:Ljava/lang/String;
    move-object/from16 v23, v24

    .line 248
    .end local v4           #BUFFER_SIZE:I
    .end local v5           #allBytes:[B
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buffer:[B
    .end local v8           #client:Lorg/apache/http/client/HttpClient;
    .end local v9           #connectTimeoutSeconds:I
    .end local v10           #contentEncoding:Lorg/apache/http/Header;
    .end local v15           #hostname:Ljava/lang/String;
    .end local v16           #httpMethod:Ljava/lang/String;
    .end local v17           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v18           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v20           #inGZStream:Ljava/util/zip/GZIPInputStream;
    .end local v21           #inStream:Ljava/io/InputStream;
    .end local v24           #metaData:Ljava/lang/String;
    .end local v25           #numRead:I
    .end local v26           #parameters:Lorg/apache/http/params/BasicHttpParams;
    .end local v27           #path:Ljava/lang/String;
    .end local v28           #responseEntity:Lorg/apache/http/HttpEntity;
    .end local v29           #socketTimeoutSeconds:I
    .end local v32           #url:Ljava/lang/String;
    .restart local v23       #metaData:Ljava/lang/String;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    if-eqz v33, :cond_7

    .line 249
    const-string v22, ""

    .line 250
    .restart local v22       #logData:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->config:Lcom/gracenote/mmid/MobileSDK/GNConfig;

    move-object/from16 v33, v0

    const-string v34, "debugEnabled"

    invoke-virtual/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/GNConfig;->getBooleanProperty(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_b

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->getClassifiedPostData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 256
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    const-string v35, "\n<<<<<webservices result>>>>>\nHTTP STATUS: "

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    .line 259
    .end local v22           #logData:Ljava/lang/String;
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 261
    .local v11, endTime:J
    const-string v33, "PROCESS TIME"

    sub-long v34, v11, v30

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->postHandler:Lcom/gracenote/mmid/MobileSDK/GNPostHandler;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v13}, Lcom/gracenote/mmid/MobileSDK/GNPostHandler;->postResult(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 151
    .end local v11           #endTime:J
    .restart local v22       #logData:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->postData:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_1

    .line 211
    .end local v22           #logData:Ljava/lang/String;
    .restart local v4       #BUFFER_SIZE:I
    .restart local v6       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #buffer:[B
    .restart local v8       #client:Lorg/apache/http/client/HttpClient;
    .restart local v9       #connectTimeoutSeconds:I
    .restart local v10       #contentEncoding:Lorg/apache/http/Header;
    .restart local v15       #hostname:Ljava/lang/String;
    .restart local v16       #httpMethod:Ljava/lang/String;
    .restart local v17       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v18       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v20       #inGZStream:Ljava/util/zip/GZIPInputStream;
    .restart local v21       #inStream:Ljava/io/InputStream;
    .restart local v25       #numRead:I
    .restart local v26       #parameters:Lorg/apache/http/params/BasicHttpParams;
    .restart local v27       #path:Ljava/lang/String;
    .restart local v28       #responseEntity:Lorg/apache/http/HttpEntity;
    .restart local v29       #socketTimeoutSeconds:I
    .restart local v32       #url:Ljava/lang/String;
    :cond_9
    const/16 v33, 0x0

    :try_start_2
    move/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v6, v7, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_2

    .line 220
    .end local v4           #BUFFER_SIZE:I
    .end local v6           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v7           #buffer:[B
    .end local v8           #client:Lorg/apache/http/client/HttpClient;
    .end local v9           #connectTimeoutSeconds:I
    .end local v10           #contentEncoding:Lorg/apache/http/Header;
    .end local v15           #hostname:Ljava/lang/String;
    .end local v16           #httpMethod:Ljava/lang/String;
    .end local v17           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v18           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v20           #inGZStream:Ljava/util/zip/GZIPInputStream;
    .end local v21           #inStream:Ljava/io/InputStream;
    .end local v25           #numRead:I
    .end local v26           #parameters:Lorg/apache/http/params/BasicHttpParams;
    .end local v27           #path:Ljava/lang/String;
    .end local v28           #responseEntity:Lorg/apache/http/HttpEntity;
    .end local v29           #socketTimeoutSeconds:I
    .end local v32           #url:Ljava/lang/String;
    :catch_2
    move-exception v14

    .line 223
    .local v14, ex:Ljava/net/SocketTimeoutException;
    const-string v13, "Socket timeout error while connecting to webservices"

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    if-eqz v33, :cond_6

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 218
    .end local v14           #ex:Ljava/net/SocketTimeoutException;
    .restart local v8       #client:Lorg/apache/http/client/HttpClient;
    .restart local v9       #connectTimeoutSeconds:I
    .restart local v10       #contentEncoding:Lorg/apache/http/Header;
    .restart local v15       #hostname:Ljava/lang/String;
    .restart local v16       #httpMethod:Ljava/lang/String;
    .restart local v17       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .restart local v18       #httpResponse:Lorg/apache/http/HttpResponse;
    .restart local v26       #parameters:Lorg/apache/http/params/BasicHttpParams;
    .restart local v27       #path:Ljava/lang/String;
    .restart local v28       #responseEntity:Lorg/apache/http/HttpEntity;
    .restart local v29       #socketTimeoutSeconds:I
    .restart local v32       #url:Ljava/lang/String;
    :cond_a
    :try_start_3
    const-string v33, "UTF8"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v23

    goto/16 :goto_3

    .line 228
    .end local v8           #client:Lorg/apache/http/client/HttpClient;
    .end local v9           #connectTimeoutSeconds:I
    .end local v10           #contentEncoding:Lorg/apache/http/Header;
    .end local v15           #hostname:Ljava/lang/String;
    .end local v16           #httpMethod:Ljava/lang/String;
    .end local v17           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v18           #httpResponse:Lorg/apache/http/HttpResponse;
    .end local v26           #parameters:Lorg/apache/http/params/BasicHttpParams;
    .end local v27           #path:Ljava/lang/String;
    .end local v28           #responseEntity:Lorg/apache/http/HttpEntity;
    .end local v29           #socketTimeoutSeconds:I
    .end local v32           #url:Ljava/lang/String;
    :catch_3
    move-exception v14

    .line 231
    .local v14, ex:Ljava/io/IOException;
    const-string v13, "IO exception while connecting to webservices"

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    if-eqz v33, :cond_6

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 236
    .end local v14           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v14

    .line 239
    .local v14, ex:Ljava/lang/Exception;
    const-string v13, "Unexpected network error while connecting to webservices"

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    if-eqz v33, :cond_6

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/gracenote/mmid/MobileSDK/FpxWebService;->fpxCallback:Lcom/gracenote/mmid/MobileSDK/FPXCallback;

    move-object/from16 v33, v0

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/gracenote/mmid/MobileSDK/GNOperations;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-interface/range {v33 .. v34}, Lcom/gracenote/mmid/MobileSDK/FPXCallback;->fpxDebugMsg(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 254
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v22       #logData:Ljava/lang/String;
    :cond_b
    move-object/from16 v22, v23

    goto/16 :goto_4
.end method
