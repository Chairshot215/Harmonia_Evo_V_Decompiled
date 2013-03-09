.class public abstract Lcom/google/android/maps/ItemizedOverlay;
.super Lcom/google/android/maps/Overlay;
.source "ItemizedOverlay.java"

# interfaces
.implements Lcom/google/android/maps/Overlay$Snappable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Item:",
        "Lcom/google/android/maps/OverlayItem;",
        ">",
        "Lcom/google/android/maps/Overlay;",
        "Lcom/google/android/maps/Overlay$Snappable;"
    }
.end annotation


# static fields
.field private static final MINIMUM_TOUCH_DIAMETER:I


# instance fields
.field private final mBalloon:Landroid/graphics/drawable/Drawable;

.field private mCurrentlyPressedItemRank:I

.field private mCurrentlySelectedItemRank:I

.field private mDrawFocusedItem:Z

.field private mFocused:Lcom/google/android/maps/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TItem;"
        }
    .end annotation
.end field

.field private mInGestureMask:I

.field private mItemState:[I

.field private mItemsOrderedByRank:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TItem;>;"
        }
    .end annotation
.end field

.field protected mLastFocusedIndex:I

.field private mLastSelectedItemRank:I

.field private mLatSpanE6:I

.field private mLonSpanE6:I

.field private mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

.field private mRanksOrderedByLat:[I

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTouchableBounds:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    sput v0, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/maps/Overlay;-><init>()V

    iput-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    iput-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    iput v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastSelectedItemRank:I

    iput-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    iput v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mTouchableBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iput-object p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mBalloon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected static boundCenter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    neg-int v4, v2

    neg-int v5, v0

    sub-int v6, v3, v2

    sub-int v7, v1, v0

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0
.end method

.method protected static boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    neg-int v3, v1

    rsub-int/lit8 v4, v0, 0x1

    sub-int v5, v2, v1

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-object p0
.end method

.method private drawItem(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZI)V
    .locals 5

    invoke-virtual {p0, p4}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    invoke-direct {p0, v0, p4}, Lcom/google/android/maps/ItemizedOverlay;->getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v2, v3, v4}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-static {p1, v1, v2, v3, p3}, Lcom/google/android/maps/ItemizedOverlay;->drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    return-void
.end method

.method private focus(I)V
    .locals 2

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/maps/ItemizedOverlay;->setFocus(ILcom/google/android/maps/OverlayItem;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;I)",
            "Landroid/graphics/drawable/Drawable;"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    aget v1, v2, p2

    invoke-virtual {p1, v1}, Lcom/google/android/maps/OverlayItem;->getMarker(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mBalloon:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/android/maps/OverlayItem;->setState(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-object v0
.end method

.method private getItemAtLocation(IILcom/google/android/maps/MapView;)I
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/ItemizedOverlay;->getItemsAtLocation(IILcom/google/android/maps/MapView;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, -0x1

    const v0, 0x7fffffff

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {p3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v5, v6, v7}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v5, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v5, p1, v5

    iget-object v6, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, p2, v6

    invoke-direct {p0, v0, v3}, Lcom/google/android/maps/ItemizedOverlay;->getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->getTouchableBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    sub-int v5, v7, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    sub-int/2addr v0, v6

    mul-int/2addr v5, v5

    mul-int/2addr v0, v0

    add-int/2addr v0, v5

    if-ge v0, v1, :cond_1

    move v1, v3

    :goto_1
    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastSelectedItemRank:I

    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastSelectedItemRank:I

    return v0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_1
.end method

.method private getItemsAtLocation(IILcom/google/android/maps/MapView;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/maps/MapView;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    array-length v5, v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget v9, v10, v1

    iget-object v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    aget v3, v11, v9

    iget-boolean v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    if-nez v11, :cond_0

    and-int/lit8 v11, v3, 0x4

    if-nez v11, :cond_1

    :cond_0
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/maps/OverlayItem;

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v12

    iget-object v13, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v11, v12, v13}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    sub-int v7, p1, v11

    iget-object v11, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int v8, p2, v11

    invoke-direct {p0, v2, v9}, Lcom/google/android/maps/ItemizedOverlay;->getDrawable(Lcom/google/android/maps/OverlayItem;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {p0, v2, v6, v7, v8}, Lcom/google/android/maps/ItemizedOverlay;->hitTest(Lcom/google/android/maps/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getTouchableBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    if-lt v7, v8, :cond_0

    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    if-lt v2, v8, :cond_0

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    div-int/lit8 v8, v6, 0x2

    sub-int v4, v0, v8

    sget v8, Lcom/google/android/maps/ItemizedOverlay;->MINIMUM_TOUCH_DIAMETER:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    div-int/lit8 v8, v3, 0x2

    sub-int v5, v1, v8

    iget-object v8, p0, Lcom/google/android/maps/ItemizedOverlay;->mTouchableBounds:Landroid/graphics/Rect;

    add-int v9, v4, v6

    add-int v10, v5, v3

    invoke-virtual {v8, v4, v5, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mTouchableBounds:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method private handleMotionEvent(ZILandroid/view/MotionEvent;Lcom/google/android/maps/MapView;II)Z
    .locals 9

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_4

    :cond_0
    const/4 v5, 0x1

    :goto_1
    invoke-direct {p0, p5, p6, p4}, Lcom/google/android/maps/ItemizedOverlay;->getItemAtLocation(IILcom/google/android/maps/MapView;)I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-eqz p1, :cond_6

    move v6, v1

    :goto_3
    invoke-direct {p0, v6}, Lcom/google/android/maps/ItemizedOverlay;->select(I)V

    if-eqz v4, :cond_1

    if-eqz v2, :cond_7

    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    or-int/2addr v7, p2

    iput v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    :cond_1
    :goto_4
    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    and-int/2addr v7, p2

    if-eqz v7, :cond_8

    const/4 v3, 0x1

    :goto_5
    if-eqz v3, :cond_2

    if-eqz v5, :cond_9

    invoke-direct {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->press(I)V

    :cond_2
    :goto_6
    if-eqz v3, :cond_a

    const/4 v7, 0x2

    if-eq p2, v7, :cond_a

    const/4 v7, 0x1

    :goto_7
    return v7

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    const/4 v6, -0x1

    goto :goto_3

    :cond_7
    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    xor-int/lit8 v8, p2, -0x1

    and-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    const/4 v7, 0x1

    if-ne v0, v7, :cond_2

    const/4 v7, -0x1

    invoke-direct {p0, v7}, Lcom/google/android/maps/ItemizedOverlay;->press(I)V

    iget v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    xor-int/lit8 v8, p2, -0x1

    and-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    const/4 v7, 0x2

    if-eq p2, v7, :cond_2

    invoke-virtual {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    goto :goto_6

    :cond_a
    const/4 v7, 0x0

    goto :goto_7
.end method

.method private maskHelper(III)I
    .locals 4

    const/4 v3, -0x1

    if-eq p1, p2, :cond_1

    if-eq p1, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    aget v1, v0, p1

    xor-int/lit8 v2, p3, -0x1

    and-int/2addr v1, v2

    aput v1, v0, p1

    :cond_0
    if-eq p2, v3, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    aget v1, v0, p2

    or-int/2addr v1, p3

    aput v1, v0, p2

    :cond_1
    return p2
.end method

.method private press(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlyPressedItemRank:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/maps/ItemizedOverlay;->maskHelper(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlyPressedItemRank:I

    return-void
.end method

.method private select(I)V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlySelectedItemRank:I

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/maps/ItemizedOverlay;->maskHelper(III)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlySelectedItemRank:I

    return-void
.end method

.method private setFocus(ILcom/google/android/maps/OverlayItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITItem;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    if-eq v1, p2, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    const/4 v2, 0x4

    invoke-direct {p0, v1, p1, v2}, Lcom/google/android/maps/ItemizedOverlay;->maskHelper(III)I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    :cond_0
    iput-object p2, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

    invoke-interface {v1, p0, p2}, Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;->onFocusChanged(Lcom/google/android/maps/ItemizedOverlay;Lcom/google/android/maps/OverlayItem;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract createItem(I)Lcom/google/android/maps/OverlayItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/google/android/maps/ItemizedOverlay;->size()I

    move-result v5

    const/4 v0, -0x1

    const/4 v3, 0x4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->getIndexToDraw(I)I

    move-result v4

    iget-object v6, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    aget v2, v6, v4

    and-int/lit8 v6, v2, 0x4

    if-nez v6, :cond_0

    invoke-direct {p0, p1, p2, p3, v4}, Lcom/google/android/maps/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZI)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_1

    :cond_1
    iget-boolean v6, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    if-eqz v6, :cond_2

    if-ltz v0, :cond_2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/maps/ItemizedOverlay;->drawItem(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;ZI)V

    :cond_2
    return-void
.end method

.method public getCenter()Lcom/google/android/maps/GeoPoint;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFocus()Lcom/google/android/maps/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mFocused:Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method protected getIndexToDraw(I)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TItem;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public final getLastFocusedIndex()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    return v0
.end method

.method public getLatSpanE6()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLatSpanE6:I

    return v0
.end method

.method public getLonSpanE6()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLonSpanE6:I

    return v0
.end method

.method protected hitTest(Lcom/google/android/maps/OverlayItem;Landroid/graphics/drawable/Drawable;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;",
            "Landroid/graphics/drawable/Drawable;",
            "II)Z"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/maps/ItemizedOverlay;->getTouchableBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method public nextFocus(Z)Lcom/google/android/maps/OverlayItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TItem;"
        }
    .end annotation

    iget v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->getItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z
    .locals 1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/Overlay;->onKeyUp(ILandroid/view/KeyEvent;Lcom/google/android/maps/MapView;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/google/android/maps/ItemizedOverlay;->getFocus()Lcom/google/android/maps/OverlayItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onSnapToItem(IILandroid/graphics/Point;Lcom/google/android/maps/MapView;)Z
    .locals 4

    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/maps/ItemizedOverlay;->getItemAtLocation(IILcom/google/android/maps/MapView;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {p4}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected onTap(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTap(Lcom/google/android/maps/GeoPoint;Lcom/google/android/maps/MapView;)Z
    .locals 5

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getProjection()Lcom/google/android/maps/Projection;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    invoke-interface {v3, p1, v4}, Lcom/google/android/maps/Projection;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    iget-object v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/google/android/maps/ItemizedOverlay;->mTempPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v3, v4, p2}, Lcom/google/android/maps/ItemizedOverlay;->getItemAtLocation(IILcom/google/android/maps/MapView;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    move-result v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;->focus(I)V

    move v2, v0

    invoke-direct {p0, v2}, Lcom/google/android/maps/ItemizedOverlay;->select(I)V

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v5, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v6, v0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/ItemizedOverlay;->handleMotionEvent(ZILandroid/view/MotionEvent;Lcom/google/android/maps/MapView;II)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lcom/google/android/maps/MapView;)Z
    .locals 7

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    invoke-virtual {p2}, Lcom/google/android/maps/MapView;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/maps/ItemizedOverlay;->handleMotionEvent(ZILandroid/view/MotionEvent;Lcom/google/android/maps/MapView;II)Z

    move-result v0

    return v0
.end method

.method protected final populate()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/ItemizedOverlay;->size()I

    move-result v12

    const v8, 0x55d4a80

    const v6, -0x55d4a80

    const v9, 0xaba9500

    const v7, -0xaba9500

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v12}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v12, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/ItemizedOverlay;->createItem(I)Lcom/google/android/maps/OverlayItem;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v15

    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v10}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v15

    invoke-static {v6, v15}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v10}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v15

    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v10}, Lcom/google/android/maps/GeoPoint;->getLongitudeE6()I

    move-result v15

    invoke-static {v7, v15}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int v15, v6, v8

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mLatSpanE6:I

    sub-int v15, v7, v9

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mLonSpanE6:I

    new-array v11, v12, [I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v12, :cond_4

    move v2, v1

    const/4 v5, 0x0

    :goto_2
    if-gt v5, v1, :cond_3

    aget v15, v11, v5

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/maps/OverlayItem;

    if-eq v5, v1, :cond_1

    invoke-virtual {v13}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v16

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/maps/OverlayItem;

    invoke-virtual {v15}, Lcom/google/android/maps/OverlayItem;->getPoint()Lcom/google/android/maps/GeoPoint;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/android/maps/GeoPoint;->getLatitudeE6()I

    move-result v15

    move/from16 v0, v16

    if-ge v0, v15, :cond_2

    :cond_1
    aget v14, v11, v5

    aput v2, v11, v5

    move v2, v14

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/google/android/maps/ItemizedOverlay;->mRanksOrderedByLat:[I

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    new-array v15, v12, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mItemState:[I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlySelectedItemRank:I

    const/4 v15, -0x1

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mCurrentlyPressedItemRank:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/google/android/maps/ItemizedOverlay;->mInGestureMask:I

    return-void
.end method

.method public setDrawFocusedItem(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mDrawFocusedItem:Z

    return-void
.end method

.method public setFocus(Lcom/google/android/maps/OverlayItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TItem;)V"
        }
    .end annotation

    if-nez p1, :cond_1

    iget v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/google/android/maps/ItemizedOverlay;->setFocus(ILcom/google/android/maps/OverlayItem;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/ItemizedOverlay;->mItemsOrderedByRank:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    if-ne v0, p1, :cond_2

    invoke-direct {p0, v2, v0}, Lcom/google/android/maps/ItemizedOverlay;->setFocus(ILcom/google/android/maps/OverlayItem;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected setLastFocusedIndex(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mLastFocusedIndex:I

    return-void
.end method

.method public setOnFocusChangeListener(Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/ItemizedOverlay;->mOnFocusChangeListener:Lcom/google/android/maps/ItemizedOverlay$OnFocusChangeListener;

    return-void
.end method

.method public abstract size()I
.end method
