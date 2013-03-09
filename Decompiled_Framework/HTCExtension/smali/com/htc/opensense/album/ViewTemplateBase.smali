.class public abstract Lcom/htc/opensense/album/ViewTemplateBase;
.super Ljava/lang/Object;
.source "ViewTemplateBase.java"

# interfaces
.implements Lcom/htc/opensense/album/AdapterInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/opensense/album/ViewTemplateBase$1;,
        Lcom/htc/opensense/album/ViewTemplateBase$MainViewMenuItemClickListener;,
        Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/opensense/album/AdapterInterface;"
    }
.end annotation


# static fields
.field public static final DIRECTION_CONFIGURATION_CHANGE:I = 0x3

.field public static final DIRECTION_ENTER:I = 0x1

.field public static final DIRECTION_LEAVE:I = 0x2

.field public static final LAYOUT_NOT_DEFINED:I = -0x1

.field public static final STATE_ACTIVE:I = 0x1

.field public static final STATE_DEACTIVE:I = 0x2


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mCheckBroadcaseReceive:Z

.field private mContentMenuListener:Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/opensense/album/ViewTemplateBase",
            "<TV;>.MainViewContextMenu",
            "Listener;"
        }
    .end annotation
.end field

.field protected mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field protected mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

.field protected mMainView:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field protected mState:I


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense/album/DisplayManagerInterface;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;-><init>(Lcom/htc/opensense/album/ViewTemplateBase;Lcom/htc/opensense/album/ViewTemplateBase$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mContentMenuListener:Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    iput-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mState:I

    iput-object p1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    iput-object p2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    return-void
.end method


# virtual methods
.method public abstract bindAdapter()V
.end method

.method public configureCommandBar(Lcom/htc/opensense/album/ControlButtonCollection;)V
    .locals 0

    return-void
.end method

.method public configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    :cond_0
    return-void
.end method

.method public configureTitleBar(Lcom/htc/opensense/album/ControlTitleBar;)V
    .locals 0

    return-void
.end method

.method protected abstract createMainView()Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public createNewButtonCollection()Lcom/htc/opensense/album/ControlButtonCollection;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
.end method

.method protected doControlBarTransition()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCommandBarLayout()I
    .locals 1

    const/4 v0, -0x1

    return v0
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

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mState:I

    return v0
.end method

.method public getTitleBarLayout()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public handleActivityMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method protected init()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/opensense/album/ViewTemplateBase;->createMainView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mContentMenuListener:Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    return-void
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mState:I

    if-eq v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense/album/AdapterBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/AdapterBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/AdapterBase;->onMediaMounted()V

    :cond_1
    iput-boolean v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onControlButtonPressed(Lcom/htc/opensense/album/ControlButton;)V
.end method

.method public abstract onCreateCommandBarSets(Lcom/htc/opensense/album/AlbumCommandBar;)Z
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreateDialog(I)Landroid/app/Dialog;
.end method

.method public abstract onCreateTitleBarSets(Lcom/htc/opensense/album/AlbumTitleBar;)Z
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onEnter(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mState:I

    return-void
.end method

.method public onLeave()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mState:I

    return-void
.end method

.method public onMainViewContextItemSelected(Landroid/view/MenuItem;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end method

.method public abstract onPause()V
.end method

.method public onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onResume()V
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method protected onTransition(ILandroid/os/Bundle;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method protected safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;Z)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne v0, p3, :cond_2

    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public abstract unbindAdapter()V
.end method
