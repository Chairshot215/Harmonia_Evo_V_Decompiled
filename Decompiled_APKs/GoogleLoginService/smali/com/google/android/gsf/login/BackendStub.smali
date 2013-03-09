.class public Lcom/google/android/gsf/login/BackendStub;
.super Ljava/lang/Object;
.source "BackendStub.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/BackendStub$Detail;,
        Lcom/google/android/gsf/login/BackendStub$Key;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    iput-object p1, p0, Lcom/google/android/gsf/login/BackendStub;->mContext:Landroid/content/Context;

    .line 211
    return-void
.end method

.method private addCountryInfo(Landroid/content/Context;Lorg/json/JSONStringer;)V
    .locals 3
    .parameter "context"
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 297
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 300
    .local v0, telephony:Landroid/telephony/TelephonyManager;
    sget-object v1, Lcom/google/android/gsf/login/BackendStub$Key;->OPERATOR_COUNTRY:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v1}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v1

    sget-object v2, Lcom/google/android/gsf/login/BackendStub$Key;->SIM_COUNTRY:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 304
    return-void
.end method

.method private static copyCaptchaData(Lorg/json/JSONObject;Ljava/util/HashMap;)V
    .locals 7
    .parameter "from"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p1, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .line 511
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/google/android/gsf/login/BackendStub$Key;

    sget-object v4, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_DATA:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    sget-object v5, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_MIME_TYPE:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v5, v3, v4

    invoke-static {p0, p1, v3}, Lcom/google/android/gsf/login/BackendStub;->copyData(Lorg/json/JSONObject;Ljava/util/HashMap;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 515
    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_DATA:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 518
    .local v0, base64EncodedCaptchaData:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 532
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-static {v0, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 527
    .local v2, captchaData:[B
    array-length v3, v2

    invoke-static {v2, v6, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 529
    .local v1, captchaBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    const-string v3, "GLSActivity"

    const-string v4, "Failed to read bitmap"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_1
    sget-object v3, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_BITMAP:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v3}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static copyData(Ljava/util/HashMap;Lorg/json/JSONStringer;[Lcom/google/android/gsf/login/BackendStub$Key;)V
    .locals 9
    .parameter
    .parameter "json"
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONStringer;",
            "[",
            "Lcom/google/android/gsf/login/BackendStub$Key;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 547
    .local p0, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    sget-object v7, Lcom/google/android/gsf/login/BackendStub$Key;->VERSION:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v7}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    const-string v8, "3"

    invoke-virtual {v7, v8}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 550
    move-object v0, p2

    .local v0, arr$:[Lcom/google/android/gsf/login/BackendStub$Key;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v4, v0, v2

    .line 551
    .local v4, key:Lcom/google/android/gsf/login/BackendStub$Key;
    invoke-virtual {v4}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    .line 552
    .local v3, k:Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 553
    .local v6, value:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p1, v3}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    .end local v0           #arr$:[Lcom/google/android/gsf/login/BackendStub$Key;
    .end local v2           #i$:I
    .end local v3           #k:Ljava/lang/String;
    .end local v4           #key:Lcom/google/android/gsf/login/BackendStub$Key;
    .end local v5           #len$:I
    .end local v6           #value:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 556
    .local v1, e:Lorg/json/JSONException;
    throw v1

    .line 558
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #arr$:[Lcom/google/android/gsf/login/BackendStub$Key;
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    :cond_1
    return-void
.end method

.method private static copyData(Lorg/json/JSONObject;Ljava/util/HashMap;[Lcom/google/android/gsf/login/BackendStub$Key;)V
    .locals 7
    .parameter "from"
    .parameter
    .parameter "keys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;[",
            "Lcom/google/android/gsf/login/BackendStub$Key;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 572
    .local p1, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p2

    .local v0, arr$:[Lcom/google/android/gsf/login/BackendStub$Key;
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v2, v0, v1

    .line 573
    .local v2, key:Lcom/google/android/gsf/login/BackendStub$Key;
    invoke-virtual {v2}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v3

    .line 574
    .local v3, keyOnWire:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 575
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 576
    .local v5, value:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 577
    invoke-virtual {p1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 581
    .end local v2           #key:Lcom/google/android/gsf/login/BackendStub$Key;
    .end local v3           #keyOnWire:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static usernameOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 220
    if-eqz p0, :cond_0

    .line 222
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 223
    .local v0, pos:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 225
    .end local v0           #pos:I
    .end local p0
    :cond_0
    return-object p0
.end method


# virtual methods
.method public checkLoginNameSync(Landroid/content/Context;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Message;Ljava/util/concurrent/atomic/AtomicBoolean;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 15
    .parameter "context"
    .parameter "session"
    .parameter "resultMessage"
    .parameter "isCanceled"

    .prologue
    .line 439
    :try_start_0
    new-instance v9, Lorg/json/JSONStringer;

    invoke-direct {v9}, Lorg/json/JSONStringer;-><init>()V

    .line 440
    .local v9, stringer:Lorg/json/JSONStringer;
    move-object/from16 v0, p2

    iget-object v11, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    .line 442
    .local v11, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v9}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v9

    .line 443
    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v12}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v12

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 445
    const/4 v12, 0x4

    new-array v12, v12, [Lcom/google/android/gsf/login/BackendStub$Key;

    const/4 v13, 0x0

    sget-object v14, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sget-object v14, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v14, v12, v13

    const/4 v13, 0x3

    sget-object v14, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v14, v12, v13

    invoke-static {v11, v9, v12}, Lcom/google/android/gsf/login/BackendStub;->copyData(Ljava/util/HashMap;Lorg/json/JSONStringer;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 447
    invoke-virtual {v9}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 449
    const/4 v4, 0x0

    .line 450
    .local v4, json:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/4 v12, 0x3

    if-ge v3, v12, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v12

    if-nez v12, :cond_0

    .line 452
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v12

    const-string v13, "https://android.clients.google.com/setup/checkavail"

    const-string v14, "checkLoginName"

    invoke-virtual {v12, v13, v9, v14}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->requestJson(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 455
    invoke-static/range {p1 .. p1}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Req: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Res:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 462
    :cond_0
    if-nez v4, :cond_1

    .line 463
    :try_start_2
    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 499
    .end local v3           #i:I
    .end local v4           #json:Ljava/lang/String;
    .end local v9           #stringer:Lorg/json/JSONStringer;
    .end local v11           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    return-object v8

    .line 458
    .restart local v3       #i:I
    .restart local v4       #json:Ljava/lang/String;
    .restart local v9       #stringer:Lorg/json/JSONStringer;
    .restart local v11       #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v12

    .line 450
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 466
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 469
    .local v7, resultJson:Lorg/json/JSONObject;
    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v12}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 470
    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v12}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 471
    .local v5, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 472
    .local v6, len:I
    new-array v10, v6, [Ljava/lang/String;

    .line 473
    .local v10, suggestionsArray:[Ljava/lang/String;
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v6, :cond_2

    .line 474
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v3

    .line 473
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 477
    :cond_2
    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->SUGGESTIONS:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v12}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .end local v5           #jsonArray:Lorg/json/JSONArray;
    .end local v6           #len:I
    .end local v10           #suggestionsArray:[Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    .line 483
    .local v1, detail:Ljava/lang/String;
    invoke-static {v7}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromJSON(Lorg/json/JSONObject;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v8

    .line 484
    .local v8, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    sget-object v12, Lcom/google/android/gsf/loginservice/GLSUser$Status;->USERNAME_UNAVAILABLE:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v8, v12, :cond_4

    .line 485
    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v12}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 486
    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v12}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #detail:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 488
    .restart local v1       #detail:Ljava/lang/String;
    :cond_4
    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v12}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    invoke-static {v7, v11}, Lcom/google/android/gsf/login/BackendStub;->copyCaptchaData(Lorg/json/JSONObject;Ljava/util/HashMap;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 494
    .end local v1           #detail:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #json:Ljava/lang/String;
    .end local v7           #resultJson:Lorg/json/JSONObject;
    .end local v8           #status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .end local v9           #stringer:Lorg/json/JSONStringer;
    .end local v11           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v2

    .line 495
    .local v2, e:Lorg/json/JSONException;
    const-string v12, "GLSActivity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_REQUEST:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_1

    .line 497
    .end local v2           #e:Lorg/json/JSONException;
    :catch_2
    move-exception v2

    .line 498
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "GLSActivity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sget-object v8, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_REQUEST:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto/16 :goto_1
.end method

.method public createAccountSync(Landroid/content/Context;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 13
    .parameter "context"
    .parameter "session"

    .prologue
    .line 337
    :try_start_0
    new-instance v7, Lorg/json/JSONStringer;

    invoke-direct {v7}, Lorg/json/JSONStringer;-><init>()V

    .line 338
    .local v7, stringer:Lorg/json/JSONStringer;
    invoke-virtual {v7}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v7

    .line 341
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->getAndroidIdHex()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, aid:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 343
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->ANDROID_ID:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    invoke-virtual {v10, v0}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 345
    :cond_0
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    iget-object v11, p2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 346
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->SECURITY_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    iget-object v11, p2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSecurityAnswer:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 347
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->SECURITY_QUESTION:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    iget-object v11, p2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSecurityQuestion:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 348
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->SECONDARY_EMAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    iget-object v11, p2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mSecondaryEmail:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 350
    iget-object v9, p2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    .line 351
    .local v9, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v10, 0x7

    new-array v10, v10, [Lcom/google/android/gsf/login/BackendStub$Key;

    const/4 v11, 0x0

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->SID:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_TOKEN:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x5

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->CAPTCHA_ANSWER:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    const/4 v11, 0x6

    sget-object v12, Lcom/google/android/gsf/login/BackendStub$Key;->AGREE_WEB_HISTORY:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v12, v10, v11

    invoke-static {v9, v7, v10}, Lcom/google/android/gsf/login/BackendStub;->copyData(Ljava/util/HashMap;Lorg/json/JSONStringer;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 358
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 359
    .local v3, locale:Ljava/lang/String;
    const-string v10, "GLSActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Creating account with locale \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->LOCALE:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 361
    invoke-direct {p0, p1, v7}, Lcom/google/android/gsf/login/BackendStub;->addCountryInfo(Landroid/content/Context;Lorg/json/JSONStringer;)V

    .line 363
    invoke-virtual {v7}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 365
    new-instance v5, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v10

    const-string v11, "https://android.clients.google.com/setup/create"

    const-string v12, "createAccount"

    invoke-virtual {v10, v11, v7, v12}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->requestJson(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 372
    .local v5, resultJson:Lorg/json/JSONObject;
    invoke-static {v5}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromJSON(Lorg/json/JSONObject;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v4

    .line 378
    .local v4, result:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    sget-object v10, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-eq v10, v4, :cond_1

    sget-object v10, Lcom/google/android/gsf/loginservice/GLSUser$Status;->ALREADY_HAS_GMAIL:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v10, v4, :cond_4

    .line 381
    :cond_1
    const-string v10, "services"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 382
    .local v6, services:Ljava/lang/String;
    if-nez v6, :cond_2

    .line 383
    const-string v6, "mail,talk,pages,ig,lh2,reader"

    .line 386
    :cond_2
    iget-object v10, p0, Lcom/google/android/gsf/login/BackendStub;->mContext:Landroid/content/Context;

    iget-object v11, p2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/google/android/gsf/loginservice/GLSUser;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gsf/loginservice/GLSUser;

    move-result-object v8

    .line 387
    .local v8, user:Lcom/google/android/gsf/loginservice/GLSUser;
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/google/android/gsf/loginservice/GLSUser;->setPassword(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v8, p2}, Lcom/google/android/gsf/loginservice/GLSUser;->addCreatedAccount(Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;)V

    .line 391
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    .line 413
    .end local v0           #aid:Ljava/lang/String;
    .end local v3           #locale:Ljava/lang/String;
    .end local v4           #result:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .end local v5           #resultJson:Lorg/json/JSONObject;
    .end local v6           #services:Ljava/lang/String;
    .end local v7           #stringer:Lorg/json/JSONStringer;
    .end local v8           #user:Lcom/google/android/gsf/loginservice/GLSUser;
    .end local v9           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    :goto_0
    return-object v4

    .line 392
    .restart local v0       #aid:Ljava/lang/String;
    .restart local v3       #locale:Ljava/lang/String;
    .restart local v4       #result:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .restart local v5       #resultJson:Lorg/json/JSONObject;
    .restart local v7       #stringer:Lorg/json/JSONStringer;
    .restart local v9       #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    sget-object v10, Lcom/google/android/gsf/loginservice/GLSUser$Status;->CAPTCHA:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v10, v4, :cond_5

    .line 393
    invoke-static {v5, v9}, Lcom/google/android/gsf/login/BackendStub;->copyCaptchaData(Lorg/json/JSONObject;Ljava/util/HashMap;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 405
    .end local v0           #aid:Ljava/lang/String;
    .end local v3           #locale:Ljava/lang/String;
    .end local v4           #result:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .end local v5           #resultJson:Lorg/json/JSONObject;
    .end local v7           #stringer:Lorg/json/JSONStringer;
    .end local v9           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v2

    .line 406
    .local v2, e:Lorg/json/JSONException;
    const-string v10, "GLSActivity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .end local v2           #e:Lorg/json/JSONException;
    :goto_1
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_REQUEST:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_0

    .line 394
    .restart local v0       #aid:Ljava/lang/String;
    .restart local v3       #locale:Ljava/lang/String;
    .restart local v4       #result:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .restart local v5       #resultJson:Lorg/json/JSONObject;
    .restart local v7       #stringer:Lorg/json/JSONStringer;
    .restart local v9       #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    :try_start_1
    sget-object v10, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_REQUEST:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    if-ne v10, v4, :cond_3

    .line 396
    :try_start_2
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, detail:Ljava/lang/String;
    sget-object v10, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v10}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 399
    .end local v1           #detail:Ljava/lang/String;
    :catch_1
    move-exception v10

    goto :goto_0

    .line 407
    .end local v0           #aid:Ljava/lang/String;
    .end local v3           #locale:Ljava/lang/String;
    .end local v4           #result:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .end local v5           #resultJson:Lorg/json/JSONObject;
    .end local v7           #stringer:Lorg/json/JSONStringer;
    .end local v9           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_2
    move-exception v2

    .line 408
    .local v2, e:Ljava/lang/IllegalArgumentException;
    const-string v10, "GLSActivity"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 409
    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 410
    .local v2, e:Ljava/io/IOException;
    sget-object v4, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_0
.end method

.method public ratePasswordSync(Landroid/content/Context;Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;Landroid/os/Message;)Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .locals 9
    .parameter "context"
    .parameter "session"
    .parameter "resultMessage"

    .prologue
    .line 256
    :try_start_0
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 257
    .local v4, stringer:Lorg/json/JSONStringer;
    iget-object v5, p2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUserData:Ljava/util/HashMap;

    .line 258
    .local v5, userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v4

    .line 259
    sget-object v6, Lcom/google/android/gsf/login/BackendStub$Key;->USERNAME:Lcom/google/android/gsf/login/BackendStub$Key;

    invoke-virtual {v6}, Lcom/google/android/gsf/login/BackendStub$Key;->getWire()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v6

    iget-object v7, p2, Lcom/google/android/gsf/loginservice/GLSUser$GLSSession;->mUsername:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 261
    const/4 v6, 0x3

    new-array v6, v6, [Lcom/google/android/gsf/login/BackendStub$Key;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/gsf/login/BackendStub$Key;->PASSWORD:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gsf/login/BackendStub$Key;->FIRST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/google/android/gsf/login/BackendStub$Key;->LAST_NAME:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v8, v6, v7

    invoke-static {v5, v4, v6}, Lcom/google/android/gsf/login/BackendStub;->copyData(Ljava/util/HashMap;Lorg/json/JSONStringer;[Lcom/google/android/gsf/login/BackendStub$Key;)V

    .line 263
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 265
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v6

    const-string v7, "https://android.clients.google.com/setup/ratepw"

    const-string v8, "ratePassword"

    invoke-virtual {v6, v7, v4, v8}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->requestJson(Ljava/lang/String;Lorg/json/JSONStringer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, json:Ljava/lang/String;
    invoke-static {p1}, Lcom/google/android/gsf/loginservice/GLSUser;->getGLSContext(Landroid/content/Context;)Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Req: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Res:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gsf/loginservice/GLSUser$GLSContext;->log(Ljava/lang/String;)V

    .line 271
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 273
    .local v2, resultJson:Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/google/android/gsf/loginservice/GLSUser$Status;->fromJSON(Lorg/json/JSONObject;)Lcom/google/android/gsf/loginservice/GLSUser$Status;

    move-result-object v3

    .line 275
    .local v3, status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    sget-object v6, Lcom/google/android/gsf/loginservice/GLSUser$Status;->SUCCESS:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    if-ne v6, v3, :cond_0

    .line 276
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/android/gsf/login/BackendStub$Key;

    const/4 v7, 0x0

    sget-object v8, Lcom/google/android/gsf/login/BackendStub$Key;->DETAIL:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/google/android/gsf/login/BackendStub$Key;->STRENGTH:Lcom/google/android/gsf/login/BackendStub$Key;

    aput-object v8, v6, v7

    invoke-static {v2, v5, v6}, Lcom/google/android/gsf/login/BackendStub;->copyData(Lorg/json/JSONObject;Ljava/util/HashMap;[Lcom/google/android/gsf/login/BackendStub$Key;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 286
    .end local v1           #json:Ljava/lang/String;
    .end local v2           #resultJson:Lorg/json/JSONObject;
    .end local v3           #status:Lcom/google/android/gsf/loginservice/GLSUser$Status;
    .end local v4           #stringer:Lorg/json/JSONStringer;
    .end local v5           #userData:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    return-object v3

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Lorg/json/JSONException;
    const-string v6, "GLSActivity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    .end local v0           #e:Lorg/json/JSONException;
    :goto_1
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$Status;->BAD_REQUEST:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_0

    .line 281
    :catch_1
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v6, "GLSActivity"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 283
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 284
    .local v0, e:Ljava/io/IOException;
    sget-object v3, Lcom/google/android/gsf/loginservice/GLSUser$Status;->NETWORK_ERROR:Lcom/google/android/gsf/loginservice/GLSUser$Status;

    goto :goto_0
.end method
