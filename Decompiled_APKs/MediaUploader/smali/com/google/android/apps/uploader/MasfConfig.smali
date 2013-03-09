.class public Lcom/google/android/apps/uploader/MasfConfig;
.super Ljava/lang/Object;
.source "MasfConfig.java"


# static fields
.field protected static final MASF_APP_NAME:Ljava/lang/String; = "media_uploader"

.field protected static final MASF_PROXY_URL:Ljava/lang/String; = "http://www.google.com/m/appreq/mobilevideo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deinitMasf()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "MediaUploader"

    const-string v1, "Deinitializing MASF."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->deInitialize()V

    .line 37
    return-void
.end method

.method public static initMasf(Lcom/google/android/apps/uploader/UploaderApplication;)V
    .locals 5
    .parameter

    .prologue
    .line 22
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23
    const-string v0, "MediaUploader"

    const-string v1, "Initializing MASF."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    new-instance v0, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/googlemobile/common/android/AndroidConfig;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/google/android/apps/uploader/googlemobile/common/Config;->setConfig(Lcom/google/android/apps/uploader/googlemobile/common/Config;)V

    .line 26
    const-string v0, "http://www.google.com/m/appreq/mobilevideo"

    const-string v1, "media_uploader"

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getPlatformId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploaderApplication;->getDistributionChannel()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
