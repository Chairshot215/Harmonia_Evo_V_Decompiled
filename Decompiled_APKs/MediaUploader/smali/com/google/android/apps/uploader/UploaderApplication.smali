.class public Lcom/google/android/apps/uploader/UploaderApplication;
.super Landroid/app/Application;
.source "UploaderApplication.java"


# static fields
.field private static final DEFAULT_NONWIFI_LIMIT:I = 0x1400000

.field private static final DEFAULT_NONWIFI_LIMIT_ECLAIR:I = 0x300000

.field public static final HTTP_USER_AGENT:Ljava/lang/String; = "Android-Uploader/GB"

.field private static final ORGANIC_DISTRIBUTION_CHANNEL:Ljava/lang/String; = "organic"

.field public static final WAKE_UP_PREF:Ljava/lang/String; = "wakeUp"


# instance fields
.field private authorizerFactory:Lcom/google/android/apps/uploader/Authorizer$AuthorizerFactory;

.field private authorizers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/apps/uploader/Authorizer;",
            ">;"
        }
    .end annotation
.end field

.field private defaultNonWifiLimit:I

.field private distributionChannel:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private nonWifiLimit:I

.field private notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

.field private queue:Lcom/google/android/apps/uploader/UploadsQueue;

.field private thumbnailsCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private createHttpClient()V
    .locals 1

    .prologue
    .line 242
    const-string v0, "Android-Uploader/GB"

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/google/android/apps/uploader/googlemobile/common/io/android/AndroidHttpClient;

    move-result-object v0

    .line 246
    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 247
    return-void
.end method

.method private getNonWifiLimit()I
    .locals 3

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "uploader_nonwifi_limit"

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->defaultNonWifiLimit:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getAuthorizer(Ljava/lang/String;)Lcom/google/android/apps/uploader/Authorizer;
    .locals 2
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->authorizers:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->authorizers:Ljava/util/HashMap;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->authorizers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/Authorizer;

    .line 105
    if-nez v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->authorizerFactory:Lcom/google/android/apps/uploader/Authorizer$AuthorizerFactory;

    if-nez v0, :cond_1

    .line 107
    new-instance v0, Lcom/google/android/apps/uploader/GlsAuthorizer$GlsAuthorizerFactory;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/GlsAuthorizer$GlsAuthorizerFactory;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->authorizerFactory:Lcom/google/android/apps/uploader/Authorizer$AuthorizerFactory;

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->authorizerFactory:Lcom/google/android/apps/uploader/Authorizer$AuthorizerFactory;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/uploader/Authorizer$AuthorizerFactory;->getAuthorizer(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/apps/uploader/Authorizer;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploaderApplication;->authorizers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_2
    return-object v0
.end method

.method public getDistributionChannel()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->distributionChannel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->distributionChannel:Ljava/lang/String;

    .line 157
    :goto_0
    return-object v0

    .line 143
    :cond_0
    const-string v0, "organic"

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->distributionChannel:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.google.settings/partner"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "value"

    aput-object v5, v2, v3

    const-string v3, "name=\'client_id\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    const-string v1, "value"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 149
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 150
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->distributionChannel:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->distributionChannel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    const-string v0, "organic"

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->distributionChannel:Ljava/lang/String;

    .line 156
    :cond_1
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Distribution channel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->distributionChannel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->distributionChannel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->httpClient:Lorg/apache/http/client/HttpClient;

    return-object v0
.end method

.method public getLocaleCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/UploaderApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 203
    if-eqz p0, :cond_0

    .line 204
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNotificationManager()Lcom/google/android/apps/uploader/UploadsNotificationManager;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/google/android/apps/uploader/UploadsNotificationManager;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/UploadsNotificationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->notificationManager:Lcom/google/android/apps/uploader/UploadsNotificationManager;

    return-object v0
.end method

.method public getPlatformId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 168
    const-string v0, "[%s][%s]"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Lcom/google/android/apps/uploader/UploadsQueue;
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/google/android/apps/uploader/UploadsQueue;

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->nonWifiLimit:I

    invoke-direct {v0, v1, v2}, Lcom/google/android/apps/uploader/UploadsQueue;-><init>(Landroid/content/ContentResolver;I)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->queue:Lcom/google/android/apps/uploader/UploadsQueue;

    return-object v0
.end method

.method public getThumbnail(J)Landroid/graphics/Bitmap;
    .locals 2
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->thumbnailsCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->thumbnailsCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 4

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    return-object v0

    .line 177
    :catch_0
    move-exception v1

    .line 178
    const-string v2, "MediaUploader"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public initMasf()V
    .locals 0

    .prologue
    .line 84
    invoke-static {p0}, Lcom/google/android/apps/uploader/MasfConfig;->initMasf(Lcom/google/android/apps/uploader/UploaderApplication;)V

    .line 85
    return-void
.end method

.method public isUsingDefaultNonWifiLimit()Z
    .locals 2

    .prologue
    .line 233
    iget v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->nonWifiLimit:I

    iget v1, p0, Lcom/google/android/apps/uploader/UploaderApplication;->defaultNonWifiLimit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsWifi(Lcom/google/android/apps/uploader/UploadInfo;)Z
    .locals 4
    .parameter

    .prologue
    .line 229
    invoke-virtual {p1}, Lcom/google/android/apps/uploader/UploadInfo;->getBytesTotal()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->nonWifiLimit:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 71
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 72
    const-string v0, "MediaUploader"

    const-string v1, "UploaderApplication.onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->createHttpClient()V

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-le v0, v1, :cond_0

    const/high16 v0, 0x140

    :goto_0
    iput v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->defaultNonWifiLimit:I

    .line 79
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getNonWifiLimit()I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->nonWifiLimit:I

    .line 80
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonWifiLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->nonWifiLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", default="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/uploader/UploaderApplication;->defaultNonWifiLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 76
    :cond_0
    const/high16 v0, 0x30

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 89
    invoke-static {}, Lcom/google/android/apps/uploader/MasfConfig;->deinitMasf()V

    .line 90
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 91
    return-void
.end method

.method public putThumbnail(JLandroid/graphics/Bitmap;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->thumbnailsCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->thumbnailsCache:Ljava/util/HashMap;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploaderApplication;->thumbnailsCache:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public setWakeUpPref(Z)V
    .locals 2
    .parameter

    .prologue
    .line 190
    const-string v0, "MediaUploader"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/uploader/UploaderApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 192
    const-string v1, "wakeUp"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 193
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 194
    return-void
.end method

.method public wifiConnected()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 210
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/UploaderApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 211
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 214
    const/4 v1, 0x6

    .line 215
    if-eq v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    .line 219
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
