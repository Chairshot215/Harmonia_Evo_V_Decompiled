.class public abstract Lcom/htc/painting/engine/Request$PaintingRequest;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/htc/painting/engine/Request;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PaintingRequest"
.end annotation


# instance fields
.field protected mCallback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;

.field protected mGroupIds:[I

.field protected mHost:Lcom/htc/painting/engine/HtcPainting;

.field protected mKey:I


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/HtcPainting;[IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mHost:Lcom/htc/painting/engine/HtcPainting;

    iput-object p2, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mGroupIds:[I

    iput p3, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mKey:I

    iput-object p4, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mCallback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;

    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mHost:Lcom/htc/painting/engine/HtcPainting;

    iput-object v0, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mGroupIds:[I

    iput-object v0, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mCallback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;

    return-void
.end method

.method public execute()V
    .locals 6

    invoke-virtual {p0}, Lcom/htc/painting/engine/Request$PaintingRequest;->executeInternal()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->Success:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    :goto_0
    iget-object v2, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mCallback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mCallback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;

    iget-object v3, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mGroupIds:[I

    iget v4, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mKey:I

    invoke-virtual {p0}, Lcom/htc/painting/engine/Request$PaintingRequest;->getActionType()Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    move-result-object v5

    invoke-interface {v2, v3, v4, v0, v5}, Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;->onActionCallback([IILcom/htc/painting/engine/IPaintingCallBack$ActionResult;Lcom/htc/painting/engine/IPaintingCallBack$ActionType;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/painting/engine/Request$PaintingRequest;->destroy()V

    return-void

    :cond_1
    sget-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;->Fail:Lcom/htc/painting/engine/IPaintingCallBack$ActionResult;

    goto :goto_0
.end method

.method abstract executeInternal()Z
.end method

.method abstract getActionType()Lcom/htc/painting/engine/IPaintingCallBack$ActionType;
.end method

.method public getHost()Lcom/htc/painting/engine/HtcPainting;
    .locals 1

    iget-object v0, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mHost:Lcom/htc/painting/engine/HtcPainting;

    return-object v0
.end method
