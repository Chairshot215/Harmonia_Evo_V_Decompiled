.class public Lcom/discretix/drm/api/exceptions/DrmProvisioningFailureException;
.super Lcom/discretix/drm/api/exceptions/DrmException;
.source "DrmProvisioningFailureException.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_VERIFICATION_FAILURE:Lcom/discretix/drm/api/EDxDrmStatus;

    const-string v1, "Verification failed. Provisioning not done."

    invoke-direct {p0, v0, v1}, Lcom/discretix/drm/api/exceptions/DrmException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;Ljava/lang/String;)V

    return-void
.end method
