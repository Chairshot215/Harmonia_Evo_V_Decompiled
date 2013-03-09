.class Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;
.super Lcom/htc/fusion/fx/MessageListener;
.source "M10Operator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/photowidget3d/grid/M10Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppOnSwipeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/fusion/fx/MessageListener",
        "<",
        "Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/photowidget3d/grid/M10Operator;


# direct methods
.method private constructor <init>(Lcom/htc/photowidget3d/grid/M10Operator;)V
    .locals 0
    .parameter

    .prologue
    .line 644
    iput-object p1, p0, Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    invoke-direct {p0}, Lcom/htc/fusion/fx/MessageListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/photowidget3d/grid/M10Operator;Lcom/htc/photowidget3d/grid/M10Operator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;-><init>(Lcom/htc/photowidget3d/grid/M10Operator;)V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V
    .locals 4
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 649
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    #getter for: Lcom/htc/photowidget3d/grid/M10Operator;->m_bCubeIsPlaying:Z
    invoke-static {v0}, Lcom/htc/photowidget3d/grid/M10Operator;->access$400(Lcom/htc/photowidget3d/grid/M10Operator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 664
    :goto_0
    return-void

    .line 654
    :cond_0
    iget-object v0, p1, Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;->startPosition:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p1, Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;->endPosition:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iput v3, v0, Lcom/htc/photowidget3d/grid/M10Operator;->m_ScrollDirection:I

    .line 657
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    #calls: Lcom/htc/photowidget3d/grid/M10Operator;->onScrollPage(I)V
    invoke-static {v0, v3}, Lcom/htc/photowidget3d/grid/M10Operator;->access$500(Lcom/htc/photowidget3d/grid/M10Operator;I)V

    goto :goto_0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    iput v2, v0, Lcom/htc/photowidget3d/grid/M10Operator;->m_ScrollDirection:I

    .line 662
    iget-object v0, p0, Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;->this$0:Lcom/htc/photowidget3d/grid/M10Operator;

    #calls: Lcom/htc/photowidget3d/grid/M10Operator;->onScrollPage(I)V
    invoke-static {v0, v2}, Lcom/htc/photowidget3d/grid/M10Operator;->access$500(Lcom/htc/photowidget3d/grid/M10Operator;I)V

    goto :goto_0
.end method

.method public bridge synthetic onMessageReceived(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 644
    check-cast p1, Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/photowidget3d/grid/M10Operator$AppOnSwipeListener;->onMessageReceived(Lcom/htc/fusion/fx/controls/FxHitbox$SwipeParameters;)V

    return-void
.end method
