.class public Lcom/google/android/finsky/api/DfeApiContext;
.super Ljava/lang/Object;
.source "DfeApiContext.java"


# static fields
.field private static sCachedSmallestScreenWidthDp:I


# instance fields
.field private final mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

.field private final mCache:Lcom/android/volley/Cache;

.field private final mContext:Landroid/content/Context;

.field private final mExperiments:Lcom/google/android/finsky/experiments/Experiments;

.field private mHasPerformedInitialTokenInvalidation:Z

.field private final mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastAuthToken:Ljava/lang/String;

.field private final mNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, -0x1

    sput v0, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/volley/toolbox/AndroidAuthenticator;Lcom/android/volley/Cache;Lcom/google/android/finsky/experiments/Experiments;Lcom/google/android/finsky/api/DfeNotificationManager;Ljava/lang/String;IILjava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "authenticator"
    .parameter "cache"
    .parameter "experiments"
    .parameter "notificationManager"
    .parameter "appVersionString"
    .parameter "appVersionCode"
    .parameter "apiVersion"
    .parameter "locale"
    .parameter "mccmnc"
    .parameter "clientId"
    .parameter "loggingId"
    .parameter "contentFilterLevel"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    .line 86
    iput-object p1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mContext:Landroid/content/Context;

    .line 87
    iput-object p2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    .line 88
    iput-object p3, p0, Lcom/google/android/finsky/api/DfeApiContext;->mCache:Lcom/android/volley/Cache;

    .line 89
    iput-object p5, p0, Lcom/google/android/finsky/api/DfeApiContext;->mNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;

    .line 90
    iput-object p4, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/Experiments;

    .line 91
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v3, "X-DFE-Device-Id"

    sget-object v1, Lcom/google/android/finsky/api/DfeApiConfig;->androidId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "Accept-Language"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "X-DFE-MCCMNC"

    move-object/from16 v0, p10

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_0
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "X-DFE-Client-Id"

    move-object/from16 v0, p11

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "X-DFE-Logging-Id"

    move-object/from16 v0, p12

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "User-Agent"

    invoke-direct {p0, p6, p7, p8}, Lcom/google/android/finsky/api/DfeApiContext;->makeUserAgentString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "X-DFE-SmallestScreenWidthDp"

    invoke-direct {p0, p1}, Lcom/google/android/finsky/api/DfeApiContext;->getSmallestScreenWidthDp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    const-string v2, "X-DFE-Filter-Level"

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-direct {p0}, Lcom/google/android/finsky/api/DfeApiContext;->checkUrlRules()V

    .line 110
    return-void
.end method

.method private static checkUrlIsSecure(Ljava/lang/String;)V
    .locals 5
    .parameter "url"

    .prologue
    .line 135
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, parsed:Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "corp.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "192.168.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    :cond_0
    return-void

    .line 141
    .end local v1           #parsed:Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 142
    .local v0, e:Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot parse URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/DfeLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    .end local v0           #e:Ljava/net/MalformedURLException;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Insecure URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private checkUrlRules()V
    .locals 5

    .prologue
    .line 116
    sget-object v2, Lcom/google/android/finsky/api/DfeApi;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, uriString:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/google/android/volley/UrlTools;->rewrite(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, rewritten:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 119
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BASE_URI blocked by UrlRules: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 121
    :cond_0
    invoke-static {v0}, Lcom/google/android/finsky/api/DfeApiContext;->checkUrlIsSecure(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/volley/Cache;Lcom/google/android/finsky/experiments/Experiments;Lcom/google/android/finsky/api/DfeNotificationManager;Ljava/lang/String;I)Lcom/google/android/finsky/api/DfeApiContext;
    .locals 21
    .parameter "context"
    .parameter "cache"
    .parameter "experiments"
    .parameter "dfeNotificationManager"
    .parameter "accountName"
    .parameter "contentFilterLevel"

    .prologue
    .line 61
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v16

    .line 62
    .local v16, account:Landroid/accounts/Account;
    new-instance v4, Lcom/android/volley/toolbox/AndroidAuthenticator;

    sget-object v2, Lcom/google/android/finsky/api/DfeApiConfig;->authTokenType:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1, v2}, Lcom/android/volley/toolbox/AndroidAuthenticator;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 66
    .local v4, authenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 67
    .local v19, pm:Landroid/content/pm/PackageManager;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    .line 68
    .local v18, pi:Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v18

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 69
    .local v8, appVersionName:Ljava/lang/String;
    move-object/from16 v0, v18

    iget v9, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 70
    .local v9, appVersionCode:I
    const-string v2, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/telephony/TelephonyManager;

    .line 72
    .local v20, telephonyManager:Landroid/telephony/TelephonyManager;
    new-instance v2, Lcom/google/android/finsky/api/DfeApiContext;

    const/4 v10, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v12

    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->clientId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v3, Lcom/google/android/finsky/api/DfeApiConfig;->loggingId:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v15, p5

    invoke-direct/range {v2 .. v15}, Lcom/google/android/finsky/api/DfeApiContext;-><init>(Landroid/content/Context;Lcom/android/volley/toolbox/AndroidAuthenticator;Lcom/android/volley/Cache;Lcom/google/android/finsky/experiments/Experiments;Lcom/google/android/finsky/api/DfeNotificationManager;Ljava/lang/String;IILjava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 77
    .end local v8           #appVersionName:Ljava/lang/String;
    .end local v9           #appVersionCode:I
    .end local v18           #pi:Landroid/content/pm/PackageInfo;
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    .end local v20           #telephonyManager:Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v17

    .line 78
    .local v17, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Can\'t find our own package"

    move-object/from16 v0, v17

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getSmallestScreenWidthDp(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 253
    sget v3, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 254
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xe

    if-lt v3, v4, :cond_1

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    sput v3, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I

    .line 265
    :cond_0
    :goto_0
    sget v3, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 258
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 259
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v2, v3

    .line 260
    .local v2, widthDp:I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    float-to-int v0, v3

    .line 262
    .local v0, heightDp:I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    sput v3, Lcom/google/android/finsky/api/DfeApiContext;->sCachedSmallestScreenWidthDp:I

    goto :goto_0
.end method

.method private makeUserAgentString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8
    .parameter "versionString"
    .parameter "versionCode"
    .parameter "apiVersion"

    .prologue
    .line 148
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/api/DfeApiContext;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, device:Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/api/DfeApiContext;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, hardware:Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/finsky/api/DfeApiContext;->sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, product:Ljava/lang/String;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Android-Finsky/%s (api=%d,versionCode=%d,sdk=%d,device=%s,hardware=%s,product=%s)"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    aput-object v0, v5, v6

    const/4 v6, 0x5

    aput-object v1, v5, v6

    const/4 v6, 0x6

    aput-object v2, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method static sanitizeHeaderValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 158
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "("

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ")"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v0}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeApiContext;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 173
    .local v0, currentAccount:Landroid/accounts/Account;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCache()Lcom/android/volley/Cache;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mCache:Lcom/android/volley/Cache;

    return-object v0
.end method

.method public getExperiments()Lcom/google/android/finsky/experiments/Experiments;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/Experiments;

    return-object v0
.end method

.method public declared-synchronized getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/AuthFailureError;
        }
    .end annotation

    .prologue
    .line 214
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHasPerformedInitialTokenInvalidation:Z

    if-nez v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/google/android/finsky/api/DfeApiContext;->invalidateAuthToken()V

    .line 216
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHasPerformedInitialTokenInvalidation:Z

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    invoke-virtual {v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;->getAuthToken()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v0, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 222
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/Experiments;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/Experiments;

    invoke-interface {v1}, Lcom/google/android/finsky/experiments/Experiments;->hasEnabledExperiments()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const-string v1, "X-DFE-Enabled-Experiments"

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/Experiments;

    invoke-interface {v2}, Lcom/google/android/finsky/experiments/Experiments;->getEnabledExperimentsHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :cond_1
    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/Experiments;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/Experiments;

    invoke-interface {v1}, Lcom/google/android/finsky/experiments/Experiments;->hasUnsupportedExperiments()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    const-string v1, "X-DFE-Unsupported-Experiments"

    iget-object v2, p0, Lcom/google/android/finsky/api/DfeApiContext;->mExperiments:Lcom/google/android/finsky/experiments/Experiments;

    invoke-interface {v2}, Lcom/google/android/finsky/experiments/Experiments;->getUnsupportedExperimentsHeaderValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_2
    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GoogleLogin auth="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-object v0

    .line 214
    .end local v0           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getNotificationManager()Lcom/google/android/finsky/api/DfeNotificationManager;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mNotificationManager:Lcom/google/android/finsky/api/DfeNotificationManager;

    return-object v0
.end method

.method public invalidateAuthToken()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mAuthenticator:Lcom/android/volley/toolbox/AndroidAuthenticator;

    iget-object v1, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/AndroidAuthenticator;->invalidateAuthToken(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/api/DfeApiContext;->mLastAuthToken:Ljava/lang/String;

    .line 188
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 236
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    .local v3, sb:Ljava/lang/StringBuilder;
    const-string v4, "[DfeApiContext headers={"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const/4 v0, 0x1

    .line 239
    .local v0, first:Z
    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 240
    .local v1, header:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 245
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/google/android/finsky/api/DfeApiContext;->mHeaders:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 243
    :cond_0
    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 247
    .end local v1           #header:Ljava/lang/String;
    :cond_1
    const-string v4, "}]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
