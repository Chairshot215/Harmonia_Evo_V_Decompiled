.class public Lcom/google/android/talk/AnimatedAdapter2;
.super Landroid/database/DataSetObserver;
.source "AnimatedAdapter2.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/talk/AnimatedAdapter2$1;,
        Lcom/google/android/talk/AnimatedAdapter2$Status;,
        Lcom/google/android/talk/AnimatedAdapter2$TooLongException;,
        Lcom/google/android/talk/AnimatedAdapter2$Diff;,
        Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;,
        Lcom/google/android/talk/AnimatedAdapter2$ViewCache;,
        Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field public mAddingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimatedScale:F

.field private mAnimationTime:I

.field private mAnimator:Landroid/animation/Animator;

.field private mCurrentIds:[J

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field public mDeletingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;",
            ">;"
        }
    .end annotation
.end field

.field private mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

.field private mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;I)V
    .locals 2
    .parameter "adapter"
    .parameter "animationTime"

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 52
    const/16 v0, 0x78

    iput v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimationTime:I

    .line 56
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAddingViews:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDeletingViews:Ljava/util/ArrayList;

    .line 256
    new-instance v0, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    invoke-direct {v0, p0}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;-><init>(Lcom/google/android/talk/AnimatedAdapter2;)V

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    .line 72
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapters must have stable IDs to animate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    .line 76
    iput p2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimationTime:I

    .line 77
    invoke-virtual {p1, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/talk/AnimatedAdapter2;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimatedScale:F

    return v0
.end method

.method private getAdapterView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    .locals 13
    .parameter "translatedPosition"
    .parameter "convertView"
    .parameter "parent"
    .parameter "viewType"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->getScrap(I)Landroid/view/View;

    move-result-object v10

    .line 261
    .local v10, scrap:Landroid/view/View;
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    move-object/from16 v0, p3

    invoke-virtual {v1, p1, v10, v0}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 263
    .local v8, innerView:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 264
    .local v11, vp:Landroid/view/ViewParent;
    if-eqz v11, :cond_0

    .line 265
    check-cast v11, Landroid/view/ViewGroup;

    .end local v11           #vp:Landroid/view/ViewParent;
    invoke-virtual {v11}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 276
    :cond_0
    const/4 v5, 0x0

    .line 277
    .local v5, wrapper:Landroid/view/ViewGroup;
    if-eqz p2, :cond_1

    move-object v7, p2

    .line 278
    check-cast v7, Landroid/widget/FrameLayout;

    .line 279
    .local v7, f:Landroid/widget/FrameLayout;
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 280
    move-object v5, v7

    .line 282
    .end local v7           #f:Landroid/widget/FrameLayout;
    :cond_1
    if-nez v5, :cond_2

    .line 283
    new-instance v5, Landroid/widget/FrameLayout;

    .end local v5           #wrapper:Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 284
    .restart local v5       #wrapper:Landroid/view/ViewGroup;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v4, -0x1

    const/4 v6, -0x1

    invoke-direct {v1, v4, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    :cond_2
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 289
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 290
    .local v12, wrapperParams:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 293
    .local v9, innerViewParams:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 294
    iget v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 296
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-nez v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    .line 301
    .local v2, itemId:J
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    move v4, p1

    move/from16 v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->put(JILandroid/view/View;I)V

    .line 304
    .end local v2           #itemId:J
    :cond_3
    return-object v5
.end method

.method private getAnimatingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 330
    if-nez p2, :cond_4

    .line 331
    new-instance p2, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .end local p2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {p2, p0, v10}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;-><init>(Lcom/google/android/talk/AnimatedAdapter2;Landroid/content/Context;)V

    .restart local p2
    :goto_0
    move-object v6, p2

    .line 338
    check-cast v6, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .line 339
    .local v6, item:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    invoke-virtual {v6}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->removeAllViews()V

    .line 341
    const/4 v5, 0x0

    .line 342
    .local v5, initialHeight:I
    iget-object v10, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v10, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getStatus(I)Lcom/google/android/talk/AnimatedAdapter2$Status;

    move-result-object v7

    .line 343
    .local v7, status:Lcom/google/android/talk/AnimatedAdapter2$Status;
    sget-object v10, Lcom/google/android/talk/AnimatedAdapter2$Status;->Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

    if-ne v7, v10, :cond_6

    .line 344
    iget-object v10, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDeletingViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    const/4 v1, 0x0

    .line 347
    .local v1, adapterChild:Landroid/view/View;
    iget-object v10, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v10, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getDeletingRowId(I)J

    move-result-wide v2

    .line 348
    .local v2, deletingRowId:J
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_0

    .line 349
    iget-object v10, p0, Lcom/google/android/talk/AnimatedAdapter2;->mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    invoke-virtual {v10, v2, v3}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->getView(J)Landroid/view/View;

    move-result-object v1

    .line 351
    :cond_0
    if-nez v1, :cond_1

    .line 352
    iget-object v10, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v10, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->translate(I)I

    move-result v8

    .line 353
    .local v8, translatedPosition:I
    if-ltz v8, :cond_1

    .line 354
    invoke-direct {p0, p1, p3}, Lcom/google/android/talk/AnimatedAdapter2;->getInnerViewForPosition(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 355
    instance-of v10, v1, Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;

    if-eqz v10, :cond_1

    move-object v0, v1

    .line 356
    check-cast v0, Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;

    .line 357
    .local v0, a:Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;
    invoke-interface {v0}, Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;->rebindAlternate()V

    .line 362
    .end local v0           #a:Lcom/google/android/talk/AnimatedAdapter2$ListViewBindHelper;
    .end local v8           #translatedPosition:I
    :cond_1
    if-eqz v1, :cond_5

    .line 365
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 366
    .local v9, vp:Landroid/view/ViewParent;
    if-eqz v9, :cond_2

    .line 367
    check-cast v9, Landroid/view/ViewGroup;

    .end local v9           #vp:Landroid/view/ViewParent;
    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 369
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v1, v10}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 370
    invoke-direct {p0, v1, p3}, Lcom/google/android/talk/AnimatedAdapter2;->measureChildHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v5

    .line 374
    :goto_1
    const/4 v10, 0x1

    invoke-virtual {v6, v5, v10}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->setForcedHeight(IZ)V

    .line 386
    .end local v1           #adapterChild:Landroid/view/View;
    .end local v2           #deletingRowId:J
    :cond_3
    :goto_2
    return-object p2

    .end local v5           #initialHeight:I
    .end local v6           #item:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    .end local v7           #status:Lcom/google/android/talk/AnimatedAdapter2$Status;
    :cond_4
    move-object v10, p2

    .line 335
    check-cast v10, Landroid/view/ViewGroup;

    invoke-virtual {v10}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_0

    .line 372
    .restart local v1       #adapterChild:Landroid/view/View;
    .restart local v2       #deletingRowId:J
    .restart local v5       #initialHeight:I
    .restart local v6       #item:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    .restart local v7       #status:Lcom/google/android/talk/AnimatedAdapter2$Status;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 375
    .end local v1           #adapterChild:Landroid/view/View;
    .end local v2           #deletingRowId:J
    :cond_6
    sget-object v10, Lcom/google/android/talk/AnimatedAdapter2$Status;->Added:Lcom/google/android/talk/AnimatedAdapter2$Status;

    if-ne v7, v10, :cond_3

    .line 376
    iget-object v10, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAddingViews:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-direct {p0, p1, p3}, Lcom/google/android/talk/AnimatedAdapter2;->getInnerViewForPosition(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 379
    .restart local v1       #adapterChild:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual {v6, v1, v10}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 381
    invoke-direct {p0, v1, p3}, Lcom/google/android/talk/AnimatedAdapter2;->measureChildHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v4

    .line 382
    .local v4, height:I
    move v5, v4

    .line 384
    const/4 v10, 0x0

    invoke-virtual {v6, v5, v10}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->setForcedHeight(IZ)V

    goto :goto_2
.end method

.method private getInnerViewForPosition(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "originalPosition"
    .parameter "parent"

    .prologue
    .line 308
    iget-object v3, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v3, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->translate(I)I

    move-result v1

    .line 309
    .local v1, translatedPosition:I
    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->getItemViewType(I)I

    move-result v4

    invoke-direct {p0, v1, v3, p2, v4}, Lcom/google/android/talk/AnimatedAdapter2;->getAdapterView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    .line 314
    .local v0, adapterChild:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 315
    .local v2, vg:Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 316
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 318
    :cond_0
    return-object v0
.end method

.method private isAnimating(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->isAddedOrDeleted(I)Z

    move-result v0

    .line 418
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeAnimator()Landroid/animation/Animator;
    .locals 3

    .prologue
    .line 390
    const-string v1, "animatedScale"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 392
    .local v0, a:Landroid/animation/ObjectAnimator;
    iget v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimationTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 393
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 394
    return-object v0

    .line 390
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private measureChildHeight(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 12
    .parameter "child"
    .parameter "parent"

    .prologue
    const/high16 v11, 0x4000

    .line 123
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    .line 124
    .local v3, paddingLeft:I
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 125
    .local v4, paddingRight:I
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    .line 126
    .local v8, width:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 127
    .local v5, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v7, -0x1

    .line 128
    .local v7, pwidth:I
    const/4 v6, -0x1

    .line 129
    .local v6, pheight:I
    if-eqz v5, :cond_0

    .line 130
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 131
    iget v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 134
    :cond_0
    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    add-int v10, v3, v4

    invoke-static {v9, v10, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 137
    .local v1, childWidthSpec:I
    move v2, v6

    .line 139
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 140
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 144
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    return v9

    .line 142
    .end local v0           #childHeightSpec:I
    :cond_1
    const/4 v9, 0x0

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private translateItemPosition(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 404
    move v0, p1

    .line 405
    .local v0, retval:I
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->translate(I)I

    move-result v0

    .line 407
    if-gez v0, :cond_0

    .line 408
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 411
    :cond_0
    return v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->areAllItemsEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v0}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getCount()I

    move-result v0

    .line 85
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->translateItemPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    const-wide/16 v2, 0x0

    .line 96
    move v1, p1

    .line 97
    .local v1, translatedPosition:I
    iget-object v4, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v4, :cond_3

    .line 98
    iget-object v4, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v4, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getStatus(I)Lcom/google/android/talk/AnimatedAdapter2$Status;

    move-result-object v4

    sget-object v5, Lcom/google/android/talk/AnimatedAdapter2$Status;->Deleted:Lcom/google/android/talk/AnimatedAdapter2$Status;

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 99
    .local v0, deleted:Z
    :goto_0
    if-eqz v0, :cond_2

    .line 107
    .end local v0           #deleted:Z
    :cond_0
    :goto_1
    return-wide v2

    .line 98
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 102
    .restart local v0       #deleted:Z
    :cond_2
    iget-object v4, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v4, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->translate(I)I

    move-result v1

    .line 103
    if-ltz v1, :cond_0

    .line 107
    .end local v0           #deleted:Z
    :cond_3
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_1
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->isAddedOrDeleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->translateItemPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 112
    move v0, p1

    .line 113
    .local v0, translatedPosition:I
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->isAddedOrDeleted(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/talk/AnimatedAdapter2;->getAnimatingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 119
    :goto_0
    return-object v1

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v1, p1}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->translate(I)I

    move-result v0

    .line 119
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->getItemViewType(I)I

    move-result v1

    invoke-direct {p0, v0, p2, p3, v1}, Lcom/google/android/talk/AnimatedAdapter2;->getAdapterView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 433
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/google/android/talk/AnimatedAdapter2;->getCount()I

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
    .line 463
    invoke-direct {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->isAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 466
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->translateItemPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 7
    .parameter "animation"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 607
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAddingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .line 608
    .local v1, v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add view count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mLayoutCount:I
    invoke-static {v1}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->access$100(Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    #setter for: Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mLayoutCount:I
    invoke-static {v1, v5}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->access$102(Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;I)I

    .line 612
    .end local v1           #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDeletingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .line 613
    .restart local v1       #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    const-string v2, "talk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "del view count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    #getter for: Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mLayoutCount:I
    invoke-static {v1}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->access$100(Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    #setter for: Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->mLayoutCount:I
    invoke-static {v1, v5}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->access$102(Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;I)I

    .line 618
    .end local v1           #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    :cond_1
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDeletingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 619
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAddingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 621
    iput-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    .line 622
    iput-object v6, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    .line 624
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 625
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lcom/google/android/talk/AnimatedAdapter2;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 629
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 632
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 635
    return-void
.end method

.method public onChanged()V
    .locals 18

    .prologue
    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 473
    .local v10, t1:J
    const/4 v9, 0x0

    .line 474
    .local v9, isDifferent:Z
    const/4 v8, 0x0

    .line 477
    .local v8, ids:[J
    const/16 v1, 0x3e8

    .line 478
    .local v1, THRESHOLD:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v14}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v14

    const/16 v15, 0x3e8

    if-le v14, v15, :cond_5

    .line 479
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    .line 503
    :cond_0
    if-eqz v9, :cond_4

    .line 505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    if-eqz v14, :cond_1

    .line 506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v14}, Landroid/animation/Animator;->cancel()V

    .line 507
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    .line 510
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    array-length v14, v14

    if-lez v14, :cond_2

    if-eqz v8, :cond_2

    array-length v14, v8

    if-lez v14, :cond_2

    .line 511
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    array-length v14, v14

    array-length v15, v8

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    const/16 v15, 0x64

    if-ge v14, v15, :cond_2

    .line 512
    new-instance v4, Lcom/google/android/talk/AnimatedAdapter2$Diff;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v14, v8}, Lcom/google/android/talk/AnimatedAdapter2$Diff;-><init>(Lcom/google/android/talk/AnimatedAdapter2;[J[J)V

    .line 513
    .local v4, d:Lcom/google/android/talk/AnimatedAdapter2$Diff;
    const-wide/16 v14, 0x19

    invoke-virtual {v4, v14, v15}, Lcom/google/android/talk/AnimatedAdapter2$Diff;->compute(J)Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    .line 517
    .end local v4           #d:Lcom/google/android/talk/AnimatedAdapter2$Diff;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    if-eqz v14, :cond_4

    .line 518
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v14}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getAddingCount()I

    move-result v14

    if-lez v14, :cond_9

    const/4 v3, 0x1

    .line 519
    .local v3, anyInserts:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    invoke-virtual {v14}, Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;->getDeletionCount()I

    move-result v14

    if-lez v14, :cond_a

    const/4 v2, 0x1

    .line 521
    .local v2, anyDeletes:Z
    :goto_1
    const/high16 v14, 0x3f80

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimatedScale:F

    .line 523
    if-nez v2, :cond_3

    if-eqz v3, :cond_b

    .line 524
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/talk/AnimatedAdapter2;->makeAnimator()Landroid/animation/Animator;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    .line 525
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v14}, Landroid/animation/Animator;->start()V

    .line 531
    .end local v2           #anyDeletes:Z
    .end local v3           #anyInserts:Z
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    .line 532
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 533
    .local v12, t2:J
    const-string v14, "talk"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ">>>>> total overhead: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sub-long v16, v12, v10

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v14}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 535
    return-void

    .line 481
    .end local v12           #t2:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v14}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v14

    new-array v8, v14, [J

    .line 486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    if-nez v14, :cond_6

    .line 487
    const/4 v9, 0x0

    .line 488
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    array-length v14, v8

    if-ge v5, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v14, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v14

    aput-wide v14, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 489
    .end local v5           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    array-length v14, v14

    array-length v15, v8

    if-eq v14, v15, :cond_7

    .line 490
    const/4 v9, 0x1

    .line 491
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_4
    array-length v14, v8

    if-ge v5, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v14, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v14

    aput-wide v14, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 494
    .end local v5           #i:I
    :cond_7
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_5
    array-length v14, v8

    if-ge v5, v14, :cond_0

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v14, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v6

    aput-wide v6, v8, v5

    .line 496
    .local v6, id:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mCurrentIds:[J

    aget-wide v14, v14, v5

    cmp-long v14, v6, v14

    if-eqz v14, :cond_8

    .line 497
    const/4 v9, 0x1

    .line 494
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 518
    .end local v5           #i:I
    .end local v6           #id:J
    :cond_9
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 519
    .restart local v3       #anyInserts:Z
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 527
    .restart local v2       #anyDeletes:Z
    :cond_b
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    goto/16 :goto_2
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 540
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 543
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mMapping:Lcom/google/android/talk/AnimatedAdapter2$Diff$Mapping;

    .line 544
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    instance-of v0, v0, Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mViewCache:Lcom/google/android/talk/AnimatedAdapter2$ViewCache;

    invoke-virtual {v0, p1}, Lcom/google/android/talk/AnimatedAdapter2$ViewCache;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 156
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method public setAnimatedScale(F)V
    .locals 3
    .parameter "f"

    .prologue
    .line 597
    iput p1, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAnimatedScale:F

    .line 598
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDeletingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .line 599
    .local v1, v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    invoke-virtual {v1}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->requestLayout()V

    goto :goto_0

    .line 601
    .end local v1           #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/AnimatedAdapter2;->mAddingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;

    .line 602
    .restart local v1       #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    invoke-virtual {v1}, Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;->requestLayout()V

    goto :goto_1

    .line 604
    .end local v1           #v:Lcom/google/android/talk/AnimatedAdapter2$AnimatingItemView;
    :cond_1
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 428
    iget-object v0, p0, Lcom/google/android/talk/AnimatedAdapter2;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 429
    return-void
.end method
