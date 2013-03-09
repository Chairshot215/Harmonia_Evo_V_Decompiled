.class public Lcom/google/android/apps/uploader/MasfUploadConnector$DefaultMASFProvider;
.super Ljava/lang/Object;
.source "MasfUploadConnector.java"

# interfaces
.implements Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/MasfUploadConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultMASFProvider"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 294
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->cancelResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V

    .line 295
    return-void
.end method

.method public submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;)V
    .locals 1
    .parameter

    .prologue
    .line 288
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;)V

    .line 289
    return-void
.end method

.method public submitResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)V
    .locals 1
    .parameter

    .prologue
    .line 291
    invoke-static {}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->getSingleton()Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/googlemobile/masf/MobileServiceMux;->submitResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableRequest;)V

    .line 292
    return-void
.end method
