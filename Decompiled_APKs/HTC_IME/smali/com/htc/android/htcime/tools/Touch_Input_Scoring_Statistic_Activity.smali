.class public Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;
.super Landroid/app/Activity;
.source "Touch_Input_Scoring_Statistic_Activity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Scoring"


# instance fields
.field private Num_X_Interval:I

.field private iv_brokenLine:Landroid/widget/ImageView;

.field mAdapter:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;

.field private mBorder:I

.field private mChartHeight:F

.field public mChartView_X_StartPosition:F

.field public mChartWidth:F

.field mListView:Lcom/htc/widget/HtcListView;

.field private mPaint:Landroid/graphics/Paint;

.field public mPaintHeight:F

.field public mPaintWidth:F

.field private mScoreFontMargin:F

.field private mScoreFontSize:F

.field public mScoreList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScoreWidth:F

.field private mTimeBarHeight:F

.field private mX_LeftEndPoint:F

.field private mX_RightEndPoint:F

.field private mY_BottomEndPoint:F

.field private mY_TopEndPoint:F

.field private m_bmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x4400

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->m_bmp:Landroid/graphics/Bitmap;

    .line 34
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    .line 35
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->iv_brokenLine:Landroid/widget/ImageView;

    .line 37
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mListView:Lcom/htc/widget/HtcListView;

    .line 38
    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mAdapter:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;

    .line 41
    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->Num_X_Interval:I

    .line 85
    const/high16 v0, 0x4190

    iput v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mScoreFontSize:F

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mScoreList:Ljava/util/ArrayList;

    .line 87
    iput v1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mScoreWidth:F

    .line 88
    iput v1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartView_X_StartPosition:F

    .line 89
    const/high16 v0, 0x40e0

    iput v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mScoreFontMargin:F

    .line 91
    iput v2, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartWidth:F

    .line 92
    const/high16 v0, 0x434d

    iput v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintHeight:F

    .line 93
    iput v2, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintWidth:F

    .line 96
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mBorder:I

    .line 97
    iput v1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mX_LeftEndPoint:F

    .line 98
    iget v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintWidth:F

    iput v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mX_RightEndPoint:F

    .line 99
    iput v1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mY_TopEndPoint:F

    .line 100
    iget v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintHeight:F

    iput v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mY_BottomEndPoint:F

    .line 101
    iget v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintHeight:F

    iput v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartHeight:F

    .line 102
    iput v1, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mTimeBarHeight:F

    return-void
.end method

.method private brokenlineGraphic(Landroid/widget/ImageView;Ljava/util/ArrayList;)V
    .locals 25
    .parameter "iv"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->m_bmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 111
    .local v10, display:Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintHeight:F

    .line 112
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintWidth:F

    .line 114
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mBorder:I

    mul-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartWidth:F

    .line 115
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintHeight:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mTimeBarHeight:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mBorder:I

    mul-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartHeight:F

    .line 117
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mBorder:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mX_LeftEndPoint:F

    .line 118
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mBorder:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mY_TopEndPoint:F

    .line 119
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mX_LeftEndPoint:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartWidth:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mX_RightEndPoint:F

    .line 120
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mY_TopEndPoint:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartHeight:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mY_BottomEndPoint:F

    .line 122
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mX_LeftEndPoint:F

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartView_X_StartPosition:F

    .line 124
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintWidth:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaintHeight:F

    float-to-int v4, v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->m_bmp:Landroid/graphics/Bitmap;

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->m_bmp:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 220
    .end local v10           #display:Landroid/view/Display;
    :goto_0
    return-void

    .line 130
    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->m_bmp:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 132
    .local v2, c:Landroid/graphics/Canvas;
    const-string v3, "#f2f2f2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x100

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->drawScoreValue(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 144
    .local v8, countDraw:I
    const/4 v13, 0x0

    .line 145
    .local v13, max_num:F
    const v14, 0x461c4000

    .line 146
    .local v14, min_num:F
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v8, :cond_3

    .line 147
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .line 149
    .local v17, score:F
    cmpl-float v3, v13, v17

    if-lez v3, :cond_1

    .line 150
    :goto_2
    cmpg-float v3, v14, v17

    if-gez v3, :cond_2

    .line 146
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    move/from16 v13, v17

    .line 149
    goto :goto_2

    :cond_2
    move/from16 v14, v17

    .line 150
    goto :goto_3

    .line 153
    .end local v17           #score:F
    :cond_3
    sub-float v9, v13, v14

    .line 156
    .local v9, diff_num:F
    const/16 v21, 0xa

    .line 157
    .local v21, xOffset:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartView_X_StartPosition:F

    float-to-int v3, v3

    add-int v18, v3, v21

    .line 158
    .local v18, start_x:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mX_RightEndPoint:F

    float-to-int v3, v3

    sub-int v11, v3, v21

    .line 160
    .local v11, end_x:I
    const/4 v3, 0x1

    if-le v8, v3, :cond_5

    sub-int v3, v11, v18

    add-int/lit8 v4, v8, -0x1

    div-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v22, v0

    .line 161
    .local v22, xShift:F
    :goto_4
    const/4 v3, 0x0

    cmpl-float v3, v9, v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartHeight:F

    const/4 v4, 0x0

    cmpg-float v4, v9, v4

    if-gez v4, :cond_4

    const/high16 v4, 0x42c8

    mul-float/2addr v9, v4

    .end local v9           #diff_num:F
    :cond_4
    div-float v24, v3, v9

    .line 163
    .local v24, yShift:F
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    const v4, -0xf49c67

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    const/4 v3, 0x2

    if-lt v8, v3, :cond_a

    .line 167
    add-int/lit8 v3, v8, -0x1

    mul-int/lit8 v3, v3, 0x4

    new-array v0, v3, [F

    move-object/from16 v16, v0

    .line 168
    .local v16, pts:[F
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v8, :cond_9

    .line 169
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .line 170
    .restart local v17       #score:F
    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v4, v12

    mul-float v4, v4, v22

    add-float v20, v3, v4

    .line 171
    .local v20, x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mY_BottomEndPoint:F

    sub-float v4, v17, v14

    mul-float v4, v4, v24

    sub-float v23, v3, v4

    .line 172
    .local v23, y:F
    if-nez v12, :cond_7

    .line 173
    const/4 v3, 0x0

    aput v20, v16, v3

    .line 174
    const/4 v3, 0x1

    aput v23, v16, v3

    .line 168
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 160
    .end local v16           #pts:[F
    .end local v17           #score:F
    .end local v20           #x:F
    .end local v22           #xShift:F
    .end local v23           #y:F
    .end local v24           #yShift:F
    .restart local v9       #diff_num:F
    :cond_5
    const/16 v22, 0x0

    goto :goto_4

    .line 161
    .restart local v22       #xShift:F
    :cond_6
    const/16 v24, 0x0

    goto :goto_5

    .line 176
    .end local v9           #diff_num:F
    .restart local v16       #pts:[F
    .restart local v17       #score:F
    .restart local v20       #x:F
    .restart local v23       #y:F
    .restart local v24       #yShift:F
    :cond_7
    add-int/lit8 v3, v8, -0x1

    if-ne v12, v3, :cond_8

    .line 177
    mul-int/lit8 v3, v12, 0x4

    add-int/lit8 v3, v3, -0x2

    aput v20, v16, v3

    .line 178
    mul-int/lit8 v3, v12, 0x4

    add-int/lit8 v3, v3, -0x1

    aput v23, v16, v3

    goto :goto_7

    .line 181
    :cond_8
    mul-int/lit8 v3, v12, 0x4

    add-int/lit8 v3, v3, -0x2

    mul-int/lit8 v4, v12, 0x4

    aput v20, v16, v4

    aput v20, v16, v3

    .line 182
    mul-int/lit8 v3, v12, 0x4

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v4, v12, 0x4

    add-int/lit8 v4, v4, 0x1

    aput v23, v16, v4

    aput v23, v16, v3

    goto :goto_7

    .line 185
    .end local v17           #score:F
    .end local v20           #x:F
    .end local v23           #y:F
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    const v4, -0xd86827

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4080

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 191
    .end local v16           #pts:[F
    :cond_a
    new-instance v15, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v15, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 192
    .local v15, paintText:Landroid/graphics/Paint;
    const/high16 v3, -0x100

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    const/high16 v3, 0x4180

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 196
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    const v4, -0xdd7a41

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 199
    const/4 v12, 0x0

    :goto_8
    if-ge v12, v8, :cond_c

    .line 200
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v17

    .line 201
    .restart local v17       #score:F
    move/from16 v0, v18

    int-to-float v3, v0

    int-to-float v4, v12

    mul-float v4, v4, v22

    add-float v20, v3, v4

    .line 202
    .restart local v20       #x:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mY_BottomEndPoint:F

    sub-float v4, v17, v14

    mul-float v4, v4, v24

    sub-float v23, v3, v4

    .line 204
    .restart local v23       #y:F
    const/high16 v3, 0x40e0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 206
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v19

    .line 207
    .local v19, text:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_b

    .line 208
    const/high16 v3, 0x4140

    sub-float v3, v20, v3

    const/high16 v4, 0x4120

    sub-float v4, v23, v4

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    :goto_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 210
    :cond_b
    const/high16 v3, 0x4000

    sub-float v3, v20, v3

    const/high16 v4, 0x4120

    sub-float v4, v23, v4

    move-object/from16 v0, v19

    invoke-virtual {v2, v0, v3, v4, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    .line 214
    .end local v17           #score:F
    .end local v19           #text:Ljava/lang/String;
    .end local v20           #x:F
    .end local v23           #y:F
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    const v4, -0xb5aea7

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x4040

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 217
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->m_bmp:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method private drawScoreValue(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 21
    .parameter "canvas"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p2, scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mScoreFontSize:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f00

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Float;

    .line 227
    .local v15, score:Ljava/lang/Float;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 229
    .local v17, text_width:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mScoreWidth:F

    cmpl-float v2, v17, v2

    if-lez v2, :cond_0

    .line 230
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mScoreWidth:F

    goto :goto_0

    .line 234
    .end local v15           #score:Ljava/lang/Float;
    .end local v17           #text_width:F
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartView_X_StartPosition:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mScoreWidth:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mScoreFontMargin:F

    const/high16 v5, 0x4000

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartView_X_StartPosition:F

    .line 237
    new-instance v14, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v14, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 238
    .local v14, paint:Landroid/graphics/Paint;
    const-string v2, "#808080"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mScoreFontSize:F

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 240
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 241
    const/high16 v2, 0x3f80

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 242
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v14, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 244
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 247
    .local v8, countDraw:I
    const/4 v12, 0x0

    .line 248
    .local v12, max_num:F
    const v13, 0x461c4000

    .line 249
    .local v13, min_num:F
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    if-ge v10, v8, :cond_4

    .line 250
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 252
    .local v15, score:F
    cmpl-float v2, v12, v15

    if-lez v2, :cond_2

    .line 253
    :goto_2
    cmpg-float v2, v13, v15

    if-gez v2, :cond_3

    .line 249
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    move v12, v15

    .line 252
    goto :goto_2

    :cond_3
    move v13, v15

    .line 253
    goto :goto_3

    .line 256
    .end local v15           #score:F
    :cond_4
    sub-float v9, v12, v13

    .line 258
    .local v9, diff_num:F
    const/4 v2, 0x0

    cmpl-float v2, v9, v2

    if-lez v2, :cond_7

    .line 259
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartHeight:F

    const/4 v2, 0x0

    cmpg-float v2, v9, v2

    if-gez v2, :cond_5

    const/high16 v2, 0x42c8

    mul-float/2addr v2, v9

    :goto_4
    div-float v20, v3, v2

    .line 260
    .local v20, yShift:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->Num_X_Interval:I

    int-to-float v2, v2

    div-float v16, v9, v2

    .line 262
    .local v16, score_interval:F
    const/16 v18, 0x0

    .line 264
    .local v18, x_diff:F
    move/from16 v0, v16

    float-to-double v2, v0

    const-wide v5, 0x3f847ae147ae147bL

    cmpg-double v2, v2, v5

    if-gez v2, :cond_6

    .line 266
    const v19, 0x3c23d70a

    .line 271
    .local v19, x_interval:F
    :goto_5
    cmpg-float v2, v18, v9

    if-gez v2, :cond_8

    .line 272
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mY_BottomEndPoint:F

    mul-float v3, v20, v18

    sub-float v4, v2, v3

    .line 274
    .local v4, y:F
    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-float v6, v18, v13

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mBorder:I

    int-to-float v3, v3

    const/high16 v5, 0x40a0

    add-float/2addr v5, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartView_X_StartPosition:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mX_RightEndPoint:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 277
    add-float v18, v18, v19

    .line 278
    goto :goto_5

    .end local v4           #y:F
    .end local v16           #score_interval:F
    .end local v18           #x_diff:F
    .end local v19           #x_interval:F
    .end local v20           #yShift:F
    :cond_5
    move v2, v9

    .line 259
    goto :goto_4

    .line 268
    .restart local v16       #score_interval:F
    .restart local v18       #x_diff:F
    .restart local v20       #yShift:F
    :cond_6
    const/high16 v2, 0x42c8

    mul-float v2, v2, v16

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float v19, v2, v3

    .restart local v19       #x_interval:F
    goto :goto_5

    .line 280
    .end local v16           #score_interval:F
    .end local v18           #x_diff:F
    .end local v19           #x_interval:F
    .end local v20           #yShift:F
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mY_BottomEndPoint:F

    .line 282
    .restart local v4       #y:F
    const-string v2, "%.2f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mBorder:I

    int-to-float v3, v3

    const/high16 v5, 0x40a0

    add-float/2addr v5, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v5, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mChartView_X_StartPosition:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mX_RightEndPoint:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v6, v4

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 285
    .end local v4           #y:F
    :cond_8
    return-void
.end method

.method private getDHAData()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;",
            ">;"
        }
    .end annotation

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/htc/android/htcime/util/ScoringUtil;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 337
    .local v2, dataDir:Ljava/io/File;
    const/4 v6, 0x0

    .line 339
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    if-eqz v2, :cond_4

    .line 341
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 342
    .local v4, file_list:[Ljava/io/File;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 344
    array-length v12, v4

    if-lez v12, :cond_4

    .line 345
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    :try_start_1
    array-length v12, v4

    if-ge v5, v12, :cond_5

    .line 348
    aget-object v12, v4, v5

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 349
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/FileReader;

    aget-object v13, v4, v5

    invoke-direct {v12, v13}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 350
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 352
    .local v8, str:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 353
    const-string v12, "DHA List"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 354
    const-string v12, " = "

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 356
    .local v9, tmp:[Ljava/lang/String;
    array-length v12, v9

    const/4 v13, 0x2

    if-lt v12, v13, :cond_0

    .line 357
    const/4 v12, 0x1

    aget-object v12, v9, v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 358
    const/4 v12, 0x1

    aget-object v12, v9, v12

    const-string v13, "|@|@"

    invoke-static {v13}, Lcom/htc/android/htcime/util/ScoringUtil;->addRegExpSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 360
    .local v11, word_list:[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, w:I
    :goto_1
    array-length v12, v11

    if-ge v10, v12, :cond_2

    .line 361
    new-instance v1, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;

    invoke-direct {v1}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;-><init>()V

    .line 362
    .local v1, data:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;
    aget-object v12, v11, v10

    iput-object v12, v1, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;->text:Ljava/lang/String;

    .line 364
    iget-object v12, v1, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;->text:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 365
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 372
    .end local v1           #data:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;
    .end local v9           #tmp:[Ljava/lang/String;
    .end local v10           #w:I
    .end local v11           #word_list:[Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 347
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 376
    .end local v4           #file_list:[Ljava/io/File;
    .end local v5           #i:I
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    :catch_0
    move-exception v3

    .line 377
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const-string v12, "Scoring"

    const-string v13, "Read Scoring log file failed, skip it."

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    .end local v3           #e:Ljava/lang/Exception;
    :cond_4
    :goto_3
    return-object v6

    .line 376
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .restart local v4       #file_list:[Ljava/io/File;
    .restart local v5       #i:I
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    goto :goto_2

    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .restart local v7       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    :cond_5
    move-object v6, v7

    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    goto :goto_3
.end method

.method private getStatisticData(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "item_name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/android/htcime/util/ScoringUtil;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 298
    .local v1, dataDir:Ljava/io/File;
    const/4 v6, 0x0

    .line 300
    .local v6, scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    if-eqz v1, :cond_3

    .line 302
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 303
    .local v3, file_list:[Ljava/io/File;
    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 305
    array-length v10, v3

    if-lez v10, :cond_3

    .line 306
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .end local v6           #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local v7, scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    :try_start_1
    array-length v10, v3

    if-ge v4, v10, :cond_4

    .line 309
    aget-object v10, v3, v4

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 310
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    aget-object v11, v3, v4

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 311
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 313
    .local v8, str:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 314
    invoke-virtual {v8, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 315
    const-string v10, " = "

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, tmp:[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-lt v10, v11, :cond_1

    .line 318
    const/4 v10, 0x1

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 319
    .local v5, score:F
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v5           #score:F
    .end local v9           #tmp:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v8           #str:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    .end local v3           #file_list:[Ljava/io/File;
    .end local v4           #i:I
    .end local v7           #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v6       #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :catch_0
    move-exception v2

    .line 329
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    const-string v10, "Scoring"

    const-string v11, "Read Scoring log file failed, skip it."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 332
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-object v6

    .line 328
    .end local v6           #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v3       #file_list:[Ljava/io/File;
    .restart local v4       #i:I
    .restart local v7       #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :catch_1
    move-exception v2

    move-object v6, v7

    .end local v7           #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v6       #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    goto :goto_1

    .end local v6           #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v7       #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    :cond_4
    move-object v6, v7

    .end local v7           #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v6       #scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    goto :goto_2
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v4, 0x7f03004f

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    .local v0, intent:Landroid/content/Intent;
    const-string v4, "item_key"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 52
    .local v1, item_key:I
    packed-switch v1, :pswitch_data_0

    .line 65
    :goto_0
    const/4 v4, 0x7

    if-ne v1, v4, :cond_1

    .line 66
    const v4, 0x7f0e0054

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListView;

    iput-object v4, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mListView:Lcom/htc/widget/HtcListView;

    .line 67
    iget-object v4, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mListView:Lcom/htc/widget/HtcListView;

    if-eqz v4, :cond_0

    .line 68
    invoke-direct {p0}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->getDHAData()Ljava/util/ArrayList;

    move-result-object v2

    .line 69
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 70
    new-instance v4, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;

    invoke-direct {v4, p0, v2}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v4, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mAdapter:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;

    .line 71
    iget-object v4, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v5, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mAdapter:Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v4, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, v6}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 83
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Adapter$Touch_Input_Scoring_Data;>;"
    :cond_0
    :goto_1
    return-void

    .line 53
    :pswitch_0
    const v4, 0x7f0902e9

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->setTitle(I)V

    goto :goto_0

    .line 54
    :pswitch_1
    const v4, 0x7f0902ea

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->setTitle(I)V

    goto :goto_0

    .line 55
    :pswitch_2
    const v4, 0x7f0902eb

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->setTitle(I)V

    goto :goto_0

    .line 56
    :pswitch_3
    const v4, 0x7f0902ec

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->setTitle(I)V

    goto :goto_0

    .line 57
    :pswitch_4
    const v4, 0x7f0902ed

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->setTitle(I)V

    goto :goto_0

    .line 58
    :pswitch_5
    const v4, 0x7f0902ee

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->setTitle(I)V

    goto :goto_0

    .line 59
    :pswitch_6
    const-string v4, "DHA List"

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 76
    :cond_1
    const v4, 0x7f0e0015

    invoke-virtual {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->iv_brokenLine:Landroid/widget/ImageView;

    .line 77
    iget-object v4, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->iv_brokenLine:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    .line 78
    invoke-static {v1}, Lcom/htc/android/htcime/util/ScoringUtil;->getItemKeyStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->getStatisticData(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 79
    .local v3, scoring_data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Float;>;"
    iget-object v4, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->iv_brokenLine:Landroid/widget/ImageView;

    invoke-direct {p0, v4, v3}, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->brokenlineGraphic(Landroid/widget/ImageView;Ljava/util/ArrayList;)V

    .line 80
    iget-object v4, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->iv_brokenLine:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 290
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->m_bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->m_bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/htcime/tools/Touch_Input_Scoring_Statistic_Activity;->m_bmp:Landroid/graphics/Bitmap;

    .line 294
    :cond_0
    return-void
.end method
