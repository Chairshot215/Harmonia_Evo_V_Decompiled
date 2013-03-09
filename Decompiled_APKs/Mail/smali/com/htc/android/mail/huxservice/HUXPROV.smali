.class public Lcom/htc/android/mail/huxservice/HUXPROV;
.super Ljava/lang/Object;
.source "HUXPROV.java"


# static fields
.field public static final ERROR_AUTH_FAILURE:I = 0x139b0

.field public static final ERROR_DEVICE_NOT_VERIFIED:I = 0xc3566

.field public static final ERROR_EMAIL_ALREADY_ADDED:I = 0x2728

.field public static final ERROR_ENDPOINT_NOT_FOUND:I = 0x139af

.field public static final ERROR_EXCEED_VERYFY_DEVICE_TRY:I = 0xc3501

.field public static final ERROR_GET_AVAIL_ENDPOINT_FAILED:I = 0xc3635

.field public static final ERROR_GET_TERMS_FAILED:I = 0xc3637

.field public static final ERROR_NEED_ACCEPT_TERMS:I = 0x139b4

.field public static final ERROR_OTHER_EXCEPTION:I = 0xc3568

.field public static final ERROR_REGISTRATION_FAILED:I = 0xc3565

.field public static final ERROR_UPDATE_PIN_FAILED:I = 0xc3502

.field public static final ERROR_USER_ENDPOINT_FAILED:I = 0xc3638

.field public static final HTTP_AIRPLANE_MODE_ON:I = -0x2

.field public static final HTTP_DELETE:Ljava/lang/String; = "DELETE"

.field public static final HTTP_ERROR_HTTP_EXCEPTION:I = -0x1

.field public static final HTTP_ERROR_SERVICE_UNAVAILABLE:I = 0x1f7

.field public static final HTTP_ERROR_UNAUTHORIZED:I = 0x191

.field public static final HTTP_GET:Ljava/lang/String; = "GET"

.field public static final HTTP_NO_NETWORK:I = -0x3

.field public static final HTTP_POST:Ljava/lang/String; = "POST"

.field public static final HTTP_PUT:Ljava/lang/String; = "PUT"

.field public static final HUX_HTTP_AGENT:Ljava/lang/String; = "Android-HUX/0.1"

.field public static final KEY_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final KEY_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field public static final KEY_ERROR_STATUS:Ljava/lang/String; = "errorStatus"

.field public static final KEY_RESULT:Ljava/lang/String; = "result"

.field public static final KEY_STATUS:Ljava/lang/String; = "Status"

.field public static final NOTIFYKEY_ADD_ENDPOINT:I = 0xb

.field public static final NOTIFYKEY_AIRPLANE_MODE:I = 0x15

.field public static final NOTIFYKEY_DEL_ENDPOINT:I = 0xc

.field public static final NOTIFYKEY_GET_ENDPOINT:I = 0xd

.field public static final NOTIFYKEY_MASTER_ENDPOINT:I = 0xf

.field public static final NOTIFYKEY_MOD_ENDPOINT:I = 0xe

.field public static final NOTIFYKEY_NETWORK_NOT_AVAILABLE:I = 0x14

.field public static final NOTIFYKEY_PIN:I = 0x1

.field public static final NOTIFYKEY_RESTORE_ACCOUNT:I = 0x9

.field public static final NOTIFYKEY_RESTORE_PROFILE:I = 0x11

.field public static final NOTIFYKEY_RESTORE_PROFILE_DONE:I = 0x12

.field public static final NOTIFYKEY_SKIP_UPDATE_EXCHANGE_SETTINGS:I = 0x13

.field public static final NOTIFYKEY_TERMS:I = 0x7

.field public static final NOTIFYKEY_TERMSID:I = 0x8

.field public static final NOTIFYKEY_TIMEOUT:I = 0xa

.field public static final NOTIFYKEY_TOKEN:I = 0x3

.field public static final NOTIFYKEY_TOKEN_EXPIRY:I = 0x4

.field public static final NOTIFYKEY_TOKEN_EXPIRY_REFRESH:I = 0x6

.field public static final NOTIFYKEY_TOKEN_REFRESH:I = 0x5

.field public static final NOTIFYKEY_UPDATE_PROFILE:I = 0x10

.field public static final NOTIFYKEY_VERIFYDEVICE:I = 0x2

.field public static final PROV_TIMEOUT:I = 0x2d

.field public static final PROV_TIMEOUT_MILLIS:I = 0x4e20

.field public static final SNC_ACCEPTED:Ljava/lang/String; = "snc.account.state.termsAccepted"

.field public static final SNC_ACTIVE:Ljava/lang/String; = "snc.account.state.active"

.field public static final SNC_INACTIVE:Ljava/lang/String; = "snc.account.state.inactive"

.field public static final SNC_NOTVERIFIED:Ljava/lang/String; = "snc.account.state.notVerified"

.field public static final SNC_PINSENT:Ljava/lang/String; = "snc.account.state.pinsent"

.field public static final SNC_Provider_AOL:Ljava/lang/String; = "AOL"

.field public static final SNC_Provider_AOL2:Ljava/lang/String; = "AOL2"

.field public static final SNC_Provider_Google:Ljava/lang/String; = "Google"

.field public static final SNC_Provider_MSN:Ljava/lang/String; = "MSN"

.field public static final SNC_Provider_VZW:Ljava/lang/String; = "Verizon"

.field public static final SNC_Provider_YAHOO:Ljava/lang/String; = "Yahoo"

.field public static final SNC_REGISTERED:Ljava/lang/String; = "snc.account.state.registered"

.field public static final SNC_Service_Calendar:Ljava/lang/String; = "Calendar"

.field public static final SNC_Service_Contacts:Ljava/lang/String; = "Contacts"

.field public static final SNC_Service_MAIL:Ljava/lang/String; = "MAIL"

.field public static final SNC_VERIFIED:Ljava/lang/String; = "snc.account.state.verified"

.field private static final TAG:Ljava/lang/String; = "HUXPROV"

.field public static final URI_accept:Ljava/lang/String; = "/snc/user/authThree/provisioning/feature/terms"

.field public static final URI_endpoints:Ljava/lang/String; = "/snc/user/authThree/endpoints"

.field public static final URI_getPIN:Ljava/lang/String; = "/snc/user/authOne/getPIN"

.field public static final URI_getToken:Ljava/lang/String; = "/snc/user/authTwo/getToken"

.field public static final URI_masterEndpoints:Ljava/lang/String; = "/snc/user/authThree/masterEndpoints"

.field public static final URI_profile:Ljava/lang/String; = "/snc/user/authThree/provisioning/profile"

.field public static final URI_refreshToken:Ljava/lang/String; = "/snc/user/authThree/refreshToken"

.field public static final URI_syncAll:Ljava/lang/String; = "/snc/user/authThree/syncAll"

.field public static final URI_tags:Ljava/lang/String; = "/snc/user/authThree/tags"

.field public static final URI_terms:Ljava/lang/String; = "/snc/user/authOne/provisioning/feature/terms"

.field public static final URI_verifyDevice:Ljava/lang/String; = "/snc/user/authTwo/verifyDevice"

.field static http_body_s:Ljava/lang/String;


# instance fields
.field mBody:Ljava/lang/String;

.field mCancelFlag:Z

.field mCmd:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mError_code:I

.field mError_mess:Ljava/lang/String;

.field mMdn:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mPin:Ljava/lang/String;

.field mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

.field mRequestStartTime:J

.field mResponse:Lorg/apache/http/HttpResponse;

.field mState:Ljava/lang/String;

.field mToken:Ljava/lang/String;

.field mTokenExpiry:Ljava/lang/String;

.field mUri:Ljava/lang/String;

.field mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 153
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mMdn:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mPin:Ljava/lang/String;

    .line 135
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mToken:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mTokenExpiry:Ljava/lang/String;

    .line 137
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mUrl:Ljava/lang/String;

    .line 138
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mState:Ljava/lang/String;

    .line 139
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mCancelFlag:Z

    .line 141
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mPassword:Ljava/lang/String;

    .line 143
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_code:I

    .line 144
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_mess:Ljava/lang/String;

    .line 146
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mCmd:Ljava/lang/String;

    .line 147
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mUri:Ljava/lang/String;

    .line 148
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mBody:Ljava/lang/String;

    .line 149
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 150
    iput-object v2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mResponse:Lorg/apache/http/HttpResponse;

    .line 154
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mContext:Landroid/content/Context;

    .line 155
    new-instance v0, Lcom/htc/android/mail/Account$DeviceInfo;

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/android/mail/Account$DeviceInfo;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, deviceInfo:Lcom/htc/android/mail/Account$DeviceInfo;
    iget-object v1, v0, Lcom/htc/android/mail/Account$DeviceInfo;->MDN:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mMdn:Ljava/lang/String;

    .line 157
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Account;->getPIN(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mPin:Ljava/lang/String;

    .line 158
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/android/mail/Account;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mToken:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mContext:Landroid/content/Context;

    const-string v2, "provserver"

    invoke-static {v1, v2}, Lcom/htc/android/mail/Account$HuxServerInfo;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mUrl:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mToken:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "snc.account.state.registered"

    :goto_0
    iput-object v1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mState:Ljava/lang/String;

    .line 161
    return-void

    .line 160
    :cond_0
    const-string v1, "snc.account.state.notVerified"

    goto :goto_0
.end method


# virtual methods
.method gen_http_request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 14
    .parameter "cmd"
    .parameter "uri"
    .parameter "body"

    .prologue
    .line 247
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mUrl:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 248
    .local v8, path:Ljava/lang/String;
    const-string v10, "/snc/user/authOne/getPIN"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 249
    const-string v10, ""

    iput-object v10, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mPassword:Ljava/lang/String;

    .line 250
    const-string v10, "snc.account.state.pinsent"

    iput-object v10, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mState:Ljava/lang/String;

    .line 257
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mMdn:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mPassword:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/lang/String;-><init>([B)V

    .line 259
    .local v1, basic:Ljava/lang/String;
    const/4 v5, 0x0

    .line 260
    .local v5, http_get:Lorg/apache/http/client/methods/HttpGet;
    const/4 v6, 0x0

    .line 261
    .local v6, http_post:Lorg/apache/http/client/methods/HttpPost;
    const/4 v7, 0x0

    .line 262
    .local v7, http_put:Lorg/apache/http/client/methods/HttpPut;
    const/4 v4, 0x0

    .line 263
    .local v4, http_delete:Lorg/apache/http/client/methods/HttpDelete;
    const/4 v2, 0x0

    .line 264
    .local v2, entity:Lorg/apache/http/entity/StringEntity;
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    .line 266
    :try_start_0
    new-instance v3, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #entity:Lorg/apache/http/entity/StringEntity;
    .local v3, entity:Lorg/apache/http/entity/StringEntity;
    move-object v2, v3

    .line 271
    .end local v3           #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v2       #entity:Lorg/apache/http/entity/StringEntity;
    :cond_1
    :goto_1
    const-string v10, "GET"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 272
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    .end local v5           #http_get:Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {v5, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v5       #http_get:Lorg/apache/http/client/methods/HttpGet;
    move-object v9, v5

    .line 284
    .local v9, request:Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_2
    :goto_2
    const-string v10, "Authorization"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Basic "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v10, "X-VZW-DEVICE-INFO"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Android;"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "ro.product.version"

    const-string v13, "Unknown"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v10, "Accept"

    const-string v11, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v10, "Accept-Encoding"

    const-string v11, "gzip,deflate"

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v10, "Accept-Charset"

    const-string v11, "ISO-8859-1,utf-8;q=0.7,*;q=0.7"

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v10, "Content-type"

    const-string v11, "application/xhtml+xml"

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v10, "Content-language"

    const-string v11, "en-US"

    invoke-virtual {v9, v10, v11}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .end local v9           #request:Lorg/apache/http/client/methods/HttpRequestBase;
    :goto_3
    return-object v9

    .line 251
    .end local v1           #basic:Ljava/lang/String;
    .end local v2           #entity:Lorg/apache/http/entity/StringEntity;
    .end local v4           #http_delete:Lorg/apache/http/client/methods/HttpDelete;
    .end local v5           #http_get:Lorg/apache/http/client/methods/HttpGet;
    .end local v6           #http_post:Lorg/apache/http/client/methods/HttpPost;
    .end local v7           #http_put:Lorg/apache/http/client/methods/HttpPut;
    :cond_3
    const-string v10, "/snc/user/authTwo/verifyDevice"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string v10, "/snc/user/authTwo/getToken"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 252
    :cond_4
    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mPin:Ljava/lang/String;

    iput-object v10, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 254
    :cond_5
    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mToken:Ljava/lang/String;

    if-nez v10, :cond_6

    const-string v10, ""

    iget-object v11, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mToken:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_6
    iget-object v10, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mToken:Ljava/lang/String;

    iput-object v10, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 273
    .restart local v1       #basic:Ljava/lang/String;
    .restart local v2       #entity:Lorg/apache/http/entity/StringEntity;
    .restart local v4       #http_delete:Lorg/apache/http/client/methods/HttpDelete;
    .restart local v5       #http_get:Lorg/apache/http/client/methods/HttpGet;
    .restart local v6       #http_post:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #http_put:Lorg/apache/http/client/methods/HttpPut;
    :cond_7
    const-string v10, "POST"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 274
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    .end local v6           #http_post:Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {v6, v8}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .restart local v6       #http_post:Lorg/apache/http/client/methods/HttpPost;
    move-object v9, v6

    .line 275
    .restart local v9       #request:Lorg/apache/http/client/methods/HttpRequestBase;
    if-eqz v2, :cond_2

    invoke-virtual {v6, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_2

    .line 276
    .end local v9           #request:Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_8
    const-string v10, "PUT"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 277
    new-instance v7, Lorg/apache/http/client/methods/HttpPut;

    .end local v7           #http_put:Lorg/apache/http/client/methods/HttpPut;
    invoke-direct {v7, v8}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .restart local v7       #http_put:Lorg/apache/http/client/methods/HttpPut;
    move-object v9, v7

    .line 278
    .restart local v9       #request:Lorg/apache/http/client/methods/HttpRequestBase;
    if-eqz v2, :cond_2

    invoke-virtual {v7, v2}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    goto/16 :goto_2

    .line 279
    .end local v9           #request:Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_9
    const-string v10, "DELETE"

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 280
    new-instance v4, Lorg/apache/http/client/methods/HttpDelete;

    .end local v4           #http_delete:Lorg/apache/http/client/methods/HttpDelete;
    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v4       #http_delete:Lorg/apache/http/client/methods/HttpDelete;
    move-object v9, v4

    .restart local v9       #request:Lorg/apache/http/client/methods/HttpRequestBase;
    goto/16 :goto_2

    .line 282
    .end local v9           #request:Lorg/apache/http/client/methods/HttpRequestBase;
    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    .line 267
    :catch_0
    move-exception v10

    goto/16 :goto_1
.end method

.method public http_body(Lorg/apache/http/HttpMessage;)Ljava/lang/String;
    .locals 12
    .parameter "m"

    .prologue
    const/4 v1, 0x0

    .line 308
    sput-object v1, Lcom/htc/android/mail/huxservice/HUXPROV;->http_body_s:Ljava/lang/String;

    .line 309
    if-nez p1, :cond_1

    .line 339
    .end local p1
    :cond_0
    :goto_0
    return-object v1

    .line 310
    .restart local p1
    :cond_1
    const/4 v3, 0x0

    .line 311
    .local v3, e:Lorg/apache/http/HttpEntity;
    const/4 v1, 0x0

    .line 313
    .local v1, body:Ljava/lang/String;
    instance-of v10, p1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v10, :cond_4

    .line 314
    check-cast p1, Lorg/apache/http/client/methods/HttpPost;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpPost;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 321
    :cond_2
    :goto_1
    if-eqz v3, :cond_0

    .line 323
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    long-to-int v6, v10

    .local v6, len:I
    if-gtz v6, :cond_3

    const v6, 0x186a0

    .line 324
    :cond_3
    new-array v0, v6, [B

    .line 325
    .local v0, b:[B
    const/4 v8, 0x0

    .line 326
    .local v8, offset:I
    const/4 v9, 0x0

    .line 328
    .local v9, total:I
    :try_start_0
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 329
    .local v5, is:Ljava/io/InputStream;
    :goto_2
    sub-int v10, v6, v8

    invoke-virtual {v5, v0, v8, v10}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .local v7, len2:I
    if-lez v7, :cond_6

    .line 330
    add-int/2addr v8, v7

    .line 331
    add-int/2addr v9, v7

    goto :goto_2

    .line 315
    .end local v0           #b:[B
    .end local v5           #is:Ljava/io/InputStream;
    .end local v6           #len:I
    .end local v7           #len2:I
    .end local v8           #offset:I
    .end local v9           #total:I
    .restart local p1
    :cond_4
    instance-of v10, p1, Lorg/apache/http/client/methods/HttpPut;

    if-eqz v10, :cond_5

    .line 316
    check-cast p1, Lorg/apache/http/client/methods/HttpPut;

    .end local p1
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpPut;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    goto :goto_1

    .line 317
    .restart local p1
    :cond_5
    instance-of v10, p1, Lorg/apache/http/HttpResponse;

    if-eqz v10, :cond_2

    .line 318
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    goto :goto_1

    .line 333
    .restart local v0       #b:[B
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v6       #len:I
    .restart local v7       #len2:I
    .restart local v8       #offset:I
    .restart local v9       #total:I
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-direct {v2, v0, v10, v9}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 334
    .end local v1           #body:Ljava/lang/String;
    .local v2, body:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 338
    .end local v2           #body:Ljava/lang/String;
    .end local v5           #is:Ljava/io/InputStream;
    .end local v7           #len2:I
    .restart local v1       #body:Ljava/lang/String;
    :cond_7
    :goto_3
    sput-object v1, Lcom/htc/android/mail/huxservice/HUXPROV;->http_body_s:Ljava/lang/String;

    goto :goto_0

    .line 335
    :catch_0
    move-exception v4

    .line 336
    .local v4, e1:Ljava/lang/Exception;
    :goto_4
    sget-boolean v10, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v10, :cond_7

    const-string v10, "HUXPROV"

    const-string v11, "*read exception"

    invoke-static {v10, v11, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    .line 335
    .end local v1           #body:Ljava/lang/String;
    .end local v4           #e1:Ljava/lang/Exception;
    .restart local v2       #body:Ljava/lang/String;
    .restart local v5       #is:Ljava/io/InputStream;
    .restart local v7       #len2:I
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2           #body:Ljava/lang/String;
    .restart local v1       #body:Ljava/lang/String;
    goto :goto_4
.end method

.method public http_dump(Lorg/apache/http/HttpMessage;)Ljava/lang/String;
    .locals 4
    .parameter "message"

    .prologue
    .line 295
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 303
    :cond_0
    :goto_0
    return-object v1

    .line 296
    :cond_1
    const-string v1, ""

    .line 297
    .local v1, s:Ljava/lang/String;
    instance-of v2, p1, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v2, :cond_3

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpRequestBase;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/huxservice/HUXPROV;->http_body(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v0

    .local v0, body:Ljava/lang/String;
    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 299
    .end local v0           #body:Ljava/lang/String;
    :cond_3
    instance-of v2, p1, Lorg/apache/http/HttpResponse;

    if-eqz v2, :cond_2

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v2, p1

    check-cast v2, Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public prov_cmd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;
    .locals 18
    .parameter "cmd"
    .parameter "uri"
    .parameter "body"

    .prologue
    .line 164
    const/4 v14, 0x0

    .line 165
    .local v14, httpClient:Landroid/net/http/AndroidHttpClient;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/huxservice/HUXPROV;->mCmd:Ljava/lang/String;

    .line 166
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/huxservice/HUXPROV;->mUri:Ljava/lang/String;

    .line 167
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/mail/huxservice/HUXPROV;->mBody:Ljava/lang/String;

    .line 169
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_code:I

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0341

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_mess:Ljava/lang/String;

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mRequestStartTime:J

    .line 173
    const-string v2, "HUXPROV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProvRequest: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "HUXPROV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProvRequest body:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/android/mail/MailCommon;->checkNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    const-string v2, "HUXPROV"

    const-string v4, "HTTP_NO_NETWORK"

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    new-instance v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    const/4 v3, -0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mCmd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mBody:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mContext:Landroid/content/Context;

    const v17, 0x7f0b01c1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct/range {v2 .. v11}, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;)V

    .line 243
    :goto_0
    return-object v2

    .line 186
    :cond_1
    const-string v2, "Android-HUX/0.1"

    invoke-static {v2}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v14

    .line 187
    invoke-virtual {v14}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v4, "http.connection.timeout"

    new-instance v5, Ljava/lang/Integer;

    const v6, 0xafc8

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 188
    invoke-virtual {v14}, Landroid/net/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    const-string v4, "http.socket.timeout"

    new-instance v5, Ljava/lang/Integer;

    const v6, 0xafc8

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v4, v5}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 190
    const/4 v3, -0x1

    .line 191
    .local v3, status:I
    new-instance v9, Ljava/lang/Object;

    invoke-direct/range {v9 .. v9}, Ljava/lang/Object;-><init>()V

    .line 192
    .local v9, root:Ljava/lang/Object;
    const-string v8, ""

    .line 195
    .local v8, responseText:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mCmd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mBody:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lcom/htc/android/mail/huxservice/HUXPROV;->gen_http_request(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v14, v2}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mResponse:Lorg/apache/http/HttpResponse;

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mResponse:Lorg/apache/http/HttpResponse;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/android/mail/huxservice/HUXPROV;->http_dump(Lorg/apache/http/HttpMessage;)Ljava/lang/String;

    move-result-object v8

    .line 201
    if-nez v8, :cond_2

    .line 202
    const-string v8, "HttpTask Exception~"

    .line 204
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mResponse:Lorg/apache/http/HttpResponse;

    if-nez v2, :cond_9

    const/4 v3, -0x1

    .line 206
    :goto_1
    if-lez v3, :cond_4

    const/16 v2, 0xc8

    if-lt v3, v2, :cond_3

    const/16 v2, 0x12c

    if-le v3, v2, :cond_4

    .line 208
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_mess:Ljava/lang/String;

    .line 211
    :cond_4
    sget-object v2, Lcom/htc/android/mail/huxservice/HUXPROV;->http_body_s:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xml_xobj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 212
    const-string v2, "error"

    invoke-static {v9, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/HashMap;

    .local v16, xobj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v16, :cond_7

    .line 214
    const-string v2, "code"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 215
    .local v12, code:Ljava/lang/String;
    const-string v2, "message"

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Lcom/htc/android/mail/huxservice/XOBJ;->xobj_find_text(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 217
    .local v15, mess:Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 218
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_code:I

    .line 220
    :cond_5
    if-eqz v15, :cond_6

    .line 221
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_mess:Ljava/lang/String;

    .line 224
    :cond_6
    const-string v2, "HUXPROV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mError_code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mError_mess: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_mess:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .end local v12           #code:Ljava/lang/String;
    .end local v15           #mess:Ljava/lang/String;
    .end local v16           #xobj:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    :goto_2
    invoke-virtual {v14}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 239
    const-string v2, "HUXPROV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProvResponse: status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cmd:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error_code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_code:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error_msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_mess:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Server response time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mRequestStartTime:J

    sub-long/2addr v5, v10

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-boolean v2, Lcom/htc/android/mail/Mail;->MAIL_DETAIL_DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "HUXPROV"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ProvResponse body:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_8
    new-instance v2, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mCmd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mBody:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_code:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_mess:Ljava/lang/String;

    invoke-direct/range {v2 .. v11}, Lcom/htc/android/mail/huxservice/HUXUTIL$ProvResult;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto/16 :goto_1

    .line 227
    :catch_0
    move-exception v13

    .line 228
    .local v13, e:Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HUXPROV"

    const-string v4, "HttpTask Exception!!!"

    invoke-static {v2, v4, v13}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 229
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 230
    invoke-static {v13}, Lcom/htc/android/mail/eassvc/core/SyncManager;->convertException(Ljava/lang/Exception;)Lcom/htc/android/mail/eassvc/core/SyncException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/core/SyncException;->getCode()I

    move-result v3

    .line 231
    invoke-static {v3}, Lcom/htc/android/mail/eassvc/core/SyncManager;->isNetworkException(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 232
    const/4 v3, -0x1

    .line 233
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/mail/huxservice/HUXPROV;->mError_code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2

    .line 236
    .end local v13           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v14}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v2
.end method

.method public prov_notify_token(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "token"
    .parameter "expiryDate"
    .parameter "uri"

    .prologue
    .line 347
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mToken:Ljava/lang/String;

    .line 348
    iput-object p2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mTokenExpiry:Ljava/lang/String;

    .line 349
    const-string v0, "snc.account.state.registered"

    iput-object v0, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mState:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setToken(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "token"

    .prologue
    .line 353
    invoke-static {p1, p2}, Lcom/htc/android/mail/Account;->setToken(Landroid/content/Context;Ljava/lang/String;)V

    .line 354
    iput-object p2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mToken:Ljava/lang/String;

    .line 355
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .parameter "token"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mToken:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setTokenExpiry(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "tokenEexpiryDate"

    .prologue
    .line 358
    invoke-static {p1, p2}, Lcom/htc/android/mail/Account;->setTokenExpiry(Landroid/content/Context;Ljava/lang/String;)V

    .line 359
    iput-object p2, p0, Lcom/htc/android/mail/huxservice/HUXPROV;->mTokenExpiry:Ljava/lang/String;

    .line 360
    return-void
.end method
