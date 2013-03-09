.class public interface abstract Lcom/google/android/apps/uploader/MasfUploadConnector$MASFProvider;
.super Ljava/lang/Object;
.source "MasfUploadConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/MasfUploadConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MASFProvider"
.end annotation


# virtual methods
.method public abstract cancelResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)V
.end method

.method public abstract submitRequest(Lcom/google/android/apps/uploader/googlemobile/masf/protocol/Request;)V
.end method

.method public abstract submitResumableRequest(Lcom/google/android/apps/uploader/googlemobile/masf/services/resume/ResumableHttpRequest;)V
.end method
