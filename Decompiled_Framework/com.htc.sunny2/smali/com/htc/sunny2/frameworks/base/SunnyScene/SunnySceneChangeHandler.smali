.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;
.super Ljava/lang/Object;
.source "SunnySceneChangeHandler.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessengerHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;
    }
.end annotation


# static fields
.field public static final SCLOCK_ANIMATION:I = 0x516

.field public static final SCLOCK_NEW_ADAPTER:I = 0x515

.field public static final SCLOCK_UNKNOWN:I = 0x514

.field public static final SCSTATE_ADAPTER_CHECK:I = 0xa

.field public static final SCSTATE_ADAPTER_READY:I = 0x16

.field public static final SCSTATE_BIND_ADAPTER:I = 0xd

.field public static final SCSTATE_CHANGE_END:I = 0x14

.field public static final SCSTATE_CHANGE_START:I = 0xb

.field public static final SCSTATE_CREATE_ANIMATION:I = 0xe

.field public static final SCSTATE_EXIT_ANIMATION:I = 0x10

.field public static final SCSTATE_NEW_ADAPTER_UNLOCK:I = 0x15

.field public static final SCSTATE_PLAY_ANIMATION:I = 0xf

.field public static final SCSTATE_PREPARE_ANIMATION:I = 0xc

.field public static final SCSTATE_SEND_BACKGROUND:I = 0x12

.field public static final SCSTATE_SEND_FOREGROUND:I = 0x11

.field public static final SCSTATE_UNBIND_ADAPTER:I = 0x13

.field private static final TIMER_NEW_ADAPTER_UNLOCK:I = 0x4b0


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAnimationLock:Z

.field private mBundle:Landroid/os/Bundle;

.field private mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsSceneForceClose:Z

.field private mNewAdapterLock:Z

.field private mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

.field private mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

.field private mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

.field private mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-direct {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$1;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$1;-><init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private doSceneChange()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][doSceneChange]:..."

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    const/16 v0, 0x16

    invoke-virtual {p0, v0, v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private isAnimationLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    return v0
.end method

.method private isNewAdapterLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    return v0
.end method

.method private onCreateAnimation(Ljava/lang/Object;)V
    .locals 4

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onCreateAnimation]: incoming animations: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationBegin(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->createAnimation(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private onExitAnimation()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onExitAnimation]:... "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->endAnimation()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationEnd()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x12

    invoke-virtual {p0, v0, v3, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onPlayAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->onNotifyAnimationBegin(Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->playAnimation()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onPlayAnimation]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onPrepareAnimation(Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0xd

    const/4 v6, 0x0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnySceneChangeHandler][onPrepareAnimation]: animation type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    iget-boolean v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    invoke-virtual {v3, v1, v8, v0, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->prepareSceneAnimation(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;IZ)V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v7, v3, v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    check-cast v2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    iget-boolean v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->prepareSceneAnimation(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;IZ)V

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[HTCAlbum][SunnySceneChangeHandler][onPrepareAnimation]: no of anim: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v5}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne v3, v0, :cond_2

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v7, v3, v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v3, v0, :cond_0

    const/16 v3, 0xe

    invoke-virtual {p0, v3, v8, v6}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateAdapterCheck()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterCheck]: null scene control"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterCheck]: null next scene"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterCheck]: onNewAdapter"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onNewAdapter(Landroid/os/Bundle;)V

    const/16 v1, 0x15

    const/16 v2, 0x4b0

    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v4, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateBindAdapter()V
    .locals 5

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->adapterIdentity()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->sceneAdapter(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/adapters/SceneAdapter;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->setSecuredSetAdapter(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAdapter;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionInvalidSceneAdapter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionInvalidSceneAdapter;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onBindAdapter()V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureBindAdapter()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindAdapter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v4}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method private onStateChangeStart()V
    .locals 3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateChangeStart]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getId()I

    move-result v1

    if-le v0, v1, :cond_2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private onStateSceneChangeEnd()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateSceneChangeEnd]:... "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->onSceneChangeEnd(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    return-void
.end method

.method private onStateSendBackground()V
    .locals 7

    const/16 v6, 0x13

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateSendBackground]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onSendToBackground(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToBackground()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendToBackground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isSceneForceClose()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v6, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v6, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateSendForeground()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateSendForeground]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    invoke-interface {v1, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onSendToForeground(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureSendToForeground()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSendToForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getSceneChangeType()I

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x12

    invoke-virtual {p0, v1, v5, v4}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateUnbindAdapter()V
    .locals 4

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->sceneIdentity()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateUnbindAdapter]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->onUnbindAdapter()V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->isSecureUnbindAdapter()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnbindAdapter: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/16 v1, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private onStateUnlockNewAdapter()V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateUnlockNewAdapter]:... "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    return-void
.end method


# virtual methods
.method public cancelSceneChange()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->onSceneChangeCancelled()V

    goto :goto_0
.end method

.method public enableAnimationLock()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getNextScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    return-object v0
.end method

.method public getPreviousScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    return-object v0
.end method

.method public isSceneForceClose()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterCheck()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateChangeStart()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPrepareAnimation(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateBindAdapter()V

    goto :goto_0

    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onCreateAnimation(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPlayAnimation()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onExitAnimation()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSendForeground()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSendBackground()V

    goto :goto_0

    :pswitch_9
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateUnbindAdapter()V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateSceneChangeEnd()V

    goto :goto_0

    :pswitch_b
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateUnlockNewAdapter()V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onStateAdapterReady()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public onStateAdapterReady()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][onStateAdapterReady]:... "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onRemoveMessage(I)V

    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method public onStateAnimationReady()V
    .locals 4

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->decrement()V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mScAnimHandler:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getReferences()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][SunnySceneChangeHandler][onStateAnimationReady]: waiting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/16 v1, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->onPostMessage(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public prepareSceneChange(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;Landroid/os/Bundle;Z)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][prepareSceneChange]: begin"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p5, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iput-object p3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iput-object p4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->onSceneChangeBegin()V

    :cond_0
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->doSceneChange()V

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][prepareSceneChange]: end"

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][SunnySceneChangeHandler][reset]: "

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneCurrent:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mSceneNext:Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mBundle:Landroid/os/Bundle;

    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mIsSceneForceClose:Z

    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mNewAdapterLock:Z

    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mAnimationLock:Z

    return-void
.end method

.method public sceneChangeEnterLock()I
    .locals 3

    const/16 v0, 0x514

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isNewAdapterLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][sceneChangeEnterLock]: NewAdapterLocked! "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x515

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->isAnimationLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][SunnySceneChangeHandler][sceneChangeEnterLock]: AnimationLocked! "

    invoke-static {v1, v2}, Lcom/htc/sunny2/frameworks/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x516

    goto :goto_0
.end method

.method public sceneChangeInProgress()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;->isSceneChanging()Z

    move-result v0

    goto :goto_0
.end method

.method public setChangeListener(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler;->mChangeListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeHandler$ISceneChangeListener;

    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method
