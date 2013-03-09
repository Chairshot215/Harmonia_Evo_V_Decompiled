.class Lcom/htc/sunny/SPresentation$FakeAnimationControl;
.super Ljava/lang/Object;
.source "SPresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny/SPresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FakeAnimationControl"
.end annotation


# instance fields
.field private mDisable1:I

.field private mDisable2:I

.field private mDisableCount:I

.field private mFirstUpdateIndex:I

.field private mIndexOffset:I

.field private mIsFakeAnimation:Z

.field private mLastUpdateIndex:I

.field private mPosOffset:I

.field private mTartgetFocuIndex:I

.field private mTotalContainers:I

.field private mTotalItems:I

.field final synthetic this$0:Lcom/htc/sunny/SPresentation;


# direct methods
.method constructor <init>(Lcom/htc/sunny/SPresentation;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIndexOffset:I

    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTotalItems:I

    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTotalContainers:I

    iput v2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    iput v2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    iput v2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable2:I

    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mPosOffset:I

    return-void
.end method


# virtual methods
.method public getFirstUpdateIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    return v0
.end method

.method public getLastUpdateIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    return v0
.end method

.method public getPosOffset()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mPosOffset:I

    return v0
.end method

.method public getTargetFocusIndex()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    return v0
.end method

.method public init(IIII)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->reset()V

    iput p2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIndexOffset:I

    iput p3, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTotalItems:I

    iput p4, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTotalContainers:I

    add-int v0, p1, p2

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int v0, p1, p2

    if-ge v0, p3, :cond_0

    add-int v0, p1, p2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p2, :cond_2

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_0

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mPosOffset:I

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable2:I

    goto :goto_0

    :cond_2
    if-gez p2, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v1, p4

    if-lt v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mPosOffset:I

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable2:I

    goto :goto_0
.end method

.method public isFakeAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    return v0
.end method

.method public isForceHidden(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable2:I

    if-eq v1, p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable2:I

    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    return-void
.end method
