.class public Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;
.super Lcom/htc/sunny2/SceneNode;
.source "SSurfaceView.java"

# interfaces
.implements Lcom/htc/sunny2/view/SViewParent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/view/SSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SViewRoot"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;,
        Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeInRunnable;
    }
.end annotation


# instance fields
.field private mAlphaFedeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeInRunnable;

.field private mAlphaFedeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;

.field private mBackgroundChanged:Z

.field private mBackgroundResource:I

.field private mBackgroundSprite:Lcom/htc/sunny2/Sprite;

.field private mBackgroundTexture:Lcom/htc/sunny2/Texture;

.field private mContextMenuForChild:Lcom/htc/sunny2/view/SView;

.field private mHeaderSceneNode:Lcom/htc/sunny2/SceneNode;

.field private mHeaderSprite:Lcom/htc/sunny2/Sprite;

.field private mHeaderTexture:Lcom/htc/sunny2/Texture;

.field private mHight:I

.field private mView:Landroid/view/View;

.field private mWidth:I

.field private final sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

.field final synthetic this$0:Lcom/htc/sunny2/view/SSurfaceView;


# direct methods
.method public constructor <init>(Lcom/htc/sunny2/view/SSurfaceView;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-direct {p0}, Lcom/htc/sunny2/SceneNode;-><init>()V

    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/sunny2/view/SSurfaceView;->access$000(Lcom/htc/sunny2/view/SSurfaceView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$1;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFedeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;

    new-instance v0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeInRunnable;

    invoke-direct {v0, p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeInRunnable;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;Lcom/htc/sunny2/view/SSurfaceView$1;)V

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFedeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeInRunnable;

    iget v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/htc/sunny2/SceneNode;->release()V

    :cond_0
    iput p2, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    iput-boolean v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    iput v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSceneNode:Lcom/htc/sunny2/SceneNode;

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSceneNode:Lcom/htc/sunny2/SceneNode;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->setRenderOrder(I)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v2}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSceneNode:Lcom/htc/sunny2/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->addSprite(Lcom/htc/sunny2/Sprite;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->setRenderOrderMode(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Lcom/htc/sunny2/view/SView;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mView:Landroid/view/View;

    return-object v0
.end method

.method private checkAndRenderOrderChanged()V
    .locals 8

    const/high16 v3, -0x8000

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    instance-of v7, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/htc/sunny2/view/SView;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SView;->getRenderOrder()I

    move-result v6

    if-lt v6, v3, :cond_0

    move-object v4, v1

    move v3, v6

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_4

    invoke-virtual {p0, v5}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    instance-of v7, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v7, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/htc/sunny2/view/SView;

    if-ne v1, v4, :cond_3

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Lcom/htc/sunny2/view/SView;->dispatchRenderOrderChanged(Z)V

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public addView(Lcom/htc/sunny2/view/SView;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/htc/sunny2/view/SView;->mParentView:Lcom/htc/sunny2/view/SViewParent;

    if-eq v0, p0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reparent SView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "to parent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, p0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChildrenCount()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v6}, Lcom/htc/sunny2/view/SSurfaceView;->access$400(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/htc/sunny2/Sunny2;->Window_HitTest(III)I

    move-result v2

    :cond_0
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v6, v6, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-nez v6, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    instance-of v6, v0, Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_1

    check-cast v0, Lcom/htc/sunny2/view/SView;

    invoke-virtual {v0, p1, v2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v6, v6, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v6}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    invoke-interface {v5}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->getChild(I)Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    if-eq v4, v0, :cond_5

    instance-of v6, v4, Lcom/htc/sunny2/view/SView;

    if-eqz v6, :cond_6

    :cond_5
    check-cast v4, Lcom/htc/sunny2/view/SView;

    invoke-virtual {v4, p1, v2}, Lcom/htc/sunny2/view/SView;->dispatchTouchEvent(Landroid/view/MotionEvent;I)Z

    goto :goto_1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public getRenderThread()Lcom/htc/sunny2/RenderThread;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v0, v0, Lcom/htc/sunny2/view/SSurfaceView;->mRenderThread:Lcom/htc/sunny2/RenderThread;

    return-object v0
.end method

.method public getSpritePosition(Lcom/htc/sunny2/Sprite;)Lcom/htc/sunny2/view/Vector3F;
    .locals 5

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->sSpriteDefaultPos:Lcom/htc/sunny2/view/Vector3F;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/htc/sunny2/view/Vector3F;

    invoke-direct {v0}, Lcom/htc/sunny2/view/Vector3F;-><init>()V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mSunnyWindow:I
    invoke-static {v2}, Lcom/htc/sunny2/view/SSurfaceView;->access$400(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mViewPort:I
    invoke-static {v3}, Lcom/htc/sunny2/view/SSurfaceView;->access$500(Lcom/htc/sunny2/view/SSurfaceView;)I

    move-result v3

    invoke-virtual {p1}, Lcom/htc/sunny2/Sprite;->getNodeId()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/htc/sunny2/Sunny2;->Window_QuerySceneNodeOriginPositionOnViewport(III)Z

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorX()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorY()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    invoke-static {}, Lcom/htc/sunny2/Sunny2;->getOutputVectorZ()F

    move-result v1

    iput v1, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->hasWindowFocus()Z

    move-result v0

    return v0
.end method

.method invalidateGlobalBackground(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    if-eq p1, v1, :cond_0

    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    if-eq p2, v1, :cond_0

    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mWidth:I

    iput p2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    iput-boolean v5, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    :cond_0
    iget-boolean v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    if-eqz v1, :cond_1

    if-lt p1, v5, :cond_1

    if-ge p2, v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFedeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeInRunnable;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeInRunnable;->stop()V

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFedeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->start(JLcom/htc/sunny2/Sprite;)V

    :cond_3
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/sunny2/view/SSurfaceView;->access$1000(Lcom/htc/sunny2/view/SSurfaceView;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    invoke-static {v1, v2, p1, p2}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/content/Context;III)Lcom/htc/sunny2/Texture;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    :goto_2
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-nez v1, :cond_5

    invoke-static {}, Lcom/htc/sunny2/Sprite;->obtain()Lcom/htc/sunny2/Sprite;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->addSprite(Lcom/htc/sunny2/Sprite;)V

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3, v4, v4}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    :cond_5
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFedeOutRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;

    invoke-virtual {v1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeOutRunnable;->stop()V

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mAlphaFedeInRunnable:Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeInRunnable;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$AlphaFedeInRunnable;->start(JLcom/htc/sunny2/Sprite;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/htc/sunny2/view/SSurfaceView;->access$1100(Lcom/htc/sunny2/view/SSurfaceView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-static {v0, p1, p2}, Lcom/htc/sunny2/SBitmap;->createBitmap(Landroid/graphics/drawable/Drawable;II)Lcom/htc/sunny2/SBitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/Texture;->setSBitmap(Lcom/htc/sunny2/SBitmap;)V

    goto :goto_2
.end method

.method public isBindedSurface()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(I)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$3;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$3;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public performHapticFeedback(II)Z
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$4;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public playSoundEffect(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;

    invoke-direct {v1, p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$2;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public refreshRenderOrder(Ljava/lang/Object;)V
    .locals 4

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getForegroundScene()Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getMainView()Lcom/htc/sunny2/view/SView;

    move-result-object v0

    invoke-interface {v1}, Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;->getEnvironmentRenderOrder()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/view/SView;->setRenderOrder(I)V

    :cond_1
    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    return-void

    :cond_2
    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    iget-object v3, v3, Lcom/htc/sunny2/view/SSurfaceView;->mSceneDisplayControl:Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;

    invoke-interface {v3, v2}, Lcom/htc/sunny2/frameworks/base/interfaces/ISceneDisplayControl;->getScene(Ljava/lang/String;)Lcom/htc/sunny2/frameworks/base/interfaces/ISunnyScene;

    move-result-object v1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/SceneNode;->mNodeId:I

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundTexture:Lcom/htc/sunny2/Texture;

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundSprite:Lcom/htc/sunny2/Sprite;

    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderTexture:Lcom/htc/sunny2/Texture;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v0}, Lcom/htc/sunny2/Texture;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderTexture:Lcom/htc/sunny2/Texture;

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    invoke-virtual {v0}, Lcom/htc/sunny2/Sprite;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    :cond_3
    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0}, Lcom/htc/sunny2/SceneNode;->release()V

    iput-object v1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSceneNode:Lcom/htc/sunny2/SceneNode;

    :cond_4
    return-void
.end method

.method public removeView(Lcom/htc/sunny2/view/SView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->setParent(Lcom/htc/sunny2/view/SViewParent;)V

    invoke-virtual {p0, p1}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    invoke-direct {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->checkAndRenderOrderChanged()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/htc/sunny2/view/SView;->dispatchResourceCreation(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    #getter for: Lcom/htc/sunny2/view/SSurfaceView;->mReLayout:Lcom/htc/sunny2/view/SSurfaceView$ReLayout;
    invoke-static {v0}, Lcom/htc/sunny2/view/SSurfaceView;->access$600(Lcom/htc/sunny2/view/SSurfaceView;)Lcom/htc/sunny2/view/SSurfaceView$ReLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView$ReLayout;->requestLayout()V

    return-void
.end method

.method public setGlobalBackgroundResource(I)V
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundResource:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mBackgroundChanged:Z

    invoke-virtual {p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->requestLayout()V

    goto :goto_0
.end method

.method public setGlobalHeaderBar(Landroid/graphics/Bitmap;I)V
    .locals 7

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderTexture:Lcom/htc/sunny2/Texture;

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/htc/sunny2/Texture;->createTexture(Landroid/graphics/Bitmap;)Lcom/htc/sunny2/Texture;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderTexture:Lcom/htc/sunny2/Texture;

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    iget-object v3, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->setTexture(Lcom/htc/sunny2/Texture;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    int-to-float v3, v1

    int-to-float v4, v0

    const/4 v5, 0x0

    iget v6, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHight:I

    sub-int/2addr v6, v0

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, p2

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/sunny2/Sprite;->setupGeometry(FFFF)V

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderTexture:Lcom/htc/sunny2/Texture;

    invoke-virtual {v2, p1}, Lcom/htc/sunny2/Texture;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mHeaderSprite:Lcom/htc/sunny2/Sprite;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/sunny2/Sprite;->setVisibility(Z)V

    goto :goto_1
.end method

.method public showContextMenuForChild(Lcom/htc/sunny2/view/SView;)Z
    .locals 2

    iput-object p1, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->mContextMenuForChild:Lcom/htc/sunny2/view/SView;

    iget-object v0, p0, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;->this$0:Lcom/htc/sunny2/view/SSurfaceView;

    invoke-virtual {v0}, Lcom/htc/sunny2/view/SSurfaceView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;

    invoke-direct {v1, p0}, Lcom/htc/sunny2/view/SSurfaceView$SViewRoot$5;-><init>(Lcom/htc/sunny2/view/SSurfaceView$SViewRoot;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
