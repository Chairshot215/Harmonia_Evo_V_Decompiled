.class public Lcom/htc/sunny2/widget/gridview/GridViewScroller;
.super Ljava/lang/Object;
.source "GridViewScroller.java"

# interfaces
.implements Lcom/htc/sunny2/view/IViewScroller;


# static fields
.field private static final DISTANCE_TO_GO_BUFFER_1:I = 0x64

.field private static final DISTANCE_TO_GO_BUFFER_2:I = 0x12c

.field private static final DURATION_CUT_1:D = 0.1

.field private static final DURATION_CUT_2:D = 0.2

.field private static final DURATION_CUT_3:D = 0.3


# instance fields
.field private MAX_VELOCITY:F

.field private final SCROLLER_DEBUG_FLAG:Z

.field private TAG:Ljava/lang/String;

.field private currentFlingingDuration:J

.field private currentFlingingTimePassed:J

.field private currentFlingingTotalDistance:I

.field private currentFlingingTravelledDistance:I

.field private currentMovedDistance:I

.field private deceleration:F

.field private deviceFPS:I

.field private initialVelocity:F

.field private final isOnBorderThreshold:I

.field private isOnBouncingBack:Z

.field private isStartPanningOnButtomBorder:Z

.field private isStartPanningOnTopBorder:Z

.field private itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

.field private item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

.field private lastPositionDifference:I

.field private mBouncingDuration:I

.field private mOutRatioY:F

.field private panAnimationFramesCount:I

.field private panTargetDistance:I

.field private ppi:F

.field private final ppiBaseInPyramid:F

.field private relativeMovement:I

.field private status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

.field private touchDownInitialPosition:I


# direct methods
.method public constructor <init>()V
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x4370

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    iput-wide v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    iput-wide v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deviceFPS:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBorderThreshold:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mBouncingDuration:I

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mOutRatioY:F

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->SCROLLER_DEBUG_FLAG:Z

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->ppiBaseInPyramid:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->ppi:F

    const/high16 v0, 0x44fa

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->ppi:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v3

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->MAX_VELOCITY:F

    const v0, 0x43c0e9ba

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->ppi:F

    mul-float/2addr v0, v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deceleration:F

    return-void
.end method

.method private checkStartPanningOnBorder()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_2

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    :cond_2
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getBottomBouncePosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-lt v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    goto :goto_0
.end method

.method private easeFunction(FFF)F
    .locals 10

    div-float/2addr p1, p3

    mul-float v1, p1, p1

    mul-float v0, v1, p1

    float-to-double v2, p2

    const-wide v4, -0x3ffd333333333333L

    float-to-double v6, v0

    mul-double/2addr v4, v6

    float-to-double v6, v1

    mul-double/2addr v4, v6

    const-wide v6, 0x4018f5c28f5c28f6L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    float-to-double v8, v1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x4013147ae147ae14L

    float-to-double v8, v0

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x3feae147ae147ae1L

    float-to-double v8, v1

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x4005c28f5c28f5c3L

    float-to-double v8, p1

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method private getBoundaryDuration(II)I
    .locals 5

    move v0, p1

    const/16 v1, 0x64

    if-lt v1, p2, :cond_0

    int-to-double v1, v0

    const-wide v3, 0x3fb999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x12c

    if-lt v1, p2, :cond_1

    int-to-double v1, v0

    const-wide v3, 0x3fc999999999999aL

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0

    :cond_1
    int-to-double v1, v0

    const-wide v3, 0x3fd3333333333333L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    goto :goto_0
.end method

.method private limitedMovement(I)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_1

    if-gez p1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_3

    if-lez p1, :cond_3

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    if-eqz v0, :cond_4

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-gt v0, v1, :cond_6

    if-ltz p1, :cond_5

    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    neg-int v0, v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v1

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getBottomBouncePosition()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    if-lt v0, v1, :cond_8

    if-gtz p1, :cond_7

    mul-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getBottomBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    iput v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto/16 :goto_0

    :cond_8
    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    goto/16 :goto_0
.end method


# virtual methods
.method public deInit()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    return-void
.end method

.method public flingByDistance(I)V
    .locals 4

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mBouncingDuration:I

    move v0, p1

    invoke-direct {p0, v1, v0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getBoundaryDuration(II)I

    move-result v1

    sget-object v2, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    int-to-float v2, v0

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    return-void
.end method

.method public getItemAlignMode()Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    return-object v0
.end method

.method public getRelativeMovement()I
    .locals 1

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    return v0
.end method

.method public getStatus()Lcom/htc/sunny2/view/IViewScroller$STATUS;
    .locals 1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    return-object v0
.end method

.method public init(Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] item_align_mode is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deInit()V

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->item_align_mode:Lcom/htc/sunny2/view/IViewScroller$ITEM_ALIGN_MODE;

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->TAG:Ljava/lang/String;

    const-string v2, "[TestGridViewScroller][init] itemInfoGetter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deInit()V

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isStartPanningOnButtomBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    return v0
.end method

.method public isStartPanningOnTopBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    return v0
.end method

.method public onFling(F)V
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v0, :cond_0

    cmpg-float v0, p1, v1

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v0, :cond_2

    cmpl-float v0, p1, v1

    if-lez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->MAX_VELOCITY:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    const/high16 v0, 0x447a

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deceleration:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x4000

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deceleration:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    goto :goto_0
.end method

.method public onTouchDown(I)V
    .locals 1

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->checkStartPanningOnBorder()V

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->reset()V

    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput p1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    return-void
.end method

.method public onTouchMove(I)V
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v1

    if-lez p1, :cond_4

    const/4 p1, 0x0

    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-nez v2, :cond_2

    :cond_1
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-lez v2, :cond_5

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnTopBorder:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-gez v2, :cond_6

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    div-int/lit8 v0, v2, 0x2

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v2

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mOutRatioY:F

    :goto_2
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    if-eq v0, v2, :cond_3

    iput v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    :cond_3
    return-void

    :cond_4
    neg-int v2, v1

    if-ge p1, v2, :cond_0

    neg-int p1, v1

    goto :goto_0

    :cond_5
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-gez v2, :cond_2

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isStartPanningOnButtomBorder:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v3

    if-ne v2, v3, :cond_7

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    if-lez v2, :cond_7

    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v2, p1, v2

    div-int/lit8 v0, v2, 0x2

    const/high16 v2, 0x3f80

    iget-object v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v3}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v3

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    iget-object v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v5}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v4}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v4

    div-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mOutRatioY:F

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    sub-int v0, p1, v2

    const/4 v2, 0x0

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mOutRatioY:F

    goto :goto_2
.end method

.method public onTouchUp(I)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemIndex()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getFirstVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getTopBouncePosition()I

    move-result v1

    neg-int v1, v1

    if-ge v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemCount()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v0}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemOffset()I

    move-result v0

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    iget-object v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getLastVisibleItemIndex()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getItemLength(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getViewPortLength()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->itemInfoGetter:Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;

    invoke-interface {v1}, Lcom/htc/sunny2/view/IViewScroller$ItemInfoGetter;->getBottomBouncePosition()I

    move-result v1

    sub-int/2addr v0, v1

    if-lez v0, :cond_1

    iput-boolean v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    sget-object v0, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    iput-wide v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    iput-wide v3, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->touchDownInitialPosition:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    iput-boolean v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    iput v2, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->mOutRatioY:F

    invoke-direct {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->checkStartPanningOnBorder()V

    return-void
.end method

.method public update()V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_1

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->PANNING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_4

    const/4 v1, 0x0

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    if-nez v4, :cond_3

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    sub-int v1, v4, v5

    :cond_2
    :goto_1
    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->limitedMovement(I)V

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    invoke-virtual {p0}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->getRelativeMovement()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panTargetDistance:I

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentMovedDistance:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    div-int v1, v4, v5

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->panAnimationFramesCount:I

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    sget-object v5, Lcom/htc/sunny2/view/IViewScroller$STATUS;->FLINGING:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    if-ne v4, v5, :cond_0

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->deviceFPS:I

    div-int/2addr v4, v5

    int-to-long v2, v4

    iget-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    iget v0, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    iget-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    long-to-float v4, v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    int-to-float v5, v5

    iget-wide v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    long-to-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->easeFunction(FFF)F

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v5}, Ljava/lang/Math;->signum(F)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    sub-int v1, v4, v0

    if-lez v1, :cond_9

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-lez v4, :cond_9

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-le v1, v4, :cond_5

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    :cond_5
    :goto_2
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-nez v4, :cond_6

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_6

    iput v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    :cond_6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_7

    iget-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    iget-wide v6, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingDuration:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_a

    :cond_7
    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    int-to-float v4, v4

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    sub-int v1, v4, v0

    :cond_8
    :goto_3
    invoke-direct {p0, v1}, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->limitedMovement(I)V

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->relativeMovement:I

    if-nez v4, :cond_0

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTimePassed:J

    iput v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    sget-object v4, Lcom/htc/sunny2/view/IViewScroller$STATUS;->STOPPED:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-object v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->status:Lcom/htc/sunny2/view/IViewScroller$STATUS;

    iput-boolean v8, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->isOnBouncingBack:Z

    goto/16 :goto_0

    :cond_9
    if-gez v1, :cond_5

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-gez v4, :cond_5

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    if-ge v1, v4, :cond_5

    iget v1, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->lastPositionDifference:I

    goto :goto_2

    :cond_a
    if-nez v1, :cond_8

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTotalDistance:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-eq v4, v5, :cond_8

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->initialVelocity:F

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v1, v4

    iget v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/htc/sunny2/widget/gridview/GridViewScroller;->currentFlingingTravelledDistance:I

    goto :goto_3
.end method
