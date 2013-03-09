.class public Lcom/google/android/gm/LabelSpan;
.super Landroid/text/style/ReplacementSpan;
.source "LabelSpan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;
    }
.end annotation


# instance fields
.field private mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

.field private mSpanned:Landroid/text/Spanned;

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/text/Spanned;Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;)V
    .locals 1
    .parameter "spanned"
    .parameter "dims"

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 29
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    .line 38
    iput-object p1, p0, Lcom/google/android/gm/LabelSpan;->mSpanned:Landroid/text/Spanned;

    .line 39
    iput-object p2, p0, Lcom/google/android/gm/LabelSpan;->mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

    .line 40
    return-void
.end method

.method private measureWidth(Landroid/graphics/Paint;Ljava/lang/CharSequence;IIZ)I
    .locals 5
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "includePaddingBefore"

    .prologue
    .line 57
    iget-object v3, p0, Lcom/google/android/gm/LabelSpan;->mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

    invoke-interface {v3}, Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;->getPadding()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gm/LabelSpan;->mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

    invoke-interface {v4}, Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;->getPaddingExtraWidth()I

    move-result v4

    add-int v1, v3, v4

    .line 58
    .local v1, paddingH:I
    iget-object v3, p0, Lcom/google/android/gm/LabelSpan;->mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

    invoke-interface {v3}, Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;->getMaxWidth()I

    move-result v0

    .line 60
    .local v0, maxWidth:I
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    float-to-int v3, v3

    mul-int/lit8 v4, v1, 0x2

    add-int v2, v3, v4

    .line 61
    .local v2, w:I
    if-eqz p5, :cond_0

    .line 62
    iget-object v3, p0, Lcom/google/android/gm/LabelSpan;->mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

    invoke-interface {v3}, Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;->getPaddingBefore()I

    move-result v3

    add-int/2addr v2, v3

    .line 64
    :cond_0
    if-le v2, v0, :cond_1

    .line 65
    move v2, v0

    .line 67
    :cond_1
    return v2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

    invoke-interface {v2}, Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;->getPadding()I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gm/LabelSpan;->mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

    invoke-interface {v3}, Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;->getPaddingExtraWidth()I

    move-result v3

    add-int v8, v2, v3

    .line 75
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

    invoke-interface {v2}, Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;->getPaddingBefore()I

    move-result v9

    .line 76
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

    invoke-interface {v2}, Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;->getMaxWidth()I

    move-result v10

    .line 78
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p9

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->set(Landroid/graphics/Paint;)V

    .line 80
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/CharacterStyle;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-interface {v2, v0, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    .line 81
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v2, v3

    .line 82
    iget-object v6, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v3, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    move-object v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/google/android/gm/LabelSpan;->measureWidth(Landroid/graphics/Paint;Ljava/lang/CharSequence;IIZ)I

    move-result v11

    .line 87
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getColor()I

    move-result v12

    .line 89
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v13

    .line 91
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    iget v3, v3, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 92
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    int-to-float v2, v9

    add-float v3, p5, v2

    move/from16 v0, p6

    int-to-float v4, v0

    int-to-float v2, v11

    add-float v2, v2, p5

    int-to-float v5, v9

    add-float/2addr v5, v2

    move/from16 v0, p8

    int-to-float v6, v0

    iget-object v7, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v12}, Landroid/text/TextPaint;->setColor(I)V

    .line 97
    iget-object v2, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v13}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    :cond_1
    if-ne v11, v10, :cond_2

    .line 101
    invoke-interface/range {p2 .. p4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    mul-int/lit8 v4, v8, 0x2

    sub-int v4, v11, v4

    int-to-float v4, v4

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v2, v3, v4, v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 103
    const/4 v4, 0x0

    .line 104
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 106
    :goto_1
    int-to-float v2, v8

    add-float v2, v2, p5

    int-to-float v6, v9

    add-float/2addr v6, v2

    move/from16 v0, p7

    int-to-float v7, v0

    iget-object v8, p0, Lcom/google/android/gm/LabelSpan;->mWorkPaint:Landroid/text/TextPaint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 107
    return-void

    :cond_2
    move/from16 v5, p4

    move/from16 v4, p3

    move-object/from16 v3, p2

    goto :goto_1
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 7
    .parameter "paint"
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "fm"

    .prologue
    .line 44
    if-eqz p5, :cond_0

    .line 45
    iget-object v0, p0, Lcom/google/android/gm/LabelSpan;->mDims:Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;

    invoke-interface {v0}, Lcom/google/android/gm/LabelSpan$LabelSpanDimensions;->getPadding()I

    move-result v6

    .line 46
    .local v6, paddingV:I
    invoke-virtual {p1, p5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 47
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v0, v6

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 48
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 49
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    add-int/2addr v0, v6

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 50
    iget v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v6

    iput v0, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 52
    .end local v6           #paddingV:I
    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gm/LabelSpan;->measureWidth(Landroid/graphics/Paint;Ljava/lang/CharSequence;IIZ)I

    move-result v0

    return v0
.end method
