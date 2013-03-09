.class Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;
.super Ljava/lang/Object;
.source "SunnySceneChangeAnimationHandler.java"

# interfaces
.implements Lcom/htc/sunny2/view/animation/SAnimationController$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sceneAnimationListener"
.end annotation


# instance fields
.field private mAnimationReference:I

.field private mIsAnimating:Z

.field final synthetic this$0:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->this$0:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mIsAnimating:Z

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mAnimationReference:I

    return-void
.end method

.method private decrement()V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mAnimationReference:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mAnimationReference:I

    return-void
.end method


# virtual methods
.method public getReferences()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mAnimationReference:I

    return v0
.end method

.method public increment()V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mAnimationReference:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mAnimationReference:I

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mIsAnimating:Z

    return v0
.end method

.method public onAnimationEnd()V
    .locals 4

    invoke-direct {p0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->decrement()V

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->this$0:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    #getter for: Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->access$000(Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][SunnySceneChangeAnimationHandler][onAnimationEnd]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mAnimationReference:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/sunny2/frameworks/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mAnimationReference:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->this$0:Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler;->onPostMessage(ILjava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mIsAnimating:Z

    iput v0, p0, Lcom/htc/sunny2/frameworks/base/SunnyScene/SunnySceneChangeAnimationHandler$sceneAnimationListener;->mAnimationReference:I

    return-void
.end method
