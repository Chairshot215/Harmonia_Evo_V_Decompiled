.class Lcom/htc/home/personalize/opensense/FullScreenView$6;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/home/personalize/opensense/FullScreenView;->setupZoomButtonController(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/home/personalize/opensense/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/home/personalize/opensense/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 542
    iput-object p1, p0, Lcom/htc/home/personalize/opensense/FullScreenView$6;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 544
    if-eqz p1, :cond_0

    .line 545
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$6;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1800(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    .line 547
    :cond_0
    return-void
.end method

.method public onZoom(Z)V
    .locals 2
    .parameter "zoomIn"

    .prologue
    const/4 v1, 0x1

    .line 549
    invoke-static {}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1900()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 558
    :goto_0
    return-void

    .line 551
    :cond_0
    if-eqz p1, :cond_1

    .line 552
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$6;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->zoomIn()V

    .line 553
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$6;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$2000(Lcom/htc/home/personalize/opensense/FullScreenView;ZZ)V

    .line 557
    :goto_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$6;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #calls: Lcom/htc/home/personalize/opensense/FullScreenView;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$1800(Lcom/htc/home/personalize/opensense/FullScreenView;)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/opensense/FullScreenView$6;->this$0:Lcom/htc/home/personalize/opensense/FullScreenView;

    #getter for: Lcom/htc/home/personalize/opensense/FullScreenView;->mImageViews:[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/home/personalize/opensense/FullScreenView;->access$800(Lcom/htc/home/personalize/opensense/FullScreenView;)[Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/home/personalize/opensense/FullScreenView$ImageViewTouch;->zoomOut()V

    goto :goto_1
.end method
