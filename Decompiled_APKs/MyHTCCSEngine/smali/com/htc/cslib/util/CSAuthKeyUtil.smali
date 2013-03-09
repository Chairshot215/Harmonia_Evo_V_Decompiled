.class public Lcom/htc/cslib/util/CSAuthKeyUtil;
.super Ljava/lang/Object;
.source "CSAuthKeyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cslib/util/CSAuthKeyUtil$Info;
    }
.end annotation


# static fields
.field public static final AUTHKEY_COLUMN:I = 0x9

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "content://com.htc.csengine.csprovider/csengine"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/cslib/util/CSAuthKeyUtil;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    return-void
.end method

.method public static HandsetLogin(Landroid/content/Context;)Ljava/lang/String;
    .locals 20
    .parameter "mContext_"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    :try_start_0
    new-instance v14, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;-><init>(Landroid/content/Context;)V

    .line 43
    .local v14, info:Lcom/htc/cslib/util/CSAuthKeyUtil$Info;
    new-instance v2, Lcom/htc/cslib/util/CSCookie;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/htc/cslib/util/CSCookie;-><init>(Landroid/content/Context;)V

    .line 44
    .local v2, cookie:Lcom/htc/cslib/util/CSCookie;
    iget-object v1, v14, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;->hashpw:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->createAuthTicket(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 51
    .local v10, authTicket:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Lcom/htc/cslib/util/CSDatabaseUtil;->getServiceURL(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 52
    .local v19, sUrl:Ljava/lang/String;
    const/4 v5, 0x0

    .line 53
    .local v5, url:Ljava/lang/String;
    const-string v1, "/"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "%sServices/Accounts.svc/Accounts/HandsetLogin/%s/"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v19, v3, v4

    const/4 v4, 0x1

    iget-object v6, v14, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;->deviceID:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 59
    :goto_0
    const-string v17, ""

    .line 62
    .local v17, paramObj:Ljava/lang/String;
    new-instance v17, Lorg/json/JSONObject;

    .end local v17           #paramObj:Ljava/lang/String;
    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v17, paramObj:Lorg/json/JSONObject;
    move-object/from16 v0, v17

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    const-string v3, "emailAddress"

    iget-object v4, v14, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;->email:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/cslib/util/CSRestProxyUtil;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    move-object/from16 v0, v17

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    const-string v3, "AuthTicket"

    invoke-static {v10}, Lcom/htc/cslib/util/CSRestProxyUtil;->toJson(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v16

    .line 68
    .local v16, jsonSend:Ljava/lang/String;
    new-instance v8, Lcom/htc/cslib/util/JSONRequest$StreamableString;

    const-string v1, "\\\\"

    const-string v3, "\\"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Lcom/htc/cslib/util/JSONRequest$StreamableString;-><init>(Ljava/lang/String;)V

    .line 69
    .local v8, outParam:Lcom/htc/cslib/util/JSONRequest$StreamableString;
    new-instance v9, Lcom/htc/cslib/util/JSONRequest$StreamableString;

    invoke-direct {v9}, Lcom/htc/cslib/util/JSONRequest$StreamableString;-><init>()V

    .line 71
    .local v9, inParam:Lcom/htc/cslib/util/JSONRequest$StreamableString;
    iget-object v3, v14, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;->email:Ljava/lang/String;

    iget-object v4, v14, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;->deviceID:Ljava/lang/String;

    sget-object v6, Lcom/htc/cslib/util/JSONRequest$Method;->POST:Lcom/htc/cslib/util/JSONRequest$Method;

    const-string v7, ""

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v9}, Lcom/htc/cslib/util/JSONRequest;->sendHttpRequestViaStreamables(Landroid/content/Context;Lcom/htc/cslib/util/CSCookie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$Method;Ljava/lang/String;Lcom/htc/cslib/util/JSONRequest$WriteStreamable;Lcom/htc/cslib/util/JSONRequest$ReadStreamable;)V

    .line 73
    iget-object v15, v9, Lcom/htc/cslib/util/JSONRequest$StreamableString;->_s:Ljava/lang/String;

    .line 75
    .local v15, jsonRec:Ljava/lang/String;
    new-instance v18, Lcom/htc/cslib/payload/MyDeviceToken$WDeviceToken;

    invoke-direct/range {v18 .. v18}, Lcom/htc/cslib/payload/MyDeviceToken$WDeviceToken;-><init>()V

    .line 77
    .local v18, retObj:Lcom/htc/cslib/payload/MyDeviceToken$WDeviceToken;
    new-instance v1, Lcom/htc/cslib/util/CSAuthKeyUtil$1;

    invoke-direct {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil$1;-><init>()V

    invoke-virtual {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v13

    .line 78
    .local v13, genericType:Ljava/lang/reflect/Type;
    const-class v1, Lcom/htc/cslib/payload/MyDeviceToken$WDeviceToken;

    move-object/from16 v0, v18

    invoke-static {v0, v15, v1, v13}, Lcom/htc/cslib/util/CSRestProxyUtil;->fromJson(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #retObj:Lcom/htc/cslib/payload/MyDeviceToken$WDeviceToken;
    check-cast v18, Lcom/htc/cslib/payload/MyDeviceToken$WDeviceToken;

    .line 84
    .restart local v18       #retObj:Lcom/htc/cslib/payload/MyDeviceToken$WDeviceToken;
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/htc/cslib/payload/MyDeviceToken$WDeviceToken;->AuthKey:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/htc/cslib/util/CSDatabaseUtil;->setAuthKey(Landroid/content/Context;Ljava/lang/String;)V

    .line 86
    move-object/from16 v0, v18

    iget-object v1, v0, Lcom/htc/cslib/payload/MyDeviceToken$WDeviceToken;->AuthKey:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/cslib/util/CSAuthKeyUtil;->_getAuthKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 56
    .end local v8           #outParam:Lcom/htc/cslib/util/JSONRequest$StreamableString;
    .end local v9           #inParam:Lcom/htc/cslib/util/JSONRequest$StreamableString;
    .end local v13           #genericType:Ljava/lang/reflect/Type;
    .end local v15           #jsonRec:Ljava/lang/String;
    .end local v16           #jsonSend:Ljava/lang/String;
    .end local v17           #paramObj:Lorg/json/JSONObject;
    .end local v18           #retObj:Lcom/htc/cslib/payload/MyDeviceToken$WDeviceToken;
    :cond_0
    const-string v1, "%s/Services/Accounts.svc/Accounts/HandsetLogin/%s/"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v19, v3, v4

    const/4 v4, 0x1

    iget-object v6, v14, Lcom/htc/cslib/util/CSAuthKeyUtil$Info;->deviceID:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/htc/cslib/exceptions/MyCSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto/16 :goto_0

    .line 89
    .end local v2           #cookie:Lcom/htc/cslib/util/CSCookie;
    .end local v5           #url:Ljava/lang/String;
    .end local v10           #authTicket:Ljava/lang/String;
    .end local v14           #info:Lcom/htc/cslib/util/CSAuthKeyUtil$Info;
    .end local v19           #sUrl:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 90
    .local v11, csException:Lcom/htc/cslib/exceptions/MyCSException;
    const-string v1, "cslib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " HandsetLogin CSException "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/htc/cslib/exceptions/MyCSException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    throw v11

    .line 93
    .end local v11           #csException:Lcom/htc/cslib/exceptions/MyCSException;
    :catch_1
    move-exception v12

    .line 94
    .local v12, e:Ljava/lang/Exception;
    const-string v1, "cslib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " HandsetLogin Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    throw v12
.end method

.method private static _getAuthKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "AuthKey"

    .prologue
    .line 190
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 198
    .end local p0
    :cond_0
    return-object p0
.end method

.method public static createAuthTicket(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "hashpw"

    .prologue
    .line 149
    invoke-static {p0}, Lcom/htc/cscore/util/CSUtil;->getServerTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 150
    .local v0, rawDate:J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/htc/cscore/restapi/utility/Whirlpool;->WhirlPoolHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, token:Ljava/lang/String;
    const-string v3, "%s.%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getAuthKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, ""

    .line 166
    .local v8, temp:Ljava/lang/String;
    :try_start_0
    sget-object v1, Lcom/htc/cslib/util/CSAuthKeyUtil;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 167
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/16 v1, 0x9

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 170
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v1, v9

    .line 180
    .end local v6           #c:Landroid/database/Cursor;
    :goto_0
    return-object v1

    .line 171
    :catch_0
    move-exception v7

    .line 173
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v9

    .line 174
    goto :goto_0

    .line 180
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_2
    invoke-static {v8}, Lcom/htc/cslib/util/CSAuthKeyUtil;->_getAuthKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
