.class Lcom/htc/opensense/widget/FullScreenView$6;
.super Ljava/lang/Object;
.source "FullScreenView.java"

# interfaces
.implements Landroid/widget/ZoomButtonsController$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/opensense/widget/FullScreenView;->setupZoomButtonController(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/widget/FullScreenView;


# direct methods
.method constructor <init>(Lcom/htc/opensense/widget/FullScreenView;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/htc/opensense/widget/FullScreenView$6;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 600
    if-eqz p1, :cond_0

    .line 601
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$6;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #calls: Lcom/htc/opensense/widget/FullScreenView;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$2100(Lcom/htc/opensense/widget/FullScreenView;)V

    .line 603
    :cond_0
    return-void
.end method

.method public onZoom(Z)V
    .locals 2
    .parameter "zoomIn"

    .prologue
    const/4 v1, 0x1

    .line 605
    invoke-static {}, Lcom/htc/opensense/widget/FullScreenView;->access$2200()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 614
    :goto_0
    return-void

    .line 607
    :cond_0
    if-eqz p1, :cond_1

    .line 608
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$6;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomIn()V

    .line 609
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$6;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #calls: Lcom/htc/opensense/widget/FullScreenView;->loadQualityImage(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/htc/opensense/widget/FullScreenView;->access$2300(Lcom/htc/opensense/widget/FullScreenView;ZZ)V

    .line 613
    :goto_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$6;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #calls: Lcom/htc/opensense/widget/FullScreenView;->updateZoomButtonsEnabled()V
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$2100(Lcom/htc/opensense/widget/FullScreenView;)V

    goto :goto_0

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/widget/FullScreenView$6;->this$0:Lcom/htc/opensense/widget/FullScreenView;

    #getter for: Lcom/htc/opensense/widget/FullScreenView;->mImageViews:[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;
    invoke-static {v0}, Lcom/htc/opensense/widget/FullScreenView;->access$900(Lcom/htc/opensense/widget/FullScreenView;)[Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/htc/opensense/widget/FullScreenView$ImageViewTouch;->zoomOut()V

    goto :goto_1
.end method
