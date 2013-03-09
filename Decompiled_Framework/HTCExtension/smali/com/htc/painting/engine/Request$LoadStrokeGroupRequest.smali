.class public Lcom/htc/painting/engine/Request$LoadStrokeGroupRequest;
.super Lcom/htc/painting/engine/Request$PaintingRequest;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadStrokeGroupRequest"
.end annotation


# instance fields
.field protected mViewPorts:[Lcom/htc/painting/engine/ViewPort;


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/HtcPainting;[I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/htc/painting/engine/Request$PaintingRequest;-><init>(Lcom/htc/painting/engine/HtcPainting;[IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    iput-object p3, p0, Lcom/htc/painting/engine/Request$LoadStrokeGroupRequest;->mViewPorts:[Lcom/htc/painting/engine/ViewPort;

    return-void
.end method


# virtual methods
.method protected destroy()V
    .locals 1

    invoke-super {p0}, Lcom/htc/painting/engine/Request$PaintingRequest;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/painting/engine/Request$LoadStrokeGroupRequest;->mViewPorts:[Lcom/htc/painting/engine/ViewPort;

    return-void
.end method

.method executeInternal()Z
    .locals 3

    iget-object v0, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mHost:Lcom/htc/painting/engine/HtcPainting;

    iget-object v1, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mGroupIds:[I

    iget-object v2, p0, Lcom/htc/painting/engine/Request$LoadStrokeGroupRequest;->mViewPorts:[Lcom/htc/painting/engine/ViewPort;

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/engine/HtcPainting;->requestStrokeGroups([I[Lcom/htc/painting/engine/ViewPort;)[Z

    const/4 v0, 0x1

    return v0
.end method

.method getActionType()Lcom/htc/painting/engine/IPaintingCallBack$ActionType;
    .locals 1

    sget-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;->Load:Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    return-object v0
.end method
