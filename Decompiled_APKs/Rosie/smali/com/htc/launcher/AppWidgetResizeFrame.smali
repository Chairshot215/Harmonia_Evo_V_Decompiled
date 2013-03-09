.class public Lcom/htc/launcher/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = null

.field public static final TOP:I = 0x1


# instance fields
.field final BACKGROUND_PADDING:I

.field final BORDER_ACTIVE_PADDING:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBorderActiveWidth:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mCellLayout:Lcom/htc/launcher/CellLayout;

.field private mDeltaX:I

.field private mDeltaY:I

.field private mExpandability:[I

.field private mItemInfo:Lcom/htc/launcher/ItemInfo;

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private final mOriginalCellX:I

.field private final mOriginalCellY:I

.field private final mOriginalHSpan:I

.field private final mOriginalVSpan:I

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTouchTargetWidth:I

.field private mWidgetView:Lcom/htc/launcher/LauncherAppWidgetHostView;

.field private mWrapper:Lcom/htc/launcher/LegacyLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Lcom/htc/launcher/AppWidgetResizeFrame;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/launcher/AppWidgetResizeFrame;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;Lcom/htc/launcher/LauncherAppWidgetHostView;Lcom/htc/launcher/CellLayout;)V
    .locals 11
    .parameter "context"
    .parameter "itemInfo"
    .parameter "widgetView"
    .parameter "cellLayout"

    .prologue
    const v10, 0x7f0200b1

    const v9, 0x7f0200b0

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, -0x2

    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    .line 52
    const/16 v5, 0x96

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->SNAP_DURATION:I

    .line 53
    const/16 v5, 0x10

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    .line 54
    const/16 v5, 0x40

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->BORDER_ACTIVE_PADDING:I

    .line 55
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    .line 56
    const/high16 v5, 0x3f00

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    .line 73
    iput-object p1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mContext:Landroid/content/Context;

    .line 74
    iput-object p2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mItemInfo:Lcom/htc/launcher/ItemInfo;

    .line 75
    iput-object p4, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    .line 76
    iput-object p3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/htc/launcher/LauncherAppWidgetHostView;

    .line 77
    invoke-virtual {p3}, Lcom/htc/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    iget v5, v5, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mResizeMode:I

    .line 79
    invoke-virtual {p3}, Lcom/htc/launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 80
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mContext:Landroid/content/Context;

    check-cast v5, Lcom/htc/launcher/Launcher;

    invoke-virtual {v5, v2}, Lcom/htc/launcher/Launcher;->getMinResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v4

    .line 81
    .local v4, result:[I
    const/4 v5, 0x0

    aget v5, v4, v5

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    .line 82
    aget v5, v4, v8

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    .line 84
    invoke-direct {p0, v8}, Lcom/htc/launcher/AppWidgetResizeFrame;->setBackgroundOutline(Z)V

    .line 87
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 88
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x13

    invoke-direct {v3, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 91
    .local v3, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v3}, Lcom/htc/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 94
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x15

    invoke-direct {v3, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 97
    .restart local v3       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v3}, Lcom/htc/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 100
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 101
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x31

    invoke-direct {v3, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 103
    .restart local v3       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v3}, Lcom/htc/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 106
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 107
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .end local v3           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x51

    invoke-direct {v3, v6, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 109
    .restart local v3       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v5, v3}, Lcom/htc/launcher/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mResizeMode:I

    if-ne v5, v8, :cond_1

    .line 112
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->density:F

    .line 120
    .local v1, density:F
    const/high16 v5, 0x4180

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 121
    iget v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 122
    const/high16 v5, 0x4280

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBorderActiveWidth:I

    .line 124
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/htc/launcher/LauncherAppWidgetHostView;

    invoke-virtual {v5}, Lcom/htc/launcher/LauncherAppWidgetHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/LegacyLayout;

    iput-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    .line 126
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v5}, Lcom/htc/launcher/LegacyLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 127
    .local v0, clp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget v5, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalHSpan:I

    .line 128
    iget v5, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalVSpan:I

    .line 129
    iget v5, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalCellX:I

    .line 130
    iget v5, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iput v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalCellY:I

    .line 131
    return-void

    .line 114
    .end local v0           #clp:Lcom/htc/launcher/CellLayout$LayoutParams;
    .end local v1           #density:F
    :cond_1
    iget v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 115
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/htc/launcher/AppWidgetResizeFrame;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/htc/launcher/AppWidgetResizeFrame;->setBackgroundOutline(Z)V

    return-void
.end method

.method private checkValidBottomSpan(III)Z
    .locals 3
    .parameter "nOriginVSpanInc"
    .parameter "nVSpanInc"
    .parameter "nCellVSpan"

    .prologue
    const/4 v0, 0x1

    .line 427
    iget-boolean v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 433
    :cond_0
    :goto_0
    return v0

    .line 429
    :cond_1
    if-gez p1, :cond_2

    if-eq p1, p2, :cond_0

    add-int v1, p3, p1

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    if-ge v1, v2, :cond_0

    .line 431
    :cond_2
    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-gtz v1, :cond_0

    .line 433
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkValidLeftSpan(III)Z
    .locals 4
    .parameter "nOriginHSpanInc"
    .parameter "nHSpanInc"
    .parameter "nCellHSpan"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 397
    iget-boolean v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 399
    :cond_1
    if-lez p1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eq p1, v2, :cond_0

    sub-int v2, p3, p1

    iget v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    if-ge v2, v3, :cond_0

    .line 401
    :cond_2
    if-gez p1, :cond_3

    iget-object v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    aget v2, v2, v1

    if-gtz v2, :cond_0

    :cond_3
    move v0, v1

    .line 403
    goto :goto_0
.end method

.method private checkValidRightSpan(III)Z
    .locals 3
    .parameter "nOriginHSpanInc"
    .parameter "nHSpanInc"
    .parameter "nCellHSpan"

    .prologue
    const/4 v0, 0x1

    .line 407
    iget-boolean v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    if-gez p1, :cond_2

    if-eq p1, p2, :cond_0

    add-int v1, p3, p1

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    if-ge v1, v2, :cond_0

    .line 411
    :cond_2
    if-lez p1, :cond_3

    iget-object v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    if-gtz v1, :cond_0

    .line 413
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkValidTopSpan(III)Z
    .locals 3
    .parameter "nOriginVSpanInc"
    .parameter "nVSpanInc"
    .parameter "nCellVSpan"

    .prologue
    const/4 v0, 0x1

    .line 417
    iget-boolean v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v0

    .line 419
    :cond_1
    if-lez p1, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-eq p1, v1, :cond_0

    sub-int v1, p3, p1

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    if-ge v1, v2, :cond_0

    .line 421
    :cond_2
    if-gez p1, :cond_3

    iget-object v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    aget v1, v1, v0

    if-gtz v1, :cond_0

    .line 423
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeWidgetIfNeeded()V
    .locals 15

    .prologue
    .line 212
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v12}, Lcom/htc/launcher/CellLayout;->getCellWidth()I

    move-result v12

    iget-object v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v13}, Lcom/htc/launcher/CellLayout;->getWidthGap()I

    move-result v13

    add-int v10, v12, v13

    .line 213
    .local v10, xThreshold:I
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v12}, Lcom/htc/launcher/CellLayout;->getCellHeight()I

    move-result v12

    iget-object v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v13}, Lcom/htc/launcher/CellLayout;->getHeightGap()I

    move-result v13

    add-int v11, v12, v13

    .line 215
    .local v11, yThreshold:I
    const/high16 v12, 0x3f80

    iget v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v10

    div-float/2addr v12, v13

    iget v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v13, v13

    sub-float v4, v12, v13

    .line 216
    .local v4, hSpanIncF:F
    const/high16 v12, 0x3f80

    iget v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaY:I

    int-to-float v13, v13

    mul-float/2addr v12, v13

    int-to-float v13, v11

    div-float/2addr v12, v13

    iget v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v13, v13

    sub-float v9, v12, v13

    .line 218
    .local v9, vSpanIncF:F
    const/4 v3, 0x0

    .line 219
    .local v3, hSpanInc:I
    const/4 v8, 0x0

    .line 220
    .local v8, vSpanInc:I
    const/4 v1, 0x0

    .line 221
    .local v1, cellXInc:I
    const/4 v2, 0x0

    .line 223
    .local v2, cellYInc:I
    const/4 v0, 0x1

    .line 225
    .local v0, bValidResize:Z
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x3f00

    cmpl-float v12, v12, v13

    if-lez v12, :cond_0

    .line 226
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 228
    :cond_0
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v12

    const/high16 v13, 0x3f00

    cmpl-float v12, v12, v13

    if-lez v12, :cond_1

    .line 229
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 232
    :cond_1
    if-nez v3, :cond_2

    if-nez v8, :cond_2

    .line 233
    invoke-direct {p0, v0}, Lcom/htc/launcher/AppWidgetResizeFrame;->setBackgroundOutline(Z)V

    .line 297
    :goto_0
    return-void

    .line 237
    :cond_2
    move v6, v3

    .line 238
    .local v6, nOriginHSpanInc:I
    move v7, v8

    .line 242
    .local v7, nOriginVSpanInc:I
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    iget-object v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v12, v13}, Lcom/htc/launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 244
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v12}, Lcom/htc/launcher/LegacyLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 247
    .local v5, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget-boolean v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v12, :cond_9

    .line 248
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    neg-int v12, v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 249
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v12, v13

    invoke-static {v12, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 250
    mul-int/lit8 v3, v3, -0x1

    .line 251
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 252
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v12, v13

    neg-int v12, v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 253
    iget v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    sub-int/2addr v12, v3

    iput v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    .line 260
    :cond_3
    :goto_1
    iget-boolean v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v12, :cond_a

    .line 261
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    neg-int v12, v12

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 262
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v12, v13

    invoke-static {v12, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 263
    mul-int/lit8 v8, v8, -0x1

    .line 264
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 265
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v12, v13

    neg-int v12, v12

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 266
    iget v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    sub-int/2addr v12, v8

    iput v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    .line 274
    :cond_4
    :goto_2
    iget-boolean v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v12, :cond_5

    iget-boolean v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v12, :cond_6

    .line 275
    :cond_5
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v12, v3

    iput v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 276
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v12, v1

    iput v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    .line 279
    :cond_6
    iget-boolean v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v12, :cond_7

    iget-boolean v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v12, :cond_8

    .line 280
    :cond_7
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v12, v8

    iput v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 281
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    add-int/2addr v12, v2

    iput v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    .line 285
    :cond_8
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-direct {p0, v6, v3, v12}, Lcom/htc/launcher/AppWidgetResizeFrame;->checkValidLeftSpan(III)Z

    move-result v12

    and-int/2addr v0, v12

    .line 286
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-direct {p0, v6, v3, v12}, Lcom/htc/launcher/AppWidgetResizeFrame;->checkValidRightSpan(III)Z

    move-result v12

    and-int/2addr v0, v12

    .line 287
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {p0, v7, v8, v12}, Lcom/htc/launcher/AppWidgetResizeFrame;->checkValidTopSpan(III)Z

    move-result v12

    and-int/2addr v0, v12

    .line 288
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {p0, v7, v8, v12}, Lcom/htc/launcher/AppWidgetResizeFrame;->checkValidBottomSpan(III)Z

    move-result v12

    and-int/2addr v0, v12

    .line 290
    invoke-direct {p0, v0}, Lcom/htc/launcher/AppWidgetResizeFrame;->setBackgroundOutline(Z)V

    .line 293
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    iget-object v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    iget-object v14, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v12, v13, v14}, Lcom/htc/launcher/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 296
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    iget-object v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v12, v13}, Lcom/htc/launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 254
    :cond_9
    iget-boolean v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v12, :cond_3

    .line 255
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    invoke-static {v12, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 256
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinHSpan:I

    sub-int/2addr v12, v13

    neg-int v12, v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 257
    iget v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v12, v3

    iput v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_1

    .line 267
    :cond_a
    iget-boolean v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v12, :cond_4

    .line 268
    iget-object v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 269
    iget v12, v5, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    iget v13, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mMinVSpan:I

    sub-int/2addr v12, v13

    neg-int v12, v12

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 270
    iget v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v12, v8

    iput v12, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_2
.end method

.method private setBackgroundOutline(Z)V
    .locals 5
    .parameter "bValid"

    .prologue
    const/16 v4, 0x10

    .line 437
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mContext:Landroid/content/Context;

    const-string v2, "rosie_widget_resize_frame_valid"

    const v3, 0x7f0200b3

    invoke-static {v1, v2, v3}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 439
    .local v0, nResID:I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/htc/launcher/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 440
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/htc/launcher/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 441
    return-void

    .line 437
    .end local v0           #nResID:I
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mContext:Landroid/content/Context;

    const-string v2, "rosie_widget_resize_frame_invalid"

    const v3, 0x7f0200b2

    invoke-static {v1, v2, v3}, Lcom/htc/launcher/custom/CustomResourceUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    iget v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    move v1, v3

    .line 135
    .local v1, horizontalActive:Z
    :goto_0
    iget v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    move v2, v3

    .line 136
    .local v2, verticalActive:Z
    :goto_1
    iget v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBorderActiveWidth:I

    if-ge p1, v5, :cond_4

    if-eqz v1, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 137
    invoke-virtual {p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    iget v8, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBorderActiveWidth:I

    sub-int/2addr v5, v8

    if-le p1, v5, :cond_5

    if-eqz v1, :cond_5

    move v5, v3

    :goto_3
    iput-boolean v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 138
    iget v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBorderActiveWidth:I

    if-ge p2, v5, :cond_6

    if-eqz v2, :cond_6

    move v5, v3

    :goto_4
    iput-boolean v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 139
    invoke-virtual {p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getHeight()I

    move-result v5

    iget v8, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBorderActiveWidth:I

    sub-int/2addr v5, v8

    if-le p2, v5, :cond_7

    if-eqz v2, :cond_7

    move v5, v3

    :goto_5
    iput-boolean v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 141
    iget-boolean v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_8

    :cond_0
    move v0, v3

    .line 144
    .local v0, anyBordersActive:Z
    :goto_6
    invoke-virtual {p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 145
    invoke-virtual {p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 146
    invoke-virtual {p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineX:I

    .line 147
    invoke-virtual {p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getTop()I

    move-result v3

    iput v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineY:I

    .line 148
    iput v4, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningHInc:I

    .line 149
    iput v4, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRunningVInc:I

    .line 151
    if-eqz v0, :cond_1

    .line 152
    iget-object v4, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v3, :cond_9

    move v3, v6

    :goto_7
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 153
    iget-object v4, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v3, :cond_a

    move v3, v6

    :goto_8
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 154
    iget-object v4, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_b

    move v3, v6

    :goto_9
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 155
    iget-object v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v4, :cond_c

    :goto_a
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    iget-object v4, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    iget-object v5, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v3, v4, v5}, Lcom/htc/launcher/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 159
    return v0

    .end local v0           #anyBordersActive:Z
    .end local v1           #horizontalActive:Z
    .end local v2           #verticalActive:Z
    :cond_2
    move v1, v4

    .line 134
    goto/16 :goto_0

    .restart local v1       #horizontalActive:Z
    :cond_3
    move v2, v4

    .line 135
    goto/16 :goto_1

    .restart local v2       #verticalActive:Z
    :cond_4
    move v5, v4

    .line 136
    goto/16 :goto_2

    :cond_5
    move v5, v4

    .line 137
    goto/16 :goto_3

    :cond_6
    move v5, v4

    .line 138
    goto :goto_4

    :cond_7
    move v5, v4

    .line 139
    goto :goto_5

    :cond_8
    move v0, v4

    .line 141
    goto :goto_6

    .restart local v0       #anyBordersActive:Z
    :cond_9
    move v3, v7

    .line 152
    goto :goto_7

    :cond_a
    move v3, v7

    .line 153
    goto :goto_8

    :cond_b
    move v3, v7

    .line 154
    goto :goto_9

    :cond_c
    move v6, v7

    .line 155
    goto :goto_a
.end method

.method public commitResizeForDelta(II)V
    .locals 7
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 304
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 306
    iget-object v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 307
    .local v6, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mItemInfo:Lcom/htc/launcher/ItemInfo;

    iget v2, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    iget v3, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    iget v4, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static/range {v0 .. v5}, Lcom/htc/launcher/LauncherModel;->resizeItemInDatabase(Landroid/content/Context;Lcom/htc/launcher/ItemInfo;IIII)V

    .line 309
    iget-object v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/LegacyLayout;->requestLayout()V

    .line 312
    new-instance v0, Lcom/htc/launcher/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/htc/launcher/AppWidgetResizeFrame$1;-><init>(Lcom/htc/launcher/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/htc/launcher/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 317
    return-void
.end method

.method public getAppWidgetHostView()Lcom/htc/launcher/LauncherAppWidgetHostView;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/htc/launcher/LauncherAppWidgetHostView;

    return-object v0
.end method

.method public setWidgetDrawWithFx(ZLjava/lang/Runnable;)V
    .locals 3
    .parameter "drawWithFx"
    .parameter "runnable"

    .prologue
    .line 386
    sget-object v0, Lcom/htc/launcher/AppWidgetResizeFrame;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWidgetDrawWithFx: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWidgetView:Lcom/htc/launcher/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v0, p1, p2}, Lcom/htc/launcher/LegacyLayout;->setDrawWithFusion(ZLjava/lang/Runnable;)V

    .line 390
    :cond_0
    return-void
.end method

.method public sizeChanged()Z
    .locals 4

    .prologue
    .line 320
    iget-object v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    invoke-virtual {v1}, Lcom/htc/launcher/LegacyLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 321
    .local v0, clp:Lcom/htc/launcher/CellLayout$LayoutParams;
    sget-object v1, Lcom/htc/launcher/AppWidgetResizeFrame;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalHSpan:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalVSpan:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalCellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalCellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalHSpan:I

    iget v2, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalVSpan:I

    iget v2, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalCellX:I

    iget v2, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellX:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mOriginalCellY:I

    iget v2, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->cellY:I

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public snapToWidget(Z)V
    .locals 23
    .parameter "animate"

    .prologue
    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 330
    .local v6, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mWrapper:Lcom/htc/launcher/LegacyLayout;

    .line 332
    .local v5, legacyLayout:Lcom/htc/launcher/LegacyLayout;
    invoke-virtual {v5}, Lcom/htc/launcher/LegacyLayout;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v8, v18, v19

    .line 333
    .local v8, newWidth:I
    invoke-virtual {v5}, Lcom/htc/launcher/LegacyLayout;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v7, v18, v19

    .line 334
    .local v7, newHeight:I
    invoke-virtual {v5}, Lcom/htc/launcher/LegacyLayout;->getLeft()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    sub-int v9, v18, v19

    .line 335
    .local v9, newX:I
    invoke-virtual {v5}, Lcom/htc/launcher/LegacyLayout;->getTop()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    sub-int v10, v18, v19

    .line 338
    .local v10, newY:I
    if-gez v10, :cond_0

    .line 339
    neg-int v0, v10

    move/from16 v18, v0

    sub-int v7, v7, v18

    .line 340
    const/4 v10, 0x0

    .line 342
    :cond_0
    add-int v18, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/launcher/CellLayout;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 343
    add-int v18, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/launcher/CellLayout;->getHeight()I

    move-result v19

    sub-int v18, v18, v19

    sub-int v7, v7, v18

    .line 346
    :cond_1
    if-nez p1, :cond_2

    .line 347
    iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 348
    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 349
    iput v9, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    .line 350
    iput v10, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->requestLayout()V

    .line 383
    :goto_0
    return-void

    .line 357
    :cond_2
    const-string v18, "width"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v8, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 358
    .local v15, width:Landroid/animation/PropertyValuesHolder;
    const-string v18, "height"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v7, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 359
    .local v3, height:Landroid/animation/PropertyValuesHolder;
    const-string v18, "x"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 360
    .local v16, x:Landroid/animation/PropertyValuesHolder;
    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget v0, v6, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v10, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 361
    .local v17, y:Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const/16 v19, 0x1

    aput-object v3, v18, v19

    const/16 v19, 0x2

    aput-object v16, v18, v19

    const/16 v19, 0x3

    aput-object v17, v18, v19

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 362
    .local v11, oa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 363
    .local v4, leftOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 364
    .local v12, rightOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 365
    .local v14, topOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 366
    .local v2, bottomOa:Landroid/animation/ObjectAnimator;
    new-instance v18, Lcom/htc/launcher/AppWidgetResizeFrame$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/launcher/AppWidgetResizeFrame$2;-><init>(Lcom/htc/launcher/AppWidgetResizeFrame;)V

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 372
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 373
    .local v13, set:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 374
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    const/16 v19, 0x2

    aput-object v2, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 380
    :goto_1
    const-wide/16 v18, 0x96

    move-wide/from16 v0, v18

    invoke-virtual {v13, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 381
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 375
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/launcher/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 376
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/16 v19, 0x1

    aput-object v4, v18, v19

    const/16 v19, 0x2

    aput-object v12, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 378
    :cond_4
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/16 v19, 0x1

    aput-object v4, v18, v19

    const/16 v19, 0x2

    aput-object v12, v18, v19

    const/16 v19, 0x3

    aput-object v14, v18, v19

    const/16 v19, 0x4

    aput-object v2, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1
.end method

.method public updateDeltas(II)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_2

    .line 168
    iget v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 169
    iget v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 175
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_3

    .line 176
    iget v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineY:I

    neg-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 177
    iget v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 182
    :cond_1
    :goto_1
    return-void

    .line 170
    :cond_2
    iget-boolean v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaX:I

    .line 172
    iget v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 178
    :cond_3
    iget-boolean v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mCellLayout:Lcom/htc/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/htc/launcher/CellLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaY:I

    .line 180
    iget v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1
.end method

.method public visualizeResizeForDelta(II)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/htc/launcher/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 189
    invoke-virtual {p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/launcher/CellLayout$LayoutParams;

    .line 190
    .local v0, lp:Lcom/htc/launcher/CellLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_2

    .line 191
    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->x:I

    .line 192
    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 197
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    .line 198
    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/htc/launcher/CellLayout$LayoutParams;->y:I

    .line 199
    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 204
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->resizeWidgetIfNeeded()V

    .line 205
    invoke-virtual {p0}, Lcom/htc/launcher/AppWidgetResizeFrame;->requestLayout()V

    .line 206
    return-void

    .line 193
    :cond_2
    iget-boolean v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_0

    .line 194
    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 200
    :cond_3
    iget-boolean v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_1

    .line 201
    iget v1, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/htc/launcher/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1
.end method
