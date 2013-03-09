.class public Lcom/discretix/drm/api/DrmImportListener;
.super Ljava/lang/Object;
.source "DrmImportListener.java"

# interfaces
.implements Lcom/discretix/drm/api/IDrmImportListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadEnd(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDownloadStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDownloadUpdate(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onImportEnd()V
    .locals 0

    return-void
.end method

.method public onPostProcessEnd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPostProcessStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreProcessEnd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreProcessStart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onUserMessage(Lcom/discretix/drm/api/IDxUserMessage;[Lcom/discretix/drm/api/EDxUserResponse;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onUserNotification(Lcom/discretix/drm/api/IDxUserMessage;ZLcom/discretix/drm/api/EDxDrmStatus;)V
    .locals 0

    return-void
.end method

.method public onWebBrowser(Landroid/net/Uri;Lcom/discretix/drm/api/EDxDrmStatus;)V
    .locals 0

    return-void
.end method
