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
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 2216
    iput-object p1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->this$0:Lcom/htc/sunny/SPresentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2218
    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 2219
    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 2220
    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIndexOffset:I

    .line 2221
    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTotalItems:I

    .line 2222
    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTotalContainers:I

    .line 2223
    iput v2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 2224
    iput-boolean v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2226
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    .line 2227
    iput v2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2228
    iput v2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable2:I

    .line 2229
    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mPosOffset:I

    return-void
.end method


# virtual methods
.method public getFirstUpdateIndex()I
    .locals 1

    .prologue
    .line 2268
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    return v0
.end method

.method public getLastUpdateIndex()I
    .locals 1

    .prologue
    .line 2272
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    return v0
.end method

.method public getPosOffset()I
    .locals 1

    .prologue
    .line 2264
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mPosOffset:I

    return v0
.end method

.method public getTargetFocusIndex()I
    .locals 1

    .prologue
    .line 2276
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    return v0
.end method

.method public init(IIII)V
    .locals 3
    .parameter "nStartIndex"
    .parameter "nIndexOffset"
    .parameter "nTotalItems"
    .parameter "nTotalContainers"

    .prologue
    const/4 v2, 0x1

    .line 2232
    invoke-virtual {p0}, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->reset()V

    .line 2233
    iput p2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIndexOffset:I

    .line 2234
    iput p3, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTotalItems:I

    .line 2235
    iput p4, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTotalContainers:I

    .line 2236
    add-int v0, p1, p2

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 2238
    add-int v0, p1, p2

    if-ge v0, p3, :cond_0

    add-int v0, p1, p2

    if-gez v0, :cond_1

    .line 2261
    :cond_0
    :goto_0
    return-void

    .line 2242
    :cond_1
    if-lez p2, :cond_2

    .line 2243
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    if-lt p2, v0, :cond_0

    .line 2244
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2245
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mPosOffset:I

    .line 2246
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 2247
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 2248
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2249
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable2:I

    goto :goto_0

    .line 2251
    :cond_2
    if-gez p2, :cond_0

    .line 2252
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v1, p4

    if-lt v0, v1, :cond_0

    .line 2253
    iput-boolean v2, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2254
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, p4

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mPosOffset:I

    .line 2255
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisableCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    .line 2256
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    add-int/lit8 v1, p4, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mLastUpdateIndex:I

    .line 2257
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mFirstUpdateIndex:I

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2258
    iget v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable2:I

    goto :goto_0
.end method

.method public isFakeAnimation()Z
    .locals 1

    .prologue
    .line 2296
    iget-boolean v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    return v0
.end method

.method public isForceHidden(I)Z
    .locals 2
    .parameter "nIndex"

    .prologue
    const/4 v0, 0x1

    .line 2287
    iget v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    if-ne v1, p1, :cond_1

    .line 2292
    :cond_0
    :goto_0
    return v0

    .line 2289
    :cond_1
    iget v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable2:I

    if-eq v1, p1, :cond_0

    .line 2292
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 2280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mIsFakeAnimation:Z

    .line 2281
    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable1:I

    .line 2282
    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mDisable2:I

    .line 2283
    iput v1, p0, Lcom/htc/sunny/SPresentation$FakeAnimationControl;->mTartgetFocuIndex:I

    .line 2284
    return-void
.end method
