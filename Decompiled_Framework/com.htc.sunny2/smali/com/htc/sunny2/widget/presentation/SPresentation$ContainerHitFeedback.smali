.class Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/presentation/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerHitFeedback"
.end annotation


# instance fields
.field private mContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

.field private mIsAnimating:Z

.field final synthetic this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/presentation/SPresentation;)V
    .locals 1

    iput-object p1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    return-void
.end method


# virtual methods
.method animate()V
    .locals 5

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getViewScale()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getNodeId()I

    move-result v1

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget-object v3, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget v3, v3, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHitFeedbackRatio:F

    mul-float/2addr v2, v3

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget-object v4, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget v4, v4, Lcom/htc/sunny2/widget/presentation/SPresentation;->mHitFeedbackRatio:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetScale(IFFF)V

    :cond_0
    return-void
.end method

.method press(I)V
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-boolean v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mContainerCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-object v0, v0, Lcom/htc/sunny2/widget/presentation/SPresentation;->mItemContainers:[Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    iget-object v0, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    invoke-virtual {v0}, Lcom/htc/sunny2/widget/presentation/SPresentation;->animateView()V

    goto :goto_0
.end method

.method reset()V
    .locals 5

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny2/widget/presentation/SPresentation;

    iget-boolean v1, v1, Lcom/htc/sunny2/widget/presentation/SPresentation;->mEnableHitFeedback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getViewScale()Lcom/htc/sunny2/view/Vector3F;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->setScale(FFF)V

    iget-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;->getNodeId()I

    move-result v1

    iget v2, v0, Lcom/htc/sunny2/view/Vector3F;->mX:F

    iget v3, v0, Lcom/htc/sunny2/view/Vector3F;->mY:F

    iget v4, v0, Lcom/htc/sunny2/view/Vector3F;->mZ:F

    invoke-static {v1, v2, v3, v4}, Lcom/htc/sunny2/Sunny2;->SceneNode_SetScale(IFFF)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny2/widget/presentation/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny2/widget/presentation/SPresentation$ItemContainer;

    goto :goto_0
.end method
