.class Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "MusicView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;",
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
    .line 464
    iput-object p1, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;Lcom/htc/idlescreen/base/reminderview/MusicView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;-><init>(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 466
    iget-object v2, p1, Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;->stroke:Lcom/htc/fusion/fx/Stroke;

    .line 467
    .local v2, stroke:Lcom/htc/fusion/fx/Stroke;
    iget-object v3, v2, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, v2, Lcom/htc/fusion/fx/Stroke;->initialLocation:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float v0, v3, v4

    .line 468
    .local v0, dx:F
    iget-object v3, v2, Lcom/htc/fusion/fx/Stroke;->location:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget-object v4, v2, Lcom/htc/fusion/fx/Stroke;->initialLocation:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float v1, v3, v4

    .line 469
    .local v1, dy:F
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    iget-object v3, v3, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->this$0:Lcom/htc/idlescreen/base/reminderview/MusicView;

    #getter for: Lcom/htc/idlescreen/base/reminderview/MusicView;->mState:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;
    invoke-static {v3}, Lcom/htc/idlescreen/base/reminderview/MusicView;->access$700(Lcom/htc/idlescreen/base/reminderview/MusicView;)Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    move-result-object v3

    sget-object v4, Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;->TOUCH:Lcom/htc/idlescreen/base/reminderview/MusicView$PanelState;

    if-ne v3, v4, :cond_0

    .line 470
    iget-object v3, p0, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;->this$1:Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;

    #calls: Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->onMoveDrag(FF)V
    invoke-static {v3, v0, v1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;->access$1600(Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl;FF)V

    .line 472
    :cond_0
    return-void
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 464
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/reminderview/MusicView$FlipControl$MoveListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$MoveEventParameters;)V

    return-void
.end method
