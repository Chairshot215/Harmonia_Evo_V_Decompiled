.class Lcom/android/systemui/LoadAverageService$LoadView;
.super Landroid/view/View;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadView"
.end annotation


# instance fields
.field private mAddedPaint:Landroid/graphics/Paint;

.field private mAscent:F

.field private mFH:I

.field private mHandler:Landroid/os/Handler;

.field private mIrqPaint:Landroid/graphics/Paint;

.field private mLoadPaint:Landroid/graphics/Paint;

.field private mNeededHeight:I

.field private mNeededWidth:I

.field private mRemovedPaint:Landroid/graphics/Paint;

.field private mShadow2Paint:Landroid/graphics/Paint;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private final mStats:Lcom/android/systemui/LoadAverageService$Stats;

.field private mSystemPaint:Landroid/graphics/Paint;

.field private mUserPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method constructor <init>(Lcom/android/systemui/LoadAverageService;Landroid/content/Context;)V
    .locals 12

    const/4 v11, 0x1

    const/16 v10, 0x80

    const/4 v9, 0x0

    const/16 v8, 0xff

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$LoadView;->this$0:Lcom/android/systemui/LoadAverageService;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/systemui/LoadAverageService$LoadView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/LoadAverageService$LoadView$1;-><init>(Lcom/android/systemui/LoadAverageService$LoadView;)V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/LoadAverageService$LoadView;->setPadding(IIII)V

    const/16 v2, 0xa

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x3f80

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    const/16 v2, 0x9

    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v10, v8, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v8, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4080

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10, v7, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10, v8, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10, v7, v8, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4000

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAscent:F

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAscent:F

    sub-float v3, v1, v3

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    new-instance v3, Lcom/android/systemui/LoadAverageService$Stats;

    iget-object v4, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Lcom/android/systemui/LoadAverageService$Stats;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$Stats;

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$Stats;

    invoke-virtual {v3}, Lcom/android/systemui/LoadAverageService$Stats;->init()V

    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->updateDisplay()V

    return-void

    :cond_1
    const/high16 v3, 0x4120

    mul-float/2addr v3, v0

    float-to-int v2, v3

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    const/16 v2, 0xa

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/LoadAverageService$LoadView;)Lcom/android/systemui/LoadAverageService$Stats;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$Stats;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 29

    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/LoadAverageService$LoadView;->getWidth()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$Stats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$Stats;->getLastUserTime()I

    move-result v25

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$Stats;->getLastSystemTime()I

    move-result v21

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$Stats;->getLastIoWaitTime()I

    move-result v14

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$Stats;->getLastIrqTime()I

    move-result v15

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$Stats;->getLastSoftIrqTime()I

    move-result v18

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$Stats;->getLastIdleTime()I

    move-result v13

    add-int v2, v25, v21

    add-int/2addr v2, v14

    add-int/2addr v2, v15

    add-int v2, v2, v18

    add-int v24, v2, v13

    if-nez v24, :cond_1

    :cond_0
    return-void

    :cond_1
    mul-int v2, v25, v10

    div-int v26, v2, v24

    mul-int v2, v21, v10

    div-int v22, v2, v24

    add-int v2, v14, v15

    add-int v2, v2, v18

    mul-int/2addr v2, v10

    div-int v16, v2, v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v27, v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    add-int/lit8 v23, v2, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int/2addr v2, v3

    add-int/lit8 v11, v2, -0x2

    if-lez v16, :cond_2

    sub-int v2, v27, v16

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v27, v27, v16

    :cond_2
    if-lez v22, :cond_3

    sub-int v2, v27, v22

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v27, v27, v22

    :cond_3
    if-lez v26, :cond_4

    sub-int v2, v27, v26

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v27, v27, v26

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mAscent:F

    float-to-int v3, v3

    sub-int v28, v2, v3

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/LoadAverageService$Stats;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/LoadAverageService$Stats;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/LoadAverageService$Stats;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/LoadAverageService$Stats;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$Stats;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/LoadAverageService$Stats;->mLoadWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v28

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$Stats;->countWorkingStats()I

    move-result v8

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v8, :cond_0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/systemui/LoadAverageService$Stats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int v28, v28, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int v23, v23, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int/2addr v11, v2

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_utime:I

    mul-int/2addr v2, v10

    div-int v26, v2, v24

    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->rel_stime:I

    mul-int/2addr v2, v10

    div-int v22, v2, v24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v27, v9, v2

    if-lez v22, :cond_5

    sub-int v2, v27, v22

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v27, v27, v22

    :cond_5
    if-lez v26, :cond_6

    sub-int v2, v27, v26

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    sub-int v27, v27, v26

    :cond_6
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->added:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    :cond_7
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->removed:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    :cond_8
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v28

    int-to-float v4, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    invoke-static {v0, p1}, Lcom/android/systemui/LoadAverageService$LoadView;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededHeight:I

    invoke-static {v1, p2}, Lcom/android/systemui/LoadAverageService$LoadView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/LoadAverageService$LoadView;->setMeasuredDimension(II)V

    return-void
.end method

.method updateDisplay()V
    .locals 10

    iget-object v6, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$Stats;

    invoke-virtual {v6}, Lcom/android/systemui/LoadAverageService$Stats;->countWorkingStats()I

    move-result v0

    iget v2, v6, Lcom/android/systemui/LoadAverageService$Stats;->mLoadWidth:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {v6, v1}, Lcom/android/systemui/LoadAverageService$Stats;->getWorkingStats(I)Lcom/android/internal/os/ProcessStats$Stats;

    move-result-object v5

    iget v7, v5, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    if-le v7, v2, :cond_0

    iget v2, v5, Lcom/android/internal/os/ProcessStats$Stats;->nameWidth:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v7, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingLeft:I

    iget v8, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    add-int/2addr v7, v8

    add-int v4, v7, v2

    iget v7, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    iget v8, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    iget v7, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    if-ne v4, v7, :cond_2

    iget v7, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededHeight:I

    if-eq v3, v7, :cond_3

    :cond_2
    iput v4, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    iput v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->requestLayout()V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->invalidate()V

    goto :goto_1
.end method
