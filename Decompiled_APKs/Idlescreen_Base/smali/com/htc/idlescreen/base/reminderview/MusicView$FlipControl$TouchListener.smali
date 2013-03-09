.class Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;


# direct methods
.method private constructor <init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)V
    .locals 0
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 437
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V
    .locals 5
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    .line 439
    iget v1, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    if-ne v1, v4, :cond_1

    .line 440
    const-string v1, "MusicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TouchListener state in EVENT_PRESS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget-object v3, v3, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget-object v1, v1, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v1

    sget-object v2, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->FLIP:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    if-eq v1, v2, :cond_0

    .line 442
    iget-object v1, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->stroke:Lcom/htc/fusion/fx/Stroke;

    iget-object v0, v1, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    .line 443
    .local v0, point:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    #calls: Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onStartDrag(FF)V
    invoke-static {v1, v2, v3}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->access$1400(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;FF)V

    .line 461
    .end local v0           #point:Landroid/graphics/PointF;
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget v1, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 447
    const-string v1, "MusicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TouchListener state in EVENT_RELEASE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget-object v3, v3, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget-object v1, v1, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v1}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v1

    sget-object v2, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->TOUCH:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    if-ne v1, v2, :cond_2

    .line 449
    iget-object v1, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->stroke:Lcom/htc/fusion/fx/Stroke;

    iget-object v0, v1, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    .line 450
    .restart local v0       #point:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    #calls: Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onEndDrag(FFZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->access$1500(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;FFZ)V

    goto :goto_0

    .line 453
    .end local v0           #point:Landroid/graphics/PointF;
    :cond_2
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget-object v1, v1, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    sget-object v2, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->STOP:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    #setter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$702(Lcom/htc/idlescreen/base/reminderview/MusicView;Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    goto :goto_0

    .line 456
    :cond_3
    iget v1, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->event:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 457
    const-string v1, "MusicView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TouchListener state in EVENT_CANCEL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget-object v3, v3, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/idlescreen/base/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v1, p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;->stroke:Lcom/htc/fusion/fx/Stroke;

    iget-object v0, v1, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    .line 459
    .restart local v0       #point:Landroid/graphics/PointF;
    iget-object v1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v3, v0, Landroid/graphics/PointF;->y:F

    #calls: Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onEndDrag(FFZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->access$1500(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;FFZ)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 437
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$TouchListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$EventParameters;)V

    return-void
.end method
