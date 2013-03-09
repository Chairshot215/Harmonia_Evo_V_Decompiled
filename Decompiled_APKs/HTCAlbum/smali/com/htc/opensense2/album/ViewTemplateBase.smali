.class public abstract Lcom/htc/opensense2/album/ViewTemplateBase;
.super Ljava/lang/Object;
.source "ViewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense2/album/AdapterInterface;
.implements Lcom/htc/album/modules/ui/IControlBarHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense2/album/ViewTemplateBase$1;,
        Lcom/htc/opensense2/album/ViewTemplateBase$MainViewMenuItemClickListener;,
        Lcom/htc/opensense2/album/ViewTemplateBase$MainViewContextMenuListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/opensense2/album/AdapterInterface;",
        "Lcom/htc/album/modules/ui/IControlBarHost;"
    }
.end annotation


# static fields
.field public static final DIRECTION_CONFIGURATION_CHANGE:I = 0x3

.field public static final DIRECTION_ENTER:I = 0x1

.field public static final DIRECTION_LEAVE:I = 0x2

.field public static final LAYOUT_NOT_DEFINED:I = -0x1


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mCheckBroadcaseReceive:Z

.field private mContentMenuListener:Lcom/htc/opensense2/album/ViewTemplateBase$MainViewContextMenuListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense2/album/ViewTemplateBase",
            "<TV;>.MainViewContextMenu",
            "Listener;"
        }
    .end annotation
.end field

.field protected mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

.field protected mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

.field public mMainView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense2/album/DisplayManagerInterface;)V
    .locals 3
    .parameter "adapterBase"
    .parameter "listener"

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v1, 0x0

    .line 115
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 563
    iput-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 565
    new-instance v0, Lcom/htc/opensense2/album/ViewTemplateBase$MainViewContextMenuListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense2/album/ViewTemplateBase$MainViewContextMenuListener;-><init>(Lcom/htc/opensense2/album/ViewTemplateBase;Lcom/htc/opensense2/album/ViewTemplateBase$1;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mContentMenuListener:Lcom/htc/opensense2/album/ViewTemplateBase$MainViewContextMenuListener;

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    .line 590
    iput-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 116
    iput-object p1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    .line 117
    iput-object p2, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    .line 118
    invoke-virtual {p0}, Lcom/htc/opensense2/album/ViewTemplateBase;->requestHeaderBar()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/opensense2/album/ViewTemplateBase;->requestFooterBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    :cond_0
    new-instance v0, Lcom/htc/album/modules/ui/ControlBarManager;

    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivityListener()Lcom/htc/opensense2/album/TemplateActivityInterface;

    move-result-object v2

    invoke-interface {v2}, Lcom/htc/opensense2/album/TemplateActivityInterface;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/htc/album/modules/ui/ControlBarManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/htc/album/modules/ui/IControlBarHost;)V

    iput-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    .line 125
    :cond_1
    return-void
.end method


# virtual methods
.method public abstract bindAdapter()V
.end method

.method public configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    .line 329
    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 331
    :cond_0
    return-void
.end method

.method protected abstract createMainView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method protected doControlBarTransition()Z
    .locals 1

    .prologue
    .line 423
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 3

    .prologue
    .line 129
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    .line 130
    .local v0, activity:Landroid/app/Activity;
    iget-object v2, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    if-nez v2, :cond_0

    move-object v1, v0

    .line 135
    .end local v0           #activity:Landroid/app/Activity;
    .local v1, activity:Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 133
    .end local v1           #activity:Landroid/app/Activity;
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_0
    iget-object v2, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v1, v0

    .line 135
    .end local v0           #activity:Landroid/app/Activity;
    .restart local v1       #activity:Landroid/app/Activity;
    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 377
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHostBar()Lcom/htc/album/modules/ui/widget/GalleryHostBar;
    .locals 1

    .prologue
    .line 537
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getId()I
.end method

.method public getMainView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 385
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleActivityMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 243
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 160
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    invoke-virtual {p0}, Lcom/htc/opensense2/album/ViewTemplateBase;->createMainView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mContentMenuListener:Lcom/htc/opensense2/album/ViewTemplateBase$MainViewContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 162
    return-void
.end method

.method public invalidateControlBars()V
    .locals 1

    .prologue
    .line 542
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-nez v0, :cond_0

    .line 546
    :goto_0
    return-void

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    goto :goto_0
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 295
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense2/album/AdapterBase;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/AdapterBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/AdapterBase;->onMediaMounted()V

    .line 300
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    .line 301
    return-void
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 533
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 523
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 325
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onContentDataChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 272
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 209
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 202
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreateDialog(I)Landroid/app/Dialog;
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 1
    .parameter "id"

    .prologue
    .line 492
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 1
    .parameter "id"

    .prologue
    .line 442
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 266
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onEnter(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    .line 401
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getMainViewWrapper()Landroid/view/ViewGroup;

    move-result-object v0

    .line 404
    .local v0, wrapper:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v0}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 406
    .end local v0           #wrapper:Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 216
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 413
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v0}, Lcom/htc/album/modules/ui/ControlBarManager;->detach()V

    .line 417
    :cond_0
    return-void
.end method

.method public onMainViewContextItemSelected(Landroid/view/MenuItem;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .parameter "item"
    .parameter "menuInfo"

    .prologue
    .line 193
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaConnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 317
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 309
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end method

.method public onNotifyListUpdate()V
    .locals 0

    .prologue
    .line 595
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onNotifyUpdateOverlay()V
    .locals 0

    .prologue
    .line 152
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onNotifyUpdateOverlay(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 155
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public abstract onPause()V
.end method

.method public onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 186
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 503
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 0
    .parameter "header"

    .prologue
    .line 453
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public abstract onResume()V
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 253
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 248
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method protected onTransition(ILandroid/os/Bundle;)I
    .locals 1
    .parameter "direction"
    .parameter "bundle"

    .prologue
    .line 393
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 482
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 432
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;Z)V
    .locals 1
    .parameter "view"
    .parameter "animation"
    .parameter "bIsStartNow"

    .prologue
    .line 572
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p3, :cond_2

    .line 576
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 578
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 143
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    iput-object p1, p0, Lcom/htc/opensense2/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    .line 144
    return-void
.end method

.method public shouldSetMainViewZOrderTop()Z
    .locals 1

    .prologue
    .line 345
    .local p0, this:Lcom/htc/opensense2/album/ViewTemplateBase;,"Lcom/htc/opensense2/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract unbindAdapter()V
.end method
