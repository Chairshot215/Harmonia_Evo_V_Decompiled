.class public interface abstract Lcom/discretix/drm/api/IDrmImportListener;
.super Ljava/lang/Object;
.source "IDrmImportListener.java"


# virtual methods
.method public abstract onDownloadEnd(I)Z
.end method

.method public abstract onDownloadStart()Z
.end method

.method public abstract onDownloadUpdate(I)Z
.end method

.method public abstract onImportEnd()V
.end method

.method public abstract onPostProcessEnd()Z
.end method

.method public abstract onPostProcessStart()Z
.end method

.method public abstract onPreProcessEnd()Z
.end method

.method public abstract onPreProcessStart()Z
.end method

.method public abstract onUserMessage(Lcom/discretix/drm/api/IDxUserMessage;[Lcom/discretix/drm/api/EDxUserResponse;)Z
.end method

.method public abstract onUserNotification(Lcom/discretix/drm/api/IDxUserMessage;ZLcom/discretix/drm/api/EDxDrmStatus;)V
.end method

.method public abstract onWebBrowser(Landroid/net/Uri;Lcom/discretix/drm/api/EDxDrmStatus;)V
.end method
