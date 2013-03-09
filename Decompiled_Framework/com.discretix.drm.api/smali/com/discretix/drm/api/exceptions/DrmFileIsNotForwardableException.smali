.class public Lcom/discretix/drm/api/exceptions/DrmFileIsNotForwardableException;
.super Lcom/discretix/drm/api/exceptions/DrmException;
.source "DrmFileIsNotForwardableException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_FILE_IS_NOT_FORWARDABLE:Lcom/discretix/drm/api/EDxDrmStatus;

    const-string v1, "File is not forwardable."

    invoke-direct {p0, v0, v1}, Lcom/discretix/drm/api/exceptions/DrmException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_FILE_IS_NOT_FORWARDABLE:Lcom/discretix/drm/api/EDxDrmStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not forwardable."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/discretix/drm/api/exceptions/DrmException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;Ljava/lang/String;)V

    return-void
.end method
