.class public Lcom/google/android/common/ParentalControl;
.super Ljava/lang/Object;
.source "ParentalControl.java"


# static fields
.field private static final APN_ALREADY_ACTIVE:I = 0x0

.field private static final APN_REQUEST_STARTED:I = 0x1

.field private static final DEFAULT_TIMEOUT_MILLIS:J = 0x2932e00L

.field private static final FEATURE_ENABLE_HIPRI:Ljava/lang/String; = "enableHIPRI"

.field private static final HIPRI_ATTEMPTS:I = 0x14

.field private static final HIPRI_ATTEMPT_MILLIS:I = 0x3e8

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_LANDING_URL:Ljava/lang/String; = "landingUrl"

.field private static final LITMUS_URL:Ljava/lang/String; = "http://android.clients.google.com/content/default"

.field private static final PREFS_NAME:Ljava/lang/String; = "ParentalControl"

.field private static final TAG:Ljava/lang/String; = "ParentalControl"

.field public static final VENDING_APP:Ljava/lang/String; = "vending"

.field public static final YOUTUBE_APP:Ljava/lang/String; = "youtube"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLandingPage(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-static {p0, p1}, Lcom/google/android/common/ParentalControl;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v3

    .line 129
    :goto_0
    return-object v0

    .line 127
    :cond_0
    const-string v0, "ParentalControl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 128
    const-string v1, "landingUrl"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLastCheckState(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 151
    const-string v0, "ParentalControl"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "enabled"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getLastCheckTimeMillis(Landroid/content/Context;)J
    .locals 2
    .parameter

    .prologue
    .line 139
    const-string v0, "ParentalControl"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    new-instance v1, Lcom/android/common/OperationScheduler;

    invoke-direct {v1, v0}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 141
    invoke-virtual {v1}, Lcom/android/common/OperationScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static isEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 94
    const-string v0, "ParentalControl"

    const-string v1, "Network request on main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    const-string v1, "parental_control_check_enabled"

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 112
    :goto_0
    return v0

    .line 103
    :cond_1
    if-eqz p1, :cond_2

    .line 104
    const-string v1, "parental_control_apps_list"

    invoke-static {v0, v1}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 106
    goto :goto_0

    .line 110
    :cond_2
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->maybeCheckState(Landroid/content/Context;)V

    .line 112
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->getLastCheckState(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method private static isHipriActive(Landroid/net/ConnectivityManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 155
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    return v0
.end method

.method private static maybeCheckState(Landroid/content/Context;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 197
    const-string v0, "ParentalControl"

    invoke-virtual {p0, v0, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 198
    new-instance v3, Lcom/android/common/OperationScheduler;

    invoke-direct {v3, v2}, Lcom/android/common/OperationScheduler;-><init>(Landroid/content/SharedPreferences;)V

    .line 199
    new-instance v0, Lcom/android/common/OperationScheduler$Options;

    invoke-direct {v0}, Lcom/android/common/OperationScheduler$Options;-><init>()V

    .line 200
    const-string v4, "parental_control_timeout_in_ms"

    const-wide/32 v5, 0x2932e00

    invoke-static {v1, v4, v5, v6}, Lcom/google/android/gsf/Gservices;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    .line 203
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/1"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->getLastSuccessTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 204
    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/common/OperationScheduler;->setTriggerTimeMillis(J)V

    .line 207
    :cond_0
    invoke-virtual {v3, v0}, Lcom/android/common/OperationScheduler;->getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 289
    :goto_0
    return-void

    .line 211
    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 213
    if-nez v0, :cond_2

    .line 214
    const-string v0, "ParentalControl"

    const-string v1, "Parental control unchanged: No ConnectivityManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_2
    new-instance v4, Lcom/google/android/common/http/GoogleHttpClient;

    const-string v5, "Android-PC"

    invoke-direct {v4, p0, v5, v11}, Lcom/google/android/common/http/GoogleHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 222
    :try_start_0
    invoke-static {v0}, Lcom/google/android/common/ParentalControl;->waitForHipri(Landroid/net/ConnectivityManager;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 223
    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    invoke-virtual {v4}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const-string v1, "enableHIPRI"

    invoke-virtual {v0, v11, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto :goto_0

    .line 227
    :cond_3
    :try_start_1
    const-string v5, "http://android.clients.google.com/content/default"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 228
    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v6

    .line 229
    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    .line 230
    const/4 v8, 0x5

    const/4 v9, 0x3

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x18

    const/4 v10, 0x2

    aget-byte v10, v7, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    const/4 v10, 0x1

    aget-byte v10, v7, v10

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    const/4 v10, 0x0

    aget-byte v7, v7, v10

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v7, v9

    invoke-virtual {v0, v8, v7}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v7

    if-nez v7, :cond_4

    .line 233
    const-string v1, "ParentalControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parental control unchanged: Error rerouting "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 286
    invoke-virtual {v4}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const-string v1, "enableHIPRI"

    invoke-virtual {v0, v11, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 238
    :cond_4
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Landroid/net/Uri;->getPort()I

    move-result v7

    if-lez v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->getPort()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 239
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 241
    const-string v6, "ParentalControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempting litmus URL fetch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 243
    const-string v5, "Connection"

    const-string v7, "close"

    invoke-virtual {v6, v5, v7}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v4, v6}, Lcom/google/android/common/http/GoogleHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 245
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 247
    const/16 v7, 0xc8

    if-ne v6, v7, :cond_9

    .line 248
    const-string v6, "parental_control_expected_response"

    invoke-static {v1, v6}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_5

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 253
    :cond_5
    const-string v1, "ParentalControl"

    const-string v5, "Parental control is OFF: Litmus fetch succeeded"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 255
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enabled"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 286
    :cond_6
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const-string v1, "enableHIPRI"

    invoke-virtual {v0, v11, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 238
    :cond_7
    :try_start_3
    const-string v7, ""

    goto/16 :goto_1

    .line 258
    :cond_8
    const-string v1, "ParentalControl"

    const-string v5, "Parental control is ON: Litmus content was modified"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 260
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enabled"

    const/4 v5, 0x1

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "landingUrl"

    const-string v5, ""

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 282
    :catch_0
    move-exception v1

    .line 283
    :try_start_4
    const-string v2, "ParentalControl"

    const-string v5, "Parental control unchanged: Litmus fetch failed"

    invoke-static {v2, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->onTransientError()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 286
    invoke-virtual {v4}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const-string v1, "enableHIPRI"

    invoke-virtual {v0, v11, v1}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    goto/16 :goto_0

    .line 264
    :cond_9
    const/16 v7, 0x12e

    if-ne v6, v7, :cond_6

    .line 265
    :try_start_5
    const-string v6, "parental_control_redirect_regex"

    invoke-static {v1, v6}, Lcom/google/android/gsf/Gservices;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    const-string v6, "location"

    invoke-interface {v5, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 268
    if-nez v5, :cond_a

    const/4 v5, 0x0

    .line 269
    :goto_3
    if-eqz v1, :cond_b

    if-eqz v5, :cond_b

    invoke-static {v1, v5}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 271
    const-string v1, "ParentalControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Parental control is ON: Litmus redirects to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->onSuccess()V

    .line 273
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "enabled"

    const/4 v6, 0x1

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "landingUrl"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_2

    .line 286
    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Lcom/google/android/common/http/GoogleHttpClient;->close()V

    .line 287
    const-string v2, "enableHIPRI"

    invoke-virtual {v0, v11, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    throw v1

    .line 268
    :cond_a
    :try_start_6
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 277
    :cond_b
    invoke-virtual {v3}, Lcom/android/common/OperationScheduler;->onTransientError()V

    .line 278
    const-string v1, "ParentalControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parental control unchanged: Unknown litmus redirect "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v5, :cond_c

    const-string v5, "(none)"

    :cond_c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_2
.end method

.method private static waitForHipri(Landroid/net/ConnectivityManager;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 167
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->isHipriActive(Landroid/net/ConnectivityManager;)Z

    move-result v0

    .line 170
    const-string v1, "enableHIPRI"

    invoke-virtual {p0, v4, v1}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v1

    .line 174
    if-eqz v0, :cond_0

    move v0, v3

    .line 192
    :goto_0
    return v0

    .line 178
    :cond_0
    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_1

    .line 179
    const-string v0, "ParentalControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parental control unchanged: Mobile network error, code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 180
    goto :goto_0

    :cond_1
    move v0, v4

    .line 183
    :goto_1
    const/16 v1, 0x14

    if-ge v0, v1, :cond_3

    .line 184
    const-string v1, "ParentalControl"

    const-string v2, "Waiting 1000ms for mobile network"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 186
    invoke-static {p0}, Lcom/google/android/common/ParentalControl;->isHipriActive(Landroid/net/ConnectivityManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    .line 187
    goto :goto_0

    .line 183
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 191
    :cond_3
    const-string v0, "ParentalControl"

    const-string v1, "Parental control unchanged: Timed out waiting for mobile network"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 192
    goto :goto_0
.end method
