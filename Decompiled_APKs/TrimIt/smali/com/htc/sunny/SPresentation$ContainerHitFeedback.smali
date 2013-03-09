.class Lcom/htc/sunny/SPresentation$ContainerHitFeedback;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerHitFeedback"
.end annotation


# instance fields
.field private mContainer:Lcom/htc/sunny/SPresentation$ItemContainer;

.field private mIsAnimating:Z

.field final synthetic this$0:Lcom/htc/sunny/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;)V
    .locals 1
    .parameter

    .prologue
    .line 2726
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    .line 2728
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny/SPresentation$ItemContainer;

    return-void
.end method


# virtual methods
.method animate()V
    .locals 6

    .prologue
    .line 2752
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    if-ne v1, v2, :cond_0

    .line 2753
    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$ItemContainer;->getViewScale()Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 2754
    .local v0, vScale:Lcom/htc/sunny/Vector3F;
    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v1, v1, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny/SPresentation$ItemContainer;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->getViewNodeId()I

    move-result v2

    iget v3, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget-object v4, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    iget v4, v4, Lcom/htc/sunny/SPresentation;->mHitFeedbackRatio:F

    mul-float/2addr v3, v4

    iget v4, v0, Lcom/htc/sunny/Vector3F;->mY:F

    iget-object v5, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    iget v5, v5, Lcom/htc/sunny/SPresentation;->mHitFeedbackRatio:F

    mul-float/2addr v4, v5

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeScale(IFFF)V

    .line 2756
    .end local v0           #vScale:Lcom/htc/sunny/Vector3F;
    :cond_0
    return-void
.end method

.method press(I)V
    .locals 2
    .parameter "nContainerId"

    .prologue
    .line 2731
    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    iget-boolean v1, v1, Lcom/htc/sunny/SPresentation;->mEnableHitFeedback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v1, v1, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    .line 2738
    :cond_0
    :goto_0
    return-void

    .line 2732
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    iget v1, v1, Lcom/htc/sunny/SPresentation;->mContainerCount:I

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v1, v1, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 2734
    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v1, v1, Lcom/htc/sunny/SPresentation;->mItemContainers:[Lcom/htc/sunny/SPresentation$ItemContainer;

    aget-object v1, v1, p1

    iput-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny/SPresentation$ItemContainer;

    .line 2735
    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$ItemContainer;->getViewScale()Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 2736
    .local v0, vScale:Lcom/htc/sunny/Vector3F;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    .line 2737
    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    goto :goto_0
.end method

.method reset()V
    .locals 6

    .prologue
    .line 2741
    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    iget-boolean v1, v1, Lcom/htc/sunny/SPresentation;->mEnableHitFeedback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny/SPresentation$ItemContainer;

    if-nez v1, :cond_1

    .line 2750
    :cond_0
    :goto_0
    return-void

    .line 2743
    :cond_1
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    if-ne v1, v2, :cond_0

    .line 2744
    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny/SPresentation$ItemContainer;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation$ItemContainer;->getViewScale()Lcom/htc/sunny/Vector3F;

    move-result-object v0

    .line 2745
    .local v0, vScale:Lcom/htc/sunny/Vector3F;
    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    iget-object v1, v1, Lcom/htc/sunny/SPresentation;->mSunnyEngine:Lcom/htc/sunny/SunnyEngine;

    iget-object v2, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny/SPresentation$ItemContainer;

    invoke-virtual {v2}, Lcom/htc/sunny/SPresentation$ItemContainer;->getViewNodeId()I

    move-result v2

    iget v3, v0, Lcom/htc/sunny/Vector3F;->mX:F

    iget v4, v0, Lcom/htc/sunny/Vector3F;->mY:F

    iget v5, v0, Lcom/htc/sunny/Vector3F;->mZ:F

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/htc/sunny/SunnyEngine;->setNodeScale(IFFF)V

    .line 2746
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mIsAnimating:Z

    .line 2747
    iget-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-virtual {v1}, Lcom/htc/sunny/SPresentation;->invalidate3DView()V

    .line 2748
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/sunny/SPresentation$ContainerHitFeedback;->mContainer:Lcom/htc/sunny/SPresentation$ItemContainer;

    goto :goto_0
.end method
