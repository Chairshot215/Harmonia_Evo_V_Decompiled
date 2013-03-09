.class public interface abstract Lcom/google/android/apps/uploader/UploadConnector$UploadListener;
.super Ljava/lang/Object;
.source "UploadConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/uploader/UploadConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UploadListener"
.end annotation


# virtual methods
.method public abstract onUploadApplicationFailure(Lcom/google/android/apps/uploader/ApplicationException;)V
.end method

.method public abstract onUploadNetworkFailure(Lcom/google/android/apps/uploader/NetworkException;)V
.end method

.method public abstract onUploadProgress(J)V
.end method

.method public abstract onUploadRetry()V
.end method

.method public abstract onUploadSuccess()V
.end method
