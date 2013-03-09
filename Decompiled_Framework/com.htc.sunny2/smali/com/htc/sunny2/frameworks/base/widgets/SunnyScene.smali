.class public abstract Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;
.super Ljava/lang/Object;
.source "SunnyScene.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
.implements Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VIEW:",
        "Lcom/htc/sunny2/view/SView;",
        "ADAPTER:",
        "Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene",
        "<TADAPTER;>;",
        "Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;"
    }
.end annotation


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field protected mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TADAPTER;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mId:I

.field private mIsAdapterBound:Z

.field private mIsAnimationCreated:Z

.field private mIsAnimationEnded:Z

.field private mIsAnimationPlayed:Z

.field private mIsAnimationPrepared:Z

.field private mIsSceneAdapterUnbinded:Z

.field private mIsSceneEntered:Z

.field private mIsSceneLeft:Z

.field private mIsSceneSentToBackground:Z

.field private mIsSceneSentToForeground:Z

.field protected mMainView:Lcom/htc/sunny2/view/SView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVIEW;"
        }
    .end annotation
.end field

.field protected mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

.field protected mSceneBundle:Landroid/os/Bundle;

.field protected mSceneCancelled:Z

.field protected mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field private mSceneState:I

.field protected mStatusBarHeight:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->LOG_TAG:Ljava/lang/String;

    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mId:I

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mStatusBarHeight:I

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneCancelled:Z

    new-instance v0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene$1;-><init>(Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneEntered:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAdapterBound:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneAdapterUnbinded:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneLeft:Z

    iput v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    return-void
.end method

.method private resetSecureAnimationState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    return-void
.end method


# virtual methods
.method public enableBroadcastReceiver()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableContextMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableHostCamera()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enableHostPadding()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAnimationDuration()I
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->getAnimationDuration()I

    move-result v0

    return v0
.end method

.method public final getData()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getEnvironmentRenderOrder()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mId:I

    return v0
.end method

.method public final getMainView()Lcom/htc/sunny2/view/SView;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method public isHostScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isSecureAnimationCreate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    return v0
.end method

.method public final isSecureAnimationEnd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    return v0
.end method

.method public final isSecureAnimationPlay()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    return v0
.end method

.method public final isSecureAnimationPrepare()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    return v0
.end method

.method public isSecureBindAdapter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAdapterBound:Z

    return v0
.end method

.method public isSecureEnterScene()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneEntered:Z

    return v0
.end method

.method public isSecureLeaveScene()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneLeft:Z

    return v0
.end method

.method public isSecureSendToBackground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    return v0
.end method

.method public isSecureSendToForeground()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    return v0
.end method

.method public isSecureTo(I)Z
    .locals 2

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    iget v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x10 -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public isSecureUnbindAdapter()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneAdapterUnbinded:Z

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v0, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onAnimationEnd(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationEnded:Z

    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBindAdapter()V
    .locals 5

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mStatusBarHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mStatusBarHeight:I

    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->enableFullScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mStatusBarHeight:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/view/SView;->setPadding(IIII)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAdapterBound:Z

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onBindAdapter]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onBroadcastMediaConnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastMediaDisconnected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBroadcastReceive()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCancelNewAdapter()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneCancelled:Z

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->onUnloadData()V

    :cond_0
    return-void
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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onCreateAnimation(I)Landroid/os/Bundle;
    .locals 2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationCreated:Z

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract onCreateScene()Lcom/htc/sunny2/view/SView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVIEW;"
        }
    .end annotation
.end method

.method public abstract onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public abstract onDestroyScene()V
.end method

.method public onEnterScene(Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onCreateScene()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onCreateSceneAnimation()Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny2/frameworks/animation/animationSetBase;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/animation/animationSetBase;-><init>(Lcom/htc/sunny2/view/SView;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneEntered:Z

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onEnterScene]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLeaveScene()V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->onDestroyScene()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneLeft:Z

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onLeaveScene]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPlayed:Z

    return-void
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onPrepareAnimation(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneAnimation:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    invoke-interface {v1, p1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;->onPrepareAnimation(I)Z

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsAnimationPrepared:Z

    return v0
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRemoveMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onSendToBackground(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToBackground:Z

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->resetSecureAnimationState()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onSendToBackground]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSendToForeground(Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneSentToForeground:Z

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mStatusBarHeight:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->activityReference()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/WindowHelper;->getWindowStatusBarHeight(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mStatusBarHeight:I

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->enableFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v2}, Lcom/htc/sunny2/view/SView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mStatusBarHeight:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v3}, Lcom/htc/sunny2/view/SView;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mMainView:Lcom/htc/sunny2/view/SView;

    invoke-virtual {v4}, Lcom/htc/sunny2/view/SView;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/sunny2/view/SView;->setPadding(IIII)V

    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->resetSecureAnimationState()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onSendToForeground]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public onTriggerErrorReport()V
    .locals 0

    return-void
.end method

.method public onUnbindAdapter()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mIsSceneAdapterUnbinded:Z

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnyScene][onUnbindAdapter]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final setAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mAdapter:Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    return-void
.end method

.method public bridge synthetic setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V
    .locals 0

    check-cast p1, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->setAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)V

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mId:I

    return-void
.end method

.method public final setSceneControl(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    return-void
.end method

.method public final setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TADAPTER;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    move-object v0, p1

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const-string v2, "Error identifier(null): "

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->setAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)V

    return-object v2

    :cond_2
    if-nez p1, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error adapter(null): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mismatch identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)Ljava/lang/String;
    .locals 1

    check-cast p1, Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/widgets/SunnyScene;->setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected workaroundBuildSDKDroiddocParseProblem()Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TADAPTER;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
