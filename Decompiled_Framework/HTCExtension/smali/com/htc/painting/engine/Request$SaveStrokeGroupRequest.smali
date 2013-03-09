.class public Lcom/htc/painting/engine/Request$SaveStrokeGroupRequest;
.super Lcom/htc/painting/engine/Request$PaintingRequest;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/engine/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveStrokeGroupRequest"
.end annotation


# instance fields
.field private mContainIneffectiveStrokes:Z


# direct methods
.method public constructor <init>(Lcom/htc/painting/engine/HtcPainting;[IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/painting/engine/Request$PaintingRequest;-><init>(Lcom/htc/painting/engine/HtcPainting;[IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/Request$SaveStrokeGroupRequest;->mContainIneffectiveStrokes:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/painting/engine/HtcPainting;[IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/painting/engine/Request$PaintingRequest;-><init>(Lcom/htc/painting/engine/HtcPainting;[IILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/painting/engine/Request$SaveStrokeGroupRequest;->mContainIneffectiveStrokes:Z

    iput-boolean p5, p0, Lcom/htc/painting/engine/Request$SaveStrokeGroupRequest;->mContainIneffectiveStrokes:Z

    return-void
.end method


# virtual methods
.method executeInternal()Z
    .locals 3

    iget-object v0, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mHost:Lcom/htc/painting/engine/HtcPainting;

    iget-object v1, p0, Lcom/htc/painting/engine/Request$PaintingRequest;->mGroupIds:[I

    iget-boolean v2, p0, Lcom/htc/painting/engine/Request$SaveStrokeGroupRequest;->mContainIneffectiveStrokes:Z

    invoke-virtual {v0, v1, v2}, Lcom/htc/painting/engine/HtcPainting;->SaveGroups([IZ)V

    const/4 v0, 0x1

    return v0
.end method

.method getActionType()Lcom/htc/painting/engine/IPaintingCallBack$ActionType;
    .locals 1

    sget-object v0, Lcom/htc/painting/engine/IPaintingCallBack$ActionType;->Save:Lcom/htc/painting/engine/IPaintingCallBack$ActionType;

    return-object v0
.end method
