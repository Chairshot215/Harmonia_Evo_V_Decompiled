.class public Lcom/htc/usage/widget/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mHoriz:Lcom/htc/usage/widget/ChartAxis;

.field private mLabelColor:I

.field private mLayoutEnd:Landroid/text/Layout;

.field private mLayoutStart:Landroid/text/Layout;

.field private mPrimary:Landroid/graphics/drawable/Drawable;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lcom/htc/usage/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/usage/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/usage/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/htc/usage/widget/ChartGridView;->setWillNotDraw(Z)V

    .line 67
    sget-object v1, Lcom/htc/usage/R$styleable;->ChartGridView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/usage/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 71
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/usage/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 72
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/usage/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 73
    const/high16 v1, -0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/htc/usage/widget/ChartGridView;->mLabelColor:I

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 76
    return-void
.end method

.method private makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v7, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/htc/usage/widget/ChartGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 157
    .local v8, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 158
    .local v2, paint:Landroid/text/TextPaint;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 159
    invoke-virtual {v8}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 160
    iget v0, p0, Lcom/htc/usage/widget/ChartGridView;->mLabelColor:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 161
    const/4 v0, 0x2

    const/high16 v1, 0x4120

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 164
    new-instance v0, Landroid/text/StaticLayout;

    invoke-static {p1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method


# virtual methods
.method init(Lcom/htc/usage/widget/ChartAxis;Lcom/htc/usage/widget/ChartAxis;)V
    .locals 1
    .parameter "horiz"
    .parameter "vert"

    .prologue
    .line 79
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/widget/ChartAxis;

    iput-object v0, p0, Lcom/htc/usage/widget/ChartGridView;->mHoriz:Lcom/htc/usage/widget/ChartAxis;

    .line 80
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/widget/ChartAxis;

    iput-object v0, p0, Lcom/htc/usage/widget/ChartGridView;->mVert:Lcom/htc/usage/widget/ChartAxis;

    .line 81
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 92
    invoke-virtual/range {p0 .. p0}, Lcom/htc/usage/widget/ChartGridView;->getWidth()I

    move-result v22

    .line 93
    .local v22, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/usage/widget/ChartGridView;->getHeight()I

    move-result v8

    .line 95
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    .line 96
    .local v18, secondary:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v19

    .line 98
    .local v19, secondaryHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mVert:Lcom/htc/usage/widget/ChartAxis;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/usage/widget/ChartAxis;->getTickPoints()[F

    move-result-object v21

    .line 99
    .local v21, vertTicks:[F
    const/4 v11, 0x0

    .line 100
    .local v11, lastDrawingBottom:I
    const/4 v7, 0x0

    .line 101
    .local v7, finalBottom:I
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    if-lez v25, :cond_0

    .line 102
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget v25, v21, v25

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v25, v25, v26

    int-to-float v0, v8

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    move/from16 v0, v25

    float-to-int v7, v0

    .line 105
    :cond_0
    move-object/from16 v4, v21

    .local v4, arr$:[F
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_0
    if-ge v10, v12, :cond_1

    aget v24, v4, v10

    .line 106
    .local v24, y:F
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v24

    int-to-float v0, v8

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    move/from16 v0, v25

    float-to-int v5, v0

    .line 107
    .local v5, bottom:I
    if-ne v11, v5, :cond_2

    .line 116
    .end local v5           #bottom:I
    .end local v24           #y:F
    :cond_1
    :goto_1
    if-le v11, v7, :cond_3

    .line 117
    add-int/lit8 v11, v11, -0x1

    .line 118
    const/16 v25, 0x0

    add-int/lit8 v26, v11, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 111
    .restart local v5       #bottom:I
    .restart local v24       #y:F
    :cond_2
    move v11, v5

    .line 112
    const/16 v25, 0x0

    add-int/lit8 v26, v5, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 113
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 105
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 122
    .end local v5           #bottom:I
    .end local v24           #y:F
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/usage/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 123
    .local v14, primary:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 124
    .local v16, primaryWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 126
    .local v15, primaryHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mHoriz:Lcom/htc/usage/widget/ChartAxis;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/htc/usage/widget/ChartAxis;->getTickPoints()[F

    move-result-object v9

    .line 127
    .local v9, horizTicks:[F
    move-object v4, v9

    array-length v12, v4

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v12, :cond_4

    aget v23, v4, v10

    .line 128
    .local v23, x:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v25, v25, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v17, v0

    .line 129
    .local v17, right:I
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-virtual {v14, v0, v1, v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 133
    .end local v17           #right:I
    .end local v23           #x:F
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mLayoutStart:Landroid/text/Layout;

    move-object/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mLayoutStart:Landroid/text/Layout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout;->getHeight()I

    move-result v25

    div-int/lit8 v13, v25, 0x8

    .line 138
    .local v13, padding:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/usage/widget/ChartGridView;->mLayoutStart:Landroid/text/Layout;

    move-object/from16 v20, v0

    .line 139
    .local v20, start:Landroid/text/Layout;
    if-eqz v20, :cond_5

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 141
    const/16 v25, 0x0

    add-int v26, v8, v13

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 142
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 143
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 146
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/usage/widget/ChartGridView;->mLayoutEnd:Landroid/text/Layout;

    .line 147
    .local v6, end:Landroid/text/Layout;
    if-eqz v6, :cond_6

    .line 148
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 149
    invoke-virtual {v6}, Landroid/text/Layout;->getWidth()I

    move-result v25

    sub-int v25, v22, v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-int v26, v8, v13

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 151
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 153
    :cond_6
    return-void

    .line 136
    .end local v6           #end:Landroid/text/Layout;
    .end local v13           #padding:I
    .end local v20           #start:Landroid/text/Layout;
    :cond_7
    const/4 v13, 0x0

    goto :goto_3
.end method

.method setBounds(JJ)V
    .locals 6
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/htc/usage/widget/ChartGridView;->getContext()Landroid/content/Context;

    move-result-object v0

    .local v0, context:Landroid/content/Context;
    move-wide v1, p1

    move-wide v3, p1

    .line 85
    invoke-static/range {v0 .. v5}, Lcom/htc/usage/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/usage/widget/ChartGridView;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/usage/widget/ChartGridView;->mLayoutStart:Landroid/text/Layout;

    move-wide v1, p3

    move-wide v3, p3

    .line 86
    invoke-static/range {v0 .. v5}, Lcom/htc/usage/DataUsageSummary;->formatDateRange(Landroid/content/Context;JJZ)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/usage/widget/ChartGridView;->makeLayout(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/usage/widget/ChartGridView;->mLayoutEnd:Landroid/text/Layout;

    .line 87
    invoke-virtual {p0}, Lcom/htc/usage/widget/ChartGridView;->invalidate()V

    .line 88
    return-void
.end method
