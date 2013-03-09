.class public Lcom/discretix/drm/api/DrmImportThread;
.super Ljava/lang/Thread;
.source "DrmImportThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/discretix/drm/api/DrmImportThread$1;,
        Lcom/discretix/drm/api/DrmImportThread$ImportPhase;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHost:Ljava/lang/String;

.field private mHttpAuthenticationRequired:Z

.field private mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

.field private mImportPhase:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

.field private mRealm:Ljava/lang/String;

.field private mResult:Lcom/discretix/drm/api/EDxDrmStatus;

.field private mShouldClose:Z


# direct methods
.method public constructor <init>(Lcom/discretix/drm/api/DrmImportEngine;Landroid/os/Handler;Lcom/discretix/drm/api/DrmImportThread$ImportPhase;Lcom/discretix/drm/api/EDxDrmStatus;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/discretix/drm/api/DrmImportThread;->mShouldClose:Z

    iput-object p1, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    iget-object v0, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    invoke-virtual {v0, p0}, Lcom/discretix/drm/api/DrmImportEngine;->setCallingThread(Lcom/discretix/drm/api/DrmImportThread;)V

    iput-object p4, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    iput-object p2, p0, Lcom/discretix/drm/api/DrmImportThread;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportPhase:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    return-void
.end method


# virtual methods
.method public getShouldClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/discretix/drm/api/DrmImportThread;->mShouldClose:Z

    return v0
.end method

.method public run()V
    .locals 6

    const/4 v5, 0x1

    :try_start_0
    sget-object v3, Lcom/discretix/drm/api/DrmImportThread$1;->$SwitchMap$com$discretix$drm$api$DrmImportThread$ImportPhase:[I

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportPhase:Lcom/discretix/drm/api/DrmImportThread$ImportPhase;

    invoke-virtual {v4}, Lcom/discretix/drm/api/DrmImportThread$ImportPhase;->ordinal()I

    move-result v4

    aget v3, v3, v4
    :try_end_0
    .catch Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException; {:try_start_0 .. :try_end_0} :catch_1

    packed-switch v3, :pswitch_data_0

    :goto_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-boolean v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mHttpAuthenticationRequired:Z

    if-eqz v3, :cond_0

    const-string v3, "HttpAuthenticationRequired"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "HttpHost"

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportThread;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "HttpRealm"

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportThread;->mRealm:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v3, "ReturnStatus"

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-virtual {v4}, Lcom/discretix/drm/api/EDxDrmStatus;->swigValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    invoke-virtual {v3}, Lcom/discretix/drm/api/DrmImportEngine;->start()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;
    :try_end_1
    .catch Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    iput-boolean v5, p0, Lcom/discretix/drm/api/DrmImportThread;->mHttpAuthenticationRequired:Z

    invoke-virtual {v1}, Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mHost:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired;->getRealm()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mRealm:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    :try_start_2
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    invoke-virtual {v3}, Lcom/discretix/drm/api/DrmImportEngine;->finish()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;
    :try_end_2
    .catch Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException;->getResult()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    goto :goto_0

    :pswitch_2
    :try_start_3
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    iget-object v4, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    invoke-virtual {v3, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleResult(Lcom/discretix/drm/api/EDxDrmStatus;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_YES:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {v3, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_OK:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {v3, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_NO:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {v3, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    goto/16 :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_CANCEL:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {v3, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    goto/16 :goto_0

    :pswitch_7
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    sget-object v4, Lcom/discretix/drm/api/EDxUserResponse;->DX_USER_RESPONSE_NO:Lcom/discretix/drm/api/EDxUserResponse;

    invoke-virtual {v3, v4}, Lcom/discretix/drm/api/DrmImportEngine;->handleUserResponse(Lcom/discretix/drm/api/EDxUserResponse;)Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;

    goto/16 :goto_0

    :pswitch_8
    iget-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mImportEngine:Lcom/discretix/drm/api/DrmImportEngine;

    invoke-virtual {v3}, Lcom/discretix/drm/api/DrmImportEngine;->retryHttpRequestWithCredentials()Lcom/discretix/drm/api/EDxDrmStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/discretix/drm/api/DrmImportThread;->mResult:Lcom/discretix/drm/api/EDxDrmStatus;
    :try_end_3
    .catch Lcom/discretix/drm/api/exceptions/DrmHttpAuthenticationRequired; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/discretix/drm/api/exceptions/DrmGeneralFailureException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setShoudClose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/discretix/drm/api/DrmImportThread;->mShouldClose:Z

    return-void
.end method
