.class public interface abstract Lcom/google/android/apps/uploader/UploadConnector;
.super Ljava/lang/Object;
.source "UploadConnector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/uploader/UploadConnector$UploadListener;
    }
.end annotation


# virtual methods
.method public abstract cancelCurrentUploadRequest()V
.end method

.method public abstract makeUploadRequest(Lcom/google/android/apps/uploader/UploadInfo;Ljava/io/InputStream;Lcom/google/android/apps/uploader/Authorizer;ZLcom/google/android/apps/uploader/UploadConnector$UploadListener;)V
.end method
