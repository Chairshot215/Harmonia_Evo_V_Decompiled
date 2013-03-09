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
    .parameter "adapterBase"
    .parameter "listener"

    .prologue
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;-><init>(Lcom/htc/opensense/album/ViewTemplateBase;Lcom/htc/opensense/album/ViewTemplateBase$1;)V

    iput-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mContentMenuListener:Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    .line 466
    iput-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 471
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mState:I

    .line 120
    iput-object p1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    .line 121
    iput-object p2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mDispMgrListener:Lcom/htc/opensense/album/DisplayManagerInterface;

    .line 122
    return-void
.end method


# virtual methods
.method public abstract bindAdapter()V
.end method

.method public configureCommandBar(Lcom/htc/opensense/album/ControlButtonCollection;)V
    .locals 0
    .parameter "controlBar"

    .prologue
    .line 302
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .parameter "params"

    .prologue
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    .line 332
    if-eqz p1, :cond_0

    .line 333
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 334
    :cond_0
    return-void
.end method

.method public configureTitleBar(Lcom/htc/opensense/album/ControlTitleBar;)V
    .locals 0
    .parameter "controlBar"

    .prologue
    .line 297
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
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

    .prologue
    .line 311
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
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

    .prologue
    .line 424
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    .prologue
    .line 377
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method public getCommandBarLayout()I
    .locals 1

    .prologue
    .line 283
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
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

    .prologue
    .line 369
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 393
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    iget v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mState:I

    return v0
.end method

.method public getTitleBarLayout()I
    .locals 1

    .prologue
    .line 291
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 385
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleActivityMessage(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 213
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method protected init()V
    .locals 2

    .prologue
    .line 137
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    invoke-virtual {p0}, Lcom/htc/opensense/album/ViewTemplateBase;->createMainView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    .line 138
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mMainView:Landroid/view/View;

    iget-object v1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mContentMenuListener:Lcom/htc/opensense/album/ViewTemplateBase$MainViewContextMenuListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 139
    return-void
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onBroadcastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v2, 0x1

    .line 259
    iget v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mState:I

    if-eq v0, v2, :cond_0

    .line 267
    :goto_0
    return-void

    .line 261
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Lcom/htc/opensense/album/AdapterBase;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense/album/AdapterBase;

    invoke-virtual {v0}, Lcom/htc/opensense/album/AdapterBase;->onMediaMounted()V

    .line 266
    :cond_1
    iput-boolean v2, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mCheckBroadcaseReceive:Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 275
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 186
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onControlButtonPressed(Lcom/htc/opensense/album/ControlButton;)V
.end method

.method public abstract onCreateCommandBarSets(Lcom/htc/opensense/album/AlbumCommandBar;)Z
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 179
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onCreateDialog(I)Landroid/app/Dialog;
.end method

.method public abstract onCreateTitleBarSets(Lcom/htc/opensense/album/AlbumTitleBar;)Z
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 236
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onEnter(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 408
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mState:I

    .line 409
    return-void
.end method

.method public onLeave()V
    .locals 1

    .prologue
    .line 415
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mState:I

    .line 416
    return-void
.end method

.method public onMainViewContextItemSelected(Landroid/view/MenuItem;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .parameter "item"
    .parameter "menuInfo"

    .prologue
    .line 170
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onMenuItemSelected(ILandroid/view/MenuItem;)Z
.end method

.method public abstract onPause()V
.end method

.method public onPrepareMainViewContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 163
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end method

.method public abstract onResume()V
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 223
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 218
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method protected onTransition(ILandroid/os/Bundle;)I
    .locals 1
    .parameter "direction"
    .parameter "bundle"

    .prologue
    .line 401
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 418
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    return-void
.end method

.method protected safeStartAnimation(Landroid/view/View;Landroid/view/animation/Animation;Z)V
    .locals 1
    .parameter "view"
    .parameter "animation"
    .parameter "bIsStartNow"

    .prologue
    .line 448
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p3, :cond_2

    .line 452
    invoke-virtual {p1, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 454
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 130
    .local p0, this:Lcom/htc/opensense/album/ViewTemplateBase;,"Lcom/htc/opensense/album/ViewTemplateBase<TV;>;"
    iput-object p1, p0, Lcom/htc/opensense/album/ViewTemplateBase;->mAdapter:Landroid/widget/BaseAdapter;

    .line 131
    return-void
.end method

.method public abstract unbindAdapter()V
.end method
