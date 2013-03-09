.class public Lcom/google/android/gm/AnimatedAdapter;
.super Landroid/database/DataSetObserver;
.source "AnimatedAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/widget/ListAdapter;
.implements Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;,
        Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
    }
.end annotation


# static fields
.field protected static final NEARBY_ID_WINDOW:I = 0x32

.field protected static final VIEW_TYPE_NORMAL:I

.field private static sActivatedAnimatingBackground:Landroid/graphics/drawable/Drawable;

.field private static sAnimatingBackground:Landroid/graphics/drawable/Drawable;

.field private static sAnimatingCheckedBackground:Landroid/graphics/drawable/Drawable;

.field protected static sAnimationTime:I


# instance fields
.field private final mAdapter:Landroid/widget/BaseAdapter;

.field private mAnimate:Z

.field private final mContext:Landroid/content/Context;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field protected mDeletingPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstNearbyPosition:I

.field protected mNearbyIds:[J

.field protected mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

.field private final mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

.field private mStateListener:Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;

.field private mTmpPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation
.end field

.field private mViewDataPool:Lcom/google/android/gm/AnimatingViewData;

.field private mViewDataPoolCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/google/android/gm/AnimatedAdapter;->sAnimationTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/BaseAdapter;Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 2
    .parameter "context"
    .parameter "a"
    .parameter "set"

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimate:Z

    .line 54
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 61
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 84
    iput v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mViewDataPoolCount:I

    .line 87
    invoke-virtual {p2}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapters must have stable IDs to animate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mContext:Landroid/content/Context;

    .line 91
    sget v0, Lcom/google/android/gm/AnimatedAdapter;->sAnimationTime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/google/android/gm/AnimatedAdapter;->sAnimationTime:I

    .line 95
    :cond_1
    iput-object p2, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    .line 96
    invoke-virtual {p2, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 98
    invoke-direct {p0}, Lcom/google/android/gm/AnimatedAdapter;->createAnimationState()V

    .line 99
    iput-object p3, p0, Lcom/google/android/gm/AnimatedAdapter;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    .line 100
    invoke-virtual {p3, p0}, Lcom/google/android/gm/ConversationSelectionSet;->addObserver(Lcom/google/android/gm/ConversationSelectionSet$ConversationSetObserver;)V

    .line 101
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gm/AnimatedAdapter;->sActivatedAnimatingBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-object p0, Lcom/google/android/gm/AnimatedAdapter;->sActivatedAnimatingBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gm/AnimatedAdapter;->sAnimatingCheckedBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-object p0, Lcom/google/android/gm/AnimatedAdapter;->sAnimatingCheckedBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$200()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/android/gm/AnimatedAdapter;->sAnimatingBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    sput-object p0, Lcom/google/android/gm/AnimatedAdapter;->sAnimatingBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private clearDeletingItems()V
    .locals 3

    .prologue
    .line 592
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 593
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/AnimatingViewData;

    .line 594
    .local v0, data:Lcom/google/android/gm/AnimatingViewData;
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/google/android/gm/AnimatingViewData;->cancelAnimation()V

    .line 592
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 598
    .end local v0           #data:Lcom/google/android/gm/AnimatingViewData;
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 599
    return-void
.end method

.method private createAnimationState()V
    .locals 6

    .prologue
    const/16 v5, 0x32

    .line 660
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 661
    new-array v2, v5, [J

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    .line 662
    new-array v2, v5, [Lcom/google/android/gm/AnimatingViewData;

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    .line 663
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 664
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    new-instance v3, Lcom/google/android/gm/AnimatingViewData;

    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/google/android/gm/AnimatingViewData;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 667
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 668
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AnimatingViewData;

    .line 669
    .local v1, v:Lcom/google/android/gm/AnimatingViewData;
    if-eqz v1, :cond_1

    .line 670
    invoke-virtual {v1}, Lcom/google/android/gm/AnimatingViewData;->cancelAnimation()V

    .line 667
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 674
    .end local v1           #v:Lcom/google/android/gm/AnimatingViewData;
    :cond_2
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    .line 675
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 676
    return-void
.end method

.method private getAnimatingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 243
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/AnimatingViewData;

    .line 244
    .local v0, data:Lcom/google/android/gm/AnimatingViewData;
    const/4 v1, 0x0

    .line 245
    .local v1, item:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
    if-eqz v0, :cond_0

    .line 246
    new-instance v1, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;

    .end local v1           #item:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    iget-boolean v4, v0, Lcom/google/android/gm/AnimatingViewData;->checked:Z

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;-><init>(Lcom/google/android/gm/AnimatedAdapter;Landroid/content/Context;IZ)V

    .line 247
    .restart local v1       #item:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
    invoke-virtual {v0, v1}, Lcom/google/android/gm/AnimatingViewData;->setView(Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;)V

    .line 248
    iget v2, v0, Lcom/google/android/gm/AnimatingViewData;->animatedHeight:I

    invoke-virtual {v1, v2}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->setAnimatedHeight(I)V

    .line 250
    :cond_0
    return-object v1
.end method

.method private isPositionAnimating(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureChildHeight(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 12
    .parameter "child"
    .parameter "parent"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 215
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 216
    .local v2, paddingLeft:I
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    .line 217
    .local v3, paddingRight:I
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    .line 218
    .local v7, width:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 219
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, -0x1

    .line 220
    .local v6, pwidth:I
    const/4 v5, -0x2

    .line 221
    .local v5, pheight:I
    if-eqz v4, :cond_0

    .line 222
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 223
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 226
    :cond_0
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    add-int v9, v2, v3

    invoke-static {v8, v9, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 229
    .local v1, childWidthSpec:I
    if-lez v5, :cond_1

    .line 230
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 234
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 236
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    return v8

    .line 232
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private obtainViewData(Landroid/content/Context;Landroid/database/DataSetObservable;JZ)Lcom/google/android/gm/AnimatingViewData;
    .locals 3
    .parameter "context"
    .parameter "observable"
    .parameter "id"
    .parameter "isChecked"

    .prologue
    .line 773
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mViewDataPool:Lcom/google/android/gm/AnimatingViewData;

    .line 774
    .local v0, result:Lcom/google/android/gm/AnimatingViewData;
    if-nez v0, :cond_0

    .line 775
    new-instance v0, Lcom/google/android/gm/AnimatingViewData;

    .end local v0           #result:Lcom/google/android/gm/AnimatingViewData;
    invoke-direct {v0, p1}, Lcom/google/android/gm/AnimatingViewData;-><init>(Landroid/content/Context;)V

    .line 776
    .restart local v0       #result:Lcom/google/android/gm/AnimatingViewData;
    iput-wide p3, v0, Lcom/google/android/gm/AnimatingViewData;->id:J

    .line 777
    iput-object p2, v0, Lcom/google/android/gm/AnimatingViewData;->mDataSetObservable:Landroid/database/DataSetObservable;

    move-object v1, v0

    .line 786
    .end local v0           #result:Lcom/google/android/gm/AnimatingViewData;
    .local v1, result:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 780
    .end local v1           #result:Ljava/lang/Object;
    .restart local v0       #result:Lcom/google/android/gm/AnimatingViewData;
    :cond_0
    iget-object v2, v0, Lcom/google/android/gm/AnimatingViewData;->mNext:Lcom/google/android/gm/AnimatingViewData;

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mViewDataPool:Lcom/google/android/gm/AnimatingViewData;

    .line 781
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gm/AnimatingViewData;->mNext:Lcom/google/android/gm/AnimatingViewData;

    .line 782
    iput-object p2, v0, Lcom/google/android/gm/AnimatingViewData;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 783
    iput-wide p3, v0, Lcom/google/android/gm/AnimatingViewData;->id:J

    .line 784
    iput-boolean p5, v0, Lcom/google/android/gm/AnimatingViewData;->checked:Z

    .line 785
    iget v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mViewDataPoolCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mViewDataPoolCount:I

    move-object v1, v0

    .line 786
    .restart local v1       #result:Ljava/lang/Object;
    goto :goto_0
.end method

.method private obtainViewData(Lcom/google/android/gm/AnimatingViewData;)Lcom/google/android/gm/AnimatingViewData;
    .locals 7
    .parameter "other"

    .prologue
    .line 765
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    iget-wide v3, p1, Lcom/google/android/gm/AnimatingViewData;->id:J

    iget-boolean v5, p1, Lcom/google/android/gm/AnimatingViewData;->checked:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/AnimatedAdapter;->obtainViewData(Landroid/content/Context;Landroid/database/DataSetObservable;JZ)Lcom/google/android/gm/AnimatingViewData;

    move-result-object v6

    .line 767
    .local v6, result:Lcom/google/android/gm/AnimatingViewData;
    invoke-virtual {v6, p1}, Lcom/google/android/gm/AnimatingViewData;->set(Lcom/google/android/gm/AnimatingViewData;)V

    .line 768
    return-object v6
.end method

.method private onComplete(Z)V
    .locals 1
    .parameter "receivedDiff"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mStateListener:Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;

    if-eqz v0, :cond_0

    .line 728
    if-eqz p1, :cond_1

    .line 729
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mStateListener:Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;

    invoke-interface {v0}, Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;->onReceivedUpdatedData()V

    .line 734
    :cond_0
    :goto_0
    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mStateListener:Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;

    invoke-interface {v0}, Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;->onActionCompleted()V

    goto :goto_0
.end method

.method private onStart()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mStateListener:Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mStateListener:Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;

    invoke-interface {v0}, Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;->onAnimationStarted()V

    .line 723
    :cond_0
    return-void
.end method

.method private recycle(Lcom/google/android/gm/AnimatingViewData;)V
    .locals 2
    .parameter "viewData"

    .prologue
    .line 790
    iget v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mViewDataPoolCount:I

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 791
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mViewDataPool:Lcom/google/android/gm/AnimatingViewData;

    iput-object v0, p1, Lcom/google/android/gm/AnimatingViewData;->mNext:Lcom/google/android/gm/AnimatingViewData;

    .line 792
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/google/android/gm/AnimatingViewData;->cancelled:Z

    .line 793
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mViewDataPool:Lcom/google/android/gm/AnimatingViewData;

    .line 794
    iget v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mViewDataPoolCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mViewDataPoolCount:I

    .line 796
    :cond_0
    return-void
.end method

.method private translateWrappedPosition(I)I
    .locals 0
    .parameter "requested"

    .prologue
    .line 289
    return p1
.end method

.method private updateIsChecked(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 6
    .parameter "set"

    .prologue
    .line 738
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    .local v0, arr$:[Lcom/google/android/gm/AnimatingViewData;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 739
    .local v1, data:Lcom/google/android/gm/AnimatingViewData;
    iget v4, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    invoke-direct {p0, v4}, Lcom/google/android/gm/AnimatedAdapter;->isPositionAnimating(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 740
    iget-wide v4, v1, Lcom/google/android/gm/AnimatingViewData;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/google/android/gm/AnimatingViewData;->checked:Z

    .line 738
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 743
    .end local v1           #data:Lcom/google/android/gm/AnimatingViewData;
    :cond_1
    return-void
.end method


# virtual methods
.method public animateChanges(Z)V
    .locals 0
    .parameter "shouldAnimate"

    .prologue
    .line 689
    iput-boolean p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimate:Z

    .line 690
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public diff([J)V
    .locals 24
    .parameter "newNearbyIds"

    .prologue
    .line 371
    const/4 v14, 0x0

    .line 372
    .local v14, onCompleteCalled:Z
    move-object/from16 v0, p0

    iget v5, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 373
    .local v5, firstPos:I
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 377
    .local v16, toAnimate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/gm/AnimatingViewData;>;"
    const/4 v2, 0x0

    .line 378
    .local v2, added:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v7, v0, :cond_4

    .line 379
    const/4 v6, 0x0

    .line 380
    .local v6, found:Z
    aget-wide v18, p1, v7

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_0

    .line 381
    const/4 v11, 0x0

    .local v11, j:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_0

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v11

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_2

    .line 391
    .end local v11           #j:I
    :cond_0
    :goto_2
    if-nez v6, :cond_1

    aget-wide v18, p1, v7

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_1

    .line 392
    add-int v18, v5, v7

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gm/AnimatedAdapter;->translateWrappedPosition(I)I

    move-result v15

    .line 394
    .local v15, realPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/google/android/gm/AnimatedAdapter;->updateDeletingItems(ILandroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    .line 395
    add-int/lit8 v2, v2, 0x1

    .line 378
    .end local v15           #realPos:I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 385
    .restart local v11       #j:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v11

    aget-wide v20, p1, v7

    cmp-long v18, v18, v20

    if-nez v18, :cond_3

    .line 386
    const/4 v6, 0x1

    .line 387
    goto :goto_2

    .line 381
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 399
    .end local v6           #found:Z
    .end local v11           #j:I
    :cond_4
    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    sub-int v18, v18, v2

    move/from16 v0, v18

    if-ge v7, v0, :cond_5

    .line 400
    const/4 v6, 0x0

    .line 401
    .restart local v6       #found:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v7

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_7

    .line 425
    .end local v6           #found:Z
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_12

    .line 430
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mAnimate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 433
    const/4 v13, 0x0

    .line 434
    .local v13, nearbyIdsLength:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    .local v3, arr$:[J
    array-length v12, v3

    .local v12, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_4
    if-ge v8, v12, :cond_d

    aget-wide v9, v3, v8

    .line 435
    .local v9, id:J
    const-wide/16 v18, -0x1

    cmp-long v18, v9, v18

    if-eqz v18, :cond_6

    .line 436
    add-int/lit8 v13, v13, 0x1

    .line 434
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 404
    .end local v3           #arr$:[J
    .end local v8           #i$:I
    .end local v9           #id:J
    .end local v12           #len$:I
    .end local v13           #nearbyIdsLength:I
    .restart local v6       #found:Z
    :cond_7
    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_8

    .line 405
    aget-wide v18, p1, v11

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-nez v18, :cond_b

    .line 413
    :cond_8
    :goto_6
    if-nez v6, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v7

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_a

    .line 415
    add-int v17, v5, v7

    .line 416
    .local v17, wrappedPos:I
    const-string v18, "Gmail"

    const-string v19, "DELETING AN ITEM %d"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    move-object/from16 v22, v0

    aget-wide v22, v22, v7

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v18 .. v20}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 417
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/gm/AnimatedAdapter;->translateWrappedPosition(I)I

    move-result v15

    .line 418
    .restart local v15       #realPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    move-object/from16 v18, v0

    aget-object v18, v18, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gm/AnimatedAdapter;->obtainViewData(Lcom/google/android/gm/AnimatingViewData;)Lcom/google/android/gm/AnimatingViewData;

    move-result-object v4

    .line 419
    .local v4, data:Lcom/google/android/gm/AnimatingViewData;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mAnimate:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15, v4}, Lcom/google/android/gm/AnimatedAdapter;->startAnimatingPosition(Landroid/util/SparseArray;ILcom/google/android/gm/AnimatingViewData;)Landroid/util/SparseArray;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    .line 422
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    .end local v4           #data:Lcom/google/android/gm/AnimatingViewData;
    .end local v15           #realPos:I
    .end local v17           #wrappedPos:I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 408
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    move-object/from16 v18, v0

    aget-wide v18, v18, v7

    aget-wide v20, p1, v11

    cmp-long v18, v18, v20

    if-nez v18, :cond_c

    .line 409
    const/4 v6, 0x1

    .line 410
    goto :goto_6

    .line 404
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 439
    .end local v6           #found:Z
    .end local v11           #j:I
    .restart local v3       #arr$:[J
    .restart local v8       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #nearbyIdsLength:I
    :cond_d
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-gt v13, v0, :cond_10

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    .line 460
    .end local v3           #arr$:[J
    .end local v8           #i$:I
    .end local v12           #len$:I
    .end local v13           #nearbyIdsLength:I
    :cond_e
    :goto_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gm/AnimatedAdapter;->notifyDataSetChanged()V

    .line 462
    if-nez v14, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v18

    if-nez v18, :cond_f

    .line 463
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gm/AnimatedAdapter;->onComplete(Z)V

    .line 465
    :cond_f
    :goto_8
    return-void

    .line 442
    .restart local v3       #arr$:[J
    .restart local v8       #i$:I
    .restart local v12       #len$:I
    .restart local v13       #nearbyIdsLength:I
    :cond_10
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gm/AnimatingViewData;

    .line 443
    .restart local v4       #data:Lcom/google/android/gm/AnimatingViewData;
    sget v18, Lcom/google/android/gm/AnimatedAdapter;->sAnimationTime:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v4, v0, v1}, Lcom/google/android/gm/AnimatingViewData;->makeDeletingAnimation(ILandroid/animation/Animator$AnimatorListener;)V

    .line 444
    invoke-virtual {v4}, Lcom/google/android/gm/AnimatingViewData;->startAnimation()V

    goto :goto_9

    .line 450
    .end local v3           #arr$:[J
    .end local v4           #data:Lcom/google/android/gm/AnimatingViewData;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #len$:I
    .end local v13           #nearbyIdsLength:I
    :cond_11
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->clear()V

    .line 452
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gm/AnimatedAdapter;->onComplete(Z)V

    goto :goto_8

    .line 456
    :cond_12
    const/4 v14, 0x1

    .line 457
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/gm/AnimatedAdapter;->onComplete(Z)V

    goto :goto_7
.end method

.method protected finishAnimatingPosition(Landroid/util/SparseArray;I)Landroid/util/SparseArray;
    .locals 8
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, arr:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 136
    .local v0, arrSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 137
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 138
    .local v3, p:I
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AnimatingViewData;

    .line 139
    .local v1, data:Lcom/google/android/gm/AnimatingViewData;
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    if-le v5, p2, :cond_2

    .line 140
    add-int/lit8 v5, v3, -0x1

    if-gez v5, :cond_1

    .line 141
    const-string v5, "Gmail"

    const-string v6, "Unexpected negative position"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 136
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 144
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 146
    :cond_2
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    if-ge v5, p2, :cond_0

    .line 147
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 150
    .end local v1           #data:Lcom/google/android/gm/AnimatingViewData;
    .end local v3           #p:I
    :cond_3
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 151
    .local v4, result:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 152
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 153
    return-object v4
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected getFirstNearbyPosition()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 165
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/AnimatingViewData;

    .line 166
    .local v0, data:Lcom/google/android/gm/AnimatingViewData;
    if-eqz v0, :cond_0

    .line 169
    .end local v0           #data:Lcom/google/android/gm/AnimatingViewData;
    :goto_0
    return-object v0

    .restart local v0       #data:Lcom/google/android/gm/AnimatingViewData;
    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->translateItemPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 174
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/AnimatingViewData;

    .line 175
    .local v0, data:Lcom/google/android/gm/AnimatingViewData;
    if-eqz v0, :cond_0

    .line 176
    iget-wide v1, v0, Lcom/google/android/gm/AnimatingViewData;->id:J

    .line 178
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->translateItemPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v0, 0x0

    .line 319
    if-gez p1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return v0

    .line 322
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->isPositionAnimating(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x0

    .line 183
    invoke-virtual {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->translateItemPosition(I)I

    move-result v7

    invoke-static {v11, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 184
    .local v5, translatedPosition:I
    invoke-virtual {p0, v5}, Lcom/google/android/gm/AnimatedAdapter;->updateNearbyWindow(I)V

    .line 185
    invoke-direct {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->isPositionAnimating(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/AnimatedAdapter;->getAnimatingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 211
    :goto_0
    return-object v6

    .line 189
    :cond_0
    iget v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    sub-int v4, v5, v7

    .line 190
    .local v4, nearbyIndex:I
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    aget-object v0, v7, v4

    .line 191
    .local v0, data:Lcom/google/android/gm/AnimatingViewData;
    invoke-virtual {v0}, Lcom/google/android/gm/AnimatingViewData;->getView()Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;

    move-result-object v6

    .line 192
    .local v6, viewFromAdapter:Landroid/view/View;
    if-nez v6, :cond_1

    .line 193
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 194
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v5, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 201
    :cond_1
    :goto_1
    if-nez v6, :cond_3

    .line 202
    new-instance v6, Landroid/view/View;

    .end local v6           #viewFromAdapter:Landroid/view/View;
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 196
    .restart local v6       #viewFromAdapter:Landroid/view/View;
    :cond_2
    const-string v7, "Gmail"

    const-string v8, "AnimatedAdapter got an incorrect offset: translated %d, real %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 204
    :cond_3
    invoke-direct {p0, v6, p3}, Lcom/google/android/gm/AnimatedAdapter;->measureChildHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v1

    .line 205
    .local v1, height:I
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    .line 206
    .local v2, id:J
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aput-wide v2, v7, v4

    .line 207
    invoke-virtual {v0}, Lcom/google/android/gm/AnimatingViewData;->endAnimation()V

    .line 208
    iput v1, v0, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    .line 209
    iput p1, v0, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 210
    iput-wide v2, v0, Lcom/google/android/gm/AnimatingViewData;->id:J

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->translateItemPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 685
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 686
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 680
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 681
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 694
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 707
    check-cast p1, Landroid/animation/ObjectAnimator;

    .end local p1
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/AnimatingViewData;

    .line 708
    .local v0, viewData:Lcom/google/android/gm/AnimatingViewData;
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    iget v2, v0, Lcom/google/android/gm/AnimatingViewData;->position:I

    invoke-virtual {p0, v1, v2}, Lcom/google/android/gm/AnimatedAdapter;->finishAnimatingPosition(Landroid/util/SparseArray;I)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    .line 709
    iget-boolean v1, v0, Lcom/google/android/gm/AnimatingViewData;->cancelled:Z

    if-nez v1, :cond_0

    .line 710
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v1}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 711
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 712
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/google/android/gm/AnimatedAdapter;->onComplete(Z)V

    .line 715
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/gm/AnimatedAdapter;->recycle(Lcom/google/android/gm/AnimatingViewData;)V

    .line 716
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 698
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/google/android/gm/AnimatedAdapter;->onStart()V

    .line 703
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/google/android/gm/AnimatedAdapter;->createAnimationState()V

    .line 509
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 510
    return-void
.end method

.method public onSetBecomeUnempty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 747
    invoke-direct {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->updateIsChecked(Lcom/google/android/gm/ConversationSelectionSet;)V

    .line 748
    return-void
.end method

.method public onSetChanged(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 0
    .parameter "set"

    .prologue
    .line 752
    invoke-direct {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->updateIsChecked(Lcom/google/android/gm/ConversationSelectionSet;)V

    .line 753
    return-void
.end method

.method public onSetEmpty(Lcom/google/android/gm/ConversationSelectionSet;)V
    .locals 5
    .parameter "set"

    .prologue
    .line 757
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    .local v0, arr$:[Lcom/google/android/gm/AnimatingViewData;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 758
    .local v1, data:Lcom/google/android/gm/AnimatingViewData;
    iget v4, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    invoke-direct {p0, v4}, Lcom/google/android/gm/AnimatedAdapter;->isPositionAnimating(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 759
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/google/android/gm/AnimatingViewData;->checked:Z

    .line 757
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 762
    .end local v1           #data:Lcom/google/android/gm/AnimatingViewData;
    :cond_1
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 300
    return-void
.end method

.method public removeActionStateListener()V
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mStateListener:Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;

    .line 800
    return-void
.end method

.method public setActionStateListener(Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 804
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mStateListener:Lcom/google/android/gm/AnimatedAdapter$ActionStateListener;

    .line 805
    return-void
.end method

.method protected shouldDiff()Z
    .locals 3

    .prologue
    .line 357
    const/4 v0, 0x1

    .line 358
    .local v0, diff:Z
    iget v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 359
    .local v1, firstPos:I
    if-gez v1, :cond_0

    .line 361
    const/4 v0, 0x0

    .line 363
    :cond_0
    if-nez v0, :cond_1

    .line 364
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter;->notifyDataSetChanged()V

    .line 365
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/google/android/gm/AnimatedAdapter;->onComplete(Z)V

    .line 367
    :cond_1
    return v0
.end method

.method protected startAnimatingPosition(Landroid/util/SparseArray;ILcom/google/android/gm/AnimatingViewData;)Landroid/util/SparseArray;
    .locals 8
    .parameter
    .parameter "position"
    .parameter "newData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;I",
            "Lcom/google/android/gm/AnimatingViewData;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, arr:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    if-gez p2, :cond_0

    .line 107
    const-string v5, "Gmail"

    const-string v6, "Should never have a position of -1"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 128
    .end local p1           #arr:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    :goto_0
    return-object p1

    .line 110
    .restart local p1       #arr:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 111
    .local v0, arrSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 112
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 113
    .local v3, p:I
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AnimatingViewData;

    .line 114
    .local v1, data:Lcom/google/android/gm/AnimatingViewData;
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    if-lt v5, p2, :cond_1

    .line 115
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 116
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 118
    :cond_1
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 122
    .end local v1           #data:Lcom/google/android/gm/AnimatingViewData;
    .end local v3           #p:I
    :cond_2
    if-eqz p3, :cond_3

    .line 123
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 125
    :cond_3
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 126
    .local v4, result:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 127
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    move-object p1, v4

    .line 128
    goto :goto_0
.end method

.method public translateItemPosition(I)I
    .locals 5
    .parameter "requested"

    .prologue
    .line 260
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 261
    .local v1, deletingSize:I
    const/4 v2, 0x0

    .line 262
    .local v2, extraItemsBefore:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 263
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 264
    .local v0, deletingIndex:I
    if-le v0, p1, :cond_1

    .line 269
    .end local v0           #deletingIndex:I
    :cond_0
    sub-int v4, p1, v2

    return v4

    .line 267
    .restart local v0       #deletingIndex:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 262
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public translateSelectedPosition(I)I
    .locals 2
    .parameter "requested"

    .prologue
    .line 278
    move v0, p1

    .line 279
    .local v0, startSearch:I
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gm/AnimatedAdapter;->isPositionAnimating(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    return v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 309
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 310
    return-void
.end method

.method protected updateDeletingItems(ILandroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 7
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    .local p2, arr:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 472
    .local v0, arrSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 473
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 474
    .local v3, p:I
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AnimatingViewData;

    .line 475
    .local v1, data:Lcom/google/android/gm/AnimatingViewData;
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    if-lt v5, p1, :cond_0

    .line 476
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 477
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_0
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 483
    .end local v1           #data:Lcom/google/android/gm/AnimatingViewData;
    .end local v3           #p:I
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 484
    .local v4, result:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    iput-object p2, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 485
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 486
    return-object v4
.end method

.method protected updateDeletingItemsFromOffset(IILandroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 6
    .parameter "prevOffset"
    .parameter "currentOffset"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    .local p3, arr:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 493
    .local v0, arrSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 494
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AnimatingViewData;

    .line 495
    .local v1, data:Lcom/google/android/gm/AnimatingViewData;
    iget v4, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    if-ge p2, v4, :cond_0

    .line 496
    iget v4, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iput v4, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 497
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    invoke-virtual {v4, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 493
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    .end local v1           #data:Lcom/google/android/gm/AnimatingViewData;
    :cond_1
    iget-object v3, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 501
    .local v3, result:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    iput-object p3, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 502
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 503
    return-object v3
.end method

.method protected updateNearbyWindow(I)V
    .locals 18
    .parameter "position"

    .prologue
    .line 517
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v8

    .line 518
    .local v8, adapterCount:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    add-int/lit8 v14, v2, 0x32

    .line 519
    .local v14, windowEnd:I
    add-int/lit8 v2, p1, 0x32

    move-object/from16 v0, p0

    iget v3, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, v14, 0x32

    move/from16 v0, p1

    if-le v0, v2, :cond_4

    .line 524
    :cond_0
    const/4 v2, 0x0

    add-int/lit8 v3, p1, -0x10

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 525
    .local v12, newFirstPosition:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    const/16 v2, 0x32

    if-ge v10, v2, :cond_2

    .line 526
    add-int v11, v12, v10

    .line 527
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    if-ge v11, v8, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v11}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    :goto_1
    aput-wide v2, v4, v10

    .line 525
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 527
    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_1

    .line 529
    .end local v11           #index:I
    :cond_2
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 530
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/AnimatedAdapter;->clearDeletingItems()V

    .line 586
    .end local v10           #i:I
    .end local v12           #newFirstPosition:I
    :cond_3
    :goto_2
    return-void

    .line 531
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    move/from16 v0, p1

    if-ge v0, v2, :cond_8

    .line 532
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    sub-int v13, v2, p1

    .line 533
    .local v13, slideBy:I
    rsub-int/lit8 v9, v13, 0x32

    .line 535
    .local v9, copyLength:I
    rsub-int/lit8 v10, v13, 0x32

    .restart local v10       #i:I
    :goto_3
    const/16 v2, 0x32

    if-ge v10, v2, :cond_5

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/AnimatedAdapter;->recycle(Lcom/google/android/gm/AnimatingViewData;)V

    .line 537
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    const/4 v3, 0x0

    aput-object v3, v2, v10

    .line 535
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 539
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    invoke-static {v2, v3, v4, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    invoke-static {v2, v3, v4, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    sub-int v12, v2, v13

    .line 542
    .restart local v12       #newFirstPosition:I
    const/4 v10, 0x0

    :goto_4
    if-ge v10, v13, :cond_7

    .line 543
    add-int v11, v12, v10

    .line 544
    .restart local v11       #index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    if-ge v11, v8, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v11}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    :goto_5
    aput-wide v2, v4, v10

    .line 545
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/AnimatedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v5, v2, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v16, v7, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gm/AnimatedAdapter;->obtainViewData(Landroid/content/Context;Landroid/database/DataSetObservable;JZ)Lcom/google/android/gm/AnimatingViewData;

    move-result-object v2

    aput-object v2, v15, v10

    .line 542
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 544
    :cond_6
    const-wide/16 v2, -0x1

    goto :goto_5

    .line 548
    .end local v11           #index:I
    :cond_7
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 550
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/google/android/gm/AnimatedAdapter;->updateDeletingItems(ILandroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    goto/16 :goto_2

    .line 551
    .end local v9           #copyLength:I
    .end local v10           #i:I
    .end local v12           #newFirstPosition:I
    .end local v13           #slideBy:I
    :cond_8
    move/from16 v0, p1

    if-lt v0, v14, :cond_3

    .line 552
    add-int/lit8 v2, v14, -0x1

    sub-int v13, p1, v2

    .line 553
    .restart local v13       #slideBy:I
    rsub-int/lit8 v9, v13, 0x32

    .line 554
    .restart local v9       #copyLength:I
    const/16 v2, 0x32

    if-gt v13, v2, :cond_d

    .line 555
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_6
    if-ge v10, v13, :cond_9

    .line 556
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/AnimatedAdapter;->recycle(Lcom/google/android/gm/AnimatingViewData;)V

    .line 557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    const/4 v3, 0x0

    aput-object v3, v2, v10

    .line 555
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 559
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    const/4 v4, 0x0

    invoke-static {v2, v13, v3, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    const/4 v4, 0x0

    invoke-static {v2, v13, v3, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    add-int v12, v2, v13

    .line 562
    .restart local v12       #newFirstPosition:I
    rsub-int/lit8 v10, v13, 0x32

    :goto_7
    const/16 v2, 0x32

    if-ge v10, v2, :cond_b

    .line 563
    add-int v11, v12, v10

    .line 564
    .restart local v11       #index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    if-ge v11, v8, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v11}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    :goto_8
    aput-wide v2, v4, v10

    .line 565
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/AnimatedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v5, v2, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v16, v7, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gm/AnimatedAdapter;->obtainViewData(Landroid/content/Context;Landroid/database/DataSetObservable;JZ)Lcom/google/android/gm/AnimatingViewData;

    move-result-object v2

    aput-object v2, v15, v10

    .line 562
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    .line 564
    :cond_a
    const-wide/16 v2, -0x1

    goto :goto_8

    .line 569
    .end local v11           #index:I
    :cond_b
    move-object/from16 v0, p0

    iput v12, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 584
    .end local v12           #newFirstPosition:I
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gm/AnimatedAdapter;->clearDeletingItems()V

    goto/16 :goto_2

    .line 573
    .end local v10           #i:I
    :cond_d
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 574
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_9
    const/16 v2, 0x32

    if-ge v10, v2, :cond_c

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    aget-object v2, v2, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gm/AnimatedAdapter;->recycle(Lcom/google/android/gm/AnimatingViewData;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    const/4 v3, 0x0

    aput-object v3, v2, v10

    .line 577
    move-object/from16 v0, p0

    iget v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    add-int v11, v2, v10

    .line 578
    .restart local v11       #index:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    if-ge v11, v8, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v11}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    :goto_a
    aput-wide v2, v4, v10

    .line 579
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gm/AnimatedAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v5, v2, v10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gm/AnimatedAdapter;->mSelectionSet:Lcom/google/android/gm/ConversationSelectionSet;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v16, v7, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/google/android/gm/ConversationSelectionSet;->containsKey(Ljava/lang/Long;)Z

    move-result v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gm/AnimatedAdapter;->obtainViewData(Landroid/content/Context;Landroid/database/DataSetObservable;JZ)Lcom/google/android/gm/AnimatingViewData;

    move-result-object v2

    aput-object v2, v15, v10

    .line 574
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 578
    :cond_e
    const-wide/16 v2, -0x1

    goto :goto_a
.end method
