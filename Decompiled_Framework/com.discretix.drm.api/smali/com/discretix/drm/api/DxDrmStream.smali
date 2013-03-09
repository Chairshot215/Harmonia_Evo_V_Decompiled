.class public final Lcom/discretix/drm/api/DxDrmStream;
.super Ljava/lang/Object;
.source "DxDrmStream.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discretix/drm/api/DxDrmStream$1;
    }
.end annotation


# instance fields
.field mDontDeleteDrmContent:Z

.field mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;


# direct methods
.method public constructor <init>(Lcom/discretix/drm/api/DxDrmStream;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDontDeleteDrmContent:Z

    iget-object v0, p1, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    iput-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    return-void
.end method

.method public constructor <init>(Lcom/discretix/drm/api/IDxDrmCoreStream;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDontDeleteDrmContent:Z

    iput-object p1, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    return-void
.end method

.method private verifyRightsInner(Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxVerifyStatus;
    .locals 11

    sget-object v7, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {p0, v7}, Lcom/discretix/drm/api/DxDrmStream;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v7, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    :goto_0
    return-object v7

    :cond_0
    invoke-static {v1}, Lcom/discretix/drm/api/DxDrmUtils;->getIntentFromMimeType(Ljava/lang/String;)Lcom/discretix/drm/api/EDxIntent;

    move-result-object v5

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    new-array v0, v7, [J

    sget-object v7, Lcom/discretix/drm/api/DxDrmStream$1;->$SwitchMap$com$discretix$drm$api$EDxIntent:[I

    invoke-virtual {v5}, Lcom/discretix/drm/api/EDxIntent;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :goto_1
    invoke-virtual {p0, v3, v4, v0}, Lcom/discretix/drm/api/DxDrmStream;->getFlags(J[J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v6

    sget-object v7, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v6, v7, :cond_2

    const/4 v7, 0x0

    aget-wide v7, v0, v7

    and-long/2addr v7, v3

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    :try_start_0
    invoke-virtual {p0, p2}, Lcom/discretix/drm/api/DxDrmStream;->isSoonToBeExpired(Lcom/discretix/drm/api/EDxIntent;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;
    :try_end_0
    .catch Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :pswitch_0
    const-wide/16 v3, 0x200

    goto :goto_1

    :pswitch_1
    const-wide/16 v3, 0x400

    goto :goto_1

    :pswitch_2
    const-wide/16 v3, 0x800

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v7, "DxDrmStream"

    const-string v8, ""

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v7, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_NO_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_VALID_RIGHTS:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public SetIntent(Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v0, p1}, Lcom/discretix/drm/api/IDxDrmCoreStream;->SetIntent(Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDontDeleteDrmContent:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxDrmCoreStream;->delete()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    :cond_1
    return-void
.end method

.method public final deleteRights()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    iget-object v1, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v1}, Lcom/discretix/drm/api/IDxDrmCoreStream;->DeleteRights()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/discretix/drm/api/DxDrmStream;->close()V

    return-void
.end method

.method public final getActiveRO()Lcom/discretix/drm/api/DxRightsObject;
    .locals 2

    iget-object v1, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v1}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetActiveRO()Lcom/discretix/drm/api/IDxRightsObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/discretix/drm/api/DxRightsObject;

    invoke-direct {v1, v0}, Lcom/discretix/drm/api/DxRightsObject;-><init>(Lcom/discretix/drm/api/IDxRightsObject;)V

    goto :goto_0
.end method

.method public getCurrentMaxProtectionLevel([J[J[J[J[J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    if-nez p4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_3
    if-nez p5, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetCurrentMaxProtectionLevel([J[J[J[J[J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v6

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v6, v0, :cond_5

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v0, v6}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v0

    :cond_5
    return-void
.end method

.method public final getDRMScheme()Lcom/discretix/drm/api/EDxDrmScheme;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v0}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetDRMScheme()Lcom/discretix/drm/api/EDxDrmScheme;

    move-result-object v0

    return-object v0
.end method

.method public final getFlags(J)J
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v0, 0x1

    new-array v3, v0, [J

    const-wide/16 v0, 0x0

    aput-wide v0, v3, v9

    sget-object v8, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    const-wide/16 v4, 0xff

    const-wide/16 v6, -0x1

    move-wide v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetFlags(J[JJJ)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v8

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v8, v0, :cond_0

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_SECURE_CLOCK_IS_NOT_SET:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v8, v0, :cond_0

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_DOMAIN_CONTEXT_IS_MISSING:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v8, v0, :cond_0

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v0, v8}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v0

    :cond_0
    aget-wide v0, v3, v9

    return-wide v0
.end method

.method public final getFlags(J[J)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 9

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, p3, v0

    sget-object v8, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    const-wide/16 v4, 0xff

    const-wide/16 v6, -0x1

    move-wide v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetFlags(J[JJJ)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v8

    return-object v8
.end method

.method public final getLicenseInfo()[Lcom/discretix/drm/api/DxRightsObject;
    .locals 8

    const/4 v5, 0x1

    new-array v1, v5, [J

    iget-object v5, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    sget-object v6, Lcom/discretix/drm/api/EDxROIterationMode;->DX_RO_ITERATION_DISPLAY:Lcom/discretix/drm/api/EDxROIterationMode;

    invoke-virtual {v5, v6, v1}, Lcom/discretix/drm/api/IDxDrmCoreStream;->PrepareForROIteration(Lcom/discretix/drm/api/EDxROIterationMode;[J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v5

    sget-object v6, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v5, v6, :cond_1

    const/4 v2, 0x0

    :cond_0
    return-object v2

    :cond_1
    const/4 v5, 0x0

    aget-wide v5, v1, v5

    long-to-int v4, v5

    new-array v2, v4, [Lcom/discretix/drm/api/DxRightsObject;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v5, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetRO(J)Lcom/discretix/drm/api/IDxRightsObject;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v5, Lcom/discretix/drm/api/DxRightsObject;

    invoke-direct {v5, v3}, Lcom/discretix/drm/api/DxRightsObject;-><init>(Lcom/discretix/drm/api/IDxRightsObject;)V

    aput-object v5, v2, v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextAttributeByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetTextAttributeByName(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTextAttributes()[Lcom/discretix/drm/api/DxTextAttribute;
    .locals 10

    const-wide/16 v5, -0x1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v0, v5, v6}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetNumOfTextAttributes(J)J

    move-result-wide v0

    long-to-int v8, v0

    new-array v9, v8, [Lcom/discretix/drm/api/DxTextAttribute;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    int-to-long v1, v7

    invoke-virtual/range {v0 .. v6}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetTextAttributeByIndex(JLjava/lang/StringBuffer;Ljava/lang/StringBuffer;J)Lcom/discretix/drm/api/EDxDrmStatus;

    new-instance v0, Lcom/discretix/drm/api/DxTextAttribute;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/discretix/drm/api/DxTextAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-object v9
.end method

.method public final handleConsumptionEvent(Lcom/discretix/drm/api/EDxConsumptionEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    iget-object v1, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v1, p1}, Lcom/discretix/drm/api/IDxDrmCoreStream;->HandleConsumptionEvent(Lcom/discretix/drm/api/EDxConsumptionEvent;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NO_RIGHTS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/security/AccessControlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Is Locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FilePermission;

    iget-object v4, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v4}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Read"

    invoke-direct {v3, v4, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;Ljava/security/Permission;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v1, :cond_1

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_1
    return-void
.end method

.method public handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v0, p1}, Lcom/discretix/drm/api/IDxDrmCoreStream;->HandleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public final isAttributeEditable(Lcom/discretix/drm/api/EDxTextAttribute;)Z
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v0, p1}, Lcom/discretix/drm/api/IDxDrmCoreStream;->IsAttributeEditable(Lcom/discretix/drm/api/EDxTextAttribute;)Z

    move-result v0

    return v0
.end method

.method public final isSoonToBeExpired(Lcom/discretix/drm/api/EDxIntent;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    const/4 v12, 0x1

    const/4 v9, 0x0

    const-string v0, "ShowSoonToBeExpired"

    invoke-static {v0, v9}, Lcom/discretix/drm/api/DxDrmCore;->DxGetConfigBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    const-string v0, "SoonToBeExpiredCountThreshold"

    const-wide/16 v10, 0x2

    invoke-static {v0, v10, v11}, Lcom/discretix/drm/api/DxDrmCore;->DxGetConfigNumber(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v0, "SoonToBeExpiredTimeThreshold"

    const-wide/16 v10, 0x0

    invoke-static {v0, v10, v11}, Lcom/discretix/drm/api/DxDrmCore;->DxGetConfigNumber(Ljava/lang/String;J)J

    move-result-wide v3

    new-array v5, v12, [Z

    new-array v6, v12, [J

    new-array v7, v12, [J

    invoke-virtual {p0, p1}, Lcom/discretix/drm/api/DxDrmStream;->SetIntent(Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v8

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v8, v0, :cond_1

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v0, v8}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual/range {v0 .. v7}, Lcom/discretix/drm/api/IDxDrmCoreStream;->IsSoonToBeExpired(JJ[Z[J[J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v8

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v8, v0, :cond_2

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v0, v8}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v0

    :cond_2
    aget-boolean v0, v5, v9

    goto :goto_0
.end method

.method public processPacket(J[B[B)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 7

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    array-length v1, p3

    int-to-long v4, v1

    move-wide v1, p1

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/discretix/drm/api/IDxDrmCoreStream;->ProcessPacket(J[BJ[B)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public final setIntent(Lcom/discretix/drm/api/EDxIntent;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/AccessControlException;,
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    iget-object v1, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v1, p1}, Lcom/discretix/drm/api/IDxDrmCoreStream;->SetIntent(Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_SECURE_CLOCK_IS_NOT_SET:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/security/AccessControlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Secure Clock not set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FilePermission;

    iget-object v4, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v4}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Read"

    invoke-direct {v3, v4, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;Ljava/security/Permission;)V

    throw v1

    :cond_0
    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_DOMAIN_CONTEXT_IS_MISSING:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v0, v1, :cond_1

    new-instance v1, Ljava/security/AccessControlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Domain context is missing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FilePermission;

    iget-object v4, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v4}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Read"

    invoke-direct {v3, v4, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;Ljava/security/Permission;)V

    throw v1

    :cond_1
    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_ERROR_NO_RIGHTS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-ne v0, v1, :cond_2

    new-instance v1, Ljava/security/AccessControlException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Is Locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/discretix/drm/api/EDxDrmStatus;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/FilePermission;

    iget-object v4, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v4}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetFileName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Read"

    invoke-direct {v3, v4, v5}, Ljava/io/FilePermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Ljava/security/AccessControlException;-><init>(Ljava/lang/String;Ljava/security/Permission;)V

    throw v1

    :cond_2
    sget-object v1, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v0, v1, :cond_3

    new-instance v1, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v1, v0}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v1

    :cond_3
    return-void
.end method

.method public final setTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    const-wide/16 v4, -0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/discretix/drm/api/IDxDrmCoreStream;->SetTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;Ljava/lang/String;Ljava/lang/String;J)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v6

    sget-object v0, Lcom/discretix/drm/api/EDxDrmStatus;->DX_DRM_SUCCESS:Lcom/discretix/drm/api/EDxDrmStatus;

    if-eq v6, v0, :cond_0

    new-instance v0, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;

    invoke-direct {v0, v6}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;-><init>(Lcom/discretix/drm/api/EDxDrmStatus;)V

    throw v0

    :cond_0
    return-void
.end method

.method public startRightsAcquisition([Lcom/discretix/drm/api/IDxCoreImportStream;Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v0, p1, p2}, Lcom/discretix/drm/api/IDxDrmCoreStream;->StartRightsAcquisition([Lcom/discretix/drm/api/IDxCoreImportStream;Lcom/discretix/drm/api/EDxRightsAcquisitionMethod;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public startSetIntent([Lcom/discretix/drm/api/IDxCoreImportStream;Lcom/discretix/drm/api/EDxIntent;Lcom/discretix/drm/api/EDxAutoMode;)Lcom/discretix/drm/api/EDxDrmStatus;
    .locals 1

    iget-object v0, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v0, p1, p2, p3}, Lcom/discretix/drm/api/IDxDrmCoreStream;->StartSetIntent([Lcom/discretix/drm/api/IDxCoreImportStream;Lcom/discretix/drm/api/EDxIntent;Lcom/discretix/drm/api/EDxAutoMode;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v0

    return-object v0
.end method

.method public final verifyRights(Landroid/app/Activity;Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;Z)Lcom/discretix/drm/api/EDxVerifyStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/discretix/drm/api/DxPlatformUtils;->setContext(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3}, Lcom/discretix/drm/api/DxDrmStream;->verifyRightsInner(Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxVerifyStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_DISABLED:Lcom/discretix/drm/api/EDxAutoMode;

    if-eq p2, v2, :cond_0

    sget-object v2, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_ENABLED:Lcom/discretix/drm/api/EDxAutoMode;

    if-ne p2, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.discretix.drm.intent.action.DX_OBTAIN_LICENSE_INTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FileName"

    iget-object v3, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v3}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ContentMimeType"

    sget-object v3, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {p0, v3}, Lcom/discretix/drm/api/DxDrmStream;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DxIntent"

    invoke-virtual {p3}, Lcom/discretix/drm/api/EDxIntent;->swigValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "AutoLaunch"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "DeleteAllowed"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x69

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    sget-object v1, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0
.end method

.method public final verifyRights(Landroid/content/Context;Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;ZZ)Lcom/discretix/drm/api/EDxVerifyStatus;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;
        }
    .end annotation

    invoke-static {p1}, Lcom/discretix/drm/api/DxPlatformUtils;->setContext(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3}, Lcom/discretix/drm/api/DxDrmStream;->verifyRightsInner(Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxVerifyStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_DISABLED:Lcom/discretix/drm/api/EDxAutoMode;

    if-eq p2, v2, :cond_0

    sget-object v2, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_ENABLED:Lcom/discretix/drm/api/EDxAutoMode;

    if-ne p2, v2, :cond_2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.discretix.drm.intent.action.DX_OBTAIN_LICENSE_INTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "FileName"

    iget-object v3, p0, Lcom/discretix/drm/api/DxDrmStream;->mDrmStream:Lcom/discretix/drm/api/IDxDrmCoreStream;

    invoke-virtual {v3}, Lcom/discretix/drm/api/IDxDrmCoreStream;->GetFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ContentMimeType"

    sget-object v3, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {p0, v3}, Lcom/discretix/drm/api/DxDrmStream;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DxIntent"

    invoke-virtual {p3}, Lcom/discretix/drm/api/EDxIntent;->swigValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "AutoLaunch"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "DeleteAllowed"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    sget-object v1, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0
.end method

.method public verifyRightsFromFD(Landroid/content/Context;Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;Landroid/net/Uri;Z)Lcom/discretix/drm/api/EDxVerifyStatus;
    .locals 5

    const/4 v4, 0x1

    invoke-static {p1}, Lcom/discretix/drm/api/DxPlatformUtils;->setContext(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3}, Lcom/discretix/drm/api/DxDrmStream;->verifyRightsInner(Lcom/discretix/drm/api/EDxAutoMode;Lcom/discretix/drm/api/EDxIntent;)Lcom/discretix/drm/api/EDxVerifyStatus;

    move-result-object v1

    sget-object v2, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_DISABLED:Lcom/discretix/drm/api/EDxAutoMode;

    if-eq p2, v2, :cond_0

    sget-object v2, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

    if-eq v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    sget-object v2, Lcom/discretix/drm/api/EDxAutoMode;->DX_AUTO_ENABLED:Lcom/discretix/drm/api/EDxAutoMode;

    if-ne p2, v2, :cond_2

    iput-boolean v4, p0, Lcom/discretix/drm/api/DxDrmStream;->mDontDeleteDrmContent:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.discretix.drm.intent.action.DX_OBTAIN_LICENSE_INTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "DxDrmStream"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "FileUri"

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ContentMimeType"

    sget-object v3, Lcom/discretix/drm/api/EDxTextAttribute;->DX_ATTR_CONTENT_MIME_TYPE:Lcom/discretix/drm/api/EDxTextAttribute;

    invoke-virtual {p0, v3}, Lcom/discretix/drm/api/DxDrmStream;->getTextAttribute(Lcom/discretix/drm/api/EDxTextAttribute;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "DxIntent"

    invoke-virtual {p3}, Lcom/discretix/drm/api/EDxIntent;->swigValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "AutoLaunch"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "DeleteAllowed"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    sget-object v1, Lcom/discretix/drm/api/EDxVerifyStatus;->DX_STATUS_RIGHTS_PENDING:Lcom/discretix/drm/api/EDxVerifyStatus;

    goto :goto_0
.end method
