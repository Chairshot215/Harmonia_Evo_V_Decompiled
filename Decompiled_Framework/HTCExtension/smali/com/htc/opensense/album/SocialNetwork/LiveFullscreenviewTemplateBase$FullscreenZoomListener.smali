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

    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canDoubleClickZoom(FF)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1900(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v3

    if-nez v3, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$2000(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/opensense/album/ControlBase;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;
    invoke-static {v3}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$2100(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v3}, Lcom/htc/opensense/widget/FullScreenView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v4}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$2200(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/opensense/album/ControlBase;->getHeight()I

    move-result v4

    sub-int v2, v3, v4

    int-to-float v3, v2

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public canPinchZoom()Z
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1700(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/widget/FullScreenView;

    invoke-virtual {v2}, Lcom/htc/opensense/widget/FullScreenView;->getCurrPosition()I

    move-result v1

    iget-object v2, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v2}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1800(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v2, v1}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->onRequestPhotoIntegrity(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onNeedFitToScreen(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPinchZoom(FF)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-virtual {v0, p1, p2}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onPinchZoomInView(FF)V

    return-void
.end method

.method public onPinchZoomEnd()V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onPinchZoomEndInView()V

    return-void
.end method

.method public onZoomBegin(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onZoomBeginInView(F)V

    return-void
.end method

.method public onZoomEnd(F)V
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$FullscreenZoomListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onZoomEndInView(F)V

    return-void
.end method
