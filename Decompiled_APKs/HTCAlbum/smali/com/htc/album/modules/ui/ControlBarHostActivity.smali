.class public abstract Lcom/htc/album/modules/ui/ControlBarHostActivity;
.super Landroid/app/Activity;
.source "ControlBarHostActivity.java"

# interfaces
.implements Lcom/htc/album/modules/ui/IControlBarHost;


# instance fields
.field protected mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-void
.end method


# virtual methods
.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->requestHeaderBar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->requestFooterBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    :cond_0
    new-instance v0, Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 32
    :cond_1
    return-void
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 1
    .parameter "id"

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 1
    .parameter "id"

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 44
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 45
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 145
    return-void
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 95
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method
