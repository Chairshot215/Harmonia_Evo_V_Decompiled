.class Lcom/htc/painting/engine/HtcPaintingView$7;
.super Ljava/lang/Object;
.source "HtcPaintingView.java"

# interfaces
.implements Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/painting/engine/HtcPaintingView;->requestStrokeGroupsAsync([I[Lcom/htc/painting/engine/ViewPort;ILcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/engine/HtcPaintingView;

.field final synthetic val$callback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;


# direct methods
.method constructor <init>(Lcom/htc/painting/engine/HtcPaintingView;Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1300
    iput-object p1, p0, Lcom/htc/painting/engine/HtcPaintingView$7;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    iput-object p2, p0, Lcom/htc/painting/engine/HtcPaintingView$7;->val$callback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionCallback([IILcom/htc/painting/engine/IPaintingCallBack$ActionResult;Lcom/htc/painting/engine/IPaintingCallBack$ActionType;)V
    .locals 2
    .parameter "groupIds"
    .parameter "key"
    .parameter "result"
    .parameter "type"

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$7;->val$callback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$7;->val$callback:Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/htc/painting/engine/IPaintingCallBack$IActionCallback;->onActionCallback([IILcom/htc/painting/engine/IPaintingCallBack$ActionResult;Lcom/htc/painting/engine/IPaintingCallBack$ActionType;)V

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$7;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/painting/engine/HtcPaintingView;->access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$7;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #calls: Lcom/htc/painting/engine/HtcPaintingView;->updateDrawingInfo()V
    invoke-static {v0}, Lcom/htc/painting/engine/HtcPaintingView;->access$800(Lcom/htc/painting/engine/HtcPaintingView;)V

    .line 1310
    iget-object v0, p0, Lcom/htc/painting/engine/HtcPaintingView$7;->this$0:Lcom/htc/painting/engine/HtcPaintingView;

    #getter for: Lcom/htc/painting/engine/HtcPaintingView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/htc/painting/engine/HtcPaintingView;->access$600(Lcom/htc/painting/engine/HtcPaintingView;)Landroid/os/Handler;

    move-result-object v0

    const v1, 0x65b9ab

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1312
    :cond_1
    return-void
.end method
