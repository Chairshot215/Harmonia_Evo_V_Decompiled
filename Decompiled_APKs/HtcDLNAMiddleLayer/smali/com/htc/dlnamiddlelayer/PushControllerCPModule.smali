.class public Lcom/htc/dlnamiddlelayer/PushControllerCPModule;
.super Ljava/lang/Object;
.source "PushControllerCPModule.java"


# instance fields
.field protected mPushController:Lcom/awox/jUPnPCP/PushControllerModule;


# direct methods
.method public constructor <init>(Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;)V
    .locals 7
    .parameter "aStackMgr"

    .prologue
    const/4 v2, 0x0

    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v2, p0, Lcom/htc/dlnamiddlelayer/PushControllerCPModule;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    .line 13
    new-instance v0, Lcom/awox/jUPnPCP/PushControllerModule;

    invoke-virtual {p1}, Lcom/htc/dlnamiddlelayer/UPnPStackControlMgr;->getStack()Lcom/awox/jUPnPCP/UPnPStack;

    move-result-object v1

    invoke-static {}, Lcom/awox/jUPnPCP/jUPnPCP;->GetMediaParserManager()Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserManager;

    move-result-object v3

    const-string v4, ""

    const-wide/16 v5, 0xa

    invoke-direct/range {v0 .. v6}, Lcom/awox/jUPnPCP/PushControllerModule;-><init>(Lcom/awox/jUPnPCP/UPnPStack;Lcom/awox/jUPnPCP/SWIGTYPE_p_awStreamingEngine;Lcom/awox/jUPnPCP/SWIGTYPE_p_awMediaParserManager;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/htc/dlnamiddlelayer/PushControllerCPModule;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    .line 15
    const-string v0, "DLNAMiddlelayer"

    const-string v1, "PushController Module : constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method


# virtual methods
.method public getPushController()Lcom/awox/jUPnPCP/PushControllerModule;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/htc/dlnamiddlelayer/PushControllerCPModule;->mPushController:Lcom/awox/jUPnPCP/PushControllerModule;

    return-object v0
.end method
