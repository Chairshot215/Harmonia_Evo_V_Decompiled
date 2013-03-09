.class Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;
.super Ljava/lang/Object;
.source "LiveFullscreenviewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/widget/FullScreenView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewOnScrollListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;


# direct methods
.method constructor <init>(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)V
    .locals 0
    .parameter

    .prologue
    .line 551
    iput-object p1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canScroll()Z
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x1

    return v0
.end method

.method public onPositionChanged(II)V
    .locals 3
    .parameter "oldPos"
    .parameter "newPos"

    .prologue
    const/16 v2, 0x8

    .line 585
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$600(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$700(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/ControlBase;->setVisibility(I)V

    .line 588
    :cond_0
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$800(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 589
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$900(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/opensense/album/ControlBase;->setVisibility(I)V

    .line 590
    :cond_1
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1000(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    .line 592
    .local v0, adapter:Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1100(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    invoke-virtual {v1, p2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setFirstVisibleIndex(I)V

    .line 593
    iget-object v1, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;
    invoke-static {v1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$1200(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Landroid/widget/BaseAdapter;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/htc/opensense/album/SocialNetwork/LivePhotoAdapterBase;->setCenteredVisibleRange(IZ)V

    .line 595
    return-void
.end method

.method public onScrollAnimationBegin()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method public onScrollAnimationEnd()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 2
    .parameter "scrollState"

    .prologue
    const/16 v1, 0x8

    .line 567
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 569
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$200(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$300(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentTitleBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/ControlBase;->setVisibility(I)V

    .line 572
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$400(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    #getter for: Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;
    invoke-static {v0}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->access$500(Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;)Lcom/htc/opensense/album/DisplayManagerInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/opensense/album/DisplayManagerInterface;->getCurrentCommandBar()Lcom/htc/opensense/album/ControlBase;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/opensense/album/ControlBase;->setVisibility(I)V

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase$ViewOnScrollListener;->this$0:Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;

    invoke-virtual {v0, p1}, Lcom/htc/opensense/album/SocialNetwork/LiveFullscreenviewTemplateBase;->onScrollStateViewChanged(I)V

    .line 576
    return-void
.end method
