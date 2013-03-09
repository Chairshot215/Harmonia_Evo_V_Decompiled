.class public Lcom/htc/cslib/exceptions/MyCSException;
.super Ljava/lang/Exception;
.source "MyCSException.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MyCSException"

.field private static _errType:Lcom/htc/cslib/exceptions/ErrorType; = null

.field private static code:I = 0x0

.field private static message:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private _cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

.field private _errorStream:Ljava/lang/String;

.field private _httpStatusCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/htc/cslib/exceptions/MyCSException;->code:I

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/cslib/exceptions/MyCSException;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "message"
    .parameter "inner"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    iput-object p1, p0, Lcom/htc/cslib/exceptions/MyCSException;->_errorStream:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_httpStatusCode:I

    .line 39
    new-instance v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;

    invoke-direct {v0}, Lcom/htc/cslib/exceptions/CustomErrorMessage;-><init>()V

    iput-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    .line 40
    iget-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    iput-object p1, v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->GeneralError:Lcom/htc/cslib/exceptions/ErrorCode;

    iput-object v1, v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;->code:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 42
    sget-object v0, Lcom/htc/cslib/exceptions/ErrorType;->Sense30:Lcom/htc/cslib/exceptions/ErrorType;

    sput-object v0, Lcom/htc/cslib/exceptions/MyCSException;->_errType:Lcom/htc/cslib/exceptions/ErrorType;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 2
    .parameter "message"
    .parameter "inner"
    .parameter "httpStatusCode"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    iput-object p1, p0, Lcom/htc/cslib/exceptions/MyCSException;->_errorStream:Ljava/lang/String;

    .line 49
    iput p3, p0, Lcom/htc/cslib/exceptions/MyCSException;->_httpStatusCode:I

    .line 50
    new-instance v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;

    invoke-direct {v0}, Lcom/htc/cslib/exceptions/CustomErrorMessage;-><init>()V

    iput-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    .line 51
    iget-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    iput-object p1, v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->GeneralError:Lcom/htc/cslib/exceptions/ErrorCode;

    iput-object v1, v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;->code:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 53
    sget-object v0, Lcom/htc/cslib/exceptions/ErrorType;->Sense30:Lcom/htc/cslib/exceptions/ErrorType;

    sput-object v0, Lcom/htc/cslib/exceptions/MyCSException;->_errType:Lcom/htc/cslib/exceptions/ErrorType;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "inner"
    .parameter "errorStream"
    .parameter "httpStatusCode"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    iput-object p3, p0, Lcom/htc/cslib/exceptions/MyCSException;->_errorStream:Ljava/lang/String;

    .line 60
    iput p4, p0, Lcom/htc/cslib/exceptions/MyCSException;->_httpStatusCode:I

    .line 61
    sget-object v0, Lcom/htc/cslib/exceptions/ErrorType;->Sense30:Lcom/htc/cslib/exceptions/ErrorType;

    sput-object v0, Lcom/htc/cslib/exceptions/MyCSException;->_errType:Lcom/htc/cslib/exceptions/ErrorType;

    .line 62
    invoke-static {p3, p4}, Lcom/htc/cslib/exceptions/MyCSException;->deserializeCustomErrorMessage(Ljava/lang/String;I)Lcom/htc/cslib/exceptions/CustomErrorMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    .line 63
    return-void
.end method

.method private static deserializeCustomErrorMessage(Ljava/lang/String;I)Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .locals 10
    .parameter "jsonString"
    .parameter "httpStatusCode"

    .prologue
    const/4 v6, 0x0

    .line 104
    const/4 v0, 0x0

    .line 106
    .local v0, cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    if-eqz p0, :cond_2

    .line 110
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 112
    .local v5, jsonObj:Lorg/json/JSONObject;
    new-instance v1, Lcom/htc/cslib/exceptions/CustomErrorMessage;

    invoke-direct {v1}, Lcom/htc/cslib/exceptions/CustomErrorMessage;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 114
    .end local v0           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .local v1, cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    :try_start_1
    const-string v7, "Code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/htc/cslib/exceptions/ErrorCode;->lookup(I)Lcom/htc/cslib/exceptions/ErrorCode;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/cslib/exceptions/CustomErrorMessage;->code:Lcom/htc/cslib/exceptions/ErrorCode;

    .line 115
    const-string v7, "ErrorString"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/htc/cslib/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    .line 117
    const-string v7, "cslib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MyCSException cem.code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/htc/cslib/exceptions/CustomErrorMessage;->code:Lcom/htc/cslib/exceptions/ErrorCode;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v7, "cslib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MyCSException cem.ErrorString = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/htc/cslib/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 139
    :goto_0
    :try_start_2
    iget-object v7, v1, Lcom/htc/cslib/exceptions/CustomErrorMessage;->code:Lcom/htc/cslib/exceptions/ErrorCode;

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/htc/cslib/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v7, :cond_1

    :cond_0
    move-object v0, v1

    .line 149
    .end local v1           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .restart local v0       #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    :goto_1
    return-object v6

    .line 120
    .end local v0           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .restart local v1       #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .restart local v5       #jsonObj:Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 123
    .local v2, e1:Ljava/lang/Exception;
    :try_start_3
    const-string v7, "code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    sput v7, Lcom/htc/cslib/exceptions/MyCSException;->code:I

    .line 124
    const-string v7, "message"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/htc/cslib/exceptions/MyCSException;->message:Ljava/lang/String;

    .line 125
    sget-object v7, Lcom/htc/cslib/exceptions/ErrorType;->Sense35:Lcom/htc/cslib/exceptions/ErrorType;

    sput-object v7, Lcom/htc/cslib/exceptions/MyCSException;->_errType:Lcom/htc/cslib/exceptions/ErrorType;

    .line 127
    const-string v7, "cslib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MyCSException code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/htc/cslib/exceptions/MyCSException;->code:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const-string v7, "cslib"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MyCSException message = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/cslib/exceptions/MyCSException;->message:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 130
    :catch_1
    move-exception v4

    .line 132
    .local v4, e3:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v0, v1

    .line 133
    .end local v1           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .restart local v0       #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    goto :goto_1

    .end local v0           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .end local v2           #e1:Ljava/lang/Exception;
    .end local v4           #e3:Ljava/lang/Exception;
    .restart local v1       #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    :cond_1
    move-object v0, v1

    .end local v1           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .end local v5           #jsonObj:Lorg/json/JSONObject;
    .restart local v0       #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    :cond_2
    move-object v6, v0

    .line 149
    goto :goto_1

    .line 141
    :catch_2
    move-exception v3

    .line 143
    .local v3, e2:Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 141
    .end local v0           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .end local v3           #e2:Ljava/lang/Exception;
    .restart local v1       #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .restart local v5       #jsonObj:Lorg/json/JSONObject;
    :catch_3
    move-exception v3

    move-object v0, v1

    .end local v1           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .restart local v0       #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    goto :goto_2
.end method


# virtual methods
.method public getCustomCode()I
    .locals 1

    .prologue
    .line 87
    sget v0, Lcom/htc/cslib/exceptions/MyCSException;->code:I

    return v0
.end method

.method public getCustomErrorCode()Lcom/htc/cslib/exceptions/ErrorCode;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    iget-object v0, v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;->code:Lcom/htc/cslib/exceptions/ErrorCode;

    return-object v0
.end method

.method public getCustomErrorMessage()Lcom/htc/cslib/exceptions/CustomErrorMessage;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    return-object v0
.end method

.method public getCustomErrorString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    iget-object v0, v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/htc/cslib/exceptions/MyCSException;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorStream()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_errorStream:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorType()Lcom/htc/cslib/exceptions/ErrorType;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/htc/cslib/exceptions/MyCSException;->_errType:Lcom/htc/cslib/exceptions/ErrorType;

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_httpStatusCode:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    iget-object v0, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "httpStatusCode=%d, %s, message=%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/htc/cslib/exceptions/MyCSException;->_httpStatusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/cslib/exceptions/MyCSException;->_cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;

    invoke-virtual {v2}, Lcom/htc/cslib/exceptions/CustomErrorMessage;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "httpStatusCode=%d, errorStream=%s, message=%s"

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/htc/cslib/exceptions/MyCSException;->_httpStatusCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/htc/cslib/exceptions/MyCSException;->_errorStream:Ljava/lang/String;

    aput-object v2, v1, v4

    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
