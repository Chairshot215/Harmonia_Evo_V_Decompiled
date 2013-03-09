.class Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;
.super Ljava/lang/Object;
.source "LiveFullscreenviewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/widget/FullScreenView$OnZoomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullscreenZoomListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V
    .locals 0
    .parameter

    .prologue
    .line 669
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDoubleClickZoom(FF)Z
    .locals 5
    .parameter "fX"
    .parameter "fY"

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 726
    .local v0, bResult:Z
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1900(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v0

    .line 737
    .end local v0           #bResult:Z
    .local v1, bResult:I
    :goto_0
    return v1

    .line 729
    .end local v1           #bResult:I
    .restart local v0       #bResult:Z
    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$2000(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/album/ControlBase;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 731
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$2100(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/FullScreenView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$2200(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/album/ControlBase;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    .line 732
    .local v2, nBoundary:I
    int-to-float v3, v2

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_1

    move v1, v0

    .line 733
    .restart local v1       #bResult:I
    goto :goto_0

    .line 736
    .end local v1           #bResult:I
    .end local v2           #nBoundary:I
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    .line 737
    .restart local v1       #bResult:I
    goto :goto_0
.end method

.method public canPinchZoom()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 690
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1700(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView;->getCurrPosition()I

    move-result v1

    .line 691
    .local v1, pos:I
    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1800(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRequestPhotoIntegrity(I)I

    move-result v0

    .line 692
    .local v0, integrity:I
    if-ne v0, v3, :cond_0

    move v2, v3

    .line 695
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onNeedFitToScreen(I)Z
    .locals 1
    .parameter "offset"

    .prologue
    .line 718
    const/4 v0, 0x0

    return v0
.end method

.method public onPinchZoom(FF)V
    .locals 1
    .parameter "prevRatio"
    .parameter "newRatio"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onPinchZoomInView(FF)V

    .line 678
    return-void
.end method

.method public onPinchZoomEnd()V
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onPinchZoomEndInView()V

    .line 683
    return-void
.end method

.method public onZoomBegin(F)V
    .locals 1
    .parameter "ratio"

    .prologue
    .line 703
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onZoomBeginInView(F)V

    .line 704
    return-void
.end method

.method public onZoomEnd(F)V
    .locals 1
    .parameter "ratio"

    .prologue
    .line 711
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onZoomEndInView(F)V

    .line 712
    return-void
.end method
