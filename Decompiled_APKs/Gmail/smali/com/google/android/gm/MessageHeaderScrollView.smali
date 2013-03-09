.class public Lcom/google/android/gm/MessageHeaderScrollView;
.super Landroid/widget/ScrollView;
.source "MessageHeaderScrollView.java"

# interfaces
.implements Lcom/google/android/gm/ScrollNotifier$ScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/MessageHeaderScrollView$Sample;
    }
.end annotation


# instance fields
.field private mDelegateView:Landroid/view/View;

.field private mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

.field private mLastDownEvent:Landroid/view/MotionEvent;

.field private final mRecentSamples:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/google/android/gm/MessageHeaderScrollView$Sample;",
            ">;"
        }
    .end annotation
.end field

.field private mSnappyHeader:Lcom/google/android/gm/MessageHeaderView;

.field private mTopHeaderIndex:Ljava/lang/Integer;

.field private mTouchState:I

.field private final mYDpi:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/MessageHeaderScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mTouchState:I

    .line 65
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mTopHeaderIndex:Ljava/lang/Integer;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    iput v0, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mYDpi:F

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/MessageHeaderScrollView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/google/android/gm/MessageHeaderScrollView;->evaluateSnap(I)V

    return-void
.end method

.method private evaluateSnap(I)V
    .locals 11
    .parameter "t"

    .prologue
    const/4 v10, 0x0

    .line 154
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mSnappyHeader:Lcom/google/android/gm/MessageHeaderView;

    if-nez v8, :cond_0

    .line 214
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v8}, Lcom/google/android/gm/HybridConversationScrollContainer;->isLayoutRequested()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 162
    const-string v8, "Gmail"

    const-string v9, "deferring snap calculation, container layout requested"

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 163
    new-instance v8, Lcom/google/android/gm/MessageHeaderScrollView$1;

    invoke-direct {v8, p0, p1}, Lcom/google/android/gm/MessageHeaderScrollView$1;-><init>(Lcom/google/android/gm/MessageHeaderScrollView;I)V

    invoke-virtual {p0, v8}, Lcom/google/android/gm/MessageHeaderScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 172
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 176
    .local v3, nowMs:J
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v8}, Lcom/google/android/gm/HybridConversationScrollContainer;->getTop()I

    move-result v8

    sub-int v0, p1, v8

    .line 177
    .local v0, containerY:I
    invoke-direct {p0, v0, v10}, Lcom/google/android/gm/MessageHeaderScrollView;->getHeaderIndexForScrollPos(II)I

    move-result v6

    .line 179
    .local v6, pos:I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mTopHeaderIndex:Ljava/lang/Integer;

    .line 181
    const/4 v1, 0x0

    .line 182
    .local v1, header:Lcom/google/android/gm/HeaderBlock;
    if-ltz v6, :cond_2

    .line 183
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v8, v6}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #header:Lcom/google/android/gm/HeaderBlock;
    check-cast v1, Lcom/google/android/gm/HeaderBlock;

    .line 186
    .restart local v1       #header:Lcom/google/android/gm/HeaderBlock;
    :cond_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/google/android/gm/HeaderBlock;->canSnap()Z

    move-result v8

    if-nez v8, :cond_4

    .line 189
    :cond_3
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mSnappyHeader:Lcom/google/android/gm/MessageHeaderView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/google/android/gm/MessageHeaderView;->setVisibility(I)V

    .line 190
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mSnappyHeader:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v8}, Lcom/google/android/gm/MessageHeaderView;->unbind()V

    goto :goto_0

    .line 192
    :cond_4
    invoke-interface {v1}, Lcom/google/android/gm/HeaderBlock;->getSnapView()Lcom/google/android/gm/MessageHeaderView;

    move-result-object v7

    .line 193
    .local v7, snappableHeader:Lcom/google/android/gm/MessageHeaderView;
    if-eqz v7, :cond_5

    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mSnappyHeader:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v8, v7}, Lcom/google/android/gm/MessageHeaderView;->matches(Lcom/google/android/gm/MessageHeaderView;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 196
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mSnappyHeader:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v8, v7}, Lcom/google/android/gm/MessageHeaderView;->renderUpperHeaderFrom(Lcom/google/android/gm/MessageHeaderView;)V

    .line 197
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mSnappyHeader:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v8, v10}, Lcom/google/android/gm/MessageHeaderView;->setVisibility(I)V

    .line 200
    :cond_5
    const/4 v5, 0x0

    .line 205
    .local v5, overlap:I
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v8}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v6, v8, :cond_6

    .line 206
    iget-object v8, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderAt(I)Landroid/view/View;

    move-result-object v2

    .line 207
    .local v2, nextHeader:Landroid/view/View;
    if-eqz v2, :cond_6

    .line 208
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v8

    iget-object v9, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mSnappyHeader:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v9}, Lcom/google/android/gm/MessageHeaderView;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    sub-int v5, v8, v0

    .line 212
    .end local v2           #nextHeader:Landroid/view/View;
    :cond_6
    invoke-direct {p0, v5, p1, v3, v4}, Lcom/google/android/gm/MessageHeaderScrollView;->transformSnapHeader(IIJ)V

    goto/16 :goto_0
.end method

.method private getHeaderIndexForScrollPos(II)I
    .locals 5
    .parameter "scrollPos"
    .parameter "startIndex"

    .prologue
    .line 225
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v4}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderCount()I

    move-result v2

    .line 226
    .local v2, len:I
    add-int/lit8 v3, v2, -0x1

    .line 230
    .local v3, pos:I
    move v1, p2

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 231
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v4, v1}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderAt(I)Landroid/view/View;

    move-result-object v0

    .line 232
    .local v0, header:Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 233
    add-int/lit8 v3, v1, -0x1

    .line 237
    .end local v0           #header:Landroid/view/View;
    :cond_0
    return v3

    .line 230
    .restart local v0       #header:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private transformSnapHeader(IIJ)V
    .locals 18
    .parameter "overlap"
    .parameter "top"
    .parameter "nowMs"

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/MessageHeaderScrollView$Sample;

    .line 244
    .local v4, last:Lcom/google/android/gm/MessageHeaderScrollView$Sample;
    if-eqz v4, :cond_0

    iget-wide v13, v4, Lcom/google/android/gm/MessageHeaderScrollView$Sample;->millis:J

    sub-long v13, p3, v13

    const-wide/16 v15, 0xc8

    cmp-long v13, v13, v15

    if-lez v13, :cond_0

    .line 245
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->clear()V

    .line 248
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->size()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_1

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gm/MessageHeaderScrollView$Sample;

    .line 253
    .local v7, sample:Lcom/google/android/gm/MessageHeaderScrollView$Sample;
    :goto_0
    move/from16 v0, p2

    iput v0, v7, Lcom/google/android/gm/MessageHeaderScrollView$Sample;->pos:I

    .line 254
    move-wide/from16 v0, p3

    iput-wide v0, v7, Lcom/google/android/gm/MessageHeaderScrollView$Sample;->millis:J

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v13, v7}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 258
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->size()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_2

    .line 294
    :goto_1
    return-void

    .line 251
    .end local v7           #sample:Lcom/google/android/gm/MessageHeaderScrollView$Sample;
    :cond_1
    new-instance v7, Lcom/google/android/gm/MessageHeaderScrollView$Sample;

    const/4 v13, 0x0

    invoke-direct {v7, v13}, Lcom/google/android/gm/MessageHeaderScrollView$Sample;-><init>(Lcom/google/android/gm/MessageHeaderScrollView$1;)V

    .restart local v7       #sample:Lcom/google/android/gm/MessageHeaderScrollView$Sample;
    goto :goto_0

    .line 263
    :cond_2
    const/4 v12, 0x0

    .line 266
    .local v12, translateBy:I
    if-gez p1, :cond_3

    .line 268
    const/4 v9, 0x0

    .line 269
    .local v9, totalDistancePx:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gm/MessageHeaderScrollView$Sample;

    iget v5, v13, Lcom/google/android/gm/MessageHeaderScrollView$Sample;->pos:I

    .line 270
    .local v5, prevPos:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gm/MessageHeaderScrollView$Sample;

    iget-wide v14, v13, Lcom/google/android/gm/MessageHeaderScrollView$Sample;->millis:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gm/MessageHeaderScrollView$Sample;

    iget-wide v0, v13, Lcom/google/android/gm/MessageHeaderScrollView$Sample;->millis:J

    move-wide/from16 v16, v0

    sub-long v10, v14, v16

    .line 273
    .local v10, totalTimeMs:J
    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-gtz v13, :cond_4

    .line 293
    .end local v5           #prevPos:I
    .end local v9           #totalDistancePx:I
    .end local v10           #totalTimeMs:J
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mSnappyHeader:Lcom/google/android/gm/MessageHeaderView;

    invoke-virtual {v13, v12}, Lcom/google/android/gm/MessageHeaderView;->setTranslateY(I)V

    goto :goto_1

    .line 277
    .restart local v5       #prevPos:I
    .restart local v9       #totalDistancePx:I
    .restart local v10       #totalTimeMs:J
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mRecentSamples:Ljava/util/Deque;

    invoke-interface {v13}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gm/MessageHeaderScrollView$Sample;

    .line 278
    .local v6, s:Lcom/google/android/gm/MessageHeaderScrollView$Sample;
    iget v13, v6, Lcom/google/android/gm/MessageHeaderScrollView$Sample;->pos:I

    sub-int/2addr v13, v5

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v9, v13

    .line 279
    iget v5, v6, Lcom/google/android/gm/MessageHeaderScrollView$Sample;->pos:I

    goto :goto_3

    .line 281
    .end local v6           #s:Lcom/google/android/gm/MessageHeaderScrollView$Sample;
    :cond_5
    int-to-float v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/gm/MessageHeaderScrollView;->mYDpi:F

    div-float v2, v13, v14

    .line 283
    .local v2, distanceIn:F
    const/high16 v13, 0x447a

    mul-float/2addr v13, v2

    long-to-float v14, v10

    div-float v8, v13, v14

    .line 285
    .local v8, smoothedVelocity:F
    const/high16 v13, 0x4080

    cmpg-float v13, v8, v13

    if-gez v13, :cond_3

    .line 286
    move/from16 v12, p1

    goto :goto_2
.end method


# virtual methods
.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroid/widget/ScrollView;->onFinishInflate()V

    .line 92
    const v0, 0x7f0f009b

    invoke-virtual {p0, v0}, Lcom/google/android/gm/MessageHeaderScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/HybridConversationScrollContainer;

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

    .line 94
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    .line 305
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 306
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v4

    const/16 v5, 0x1000

    if-ne v4, v5, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderScrollView;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v5}, Lcom/google/android/gm/HybridConversationScrollContainer;->getTop()I

    move-result v5

    sub-int v2, v4, v5

    .line 310
    .local v2, containerTopY:I
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mTopHeaderIndex:Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 311
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mTopHeaderIndex:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 316
    .local v3, topIndex:I
    :goto_0
    if-gez v3, :cond_0

    .line 317
    const/4 v3, 0x0

    .line 319
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 320
    iget-object v4, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mHeaderContainer:Lcom/google/android/gm/HybridConversationScrollContainer;

    invoke-virtual {v4}, Lcom/google/android/gm/HybridConversationScrollContainer;->getHeaderCount()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 322
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderScrollView;->getHeight()I

    move-result v4

    add-int v1, v2, v4

    .line 323
    .local v1, containerBottomY:I
    invoke-direct {p0, v1, v3}, Lcom/google/android/gm/MessageHeaderScrollView;->getHeaderIndexForScrollPos(II)I

    move-result v0

    .line 325
    .local v0, bottomPos:I
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 327
    .end local v0           #bottomPos:I
    .end local v1           #containerBottomY:I
    .end local v2           #containerTopY:I
    .end local v3           #topIndex:I
    :cond_1
    return-void

    .line 313
    .restart local v2       #containerTopY:I
    :cond_2
    const/4 v4, 0x0

    invoke-direct {p0, v2, v4}, Lcom/google/android/gm/MessageHeaderScrollView;->getHeaderIndexForScrollPos(II)I

    move-result v3

    .restart local v3       #topIndex:I
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mLastDownEvent:Landroid/view/MotionEvent;

    .line 107
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onNotifierScroll(II)V
    .locals 2
    .parameter "dontcareX"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/google/android/gm/MessageHeaderScrollView;->getScrollX()I

    move-result v0

    invoke-virtual {p0, v0, p2, v1, v1}, Lcom/google/android/gm/MessageHeaderScrollView;->onOverScrolled(IIZZ)V

    .line 145
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 150
    invoke-direct {p0, p2}, Lcom/google/android/gm/MessageHeaderScrollView;->evaluateSnap(I)V

    .line 151
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 119
    .local v0, action:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget v1, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mTouchState:I

    if-ne v1, v3, :cond_3

    .line 120
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mDelegateView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mDelegateView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mLastDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 123
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mTouchState:I

    .line 128
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mDelegateView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 129
    iget-object v1, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mDelegateView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 131
    :cond_2
    return v3

    .line 124
    :cond_3
    if-eqz v0, :cond_4

    if-ne v0, v3, :cond_1

    .line 125
    :cond_4
    iput v0, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mTouchState:I

    goto :goto_0
.end method

.method public setSnappyHeaderView(Lcom/google/android/gm/MessageHeaderView;)V
    .locals 0
    .parameter "headerView"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mSnappyHeader:Lcom/google/android/gm/MessageHeaderView;

    .line 98
    return-void
.end method

.method public setTouchDelegateView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/google/android/gm/MessageHeaderScrollView;->mDelegateView:Landroid/view/View;

    .line 136
    return-void
.end method
