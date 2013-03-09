.class public Lcom/htc/cslib/restHelper/CSRestProxy;
.super Ljava/lang/Object;
.source "CSRestProxy.java"

# interfaces
.implements Lcom/htc/cslib/restHelper/RestHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cslib/restHelper/CSRestProxy$AppStage;
    }
.end annotation


# static fields
.field private static final CommandAndControl:I = 0xfb

.field private static final InvalidAuthKey:I = 0xc8

.field private static final LOG_TAG:Ljava/lang/String; = "CSRestProxy"

.field private static updated_:Z


# instance fields
.field private final ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

.field private accountId_:Ljava/lang/String;

.field private appType_:Ljava/lang/String;

.field private baseURL_:Ljava/lang/String;

.field private deviceId_:Ljava/lang/String;

.field private handler_:Landroid/os/Handler;

.field private hasAppProvisioning:Z

.field private hasProvisioning:Z

.field private isPersonalize:Z

.field private final mContext_:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/cslib/restHelper/CSRestProxy;->updated_:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "URL"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const-string v0, "com.htc.cs.provisioning.fail"

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->ACT_DEVICE_CONFIG_FAIL:Ljava/lang/String;

    .line 69
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasProvisioning:Z

    .line 70
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->hasAppProvisioning:Z

    .line 71
    iput-boolean v1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->isPersonalize:Z

    .line 82
    iput-object p1, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    .line 84
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->handler_:Landroid/os/Handler;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->appType_:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    .locals 7
    .parameter "uri"
    .parameter "payload"
    .parameter "method"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    const-string v1, ""

    .line 160
    .local v1, jsonRec:Ljava/lang/String;
    const-string v3, "%s%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/htc/cslib/restHelper/CSRestProxy;->baseURL_:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, url:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v2, p3, p2}, Lcom/htc/cslib/restHelper/CSRestProxy;->sendRequest(Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    return-object v1

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    throw v0
.end method


# virtual methods
.method public httpDelete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 140
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->DELETE:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    return-object v1

    .line 142
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 145
    throw v0
.end method

.method public httpGet(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 93
    const/4 v1, 0x0

    .line 95
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->GET:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    throw v0
.end method

.method public httpPost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 123
    const/4 v1, 0x0

    .line 125
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->POST:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 132
    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    throw v0
.end method

.method public httpPut(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "uri"
    .parameter "payload"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, response:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/htc/cslib/util/JSONRequest$Method;->PUT:Lcom/htc/cslib/util/JSONRequest$Method;

    invoke-direct {p0, p1, p2, v2}, Lcom/htc/cslib/restHelper/CSRestProxy;->httpResquest(Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 118
    return-object v1

    .line 113
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 116
    throw v0
.end method

.method public sendRequest(Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;)Ljava/lang/String;
    .locals 24
    .parameter "url"
    .parameter "method"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v8, Lcom/htc/cslib/util/JSONRequest$StreamableString;

    const-string v1, "\\\\"

    const-string v3, "\\"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/htc/cslib/util/JSONRequest$StreamableString;-><init>(Ljava/lang/String;)V

    .line 174
    .local v8, outParam:Lcom/htc/cslib/util/JSONRequest$StreamableString;
    new-instance v9, Lcom/htc/cslib/util/JSONRequest$StreamableString;

    invoke-direct {v9}, Lcom/htc/cslib/util/JSONRequest$StreamableString;-><init>()V

    .line 175
    .local v9, inParam:Lcom/htc/cslib/util/JSONRequest$StreamableString;
    new-instance v2, Lcom/htc/cslib/util/CSCookie;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/htc/cslib/util/CSCookie;-><init>(Landroid/content/Context;)V

    .line 176
    .local v2, cookie:Lcom/htc/cslib/util/CSCookie;
    const/16 v23, 0x0

    .line 177
    .local v23, retry:I
    :cond_0
    :goto_0
    const/4 v1, 0x3

    move/from16 v0, v23

    if-ge v0, v1, :cond_7

    .line 179
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSEngineUtil;->isCSAccountExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->getAuthKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 181
    .local v7, authkey:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 185
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v9}, Lcom/htc/cslib/util/JSONRequest;->sendHttpRequestViaStreamables(Landroid/content/Context;Lcom/htc/cslib/util/CSCookie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$WriteStreamable;Lcom/htc/cslib/util/JSONRequest$ReadStreamable;)V

    .line 190
    .end local v7           #authkey:Ljava/lang/String;
    :goto_1
    const/16 v23, 0x3

    goto :goto_0

    .line 188
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->accountId_:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->deviceId_:Ljava/lang/String;

    const-string v16, ""

    move-object v11, v2

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    invoke-static/range {v10 .. v18}, Lcom/htc/cslib/util/JSONRequest;->sendHttpRequestViaStreamables(Landroid/content/Context;Lcom/htc/cslib/util/CSCookie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$WriteStreamable;Lcom/htc/cslib/util/JSONRequest$ReadStreamable;)V
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 192
    :catch_0
    move-exception v20

    .line 194
    .local v20, csException:Lcom/htc/cslib/exceptions/MyCSException;
    add-int/lit8 v23, v23, 0x1

    .line 195
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getErrorType()Lcom/htc/cslib/exceptions/ErrorType;

    move-result-object v1

    sget-object v3, Lcom/htc/cslib/exceptions/ErrorType;->Sense35:Lcom/htc/cslib/exceptions/ErrorType;

    if-ne v1, v3, :cond_4

    .line 197
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomCode()I

    move-result v22

    .line 202
    .local v22, err:I
    const/16 v1, 0xc8

    move/from16 v0, v22

    if-ne v0, v1, :cond_3

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 205
    .restart local v7       #authkey:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_0

    .line 206
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to renew auth key"

    move-object/from16 v0, v20

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 208
    .end local v7           #authkey:Ljava/lang/String;
    :cond_3
    const/16 v1, 0xfb

    move/from16 v0, v22

    if-ne v0, v1, :cond_0

    .line 210
    new-instance v1, Lcom/htc/cslib/exceptions/CommandAndControlException;

    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    move/from16 v0, v22

    invoke-direct {v1, v3, v0, v4}, Lcom/htc/cslib/exceptions/CommandAndControlException;-><init>(Ljava/lang/String;ILjava/lang/Exception;)V

    throw v1

    .line 216
    .end local v22           #err:I
    :cond_4
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorCode()Lcom/htc/cslib/exceptions/ErrorCode;

    move-result-object v22

    .line 221
    .local v22, err:Lcom/htc/cslib/exceptions/ErrorCode;
    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->TokenExpired:Lcom/htc/cslib/exceptions/ErrorCode;

    move-object/from16 v0, v22

    if-ne v0, v1, :cond_5

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .restart local v7       #authkey:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_5

    .line 225
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to renew auth key (InvalidCredential)"

    move-object/from16 v0, v20

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 227
    .end local v7           #authkey:Ljava/lang/String;
    :cond_5
    sget-object v1, Lcom/htc/cslib/exceptions/ErrorCode;->WrongDataCenter:Lcom/htc/cslib/exceptions/ErrorCode;

    move-object/from16 v0, v22

    if-ne v0, v1, :cond_6

    .line 229
    invoke-virtual/range {v20 .. v20}, Lcom/htc/cslib/exceptions/MyCSException;->getCustomErrorMessage()Lcom/htc/cslib/exceptions/CustomErrorMessage;

    move-result-object v19

    .line 234
    .local v19, cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/htc/cslib/exceptions/CustomErrorMessage;->ErrorString:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/htc/cslib/util/CSDatabaseUtil;->setServiceUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/cslib/restHelper/CSRestProxy;->mContext_:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->HandsetLogin(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 237
    .restart local v7       #authkey:Ljava/lang/String;
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_0

    .line 238
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to renew auth key (WrongDataCenter)"

    move-object/from16 v0, v20

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 241
    .end local v7           #authkey:Ljava/lang/String;
    .end local v19           #cem:Lcom/htc/cslib/exceptions/CustomErrorMessage;
    :cond_6
    throw v20

    .line 245
    .end local v20           #csException:Lcom/htc/cslib/exceptions/MyCSException;
    .end local v22           #err:Lcom/htc/cslib/exceptions/ErrorCode;
    :catch_1
    move-exception v21

    .line 250
    .local v21, e:Ljava/lang/Exception;
    add-int/lit8 v23, v23, 0x1

    .line 251
    const/4 v1, 0x2

    move/from16 v0, v23

    if-le v0, v1, :cond_0

    .line 252
    new-instance v1, Lcom/htc/cslib/exceptions/MyCSException;

    const-string v3, "Fail to make http request"

    move-object/from16 v0, v21

    invoke-direct {v1, v3, v0}, Lcom/htc/cslib/exceptions/MyCSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 261
    .end local v21           #e:Ljava/lang/Exception;
    :cond_7
    iget-object v1, v9, Lcom/htc/cslib/util/JSONRequest$StreamableString;->_s:Ljava/lang/String;

    return-object v1
.end method
