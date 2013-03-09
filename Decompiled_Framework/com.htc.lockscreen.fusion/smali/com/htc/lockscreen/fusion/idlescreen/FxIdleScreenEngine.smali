.class public Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;
.super Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;
.source "FxIdleScreenEngine.java"

# interfaces
.implements Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$MyHandler;
    }
.end annotation


# static fields
.field public static final COMMON_DIMEN_SCROLL:Ljava/lang/String; = "scroll"

.field public static final FLAG_SC_HIDE_ALL:I = 0x3

.field public static final FLAG_SC_HIDE_PLUGIN:I = 0x1

.field public static final FLAG_SC_HIDE_REMINDER:I = 0x2

.field private static final LOG_PREFIX:Ljava/lang/String; = "FxIdleScreenEngine"

.field public static final M10_ERROR:Ljava/lang/String; = "Lockscreen_common_error.m10"

.field public static final M10_LAND_ERROR:Ljava/lang/String; = "land/Lockscreen_common_error.m10"

.field public static final M10_LAND_LOADING:Ljava/lang/String; = "land/Lockscreen_common_loading.m10"

.field public static final M10_LOADING:Ljava/lang/String; = "Lockscreen_common_loading.m10"

.field public static final TYPE_TIME_CLOCK:I = 0x1

.field public static final TYPE_TIME_NORMAL:I = 0x0

.field private static final WHAT_ON_UPDATE_RENDERABLE:I = 0x186a1

.field private static mViewObject:Lcom/htc/fusion/fx/FxViewObject;

.field private static final sClassLoader:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;


# instance fields
.field private mCurFormat:I

.field private mCurHeight:I

.field private mCurSurface:Landroid/view/Surface;

.field private mCurWidth:I

.field mFilter:Lcom/htc/lockscreen/fusion/widget/TouchFilter;

.field private mHandler:Landroid/os/Handler;

.field protected mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

.field private mMenu:Landroid/view/Menu;

.field private mMenuPadding:I

.field private mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

.field private mPluginRenderable:Z

.field private mRenderable:Z

.field private mSurfacePortrait:Z

.field private mTouchListner:Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;

    invoke-direct {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;-><init>()V

    sput-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->sClassLoader:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;

    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mSurfacePortrait:Z

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mRenderable:Z

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mPluginRenderable:Z

    new-instance v0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;

    invoke-direct {v0}, Lcom/htc/lockscreen/fusion/widget/TouchFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mFilter:Lcom/htc/lockscreen/fusion/widget/TouchFilter;

    iput-object v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurSurface:Landroid/view/Surface;

    iput v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurFormat:I

    iput v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurWidth:I

    iput v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurHeight:I

    iput-object v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenu:Landroid/view/Menu;

    iput-object v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    iput v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuPadding:I

    new-instance v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$MyHandler;-><init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;)V

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;-><init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mTouchListner:Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->createIdleScreen()Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mFilter:Lcom/htc/lockscreen/fusion/widget/TouchFilter;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mTouchListner:Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->setCallback(Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;-><init>(Lcom/htc/lockscreen/idlescreen/IdleScreenService;)V

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mSurfacePortrait:Z

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mRenderable:Z

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mPluginRenderable:Z

    new-instance v0, Lcom/htc/lockscreen/fusion/widget/TouchFilter;

    invoke-direct {v0}, Lcom/htc/lockscreen/fusion/widget/TouchFilter;-><init>()V

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mFilter:Lcom/htc/lockscreen/fusion/widget/TouchFilter;

    iput-object v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurSurface:Landroid/view/Surface;

    iput v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurFormat:I

    iput v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurWidth:I

    iput v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurHeight:I

    iput-object v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenu:Landroid/view/Menu;

    iput-object v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    iput v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuPadding:I

    new-instance v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$MyHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$MyHandler;-><init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;)V

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;

    invoke-direct {v0, p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine$1;-><init>(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mTouchListner:Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;

    iput-object p2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mFilter:Lcom/htc/lockscreen/fusion/widget/TouchFilter;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mTouchListner:Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->setCallback(Lcom/htc/lockscreen/fusion/widget/TouchFilter$TouchListener;)V

    return-void
.end method

.method static synthetic access$100()Lcom/htc/fusion/fx/FxViewObject;
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    return-object v0
.end method

.method private dispose()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method private onCreateOptionsMenu()V
    .locals 2

    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-direct {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v1, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onCreateOptionMenu(Landroid/view/Menu;)Z

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->setMenuPadding()V

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenu:Landroid/view/Menu;

    return-void
.end method


# virtual methods
.method public closeOptionsMenu()V
    .locals 2

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    invoke-virtual {v0}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->cleanup()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method protected createIdleScreen()Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;
    .locals 2

    const-string v0, "FxIdleScreenEngine"

    const-string v1, "createIdleScreen() ..."

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->sClassLoader:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-virtual {v0, v1, p0, p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenClassLoader;->getIdleScreen(Landroid/content/Context;Lcom/htc/lockscreen/fusion/idlescreen/FxEngineCallback;Lcom/htc/lockscreen/idlescreen/IdleScreenCallback;)Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    move-result-object v0

    return-object v0
.end method

.method public createScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public createScene(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public dispathcViewModeChange()V
    .locals 0

    return-void
.end method

.method public doCreate(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-virtual {v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sget-object v1, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/htc/fusion/fx/FxViewObject;->create(Lcom/htc/fusion/fx/FxView;)Lcom/htc/fusion/fx/FxViewObject;

    move-result-object v1

    sput-object v1, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    sget-object v1, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->getMode10Path()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxViewObject;->setPackageResourcePath(Ljava/lang/String;)V

    sget-object v1, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v3, v3}, Lcom/htc/fusion/fx/FxViewObject;->initLivePreviewHost(ZIZ)Z

    sget-object v1, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const-string v2, "idlescreen"

    invoke-virtual {v1, v2}, Lcom/htc/fusion/fx/FxViewObject;->setLivePreviewDescription(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v1, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->init(Landroid/content/res/Configuration;)V

    :cond_1
    invoke-super {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doCreate(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public doDestroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doDestroy()V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->clean()V

    iput-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    :cond_0
    invoke-direct {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->dispose()V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->stopForeground(Z)V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->stopSelf()V

    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doPause()V
    .locals 1

    invoke-super {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doPause()V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onPause()V

    :cond_0
    return-void
.end method

.method public doResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doResume()V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onResume()V

    :cond_0
    return-void
.end method

.method public doStart()V
    .locals 5

    invoke-super {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStart()V

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurFormat:I

    iget v3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurWidth:I

    iget v4, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onStart()V

    :cond_1
    return-void
.end method

.method public doStop()V
    .locals 1

    invoke-super {p0}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->doStop()V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onStop()V

    :cond_0
    return-void
.end method

.method public getCommonDimen(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->getCommonDimen(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method

.method public getCommonM10Path(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->getCommonM10Path(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorM10Path()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 9

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/controls/FxHitbox;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 11

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-interface/range {v0 .. v10}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 9

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;
    .locals 10

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->getIdleDragControl(Ljava/lang/String;Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxTimelineControl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/lockscreen/fusion/widget/IdleDragControl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdleScreenBase()Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    return-object v0
.end method

.method public getLoadingM10Path()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMode10Path()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    invoke-virtual {v0}, Lcom/htc/lockscreen/idlescreen/IdleScreenService;->getPackageResourcePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRingScope()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->getRingScope()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewObject()Lcom/htc/fusion/fx/FxViewObject;
    .locals 1

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    return-object v0
.end method

.method public getXSpeed()F
    .locals 2

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getYSpeed()F
    .locals 2

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInPortrait()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->isInPortrait()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRenderable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mRenderable:Z

    return v0
.end method

.method public isShortcutVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->isShortcutVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onKeyDown(ILandroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onKeyUp(ILandroid/view/KeyEvent;)V

    :cond_0
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->onCreateOptionsMenu()V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    if-nez v0, :cond_2

    new-instance v1, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    iget-object v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mService:Lcom/htc/lockscreen/idlescreen/IdleScreenService;

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenu:Landroid/view/Menu;

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuPadding:I

    invoke-direct {v1, v2, v0, v3}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;I)V

    iput-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    invoke-virtual {v0, p0}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->setCallback(Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;)V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->closeOptionsMenu()V

    goto :goto_0
.end method

.method public onLocaleChanged(Ljava/util/Locale;)V
    .locals 0

    return-void
.end method

.method public onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public onOrientationChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "FxIdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged bPortrait:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSurfacePortrait:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mSurfacePortrait:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mSurfacePortrait:Z

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onPhoneStateChanged(Lcom/htc/lockscreen/telephony/PhoneState;)V

    :cond_0
    return-void
.end method

.method public onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onRemoteViewUpdate(Lcom/htc/lockscreen/idlescreen/pub/IdlePubView;)V

    :cond_0
    return-void
.end method

.method public onRenderableChange(Z)V
    .locals 3

    const-string v0, "FxIdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderableChange"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onRenderableChange(Z)V

    iput-boolean p1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mRenderable:Z

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->updateRenderable()V

    return-void
.end method

.method public onRingAnimationEnd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRingAnimationStart(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onRingDragEnd(Z)V
    .locals 0

    return-void
.end method

.method public onRingDragStart()V
    .locals 0

    return-void
.end method

.method public onRingDragWakeLock()V
    .locals 0

    return-void
.end method

.method public onRingDrop(Lcom/htc/lockscreen/fusion/widget/IdleDragControl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onScreenOnOffChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onScreenOnOffChanged(Z)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    if-le p3, p4, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mSurfacePortrait:Z

    :goto_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurSurface:Landroid/view/Surface;

    iput p2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurFormat:I

    iput p3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurWidth:I

    iput p4, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurHeight:I

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    const-string v0, "FxIdleScreenEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceChanged getSurface:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurFormat:I

    iget v3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurWidth:I

    iget v4, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mSurfacePortrait:Z

    goto :goto_0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    const-string v0, "FxIdleScreenEngine"

    const-string v1, "onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "FxIdleScreenEngine"

    const-string v1, "onSurfaceDestroyPredict"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyPredict(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "FxIdleScreenEngine"

    const-string v1, "onSurfaceDestroyed"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    iput-object v3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurSurface:Landroid/view/Surface;

    iput v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurFormat:I

    iput v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurWidth:I

    iput v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurHeight:I

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v0, v3, v2, v2, v2}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public onSurfaceVisibilityChanged(Landroid/view/SurfaceHolder;I)V
    .locals 5

    if-nez p2, :cond_0

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurSurface:Landroid/view/Surface;

    iget v2, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurFormat:I

    iget v3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurWidth:I

    iget v4, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mCurHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/fusion/fx/FxViewObject;->setSurface(Landroid/view/Surface;III)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuView:Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;

    invoke-virtual {v1, p1}, Lcom/htc/lockscreen/fusion/widget/AndIdleMenu;->onTouchEvent(Landroid/view/MotionEvent;)V

    :goto_0
    return-void

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_1
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_2
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mFilter:Lcom/htc/lockscreen/fusion/widget/TouchFilter;

    invoke-virtual {v1, p1}, Lcom/htc/lockscreen/fusion/widget/TouchFilter;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method protected onViewModeChange(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onViewModeChange(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/lockscreen/idlescreen/IdleScreenEngine;->onVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->onVisibilityChanged(Z)V

    :cond_0
    return-void
.end method

.method public pauseRender()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mPluginRenderable:Z

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->updateRenderable()V

    return-void
.end method

.method public resumeRender()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mPluginRenderable:Z

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->updateRenderable()V

    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->setBackground(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setBackground(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->setBackground(Lcom/htc/fusion/fx/FxScene;Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->setBackground(Lcom/htc/fusion/fx/FxScene;Z)V

    return-void
.end method

.method public setBackground(Lcom/htc/fusion/fx/FxScene;Z)V
    .locals 2

    sget-object v0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->setBackground(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    :goto_0
    return-void

    :cond_0
    const-string v0, "FxIdleScreenEngine"

    const-string v1, "setBackground() no base idlescreen"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "FxIdleScreenEngine"

    const-string v1, "setBackground() no ViewObject"

    invoke-static {v0, v1}, Lcom/htc/lockscreen/fusion/IdleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setClockType(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->setClockType(I)V

    :cond_0
    return-void
.end method

.method public setMenuPadding()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v1, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->setMenuPadding(I)V

    iput v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuPadding:I

    const-string v1, "FxIdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "padding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mMenuPadding:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/fusion/IdleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScene(Lcom/htc/fusion/fx/FxScene;)Lcom/htc/fusion/fx/FxScene;
    .locals 1

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->isInPortrait()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    return-object v0
.end method

.method public setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v1, p1, p2}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "FxIdleScreenEngine"

    const-string v2, "createScene() no base idlescreen"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/fusion/IdleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "FxIdleScreenEngine"

    const-string v2, "createScene() no ViewObject"

    invoke-static {v1, v2}, Lcom/htc/lockscreen/fusion/IdleLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setScene(Ljava/lang/String;)Lcom/htc/fusion/fx/FxScene;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/htc/fusion/fx/FxScene;->create(Ljava/lang/String;Z)Lcom/htc/fusion/fx/FxScene;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->isInPortrait()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    return-object v0
.end method

.method public setScene(Lcom/htc/fusion/fx/FxScene;Lcom/htc/fusion/fx/FxScene;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->setScene(Lcom/htc/fusion/fx/FxScene;Z)Lcom/htc/fusion/fx/FxScene;

    return-void
.end method

.method public setShortcutVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mIdleScreen:Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;

    invoke-interface {v0, p1}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenIntf;->setShortcutVisibility(I)V

    :cond_0
    return-void
.end method

.method public setShortcutVisible(Z)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->setShortcutVisibility(I)V

    return-void
.end method

.method public setSurfaceSize()V
    .locals 5

    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->getDesiredMinimumWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->getDesiredMinimumHeight()I

    move-result v0

    const-string v2, "FxIdleScreenEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSurfaceSize width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/fusion/IdleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v1, :cond_0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    goto :goto_0
.end method

.method public updateRenderable()V
    .locals 4

    iget-boolean v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mRenderable:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mPluginRenderable:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "FxIdleScreenEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRenderable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/lockscreen/fusion/IdleLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxViewObject;->resumeRendering()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/htc/lockscreen/fusion/idlescreen/FxIdleScreenEngine;->mViewObject:Lcom/htc/fusion/fx/FxViewObject;

    invoke-virtual {v1}, Lcom/htc/fusion/fx/FxViewObject;->pauseRendering()V

    goto :goto_1
.end method
