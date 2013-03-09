.class Lcom/google/android/gm/TriStateSplitLayout;
.super Landroid/widget/LinearLayout;
.source "TriStateSplitLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/google/android/gm/ViewMode$ModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/TriStateSplitLayout$AnimatorListener;,
        Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;
    }
.end annotation


# static fields
.field private static sAnimationCollapseDuration:I

.field private static sAnimationSlideLeftDuration:I

.field private static sAnimationSlideRightDuration:I

.field private static final sCollapseInterpolator:Landroid/animation/TimeInterpolator;

.field private static sConversationListWeight:I

.field private static sConversationViewWeight:I

.field private static sLabelListWeight:I

.field private static final sLeftInterpolator:Landroid/animation/TimeInterpolator;

.field private static final sRightInterpolator:Landroid/animation/TimeInterpolator;

.field private static sScaledConversationListWeight:D

.field private static sScaledLabelListWeight:D


# instance fields
.field private mAnimatingFade:Z

.field private mContext:Landroid/content/Context;

.field private mConversationLeft:I

.field private mConversationListContainer:Landroid/view/View;

.field private mConversationView:Landroid/view/View;

.field private mConversationViewOverlay:Landroid/view/View;

.field private mIsSearchResult:Z

.field private mLabelsLeft:I

.field private mLabelsView:Landroid/view/View;

.field private mListAlpha:I

.field private mListBitmap:Landroid/graphics/Bitmap;

.field private mListBitmapLeft:I

.field private mListCollapsed:Z

.field private mListLeft:I

.field private mListPaint:Landroid/graphics/Paint;

.field private mListView:Landroid/view/View;

.field private mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

.field private mOutstandingAnimator:Landroid/animation/Animator;

.field private mPaint:Landroid/graphics/Paint;

.field private mViewMode:Lcom/google/android/gm/ViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x4020

    .line 73
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x4010

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/android/gm/TriStateSplitLayout;->sLeftInterpolator:Landroid/animation/TimeInterpolator;

    .line 74
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/android/gm/TriStateSplitLayout;->sRightInterpolator:Landroid/animation/TimeInterpolator;

    .line 75
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/google/android/gm/TriStateSplitLayout;->sCollapseInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 154
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/google/android/gm/TriStateSplitLayout;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->shouldShowLabelsList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->destroyBitmaps()V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/gm/TriStateSplitLayout;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onFinishEnteringConversationListMode()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onFinishEnteringConversationMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onUncollapseList()V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/gm/TriStateSplitLayout;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onCollapseList()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/gm/TriStateSplitLayout;)Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/android/gm/TriStateSplitLayout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mAnimatingFade:Z

    return p1
.end method

.method static synthetic access$902(Lcom/google/android/gm/TriStateSplitLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mOutstandingAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method private captureBitmaps()V
    .locals 5

    .prologue
    .line 401
    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    .line 414
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    .line 409
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 410
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    .end local v0           #canvas:Landroid/graphics/Canvas;
    :catch_0
    move-exception v1

    .line 412
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Gmail"

    const-string v3, "Could not create a bitmap due to OutOfMemoryError"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method private computeConversationListWidth()I
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth(I)I

    move-result v0

    return v0
.end method

.method private computeConversationListWidth(I)I
    .locals 4
    .parameter "totalWidth"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 269
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 265
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeLabelListWidth()I

    move-result v0

    sub-int v0, p1, v0

    goto :goto_0

    .line 267
    :pswitch_1
    int-to-double v0, p1

    sget-wide v2, Lcom/google/android/gm/TriStateSplitLayout;->sScaledConversationListWeight:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0

    .line 263
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private computeConversationWidth()I
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationWidth(I)I

    move-result v0

    return v0
.end method

.method private computeConversationWidth(I)I
    .locals 4
    .parameter "totalWidth"

    .prologue
    .line 322
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 329
    const/4 p1, 0x0

    .end local p1
    :cond_0
    :goto_0
    return p1

    .line 324
    .restart local p1
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListCollapsible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    int-to-double v0, p1

    sget-wide v2, Lcom/google/android/gm/TriStateSplitLayout;->sScaledConversationListWeight:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private computeLabelListWidth()I
    .locals 1

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getMeasuredWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->computeLabelListWidth(I)I

    move-result v0

    return v0
.end method

.method private computeLabelListWidth(I)I
    .locals 4
    .parameter "totalWidth"

    .prologue
    .line 287
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->shouldShowLabelsList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    const/4 v0, 0x0

    .line 290
    :goto_0
    return v0

    :cond_0
    int-to-double v0, p1

    sget-wide v2, Lcom/google/android/gm/TriStateSplitLayout;->sScaledLabelListWeight:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_0
.end method

.method private destroyBitmaps()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    .line 424
    :cond_0
    return-void
.end method

.method private dispatchConversationListVisibilityChange()V
    .locals 2

    .prologue
    .line 754
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

    if-eqz v1, :cond_0

    .line 758
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 759
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Lcom/google/android/gm/TriStateSplitLayout$5;

    invoke-direct {v1, p0}, Lcom/google/android/gm/TriStateSplitLayout$5;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 766
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method private dispatchConversationVisibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

    invoke-interface {v0, p1}, Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;->onConversationVisibilityChanged(Z)V

    .line 772
    :cond_0
    return-void
.end method

.method private isAnimatingFade()Z
    .locals 1

    .prologue
    .line 792
    iget-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mAnimatingFade:Z

    return v0
.end method

.method private onCollapseList()V
    .locals 2

    .prologue
    .line 713
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 714
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->dispatchConversationListVisibilityChange()V

    .line 715
    return-void
.end method

.method private onEnterConversationListMode()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 443
    iget-object v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    iget-object v6, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    iget-object v8, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v5, v6, v9, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 448
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_1

    .line 449
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->shouldShowLabelsList()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    iget-object v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onFinishEnteringConversationListMode()V

    .line 508
    :goto_0
    return-void

    .line 457
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeLabelListWidth()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/android/gm/TriStateSplitLayout;->setLabelListWidth(I)V

    .line 460
    iput-boolean v11, p0, Lcom/google/android/gm/TriStateSplitLayout;->mAnimatingFade:Z

    .line 461
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->captureBitmaps()V

    .line 462
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 464
    .local v3, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeLabelListWidth()I

    move-result v1

    .line 465
    .local v1, labelsWidth:I
    const-string v5, "labelsLeft"

    new-array v6, v10, [I

    neg-int v7, v1

    aput v7, v6, v9

    aput v9, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {p0, v9}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListLeft(I)V

    .line 471
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListWidth(I)V

    .line 475
    const-string v5, "listBitmapAlpha"

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 476
    .local v0, animator:Landroid/animation/ObjectAnimator;
    sget v5, Lcom/google/android/gm/TriStateSplitLayout;->sAnimationSlideRightDuration:I

    mul-int/lit8 v5, v5, 0x0

    int-to-long v5, v5

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 477
    sget-object v5, Lcom/google/android/gm/TriStateSplitLayout;->sRightInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 479
    const-string v5, "listBitmapLeft"

    new-array v6, v10, [I

    aput v9, v6, v9

    aput v1, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 480
    const-string v5, "listLeft"

    new-array v6, v10, [I

    aput v9, v6, v9

    aput v1, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    const-string v5, "listAlpha"

    new-array v6, v10, [I

    fill-array-data v6, :array_1

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    const-string v5, "conversationLeft"

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aput v7, v6, v9

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getWidth()I

    move-result v7

    aput v7, v6, v11

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/animation/PropertyValuesHolder;

    invoke-static {p0, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget v6, Lcom/google/android/gm/TriStateSplitLayout;->sAnimationSlideRightDuration:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 489
    .local v4, valuesAnimator:Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/google/android/gm/TriStateSplitLayout;->sRightInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    new-instance v5, Lcom/google/android/gm/TriStateSplitLayout$1;

    invoke-direct {v5, p0}, Lcom/google/android/gm/TriStateSplitLayout$1;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 504
    iput-object v4, p0, Lcom/google/android/gm/TriStateSplitLayout;->mOutstandingAnimator:Landroid/animation/Animator;

    .line 505
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 506
    .local v2, transitionSet:Landroid/animation/AnimatorSet;
    new-array v5, v10, [Landroid/animation/Animator;

    aput-object v0, v5, v9

    aput-object v4, v5, v11

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 507
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 475
    nop

    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 481
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onEnterConversationMode()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 530
    iget-object v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 534
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getMeasuredWidth()I

    move-result v5

    if-nez v5, :cond_0

    .line 535
    iput-boolean v8, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 536
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onFinishEnteringConversationMode()V

    .line 581
    :goto_0
    return-void

    .line 541
    :cond_0
    iput-boolean v8, p0, Lcom/google/android/gm/TriStateSplitLayout;->mAnimatingFade:Z

    .line 542
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->captureBitmaps()V

    .line 543
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 546
    .local v4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/animation/PropertyValuesHolder;>;"
    iget-object v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 547
    .local v1, labelsWidth:I
    const-string v5, "labelsLeft"

    new-array v6, v10, [I

    aput v9, v6, v9

    neg-int v7, v1

    aput v7, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iput-boolean v8, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 552
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth()I

    move-result v3

    .line 553
    .local v3, targetWidth:I
    invoke-direct {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListWidth(I)V

    .line 555
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getConversationListLeft()I

    move-result v5

    add-int v0, v1, v5

    .line 556
    .local v0, currentListLeft:I
    invoke-virtual {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListLeft(I)I

    move-result v2

    .line 557
    .local v2, targetListLeft:I
    invoke-virtual {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListLeft(I)V

    .line 558
    if-eq v0, v2, :cond_1

    .line 559
    const-string v5, "listBitmapLeft"

    new-array v6, v10, [I

    aput v0, v6, v9

    aput v2, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    const-string v5, "listBitmapAlpha"

    new-array v6, v10, [I

    fill-array-data v6, :array_0

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 562
    const-string v5, "listLeft"

    new-array v6, v10, [I

    iget-object v7, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v0

    sub-int/2addr v7, v3

    aput v7, v6, v9

    aput v2, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    const-string v5, "listAlpha"

    new-array v6, v10, [I

    fill-array-data v6, :array_1

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationWidth()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationWidth(I)V

    .line 572
    const-string v5, "conversationLeft"

    new-array v6, v10, [I

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getWidth()I

    move-result v7

    aput v7, v6, v9

    add-int v7, v2, v3

    aput v7, v6, v8

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    sget v6, Lcom/google/android/gm/TriStateSplitLayout;->sAnimationSlideLeftDuration:I

    new-instance v7, Lcom/google/android/gm/TriStateSplitLayout$2;

    invoke-direct {v7, p0}, Lcom/google/android/gm/TriStateSplitLayout$2;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    sget-object v8, Lcom/google/android/gm/TriStateSplitLayout;->sLeftInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/animation/PropertyValuesHolder;

    invoke-direct {p0, v6, v7, v8, v5}, Lcom/google/android/gm/TriStateSplitLayout;->startLayoutAnimation(ILcom/google/android/gm/TriStateSplitLayout$AnimatorListener;Landroid/animation/TimeInterpolator;[Landroid/animation/PropertyValuesHolder;)V

    goto/16 :goto_0

    .line 561
    nop

    :array_0
    .array-data 0x4
        0xfft 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 565
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private onFinishEnteringConversationListMode()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 514
    iput-boolean v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 515
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 525
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->dispatchConversationListVisibilityChange()V

    .line 526
    invoke-direct {p0, v2}, Lcom/google/android/gm/TriStateSplitLayout;->dispatchConversationVisibilityChanged(Z)V

    .line 527
    return-void
.end method

.method private onFinishEnteringConversationMode()V
    .locals 2

    .prologue
    .line 587
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 589
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListWidth(I)V

    .line 591
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onCollapseList()V

    .line 595
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->dispatchConversationVisibilityChanged(Z)V

    .line 596
    return-void
.end method

.method private onUncollapseList()V
    .locals 2

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListUncollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 682
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->dispatchConversationListVisibilityChange()V

    .line 683
    return-void

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setConversationListWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->requestLayout()V

    .line 257
    return-void
.end method

.method private setConversationWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 314
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->requestLayout()V

    .line 315
    return-void
.end method

.method private setLabelListWidth(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 306
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 307
    return-void
.end method

.method private shouldShowLabelsList()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mIsSearchResult:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->shouldShowTwoPaneSearchResult(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs startLayoutAnimation(ILcom/google/android/gm/TriStateSplitLayout$AnimatorListener;Landroid/animation/TimeInterpolator;[Landroid/animation/PropertyValuesHolder;)V
    .locals 4
    .parameter "duration"
    .parameter "listener"
    .parameter "interpolator"
    .parameter "values"

    .prologue
    .line 780
    invoke-static {p0, p4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 782
    .local v0, animator:Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 783
    if-eqz p2, :cond_0

    .line 784
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 787
    :cond_0
    iput-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mOutstandingAnimator:Landroid/animation/Animator;

    .line 788
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 789
    return-void
.end method


# virtual methods
.method public attachToViewMode(Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "viewMode"

    .prologue
    .line 211
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    .line 212
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0, p0}, Lcom/google/android/gm/ViewMode;->addListener(Lcom/google/android/gm/ViewMode$ModeChangeListener;)V

    .line 213
    return-void
.end method

.method public collapseList()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 690
    iget-boolean v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    if-eqz v3, :cond_0

    .line 706
    :goto_0
    return v1

    .line 693
    :cond_0
    iput-boolean v2, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 695
    const-string v3, "conversationListLeft"

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getConversationListLeft()I

    move-result v5

    aput v5, v4, v1

    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListLeft(I)I

    move-result v5

    aput v5, v4, v2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 700
    .local v0, listLeftValues:Landroid/animation/PropertyValuesHolder;
    sget v3, Lcom/google/android/gm/TriStateSplitLayout;->sAnimationCollapseDuration:I

    new-instance v4, Lcom/google/android/gm/TriStateSplitLayout$4;

    invoke-direct {v4, p0}, Lcom/google/android/gm/TriStateSplitLayout$4;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    sget-object v5, Lcom/google/android/gm/TriStateSplitLayout;->sCollapseInterpolator:Landroid/animation/TimeInterpolator;

    new-array v6, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/gm/TriStateSplitLayout;->startLayoutAnimation(ILcom/google/android/gm/TriStateSplitLayout$AnimatorListener;Landroid/animation/TimeInterpolator;[Landroid/animation/PropertyValuesHolder;)V

    move v1, v2

    .line 706
    goto :goto_0
.end method

.method public computeConversationListLeft(I)I
    .locals 2
    .parameter "width"

    .prologue
    const/4 v0, 0x0

    .line 738
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListCollapsible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 739
    iget-boolean v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    if-eqz v1, :cond_0

    neg-int v0, p1

    .line 742
    :cond_0
    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 600
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isAnimatingFade()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 625
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 606
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsLeft:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 607
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 608
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 611
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmapLeft:I

    int-to-float v1, v1

    iget-object v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 615
    :cond_1
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListLeft:I

    int-to-float v1, v0

    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListLeft:I

    iget-object v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListAlpha:I

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 617
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListLeft:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 618
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 619
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 621
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 622
    iget v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationLeft:I

    int-to-float v0, v0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 623
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 624
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getConversationListLeft()I
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    return v0
.end method

.method initializeLayout(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    .line 170
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0f00c0

    invoke-virtual {p0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsView:Landroid/view/View;

    .line 174
    const v1, 0x7f0f00c1

    invoke-virtual {p0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListContainer:Landroid/view/View;

    .line 175
    const v1, 0x7f0f00c2

    invoke-virtual {p0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListView:Landroid/view/View;

    .line 176
    const v1, 0x7f0f00c3

    invoke-virtual {p0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationView:Landroid/view/View;

    .line 177
    const v1, 0x7f0f00c4

    invoke-virtual {p0, v1}, Lcom/google/android/gm/TriStateSplitLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    .line 179
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    const v1, 0x7f090003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/TriStateSplitLayout;->sAnimationSlideLeftDuration:I

    .line 182
    const v1, 0x7f090004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/TriStateSplitLayout;->sAnimationSlideRightDuration:I

    .line 183
    const v1, 0x7f090005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/TriStateSplitLayout;->sAnimationCollapseDuration:I

    .line 184
    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/TriStateSplitLayout;->sLabelListWeight:I

    .line 185
    const v1, 0x7f09001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/TriStateSplitLayout;->sConversationListWeight:I

    .line 186
    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/google/android/gm/TriStateSplitLayout;->sConversationViewWeight:I

    .line 187
    sget v1, Lcom/google/android/gm/TriStateSplitLayout;->sLabelListWeight:I

    int-to-double v1, v1

    sget v3, Lcom/google/android/gm/TriStateSplitLayout;->sLabelListWeight:I

    sget v4, Lcom/google/android/gm/TriStateSplitLayout;->sConversationListWeight:I

    add-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    sput-wide v1, Lcom/google/android/gm/TriStateSplitLayout;->sScaledLabelListWeight:D

    .line 189
    sget v1, Lcom/google/android/gm/TriStateSplitLayout;->sConversationListWeight:I

    int-to-double v1, v1

    sget v3, Lcom/google/android/gm/TriStateSplitLayout;->sConversationListWeight:I

    sget v4, Lcom/google/android/gm/TriStateSplitLayout;->sConversationViewWeight:I

    add-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    sput-wide v1, Lcom/google/android/gm/TriStateSplitLayout;->sScaledConversationListWeight:D

    .line 192
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mPaint:Landroid/graphics/Paint;

    .line 193
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 194
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListPaint:Landroid/graphics/Paint;

    .line 196
    iget-object v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    return-void
.end method

.method public initializeLayout(Z)V
    .locals 1
    .parameter "isSearchResult"

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->initializeLayout(Landroid/content/Context;)V

    .line 162
    iput-boolean p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mIsSearchResult:Z

    .line 163
    return-void
.end method

.method public isConversationListCollapsible()Z
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->isConversationListCollapsible(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isConversationListUncollapsible()Z
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gm/Utils;->isConversationListUncollapsible(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isConversationListVisible()Z
    .locals 1

    .prologue
    .line 750
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v4, 0x4000

    .line 224
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 226
    if-ne p1, p3, :cond_0

    .line 249
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v3}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 246
    :goto_1
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 247
    .local v2, widthSpec:I
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 248
    .local v1, heightSpec:I
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gm/TriStateSplitLayout;->measure(II)V

    goto :goto_0

    .line 233
    .end local v1           #heightSpec:I
    .end local v2           #widthSpec:I
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->computeLabelListWidth()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->setLabelListWidth(I)V

    goto :goto_1

    .line 237
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListWidth(I)I

    move-result v0

    .line 238
    .local v0, conversationListWidth:I
    invoke-direct {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListWidth(I)V

    .line 239
    invoke-direct {p0, p1}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationWidth(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationWidth(I)V

    .line 240
    invoke-virtual {p0, v0}, Lcom/google/android/gm/TriStateSplitLayout;->computeConversationListLeft(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/android/gm/TriStateSplitLayout;->setConversationListLeft(I)V

    goto :goto_1

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "target"
    .parameter "event"

    .prologue
    .line 643
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->isConversationListCollapsible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationViewOverlay:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->collapseList()Z

    .line 645
    const/4 v0, 0x1

    .line 647
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewModeChanged(Lcom/google/android/gm/ViewMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mOutstandingAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mOutstandingAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mViewMode:Lcom/google/android/gm/ViewMode;

    invoke-virtual {v0}, Lcom/google/android/gm/ViewMode;->getMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 440
    :goto_0
    return-void

    .line 434
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onEnterConversationMode()V

    goto :goto_0

    .line 437
    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gm/TriStateSplitLayout;->onEnterConversationListMode()V

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setConversationLeft(I)V
    .locals 0
    .parameter "left"

    .prologue
    .line 393
    iput p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationLeft:I

    .line 394
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 395
    return-void
.end method

.method public setConversationListLeft(I)V
    .locals 1
    .parameter "left"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mConversationListContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 730
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->requestLayout()V

    .line 731
    return-void
.end method

.method public setLabelsLeft(I)V
    .locals 0
    .parameter "left"

    .prologue
    .line 345
    iput p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mLabelsLeft:I

    .line 346
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 347
    return-void
.end method

.method public setListAlpha(I)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 383
    iput p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListAlpha:I

    .line 384
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 385
    return-void
.end method

.method public setListBitmapAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 365
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 366
    return-void
.end method

.method public setListBitmapLeft(I)V
    .locals 0
    .parameter "left"

    .prologue
    .line 355
    iput p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListBitmapLeft:I

    .line 356
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 357
    return-void
.end method

.method public setListLeft(I)V
    .locals 0
    .parameter "left"

    .prologue
    .line 374
    iput p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListLeft:I

    .line 375
    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->invalidate()V

    .line 376
    return-void
.end method

.method public setListener(Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 203
    iput-object p1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListener:Lcom/google/android/gm/TriStateSplitLayout$LayoutListener;

    .line 204
    return-void
.end method

.method public uncollapseList()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 655
    iget-boolean v3, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    if-nez v3, :cond_0

    .line 670
    :goto_0
    return v1

    .line 658
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gm/TriStateSplitLayout;->mListCollapsed:Z

    .line 660
    const-string v3, "conversationListLeft"

    const/4 v4, 0x2

    new-array v4, v4, [I

    invoke-virtual {p0}, Lcom/google/android/gm/TriStateSplitLayout;->getConversationListLeft()I

    move-result v5

    aput v5, v4, v1

    aput v1, v4, v2

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 664
    .local v0, listLeftValues:Landroid/animation/PropertyValuesHolder;
    sget v3, Lcom/google/android/gm/TriStateSplitLayout;->sAnimationCollapseDuration:I

    new-instance v4, Lcom/google/android/gm/TriStateSplitLayout$3;

    invoke-direct {v4, p0}, Lcom/google/android/gm/TriStateSplitLayout$3;-><init>(Lcom/google/android/gm/TriStateSplitLayout;)V

    sget-object v5, Lcom/google/android/gm/TriStateSplitLayout;->sCollapseInterpolator:Landroid/animation/TimeInterpolator;

    new-array v6, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v6, v1

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/google/android/gm/TriStateSplitLayout;->startLayoutAnimation(ILcom/google/android/gm/TriStateSplitLayout$AnimatorListener;Landroid/animation/TimeInterpolator;[Landroid/animation/PropertyValuesHolder;)V

    move v1, v2

    .line 670
    goto :goto_0
.end method
