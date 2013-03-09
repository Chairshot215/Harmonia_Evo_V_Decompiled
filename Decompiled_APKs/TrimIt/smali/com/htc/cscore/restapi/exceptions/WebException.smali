.class public Lcom/htc/cscore/restapi/exceptions/WebException;
.super Ljava/lang/Exception;
.source "WebException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

.field private _errorStream:Ljava/lang/String;

.field private _httpStatusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "inner"
    .parameter "errorStream"
    .parameter "httpStatusCode"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    iput-object p3, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_errorStream:Ljava/lang/String;

    .line 26
    iput p4, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_httpStatusCode:I

    .line 27
    invoke-static {p3, p4}, Lcom/htc/cscore/restapi/exceptions/WebException;->deserializeCustomErrorMessage(Ljava/lang/String;I)Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    .line 28
    return-void
.end method

.method private static deserializeCustomErrorMessage(Ljava/lang/String;I)Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .locals 6
    .parameter "jsonString"
    .parameter "httpStatusCode"

    .prologue
    const/4 v4, 0x0

    .line 42
    const/4 v0, 0x0

    .line 43
    .local v0, cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    if-eqz p0, :cond_2

    .line 47
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    .local v3, jsonObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    invoke-direct {v1}, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .local v1, cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    :try_start_1
    const-string v5, "Code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Lcom/htc/cscore/restapi/exceptions/ErrorCode;->lookup(I)Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    move-result-object v5

    iput-object v5, v1, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    .line 51
    const-string v5, "ErrorString"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    .line 52
    iget-object v5, v1, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->code:Lcom/htc/cscore/restapi/exceptions/ErrorCode;

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_1

    :cond_0
    move-object v0, v1

    .line 62
    .end local v1           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .restart local v0       #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    :goto_0
    return-object v4

    .end local v0           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .restart local v1       #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    :cond_1
    move-object v0, v1

    .end local v1           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .end local v3           #jsonObj:Lorg/json/JSONObject;
    .restart local v0       #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    :cond_2
    move-object v4, v0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    .line 58
    .local v2, e2:Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 56
    .end local v0           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .end local v2           #e2:Ljava/lang/Exception;
    .restart local v1       #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .restart local v3       #jsonObj:Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .restart local v0       #cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    goto :goto_1
.end method


# virtual methods
.method public getCustomErrorMessage()Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    return-object v0
.end method

.method public getErrorStream()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_errorStream:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_httpStatusCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    iget-object v0, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    if-eqz v0, :cond_0

    .line 17
    const-string v0, "httpStatusCode=%d, %s, message=%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_httpStatusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_cem:Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;

    invoke-virtual {v2}, Lcom/htc/cscore/restapi/exceptions/CustomErrorMessage;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "httpStatusCode=%d, errorStream=%s, message=%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_httpStatusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/cscore/restapi/exceptions/WebException;->_errorStream:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
