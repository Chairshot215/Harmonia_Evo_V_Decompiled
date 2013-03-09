.class public Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;
.super Ljava/lang/Object;
.source "SunnySceneChangeAnimationHandler.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;
    }
.end annotation


# static fields
.field public static final SCENECHANGE_NEXT:I = 0x1

.field public static final SCENECHANGE_PREVIOUS:I = 0x2

.field public static final SCENECHANGE_PREVIOUS_ADAPTER:I = 0x3

.field public static final SCENECHANGE_START:I = 0x0

.field public static final SCENECHANGE_UNKNOWN:I = -0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

.field private mAnimationReference:I

.field private mBundleIn:Landroid/os/Bundle;

.field private mBundleOut:Landroid/os/Bundle;

.field private mExistsAnimIn:Z

.field private mExistsAnimOut:Z

.field private mHandler:Landroid/os/Handler;

.field private mIsSceneForceClose:Z

.field private mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

.field private mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

.field private mSceneChangeType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->LOG_TAG:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    iput v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    new-instance v0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-direct {v0, p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;-><init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;)V

    iput-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    return-void
.end method

.method static synthetic access$000(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getAnimationInState(I)I
    .locals 2

    const/4 v0, -0x1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAnimationOutState(I)I
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne v1, p1, :cond_2

    iget-boolean v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v1, p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private increment()V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    return-void
.end method

.method private reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->setHandler(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-virtual {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->reset()V

    iput v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    iput-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    return-void
.end method


# virtual methods
.method public createAnimation(Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->setHandler(Landroid/os/Handler;)V

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationCreate()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onCreateAnimation in"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onCreateAnimation(I)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationCreate()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onCreateAnimation out"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method

.method public decrement()V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    return-void
.end method

.method public endAnimation()V
    .locals 4

    const/4 v3, 0x1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    invoke-direct {p0, v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onAnimationEnd(I)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationEnd()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onAnimationEnd in"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onAnimationEnd(I)V

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationEnd()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onAnimationEnd out"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    return-void
.end method

.method public getReferences()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationReference:I

    return v0
.end method

.method public getSceneChangeType()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    return v0
.end method

.method public onMessage(Landroid/os/Message;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPostMessage(ILjava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public onRemoveMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method public playAnimation()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    if-ne v4, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPlay()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v1, "onPlayAnimation in"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    if-ne v4, v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iget-object v1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleIn:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mBundleOut:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-interface {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPlayAnimation(Landroid/os/Bundle;Landroid/os/Bundle;Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;)V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPlay()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v1, "onPlayAnimation out"

    invoke-direct {v0, v1}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public prepareSceneAnimation(Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimation;IZ)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->reset()V

    check-cast p1, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    check-cast p2, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iput-object p2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    iput p3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneChangeType:I

    iput-boolean p4, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mIsSceneForceClose:Z

    invoke-direct {p0, p3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationInState(I)I

    move-result v0

    invoke-direct {p0, p3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->getAnimationOutState(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v0}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPrepareAnimation(I)Z

    move-result v2

    if-ne v3, v2, :cond_1

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimIn:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPrepare()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onPrepareAnimation in"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimIn:Z

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->increment()V

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->increment()V

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2, v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->onPrepareAnimation(I)Z

    move-result v2

    if-ne v3, v2, :cond_3

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mSceneAnimOut:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;

    invoke-interface {v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneAnimationSecured;->isSecureAnimationPrepare()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;

    const-string v3, "onPrepareAnimation out"

    invoke-direct {v2, v3}, Lcom/htc/sunny2/frameworks/utils/SunnyExceptionSuperNotCalled;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iput-boolean v3, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mExistsAnimOut:Z

    iget-object v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mAnimationListener:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;

    invoke-virtual {v2}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->increment()V

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->increment()V

    :cond_3
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method
