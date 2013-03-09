.class public Lcom/htc/android/htcime/util/DAMStaticalChartActivity;
.super Landroid/app/Activity;
.source "DAMStaticalChartActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "DAM"


# instance fields
.field private MaxDrawCount:I

.field bmp2:Landroid/graphics/Bitmap;

.field private damLayout:Lcom/htc/android/htcime/util/htcDAM;

.field private iv_brokenLine:Landroid/widget/ImageView;

.field private keyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;",
            ">;>;"
        }
    .end annotation
.end field

.field private logList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;",
            ">;"
        }
    .end annotation
.end field

.field m_bmp:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 29
    iput-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->m_bmp:Landroid/graphics/Bitmap;

    .line 30
    iput-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->logList:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->keyList:Ljava/util/ArrayList;

    .line 33
    iput-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->damLayout:Lcom/htc/android/htcime/util/htcDAM;

    .line 36
    iput-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->iv_brokenLine:Landroid/widget/ImageView;

    .line 37
    const/16 v0, 0x14

    iput v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->MaxDrawCount:I

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Lcom/htc/android/htcime/util/htcDAM;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->damLayout:Lcom/htc/android/htcime/util/htcDAM;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->iv_brokenLine:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->keyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;Landroid/widget/ImageView;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->brokenlineGraphic(Landroid/widget/ImageView;Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->logList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private brokenlineGraphic(Landroid/widget/ImageView;Ljava/util/ArrayList;)Z
    .locals 23
    .parameter "iv"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 153
    .local p2, log:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;>;"
    const/4 v9, 0x0

    .line 155
    .local v9, bRet:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v13

    .line 157
    .local v13, display:Landroid/view/Display;
    invoke-virtual {v13}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->m_bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v8, v3, v4

    .line 159
    .local v8, Height:I
    invoke-virtual {v13}, Landroid/view/Display;->getWidth()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v8, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    .line 161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    move v10, v9

    .line 219
    .end local v8           #Height:I
    .end local v9           #bRet:Z
    .end local v13           #display:Landroid/view/Display;
    .local v10, bRet:I
    :goto_0
    return v10

    .line 164
    .end local v10           #bRet:I
    .restart local v9       #bRet:Z
    :cond_0
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 165
    .local v2, c:Landroid/graphics/Canvas;
    const v3, -0xbfbfc0

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 167
    const/16 v11, 0x14

    .line 168
    .local v11, border:I
    new-instance v7, Landroid/graphics/Paint;

    const/4 v3, 0x4

    invoke-direct {v7, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 169
    .local v7, paint:Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    int-to-float v3, v11

    int-to-float v4, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v5, v11

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v11

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->MaxDrawCount:I

    if-le v3, v4, :cond_1

    move-object/from16 v0, p0

    iget v12, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->MaxDrawCount:I

    .line 174
    .local v12, countDraw:I
    :goto_1
    const/4 v3, 0x2

    if-ge v12, v3, :cond_2

    move v10, v9

    .line 175
    .restart local v10       #bRet:I
    goto :goto_0

    .line 172
    .end local v10           #bRet:I
    .end local v12           #countDraw:I
    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v12

    goto :goto_1

    .line 177
    .restart local v12       #countDraw:I
    :cond_2
    const/16 v16, 0x0

    .line 178
    .local v16, maxDiff:F
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v12, :cond_4

    .line 179
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;

    iget v3, v3, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->m_lastAvgDiff:F

    cmpl-float v3, v16, v3

    if-lez v3, :cond_3

    .line 178
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 179
    :cond_3
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;

    iget v0, v3, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->m_lastAvgDiff:F

    move/from16 v16, v0

    goto :goto_3

    .line 182
    :cond_4
    const/high16 v3, 0x4180

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max diff = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v11

    const/16 v5, 0x11

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 185
    new-instance v14, Landroid/graphics/Rect;

    const/16 v3, 0x28

    const/16 v4, 0x28

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    add-int/lit8 v5, v5, -0x28

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v6, v11

    invoke-direct {v14, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 186
    .local v14, drawableRect:Landroid/graphics/Rect;
    iget v3, v14, Landroid/graphics/Rect;->right:I

    iget v4, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    add-int/lit8 v4, v12, -0x1

    div-int/2addr v3, v4

    int-to-float v0, v3

    move/from16 v20, v0

    .line 187
    .local v20, xShift:F
    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float v22, v3, v16

    .line 188
    .local v22, yShift:F
    const v3, -0x5f00ff01

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    add-int/lit8 v3, v12, -0x1

    mul-int/lit8 v3, v3, 0x4

    new-array v0, v3, [F

    move-object/from16 v18, v0

    .line 191
    .local v18, pts:[F
    new-instance v17, Landroid/graphics/Paint;

    const/4 v3, 0x4

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 192
    .local v17, paintText:Landroid/graphics/Paint;
    const/high16 v3, -0x100

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    const/high16 v3, 0x4120

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    const/4 v15, 0x0

    :goto_4
    if-ge v15, v12, :cond_7

    .line 195
    iget v3, v14, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    int-to-float v4, v15

    mul-float v4, v4, v20

    add-float v19, v3, v4

    .line 196
    .local v19, x:F
    iget v3, v14, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;

    iget v3, v3, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->m_lastAvgDiff:F

    mul-float v3, v3, v22

    sub-float v21, v4, v3

    .line 197
    .local v21, y:F
    if-nez v15, :cond_5

    .line 198
    const/4 v3, 0x0

    aput v19, v18, v3

    .line 199
    const/4 v3, 0x1

    aput v21, v18, v3

    .line 210
    :goto_5
    const/high16 v3, 0x4080

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1, v3, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 211
    const-string v4, "%.2f"

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;

    iget v3, v3, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;->m_lastAvgDiff:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x4000

    add-float v4, v4, v19

    const/high16 v5, 0x40a0

    sub-float v5, v21, v5

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 194
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 201
    :cond_5
    add-int/lit8 v3, v12, -0x1

    if-ne v15, v3, :cond_6

    .line 202
    mul-int/lit8 v3, v15, 0x4

    add-int/lit8 v3, v3, -0x2

    aput v19, v18, v3

    .line 203
    mul-int/lit8 v3, v15, 0x4

    add-int/lit8 v3, v3, -0x1

    aput v21, v18, v3

    goto :goto_5

    .line 206
    :cond_6
    mul-int/lit8 v3, v15, 0x4

    add-int/lit8 v3, v3, -0x2

    mul-int/lit8 v4, v15, 0x4

    aput v19, v18, v4

    aput v19, v18, v3

    .line 207
    mul-int/lit8 v3, v15, 0x4

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v4, v15, 0x4

    add-int/lit8 v4, v4, 0x1

    aput v21, v18, v4

    aput v21, v18, v3

    goto :goto_5

    .line 213
    .end local v19           #x:F
    .end local v21           #y:F
    :cond_7
    const/high16 v3, -0x100

    invoke-virtual {v7, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v7}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 218
    const/4 v9, 0x1

    move v10, v9

    .line 219
    .restart local v10       #bRet:I
    goto/16 :goto_0
.end method

.method private initDAMdata(Ljava/lang/String;)Z
    .locals 22
    .parameter "folder"

    .prologue
    .line 101
    const/4 v5, 0x0

    .line 102
    .local v5, bRet:Z
    const-string v19, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 103
    .local v17, splitedfolder:[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v19, v17, v19

    const/16 v20, 0x10

    invoke-static/range {v19 .. v20}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 105
    .local v13, lang:I
    new-instance v19, Lcom/htc/android/htcime/util/htcDAM;

    invoke-direct/range {v19 .. v19}, Lcom/htc/android/htcime/util/htcDAM;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->damLayout:Lcom/htc/android/htcime/util/htcDAM;

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->damLayout:Lcom/htc/android/htcime/util/htcDAM;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lcom/htc/android/htcime/util/htcDAM;->LoadKeyboard(I)I

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->damLayout:Lcom/htc/android/htcime/util/htcDAM;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/htc/android/htcime/util/htcDAM;->getTotalKeyCount()I

    move-result v18

    .line 109
    .local v18, totalKeyCount:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move/from16 v0, v18

    if-ge v10, v0, :cond_0

    .line 110
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v16, log:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->keyList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 114
    .end local v16           #log:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;>;"
    :cond_0
    new-instance v9, Ljava/io/File;

    const-string v19, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v9, fileFolder:Ljava/io/File;
    const/4 v6, 0x0

    .line 117
    .local v6, count:I
    new-instance v19, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$3;-><init>(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v4

    .local v4, arr$:[Ljava/io/File;
    array-length v14, v4

    .local v14, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v14, :cond_3

    aget-object v8, v4, v11

    .line 125
    .local v8, file:Ljava/io/File;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->MaxDrawCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_2

    .line 127
    new-instance v7, Lcom/htc/android/htcime/util/htcDAM;

    invoke-direct {v7}, Lcom/htc/android/htcime/util/htcDAM;-><init>()V

    .line 128
    .local v7, dam:Lcom/htc/android/htcime/util/htcDAM;
    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lcom/htc/android/htcime/util/htcDAM;->readLog(Ljava/lang/String;)I

    .line 129
    new-instance v15, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;

    invoke-virtual {v7}, Lcom/htc/android/htcime/util/htcDAM;->getAvgDiff()F

    move-result v19

    iget-wide v0, v7, Lcom/htc/android/htcime/util/htcDAM;->lastLogTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;-><init>(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;FJ)V

    .line 130
    .local v15, log:Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->logList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    const/4 v10, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 132
    new-instance v12, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;

    invoke-virtual {v7, v10}, Lcom/htc/android/htcime/util/htcDAM;->getAvgDiff(I)F

    move-result v19

    iget-wide v0, v7, Lcom/htc/android/htcime/util/htcDAM;->lastLogTime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v12, v0, v1, v2, v3}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;-><init>(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;FJ)V

    .line 133
    .local v12, keylog:Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->keyList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 135
    .end local v12           #keylog:Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 117
    .end local v7           #dam:Lcom/htc/android/htcime/util/htcDAM;
    .end local v15           #log:Lcom/htc/android/htcime/util/DAMStaticalChartActivity$DAMLog;
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 139
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 143
    .end local v8           #file:Ljava/io/File;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->logList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->logList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 146
    const/4 v10, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->keyList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_4

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->keyList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;

    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 146
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 149
    :cond_4
    return v5
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x1020016

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 44
    .local v5, titleView:Landroid/view/View;
    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 46
    .local v3, parent:Landroid/view/ViewParent;
    if-eqz v3, :cond_0

    instance-of v6, v3, Landroid/view/View;

    if-eqz v6, :cond_0

    move-object v4, v3

    .line 47
    check-cast v4, Landroid/view/View;

    .line 48
    .local v4, parentView:Landroid/view/View;
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 52
    .end local v3           #parent:Landroid/view/ViewParent;
    .end local v4           #parentView:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 53
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "Orientation"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->setRequestedOrientation(I)V

    .line 54
    const v6, 0x7f03000f

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->setContentView(I)V

    .line 56
    const-string v6, "folder"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, folder:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 98
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    invoke-direct {p0, v0}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->initDAMdata(Ljava/lang/String;)Z

    .line 68
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->damLayout:Lcom/htc/android/htcime/util/htcDAM;

    invoke-virtual {v6}, Lcom/htc/android/htcime/util/htcDAM;->getTrackGraphic()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->m_bmp:Landroid/graphics/Bitmap;

    .line 70
    const v6, 0x7f0e0016

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 71
    .local v2, iv:Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->m_bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    new-instance v6, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$1;

    invoke-direct {v6, p0}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$1;-><init>(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    const v6, 0x7f0e0015

    invoke-virtual {p0, v6}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->iv_brokenLine:Landroid/widget/ImageView;

    .line 88
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->iv_brokenLine:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 89
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->iv_brokenLine:Landroid/widget/ImageView;

    new-instance v7, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$2;

    invoke-direct {v7, p0}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity$2;-><init>(Lcom/htc/android/htcime/util/DAMStaticalChartActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    iget-object v6, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->iv_brokenLine:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->logList:Ljava/util/ArrayList;

    invoke-direct {p0, v6, v7}, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->brokenlineGraphic(Landroid/widget/ImageView;Ljava/util/ArrayList;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 225
    iget-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->m_bmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->m_bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 227
    iput-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->m_bmp:Landroid/graphics/Bitmap;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 232
    iput-object v1, p0, Lcom/htc/android/htcime/util/DAMStaticalChartActivity;->bmp2:Landroid/graphics/Bitmap;

    .line 234
    :cond_1
    return-void
.end method
