.class public Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;
.super Ljava/lang/Object;
.source "FilmstripViewScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;,
        Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final DEFAULT_SPACING:I = 0x3

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field private FLAG_GALLERY_BOUNCE:Z

.field protected INVALID_POSITION:I

.field protected mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mChildrenCount:I

.field private mCloseOverbound:Z

.field protected mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

.field protected mDefaultChildHeight:I

.field protected mDefaultChildWidth:I

.field private mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mDownTouchPosition:I

.field private mEnableChildShadow:Z

.field protected mEnv:I

.field protected mFirstPosition:I

.field protected mGalleryLeft:I

.field protected mGalleryRight:I

.field protected mGalleryY:I

.field private mIsOnlineTagEditor:Z

.field protected mItemCount:I

.field private mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mLastPosition:I

.field private mMaxScrollOverhead:I

.field private mNewCreatedChildCount:I

.field protected mNextSelectedPosition:I

.field mOldSelectedPosition:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mParentNode:Lcom/htc/sunny2/SceneNode;

.field private mRecycler:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;",
            ">;"
        }
    .end annotation
.end field

.field mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

.field protected mSceneNode:Lcom/htc/sunny2/SceneNode;

.field private mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

.field protected mSelectedPosition:I

.field private mShouldCallbackOnUnselectedItemClick:Z

.field protected mShouldStopFling:Z

.field protected mSpacing:I

.field private mSpecialSpacing:I

.field private mSpecialSpacingPrev:I

.field private mStartAnimationChildIndex:I

.field private mTouchFrame:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;)V
    .locals 4
    .parameter "env"
    .parameter "itemMaker"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    .line 35
    const/16 v0, 0x170

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDefaultChildWidth:I

    .line 36
    const/16 v0, 0x113

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDefaultChildHeight:I

    .line 37
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    .line 38
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    .line 39
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 40
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 41
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    .line 48
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingLeft:I

    .line 49
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingRight:I

    .line 50
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    .line 55
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    .line 56
    iput v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    .line 57
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    .line 59
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsOnlineTagEditor:Z

    .line 67
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldCallbackOnUnselectedItemClick:Z

    .line 69
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    .line 71
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    .line 677
    const/16 v0, 0x50

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    .line 678
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->FLAG_GALLERY_BOUNCE:Z

    .line 679
    iput-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mCloseOverbound:Z

    .line 769
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mOldSelectedPosition:I

    .line 103
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnv:I

    .line 104
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 105
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    .line 106
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 107
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 108
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    .line 109
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    .line 110
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    .line 111
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 112
    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 113
    iput-object p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 114
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    .line 115
    iput-boolean v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    .line 116
    return-void
.end method

.method private addItemToArray(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V
    .locals 6
    .parameter "item"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 637
    if-gez p2, :cond_0

    .line 638
    iget p2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 641
    .local v0, children:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 642
    .local v1, count:I
    array-length v2, v0

    .line 643
    .local v2, size:I
    if-ne p2, v1, :cond_2

    .line 645
    if-ne v2, v1, :cond_1

    .line 647
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 648
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 649
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 651
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 652
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->attachToScene(Lcom/htc/sunny2/SceneNode;)Z

    .line 675
    :goto_0
    return-void

    .line 654
    :cond_2
    if-ge p2, v1, :cond_4

    .line 656
    if-ne v2, v1, :cond_3

    .line 658
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 659
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 660
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 661
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 667
    :goto_1
    aput-object p1, v0, p2

    .line 668
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 669
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {p1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->attachToScene(Lcom/htc/sunny2/SceneNode;)Z

    goto :goto_0

    .line 665
    :cond_3
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 673
    :cond_4
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private detachItemsFromParent(II)V
    .locals 7
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v6, 0x0

    .line 977
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 978
    .local v0, children:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 980
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 981
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 983
    .local v2, end:I
    if-ne p1, v2, :cond_0

    .line 1019
    :goto_0
    return-void

    .line 988
    :cond_0
    if-ne v2, v1, :cond_1

    .line 990
    move v3, p1

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 993
    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->detachFromScene(Lcom/htc/sunny2/SceneNode;)V

    .line 994
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    aput-object v6, v0, v3

    .line 990
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1000
    .end local v3           #i:I
    :cond_1
    move v3, p1

    .restart local v3       #i:I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 1003
    aget-object v4, v0, v3

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->detachFromScene(Lcom/htc/sunny2/SceneNode;)V

    .line 1004
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1000
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1010
    :cond_2
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1012
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_3
    if-ge v3, v1, :cond_3

    .line 1014
    aput-object v6, v0, v3

    .line 1012
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1018
    :cond_3
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    goto :goto_0
.end method

.method private detachOffScreenChildren(Z)V
    .locals 10
    .parameter "toLeft"

    .prologue
    .line 924
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 925
    .local v6, numChildren:I
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 926
    .local v2, firstPosition:I
    const/4 v7, 0x0

    .line 927
    .local v7, start:I
    const/4 v1, 0x0

    .line 929
    .local v1, count:I
    if-eqz p1, :cond_3

    .line 931
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingLeft:I

    add-int v3, v8, v9

    .line 932
    .local v3, galleryLeft:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_0

    .line 934
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 935
    .local v0, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_2

    .line 963
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v3           #galleryLeft:I
    :cond_0
    invoke-direct {p0, v7, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachItemsFromParent(II)V

    .line 969
    if-eqz p1, :cond_1

    .line 971
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int/2addr v8, v1

    iput v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 973
    :cond_1
    return-void

    .line 941
    .restart local v0       #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .restart local v3       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 932
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 947
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v3           #galleryLeft:I
    .end local v5           #i:I
    :cond_3
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    iget v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingRight:I

    sub-int v4, v8, v9

    .line 948
    .local v4, galleryRight:I
    add-int/lit8 v5, v6, -0x1

    .restart local v5       #i:I
    :goto_1
    if-ltz v5, :cond_0

    .line 950
    invoke-virtual {p0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 951
    .restart local v0       #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    if-le v8, v4, :cond_0

    .line 957
    move v7, v5

    .line 958
    add-int/lit8 v1, v1, 0x1

    .line 948
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method private fillToGalleryLeft()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 533
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    .line 534
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    .line 537
    .local v2, galleryLeft:I
    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v4

    .line 541
    .local v4, prevIterationItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v4, :cond_3

    .line 543
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int/lit8 v0, v5, -0x1

    .line 544
    .local v0, curPosition:I
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    if-eq v5, v3, :cond_2

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    add-int/lit8 v5, v5, -0x1

    if-eq v0, v5, :cond_0

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    if-ne v0, v5, :cond_2

    .line 547
    :cond_0
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    sub-int v1, v5, v6

    .line 562
    .local v1, curRightEdge:I
    :goto_0
    if-le v1, v2, :cond_1

    if-ltz v0, :cond_1

    .line 564
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    sub-int v5, v0, v5

    invoke-direct {p0, v0, v5, v1, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v4

    .line 565
    if-nez v4, :cond_4

    .line 576
    :cond_1
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 585
    return-void

    .line 551
    .end local v1           #curRightEdge:I
    :cond_2
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .restart local v1       #curRightEdge:I
    goto :goto_0

    .line 557
    .end local v0           #curPosition:I
    .end local v1           #curRightEdge:I
    :cond_3
    const/4 v0, 0x0

    .line 558
    .restart local v0       #curPosition:I
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingRight:I

    neg-int v1, v5

    .line 559
    .restart local v1       #curRightEdge:I
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldStopFling:Z

    goto :goto_0

    .line 569
    :cond_4
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 572
    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    sub-int v1, v5, v3

    .line 573
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private fillToGalleryRight()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 478
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    .line 479
    .local v3, itemSpacing:I
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    .line 480
    .local v2, galleryRight:I
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 481
    .local v4, numChildren:I
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    .line 484
    .local v5, numItems:I
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v6

    .line 488
    .local v6, prevIterationItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v6, :cond_3

    .line 490
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int v1, v7, v4

    .line 491
    .local v1, curPosition:I
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    if-eq v7, v3, :cond_2

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    add-int/lit8 v7, v7, 0x1

    if-eq v1, v7, :cond_0

    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    if-ne v1, v7, :cond_2

    .line 494
    :cond_0
    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    add-int v0, v7, v8

    .line 509
    .local v0, curLeftEdge:I
    :goto_0
    if-ge v0, v2, :cond_1

    if-ge v1, v5, :cond_1

    .line 511
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v6

    .line 512
    if-nez v6, :cond_4

    .line 529
    :cond_1
    return-void

    .line 498
    .end local v0           #curLeftEdge:I
    :cond_2
    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .restart local v0       #curLeftEdge:I
    goto :goto_0

    .line 503
    .end local v0           #curLeftEdge:I
    .end local v1           #curPosition:I
    :cond_3
    iget v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 504
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mPaddingLeft:I

    .line 505
    .restart local v0       #curLeftEdge:I
    iput-boolean v9, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldStopFling:Z

    .line 506
    sget-object v7, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[fillToGalleryRight] Should not be here, prevIterationView == null"

    invoke-static {v7, v8}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :cond_4
    invoke-virtual {v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 516
    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 517
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getCenterOfGallery()I
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x0

    return v0
.end method

.method private makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 6
    .parameter "position"
    .parameter "offset"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    .line 589
    if-gez p1, :cond_0

    .line 590
    const/4 v1, 0x0

    .line 614
    :goto_0
    return-object v1

    .line 592
    :cond_0
    const/4 v1, 0x0

    .line 596
    .local v1, childItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :try_start_0
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_1
    if-nez v1, :cond_1

    .line 605
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    .line 606
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeAndAddItem] Num of children created: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    invoke-virtual {v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->create()Lcom/htc/sunny2/ViewItem;

    move-result-object v1

    .end local v1           #childItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    check-cast v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 608
    .restart local v1       #childItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemMaker:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget-object v3, v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    iput-object v3, v1, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->mSunnyContext:Lcom/htc/sunny2/SunnyContext;

    .line 609
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnv:I

    invoke-virtual {v1, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->create(I)V

    .line 612
    :cond_1
    invoke-direct {p0, v1, p1, p3, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setupChild(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;IIZ)V

    goto :goto_0

    .line 598
    :catch_0
    move-exception v2

    .line 600
    .local v2, ex:Ljava/lang/Exception;
    sget-object v3, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[makeAndAddItem] Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 411
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 412
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 414
    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 415
    .local v0, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 416
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setRenderOrder(I)V

    .line 412
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 418
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_0
    return-void
.end method

.method private offsetSpecialChildrenLeftAndRight(IIII)V
    .locals 11
    .parameter "offset"
    .parameter "fixedPositon"
    .parameter "spacingOffset"
    .parameter "spacingOffsetPrev"

    .prologue
    const/4 v10, 0x1

    const/high16 v9, 0x3f80

    .line 423
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 424
    .local v1, count:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v2, p2, v6

    .line 425
    .local v2, fixedChild:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_5

    .line 427
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 428
    .local v0, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 429
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setRenderOrder(I)V

    .line 431
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemScale()F

    move-result v5

    .line 433
    .local v5, scale:F
    const v6, 0x3f8147ae

    cmpg-float v6, v5, v6

    if-gtz v6, :cond_2

    .line 435
    invoke-virtual {v0, v9, v10}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    .line 450
    :cond_0
    :goto_1
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    if-ne p2, v6, :cond_3

    .line 425
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    sub-float v7, v9, v5

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v8

    invoke-static {v6, v5, v7, v8}, Lcom/htc/sunny2/fullfilmview/Animator;->AcEaseOut(IFFI)F

    move-result v4

    .line 442
    .local v4, newScale:F
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    .line 444
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v7

    if-le v6, v7, :cond_0

    .line 446
    invoke-virtual {v0, v9, v10}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setItemScale(FZ)V

    goto :goto_1

    .line 453
    .end local v4           #newScale:F
    :cond_3
    if-eq v2, v3, :cond_1

    .line 456
    if-le v3, v2, :cond_4

    .line 458
    neg-int v6, p4

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 459
    invoke-virtual {v0, p3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_2

    .line 463
    :cond_4
    invoke-virtual {v0, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 464
    neg-int v6, p3

    invoke-virtual {v0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_2

    .line 474
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v5           #scale:F
    :cond_5
    return-void
.end method

.method private performItemSelected()V
    .locals 3

    .prologue
    .line 824
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mOldSelectedPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    if-eq v0, v1, :cond_0

    .line 826
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mOldSelectedPosition:I

    .line 828
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    invoke-interface {v0, v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;->onItemSelect(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V

    .line 832
    :cond_0
    return-void
.end method

.method private scrollToChild(IZZ)Z
    .locals 6
    .parameter "childPosition"
    .parameter "haveDirection"
    .parameter "next"

    .prologue
    .line 302
    invoke-virtual {p0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 304
    .local v1, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    const/4 v3, 0x0

    .line 305
    .local v3, deltaX:I
    const/4 v0, 0x0

    .line 307
    .local v0, bRet:Z
    if-eqz v1, :cond_2

    .line 309
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getCenterOfGallery()I

    move-result v4

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v5

    sub-int v3, v4, v5

    .line 310
    const/4 v0, 0x1

    .line 322
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    if-eqz v4, :cond_1

    .line 323
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    invoke-interface {v4, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;->scrollToPosition(I)V

    .line 325
    :cond_1
    return v0

    .line 312
    :cond_2
    if-eqz p2, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSelectedItemPosition()I

    move-result v2

    .line 315
    .local v2, current:I
    if-eqz p3, :cond_4

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_4

    .line 316
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    .line 319
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 317
    :cond_4
    if-eqz v2, :cond_3

    .line 318
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    goto :goto_1
.end method

.method private setSelectedPositionInt(I)V
    .locals 2
    .parameter "newPos"

    .prologue
    .line 918
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    .line 919
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 920
    return-void
.end method

.method private setSelectionToCenterChild()V
    .locals 10

    .prologue
    .line 864
    iget-object v7, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 865
    .local v7, selItem:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    iget-object v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-nez v8, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 869
    :cond_1
    const/4 v3, 0x0

    .line 871
    .local v3, galleryCenter:I
    if-eqz v7, :cond_2

    .line 875
    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_2

    invoke-virtual {v7}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v8

    if-ge v8, v3, :cond_0

    .line 882
    :cond_2
    const v2, 0x7fffffff

    .line 883
    .local v2, closestEdgeDistance:I
    const/4 v6, 0x0

    .line 884
    .local v6, newSelectedChildIndex:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    add-int/lit8 v4, v8, -0x1

    .local v4, i:I
    :goto_1
    if-ltz v4, :cond_3

    .line 887
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 889
    .local v0, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    if-gt v8, v3, :cond_4

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v8

    if-lt v8, v3, :cond_4

    .line 892
    move v6, v4

    .line 905
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_3
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int v5, v8, v6

    .line 907
    .local v5, newPos:I
    iget v8, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    if-eq v5, v8, :cond_0

    .line 909
    invoke-direct {p0, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectedPositionInt(I)V

    .line 911
    iput v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    goto :goto_0

    .line 896
    .end local v5           #newPos:I
    .restart local v0       #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_4
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 898
    .local v1, childClosestEdgeDistance:I
    if-ge v1, v2, :cond_5

    .line 900
    move v2, v1

    .line 901
    move v6, v4

    .line 884
    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private setupChild(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;IIZ)V
    .locals 3
    .parameter "item"
    .parameter "position"
    .parameter "x"
    .parameter "fromLeft"

    .prologue
    const/4 v2, 0x0

    .line 619
    if-eqz p4, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->addItemToArray(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V

    .line 621
    iget-boolean v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->enableShadow(Z)V

    .line 624
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v0

    .line 627
    .local v0, data:Lcom/htc/sunny2/IMediaData;
    invoke-virtual {p1, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunny2/IMediaData;)V

    .line 628
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 631
    .end local v0           #data:Lcom/htc/sunny2/IMediaData;
    :cond_0
    invoke-virtual {p1, p3, v2, p4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setPosition(IIZ)V

    .line 632
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    invoke-virtual {p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setRenderOrder(I)V

    .line 633
    return-void

    :cond_1
    move v1, v2

    .line 619
    goto :goto_0
.end method


# virtual methods
.method public attachToParent(Lcom/htc/sunny2/SceneNode;)V
    .locals 2
    .parameter "parent"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mParentNode:Lcom/htc/sunny2/SceneNode;

    .line 158
    invoke-static {}, Lcom/htc/sunny2/SceneNode;->obtain()Lcom/htc/sunny2/SceneNode;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 161
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mParentNode:Lcom/htc/sunny2/SceneNode;

    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->addSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 162
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/SceneNode;->setRenderOrder(I)V

    .line 163
    return-void
.end method

.method public cacheSpecialSpecialSpacing()V
    .locals 1

    .prologue
    .line 1103
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    .line 1104
    return-void
.end method

.method public deCacheSpecialSpacing()V
    .locals 1

    .prologue
    .line 1108
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getSpacing()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    .line 1109
    return-void
.end method

.method protected detachAllItemsFromScene()V
    .locals 6

    .prologue
    .line 370
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 371
    .local v1, count:I
    if-gtz v1, :cond_1

    .line 385
    :cond_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 377
    .local v0, children:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    .line 378
    .local v3, recycler:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;>;"
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 380
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 382
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->detachFromScene(Lcom/htc/sunny2/SceneNode;)V

    .line 383
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public detachFromParent()V
    .locals 7

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachAllItemsFromScene()V

    .line 168
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mRecycler:Ljava/util/Stack;

    .line 171
    .local v3, recycler:Ljava/util/Stack;,"Ljava/util/Stack<Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;>;"
    const/4 v1, 0x0

    .line 175
    .local v1, childrenToDestroy:I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .local v0, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v0, :cond_0

    .line 177
    add-int/lit8 v1, v1, 0x1

    .line 178
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    .end local v0           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :catch_0
    move-exception v2

    .line 184
    .local v2, ex:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[detachFromParent] Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    sget-object v4, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[detachFromParent] mNewCreatedChildCount:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", childrenToDestroy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .end local v2           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mParentNode:Lcom/htc/sunny2/SceneNode;

    iget-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/SceneNode;->removeSceneNode(Lcom/htc/sunny2/SceneNode;)V

    .line 194
    iget-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v4}, Lcom/htc/sunny2/SceneNode;->release()V

    .line 195
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    .line 196
    const/4 v4, 0x0

    iput v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNewCreatedChildCount:I

    .line 197
    return-void
.end method

.method public enableChildShadow(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mEnableChildShadow:Z

    .line 121
    return-void
.end method

.method public getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 2
    .parameter "index"

    .prologue
    .line 391
    :try_start_0
    iget-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildren:[Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    :goto_0
    return-object v1

    .line 393
    :catch_0
    move-exception v0

    .line 395
    .local v0, ex:Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getClickedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    return-object v0
.end method

.method public getClickedItemPosition()I
    .locals 1

    .prologue
    .line 406
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 1068
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    return v0
.end method

.method public getGalleryRight()I
    .locals 1

    .prologue
    .line 1093
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    return v0
.end method

.method public getLastVisiblePosition()I
    .locals 1

    .prologue
    .line 1073
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    return v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 7
    .parameter "motionToLeft"
    .parameter "deltaX"

    .prologue
    const/4 v5, 0x0

    .line 683
    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->FLAG_GALLERY_BOUNCE:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mCloseOverbound:Z

    if-nez v6, :cond_6

    .line 685
    if-eqz p1, :cond_1

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 686
    .local v3, extremeItemPosition:I
    :goto_0
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 688
    .local v1, extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v1, :cond_2

    move v5, p2

    .line 764
    :cond_0
    :goto_1
    return v5

    .end local v1           #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v3           #extremeItemPosition:I
    :cond_1
    move v3, v5

    .line 685
    goto :goto_0

    .line 694
    .restart local v1       #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .restart local v3       #extremeItemPosition:I
    :cond_2
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    .line 697
    .local v2, extremeChildCenter:I
    const/4 v4, 0x0

    .line 698
    .local v4, galleryCenter:I
    if-eqz p1, :cond_4

    .line 700
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    sub-int v0, v6, v2

    .line 701
    .local v0, centerDifference:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    sub-int v6, v4, v6

    if-le v2, v6, :cond_0

    .line 706
    if-gt v2, v4, :cond_3

    .line 708
    div-int/lit8 p2, p2, 0x2

    .line 710
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 714
    .end local v0           #centerDifference:I
    :cond_4
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    sub-int v0, v6, v2

    .line 715
    .restart local v0       #centerDifference:I
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mMaxScrollOverhead:I

    add-int/2addr v6, v4

    if-ge v2, v6, :cond_0

    .line 720
    if-lt v2, v4, :cond_5

    .line 722
    div-int/lit8 p2, p2, 0x2

    .line 724
    :cond_5
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 729
    .end local v0           #centerDifference:I
    .end local v1           #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v2           #extremeChildCenter:I
    .end local v3           #extremeItemPosition:I
    .end local v4           #galleryCenter:I
    :cond_6
    if-eqz p1, :cond_7

    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 730
    .restart local v3       #extremeItemPosition:I
    :goto_2
    iget v6, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 732
    .restart local v1       #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v1, :cond_8

    move v5, p2

    .line 734
    goto :goto_1

    .end local v1           #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .end local v3           #extremeItemPosition:I
    :cond_7
    move v3, v5

    .line 729
    goto :goto_2

    .line 738
    .restart local v1       #extremeChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .restart local v3       #extremeItemPosition:I
    :cond_8
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    .line 741
    .restart local v2       #extremeChildCenter:I
    const/4 v4, 0x0

    .line 743
    .restart local v4       #galleryCenter:I
    if-eqz p1, :cond_a

    .line 745
    if-le v2, v4, :cond_0

    .line 762
    :cond_9
    sub-int v0, v4, v2

    .line 764
    .restart local v0       #centerDifference:I
    if-eqz p1, :cond_b

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 754
    .end local v0           #centerDifference:I
    :cond_a
    if-lt v2, v4, :cond_9

    goto :goto_1

    .line 764
    .restart local v0       #centerDifference:I
    :cond_b
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1
.end method

.method public getSceneNode()Lcom/htc/sunny2/SceneNode;
    .locals 1

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    return-object v0
.end method

.method public getSelectedItem()Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    .locals 2

    .prologue
    .line 1083
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    return v0
.end method

.method public getSelection()I
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    return v0
.end method

.method public getSpacing()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    return v0
.end method

.method public getStartAnimationChildIndex()I
    .locals 1

    .prologue
    .line 1118
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    return v0
.end method

.method public initSpecialSpacingLayout()V
    .locals 1

    .prologue
    .line 1200
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->initSpecialSpacingLayout(Z)V

    .line 1201
    return-void
.end method

.method public initSpecialSpacingLayout(Z)V
    .locals 6
    .parameter "alignCeneter"

    .prologue
    .line 1205
    const/4 v2, 0x0

    .line 1206
    .local v2, xCenter:I
    if-nez p1, :cond_0

    .line 1207
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 1208
    .local v1, selectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v1, :cond_0

    .line 1209
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getItemCenter()I

    move-result v2

    .line 1212
    .end local v1           #selectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachAllItemsFromScene()V

    .line 1214
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    if-ltz v3, :cond_1

    .line 1216
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    invoke-direct {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectedPositionInt(I)V

    .line 1219
    :cond_1
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 1220
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 1222
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, v2, v5}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1224
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v0, :cond_2

    .line 1235
    :goto_0
    return-void

    .line 1227
    :cond_2
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 1229
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryRight()V

    .line 1230
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryLeft()V

    .line 1232
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    .line 1234
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    goto :goto_0
.end method

.method public notifyMediaDataChangeIRTLock(I)V
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 1123
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1124
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v0, :cond_1

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    const/4 v1, 0x0

    .line 1129
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v2, :cond_0

    .line 1133
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1134
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    .line 1135
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunny2/IMediaData;)V

    .line 1136
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaTexture(I)Lcom/htc/sunny2/Texture;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setItemTexture(ILcom/htc/sunny2/Texture;)V

    goto :goto_0
.end method

.method public onHitTestDown(II)V
    .locals 2
    .parameter "downX"
    .parameter "downY"

    .prologue
    .line 234
    invoke-virtual {p0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    .line 236
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    if-ltz v0, :cond_0

    .line 238
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    goto :goto_0
.end method

.method public onHitTestUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 264
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 267
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v2, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->scrollToChild(IZZ)Z

    .line 270
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDownTouchPosition:I

    invoke-virtual {p0, v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->performItemClick(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)Z

    .line 277
    :cond_1
    return-void
.end method

.method public declared-synchronized onLayout(II)V
    .locals 5
    .parameter "width"
    .parameter "height"

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachAllItemsFromScene()V

    .line 204
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    if-ltz v1, :cond_0

    .line 206
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    invoke-direct {p0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectedPositionInt(I)V

    .line 209
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryY:I

    .line 210
    div-int/lit8 v1, p1, 0x2

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    .line 211
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryRight:I

    neg-int v1, v1

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mGalleryLeft:I

    .line 213
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    .line 214
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mLastPosition:I

    .line 216
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->makeAndAddItem(IIIZ)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 218
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v0, :cond_1

    .line 230
    :goto_0
    monitor-exit p0

    return-void

    .line 221
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getXCenterOffset()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    .line 223
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryRight()V

    .line 224
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryLeft()V

    .line 226
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    .line 227
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedChild:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    .line 229
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->performItemSelected()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 201
    .end local v0           #item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onMediaItemRefreshIRT(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1159
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1160
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v0, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    invoke-virtual {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    .line 1165
    const/4 v1, 0x0

    .line 1166
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v2, :cond_0

    .line 1170
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1171
    if-eqz v1, :cond_0

    .line 1175
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunny2/IMediaData;)V

    goto :goto_0
.end method

.method public onMediaItemRefreshSizeIRT(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 1180
    invoke-virtual {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1181
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-nez v0, :cond_1

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1186
    :cond_1
    const/4 v1, 0x0

    .line 1187
    .local v1, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v2, :cond_0

    .line 1191
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    .line 1192
    if-eqz v1, :cond_0

    .line 1196
    invoke-virtual {v0, v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunny2/IMediaData;)V

    goto :goto_0
.end method

.method public performItemClick(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)Z
    .locals 1
    .parameter "item"
    .parameter "position"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    invoke-interface {v0, p1, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;->onItemClick(Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;I)V

    .line 294
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pointToPosition(II)I
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    .line 346
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mTouchFrame:Landroid/graphics/Rect;

    .line 347
    .local v3, frame:Landroid/graphics/Rect;
    if-nez v3, :cond_0

    .line 349
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mTouchFrame:Landroid/graphics/Rect;

    .line 350
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mTouchFrame:Landroid/graphics/Rect;

    .line 353
    :cond_0
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 354
    .local v2, count:I
    add-int/lit8 v4, v2, -0x1

    .local v4, i:I
    :goto_0
    if-ltz v4, :cond_3

    .line 356
    invoke-virtual {p0, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 357
    .local v1, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getTop()I

    move-result v6

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v7

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getBottom()I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 358
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getLeft()I

    move-result v5

    if-gt v5, p1, :cond_1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getRight()I

    move-result v5

    if-ge p1, v5, :cond_1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getBottom()I

    move-result v5

    if-gt v5, p2, :cond_1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->getTop()I

    move-result v5

    if-ge p2, v5, :cond_1

    const/4 v0, 0x1

    .line 360
    .local v0, bHit:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 362
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    add-int/2addr v5, v4

    .line 365
    .end local v0           #bHit:Z
    .end local v1           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :goto_2
    return v5

    .line 358
    .restart local v1       #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 354
    .restart local v0       #bHit:Z
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 365
    .end local v0           #bHit:Z
    .end local v1           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_3
    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    goto :goto_2
.end method

.method public rebindVisibleItems()V
    .locals 4

    .prologue
    .line 1141
    const/4 v1, 0x0

    .line 1143
    .local v1, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    if-ge v0, v3, :cond_0

    .line 1145
    invoke-virtual {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 1146
    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->unbindData()V

    .line 1147
    const/4 v2, 0x0

    .line 1148
    .local v2, mediaData:Lcom/htc/sunny2/IMediaData;
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-nez v3, :cond_1

    .line 1155
    .end local v2           #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_0
    return-void

    .line 1152
    .restart local v2       #mediaData:Lcom/htc/sunny2/IMediaData;
    :cond_1
    iget-object v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v3, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v2

    .line 1153
    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->bindData(Lcom/htc/sunny2/IMediaData;)V

    .line 1143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public relayoutWithCenterSpacing(I)V
    .locals 6
    .parameter "deltaSpacing"

    .prologue
    .line 836
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    .line 837
    .local v2, count:I
    iget v4, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    iget v5, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v0, v4, v5

    .line 838
    .local v0, centerChild:I
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 840
    invoke-virtual {p0, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v1

    .line 842
    .local v1, child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-ne v0, v3, :cond_0

    .line 838
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 845
    :cond_0
    if-ge v0, v3, :cond_1

    .line 847
    invoke-virtual {v1, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 851
    :cond_1
    neg-int v4, p1

    invoke-virtual {v1, v4}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->offsetLeftAndRight(I)V

    goto :goto_1

    .line 855
    .end local v1           #child:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    :cond_2
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mShouldCallbackOnUnselectedItemClick:Z

    .line 260
    return-void
.end method

.method public setIsOnlineTagEditor(Z)V
    .locals 0
    .parameter "isOnlineTagEditor"

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mIsOnlineTagEditor:Z

    .line 138
    return-void
.end method

.method public setItemTexture(ILcom/htc/sunny2/Texture;)V
    .locals 3
    .parameter "index"
    .parameter "texture"

    .prologue
    .line 1047
    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mFirstPosition:I

    sub-int v2, p1, v2

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->getChildAt(I)Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;

    move-result-object v0

    .line 1048
    .local v0, item:Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;
    if-eqz v0, :cond_0

    .line 1050
    invoke-virtual {v0, p2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewChildItem;->setTexture(Lcom/htc/sunny2/Texture;)V

    .line 1051
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-nez v2, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v2, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaData(I)Lcom/htc/sunny2/IMediaData;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/sunny/IMediaDataGallery;

    .line 1058
    .local v1, mediaData:Lcom/htc/opensense2/album/sunny/IMediaDataGallery;
    if-eqz v1, :cond_0

    .line 1061
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->initSpecialSpacingLayout(Z)V

    goto :goto_0
.end method

.method public setMediaDataListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 125
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    .line 127
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mDataListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;

    invoke-interface {v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$MediaDataListener;->getMediaDataCount()I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    .line 130
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mItemCount:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    .line 131
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSelectedPosition:I

    iput v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I

    .line 133
    :cond_0
    return-void

    .line 130
    :cond_1
    iget v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->INVALID_POSITION:I

    goto :goto_0
.end method

.method public setSceneListener(Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneListener:Lcom/htc/sunny2/fullfilmview/FilmstripViewScene$SceneListener;

    .line 143
    return-void
.end method

.method public declared-synchronized setSelection(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 1036
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mNextSelectedPosition:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1037
    monitor-exit p0

    return-void

    .line 1036
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 147
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpacing:I

    .line 148
    return-void
.end method

.method public setSpecialSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 1098
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    .line 1099
    return-void
.end method

.method public setStartAnimationChildIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1113
    iput p1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    .line 1114
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSceneNode:Lcom/htc/sunny2/SceneNode;

    invoke-virtual {v0, p1}, Lcom/htc/sunny2/SceneNode;->setVisibility(Z)V

    .line 1032
    :goto_0
    return-void

    .line 1030
    :cond_0
    sget-object v0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][FilmstripViewScene][setVisibility]"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public trackMotionScroll(IZ)V
    .locals 4
    .parameter "deltaX"
    .parameter "doSpecialSpacing"

    .prologue
    .line 773
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mChildrenCount:I

    if-nez v1, :cond_0

    .line 820
    :goto_0
    return-void

    .line 778
    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x1

    .line 791
    .local v0, toLeft:Z
    :goto_1
    if-eqz p2, :cond_2

    .line 793
    iget v1, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mStartAnimationChildIndex:I

    iget v2, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacing:I

    iget v3, p0, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->mSpecialSpacingPrev:I

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->offsetSpecialChildrenLeftAndRight(IIII)V

    .line 800
    :goto_2
    invoke-direct {p0, v0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->detachOffScreenChildren(Z)V

    .line 802
    if-eqz v0, :cond_3

    .line 805
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryRight()V

    .line 816
    :goto_3
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->setSelectionToCenterChild()V

    .line 818
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->performItemSelected()V

    goto :goto_0

    .line 778
    .end local v0           #toLeft:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 797
    .restart local v0       #toLeft:Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->offsetChildrenLeftAndRight(I)V

    goto :goto_2

    .line 810
    :cond_3
    invoke-direct {p0}, Lcom/htc/sunny2/fullfilmview/FilmstripViewScene;->fillToGalleryLeft()V

    goto :goto_3
.end method
