.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# static fields
.field private static final CHAR_COLON:C = ':'

.field private static final CHAR_COMMA:C = ','

.field private static final CHAR_DOT:C = '.'

.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SEMICOLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final COLUMNS_ELLIPSIZE:I = 0x5

.field private static final COLUMNS_NORMAL:I = 0x3

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x4

.field private static final ELLIPSIS_NORMAL:Ljava/lang/String; = "\u2026"

.field private static final ELLIPSIS_START:I = 0x3

.field private static final ELLIPSIS_TWO_DOTS:Ljava/lang/String; = "\u2025"

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mMeasured:Landroid/text/MeasuredText;

.field private mTopPadding:I


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    const/4 v0, 0x5

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v0, v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14

    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14

    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 15

    if-nez p11, :cond_0

    move-object/from16 v2, p1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    const v1, 0x7fffffff

    iput v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p11, :cond_2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v14, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    move/from16 v0, p12

    iput v0, v14, Landroid/text/Layout$Ellipsizer;->mWidth:I

    move-object/from16 v0, p11

    iput-object v0, v14, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v1, 0x5

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    :goto_1
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    new-array v1, v1, [Landroid/text/Layout$Directions;

    iput-object v1, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    move/from16 v0, p12

    int-to-float v12, v0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v1 .. v13}, Landroid/text/StaticLayout;->generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V

    iget-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v1}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v1

    iput-object v1, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-void

    :cond_0
    move-object/from16 v0, p1

    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    new-instance v2, Landroid/text/Layout$SpannedEllipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/text/Layout$Ellipsizer;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x3

    iput v1, p0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 17

    cmpg-float v14, p8, p5

    if-gtz v14, :cond_0

    if-nez p10, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    const/16 v16, 0x0

    aput v16, v14, v15

    :goto_0
    return-void

    :cond_0
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_3

    const-string/jumbo v14, "\u2025"

    :goto_1
    move-object/from16 v0, p9

    invoke-virtual {v0, v14}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sub-int v7, p2, p1

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_5

    const/4 v12, 0x0

    move v4, v7

    :goto_2
    if-ltz v4, :cond_1

    add-int/lit8 v14, v4, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_4

    :cond_1
    const/4 v2, 0x0

    move v1, v4

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x3

    aput v2, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v15, v15, p7

    add-int/lit8 v15, v15, 0x4

    aput v1, v14, v15

    goto :goto_0

    :cond_3
    const-string/jumbo v14, "\u2026"

    goto :goto_1

    :cond_4
    add-float/2addr v12, v13

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    const-string v14, "StaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "StaticLayout"

    const-string v15, "Start Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_7

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-eq v0, v14, :cond_7

    sget-object v14, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    if-ne v0, v14, :cond_a

    :cond_7
    const/4 v12, 0x0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v7, :cond_8

    add-int v14, v4, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    add-float v14, v13, v12

    add-float/2addr v14, v3

    cmpl-float v14, v14, p5

    if-lez v14, :cond_9

    :cond_8
    move v2, v4

    sub-int v1, v7, v4

    if-eqz p10, :cond_2

    if-nez v1, :cond_2

    if-lez v7, :cond_2

    add-int/lit8 v2, v7, -0x1

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    add-float/2addr v12, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_f

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    move v10, v7

    sub-float v14, p5, v3

    const/high16 v15, 0x4000

    div-float v9, v14, v15

    move v10, v7

    :goto_5
    if-ltz v10, :cond_b

    add-int/lit8 v14, v10, -0x1

    add-int v14, v14, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    add-float v14, v13, v11

    cmpl-float v14, v14, v9

    if-lez v14, :cond_d

    :cond_b
    sub-float v14, p5, v3

    sub-float v5, v14, v11

    const/4 v6, 0x0

    :goto_6
    if-ge v6, v10, :cond_c

    add-int v14, v6, p1

    sub-int v14, v14, p4

    aget v13, p3, v14

    add-float v14, v13, v8

    cmpl-float v14, v14, v5

    if-lez v14, :cond_e

    :cond_c
    move v2, v6

    sub-int v1, v10, v6

    goto/16 :goto_3

    :cond_d
    add-float/2addr v11, v13

    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    :cond_e
    add-float/2addr v8, v13

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_f
    const-string v14, "StaticLayout"

    const/4 v15, 0x5

    invoke-static {v14, v15}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "StaticLayout"

    const-string v15, "Middle Ellipsis only supported with one line"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private static final isIdeographic(CZ)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x2e80

    if-lt p0, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0x3000

    if-eq p0, v2, :cond_0

    const/16 v2, 0x3040

    if-lt p0, v2, :cond_2

    const/16 v2, 0x309f

    if-gt p0, v2, :cond_2

    if-nez p1, :cond_0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v2, 0x30a0

    if-lt p0, v2, :cond_3

    const/16 v2, 0x30ff

    if-gt p0, v2, :cond_3

    if-nez p1, :cond_0

    sparse-switch p0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v2, 0x3400

    if-lt p0, v2, :cond_4

    const/16 v2, 0x4db5

    if-le p0, v2, :cond_0

    :cond_4
    const/16 v2, 0x4e00

    if-lt p0, v2, :cond_5

    const v2, 0x9fbb

    if-le p0, v2, :cond_0

    :cond_5
    const v2, 0xf900

    if-lt p0, v2, :cond_6

    const v2, 0xfad9

    if-le p0, v2, :cond_0

    :cond_6
    const v2, 0xa000

    if-lt p0, v2, :cond_7

    const v2, 0xa48f

    if-le p0, v2, :cond_0

    :cond_7
    const v2, 0xa490

    if-lt p0, v2, :cond_8

    const v2, 0xa4cf

    if-le p0, v2, :cond_0

    :cond_8
    const v2, 0xfe62

    if-lt p0, v2, :cond_9

    const v2, 0xfe66

    if-le p0, v2, :cond_0

    :cond_9
    const v2, 0xff10

    if-lt p0, v2, :cond_a

    const v2, 0xff19

    if-le p0, v2, :cond_0

    :cond_a
    move v0, v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v26, v22, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v27, v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v2, v0

    move/from16 v0, v27

    if-lt v0, v2, :cond_0

    add-int/lit8 v2, v27, 0x1

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v24

    array-length v4, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v24, v19

    move/from16 v0, v25

    new-array v0, v0, [Landroid/text/Layout$Directions;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    :cond_0
    if-eqz p11, :cond_3

    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v21, 0x0

    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v21

    if-ge v0, v2, :cond_2

    aget-object v2, p11, v21

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    aget-object v2, p11, v21

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :goto_1
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_1
    aget-object v2, p11, v21

    aget v6, p12, v21

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    :cond_3
    if-nez v22, :cond_5

    if-eqz p21, :cond_4

    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_4
    if-eqz p20, :cond_5

    move/from16 p4, p6

    :cond_5
    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_7

    if-eqz p21, :cond_6

    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_6
    if-eqz p20, :cond_7

    move/from16 p5, p7

    :cond_7
    if-eqz p15, :cond_e

    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f80

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v15, v2

    const-wide/16 v2, 0x0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_d

    const-wide/high16 v2, 0x3fe0

    add-double/2addr v2, v15

    double-to-int v0, v2

    move/from16 v17, v0

    :goto_2
    add-int/lit8 v2, v26, 0x0

    aput p2, v24, v2

    add-int/lit8 v2, v26, 0x1

    aput p8, v24, v2

    add-int/lit8 v2, v26, 0x2

    add-int v3, p5, v17

    aput v3, v24, v2

    sub-int v2, p5, p4

    add-int v2, v2, v17

    add-int p8, p8, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x0

    aput p3, v24, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v26

    add-int/lit8 v2, v2, 0x1

    aput p8, v24, v2

    if-eqz p14, :cond_8

    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    const/high16 v4, 0x2000

    or-int/2addr v3, v4

    aput v3, v24, v2

    :cond_8
    add-int/lit8 v2, v26, 0x0

    aget v3, v24, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v24, v2

    sget-object v23, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eqz p18, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v23, v2, v22

    :goto_3
    if-eqz p25, :cond_c

    if-nez v22, :cond_10

    const/16 v18, 0x1

    :goto_4
    add-int/lit8 v2, v22, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_11

    const/4 v13, 0x1

    :goto_5
    if-eqz p29, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_12

    const/4 v12, 0x1

    :goto_6
    if-eqz v18, :cond_9

    if-nez p29, :cond_9

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_b

    :cond_9
    if-nez v18, :cond_13

    if-nez v13, :cond_a

    if-nez p29, :cond_13

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_13

    :cond_b
    const/4 v14, 0x1

    :goto_7
    if-eqz v14, :cond_c

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v22

    move/from16 v10, p27

    move-object/from16 v11, p28

    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    return p8

    :cond_d
    neg-double v2, v15

    const-wide/high16 v4, 0x3fe0

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v17, v0

    goto/16 :goto_2

    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v22

    goto :goto_3

    :cond_10
    const/16 v18, 0x0

    goto :goto_4

    :cond_11
    const/4 v13, 0x0

    goto :goto_5

    :cond_12
    const/4 v12, 0x0

    goto :goto_6

    :cond_13
    const/4 v14, 0x0

    goto :goto_7
.end method


# virtual methods
.method finish()V
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    invoke-static {v0}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    return-void
.end method

.method generate(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;FFZZFLandroid/text/TextUtils$TruncateAt;)V
    .locals 131

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    const/16 v18, 0x0

    const/high16 v5, 0x3f80

    cmpl-float v5, p7, v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    cmpl-float v5, p8, v5

    if-eqz v5, :cond_3

    :cond_0
    const/16 v25, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    const/16 v126, 0x0

    move-object/from16 v0, p1

    instance-of v5, v0, Landroid/text/Spanned;

    if-eqz v5, :cond_1

    move-object/from16 v126, p1

    check-cast v126, Landroid/text/Spanned;

    :cond_1
    const/16 v85, 0x1

    move/from16 v34, p2

    :goto_1
    move/from16 v0, v34

    move/from16 v1, p3

    if-gt v0, v1, :cond_2f

    const/16 v5, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, p3

    invoke-static {v0, v5, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v43

    if-gez v43, :cond_4

    move/from16 v43, p3

    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v102, v5, 0x1

    move/from16 v101, p5

    move/from16 v123, p5

    const/16 v21, 0x0

    if-eqz v126, :cond_9

    const-class v5, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v126

    move/from16 v1, v34

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v124

    check-cast v124, [Landroid/text/style/LeadingMarginSpan;

    const/16 v110, 0x0

    :goto_3
    move-object/from16 v0, v124

    array-length v5, v0

    move/from16 v0, v110

    if-ge v0, v5, :cond_5

    aget-object v112, v124, v110

    aget-object v5, v124, v110

    const/4 v10, 0x1

    invoke-interface {v5, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v101, v101, v5

    aget-object v5, v124, v110

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v5

    sub-int v123, v123, v5

    move-object/from16 v0, v112

    instance-of v5, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v5, :cond_2

    move-object/from16 v113, v112

    check-cast v113, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v0, v126

    move-object/from16 v1, v113

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v114

    invoke-interface/range {v113 .. v113}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v5

    add-int v102, v114, v5

    :cond_2
    add-int/lit8 v110, v110, 0x1

    goto :goto_3

    :cond_3
    const/16 v25, 0x0

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v43, v43, 0x1

    goto :goto_2

    :cond_5
    const-class v5, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v126

    move/from16 v1, v34

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v21

    array-length v5, v0

    if-eqz v5, :cond_9

    if-eqz v22, :cond_6

    move-object/from16 v0, v22

    array-length v5, v0

    move-object/from16 v0, v21

    array-length v10, v0

    if-ge v5, v10, :cond_7

    :cond_6
    move-object/from16 v0, v21

    array-length v5, v0

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v5

    new-array v0, v5, [I

    move-object/from16 v22, v0

    :cond_7
    const/16 v110, 0x0

    :goto_4
    move-object/from16 v0, v21

    array-length v5, v0

    move/from16 v0, v110

    if-ge v0, v5, :cond_9

    aget-object v5, v21, v110

    move-object/from16 v0, v126

    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v116

    move/from16 v0, v116

    move/from16 v1, v34

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    aput v5, v22, v110

    :goto_5
    add-int/lit8 v110, v110, 0x1

    goto :goto_4

    :cond_8
    aput v18, v22, v110

    goto :goto_5

    :cond_9
    move-object/from16 v0, p1

    move/from16 v1, v34

    move/from16 v2, v43

    move-object/from16 v3, p6

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    iget-object v0, v4, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v32, v0

    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v33, v0

    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v26, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v27, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v28, v0

    move/from16 v130, v101

    const/16 v67, 0x0

    move/from16 v12, v34

    move/from16 v117, v34

    move/from16 v122, v67

    const/16 v118, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v119, 0x0

    move/from16 v103, v34

    move/from16 v104, v67

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v24, 0x0

    const/16 v109, 0x0

    const/16 v127, 0x0

    move/from16 v7, v34

    move/from16 v125, v7

    :goto_6
    move/from16 v0, v43

    if-ge v7, v0, :cond_2c

    move/from16 v0, v125

    if-ne v7, v0, :cond_a

    if-nez v126, :cond_1a

    move/from16 v125, v43

    :goto_7
    sub-int v8, v125, v7

    if-nez v126, :cond_1b

    move-object/from16 v0, p4

    invoke-virtual {v4, v0, v8, v9}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    :cond_a
    :goto_8
    move/from16 v115, v125

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v108, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v106, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v105, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v107, v0

    move/from16 v111, v7

    :goto_9
    move/from16 v0, v111

    move/from16 v1, v125

    if-ge v0, v1, :cond_19

    sub-int v5, v111, v34

    aget-char v99, v32, v5

    const/16 v5, 0xa

    move/from16 v0, v99

    if-ne v0, v5, :cond_1c

    :goto_a
    move/from16 v0, v130

    int-to-float v5, v0

    cmpg-float v5, v67, v5

    if-gtz v5, :cond_24

    move/from16 v104, v67

    add-int/lit8 v103, v111, 0x1

    move/from16 v0, v108

    move/from16 v1, v46

    if-ge v0, v1, :cond_b

    move/from16 v46, v108

    :cond_b
    move/from16 v0, v105

    move/from16 v1, v44

    if-ge v0, v1, :cond_c

    move/from16 v44, v105

    :cond_c
    move/from16 v0, v107

    move/from16 v1, v45

    if-le v0, v1, :cond_d

    move/from16 v45, v107

    :cond_d
    move/from16 v0, v106

    move/from16 v1, v47

    if-le v0, v1, :cond_e

    move/from16 v47, v106

    :cond_e
    const/16 v5, 0x20

    move/from16 v0, v99

    if-eq v0, v5, :cond_14

    const/16 v5, 0x9

    move/from16 v0, v99

    if-eq v0, v5, :cond_14

    const/16 v5, 0x2e

    move/from16 v0, v99

    if-eq v0, v5, :cond_f

    const/16 v5, 0x2c

    move/from16 v0, v99

    if-eq v0, v5, :cond_f

    const/16 v5, 0x3a

    move/from16 v0, v99

    if-eq v0, v5, :cond_f

    const/16 v5, 0x3b

    move/from16 v0, v99

    if-ne v0, v5, :cond_11

    :cond_f
    add-int/lit8 v5, v111, -0x1

    if-lt v5, v12, :cond_10

    add-int/lit8 v5, v111, -0x1

    sub-int v5, v5, v34

    aget-char v5, v32, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_11

    :cond_10
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_14

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v34

    aget-char v5, v32, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_11
    const/16 v5, 0x2f

    move/from16 v0, v99

    if-eq v0, v5, :cond_12

    const/16 v5, 0x2d

    move/from16 v0, v99

    if-ne v0, v5, :cond_13

    :cond_12
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_14

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v34

    aget-char v5, v32, v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_14

    :cond_13
    const/16 v5, 0x2e80

    move/from16 v0, v99

    if-lt v0, v5, :cond_18

    const/4 v5, 0x1

    move/from16 v0, v99

    invoke-static {v0, v5}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_18

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_18

    add-int/lit8 v5, v111, 0x1

    sub-int v5, v5, v34

    aget-char v5, v32, v5

    const/4 v10, 0x0

    invoke-static {v5, v10}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v5

    if-eqz v5, :cond_18

    :cond_14
    move/from16 v122, v67

    add-int/lit8 v117, v111, 0x1

    move/from16 v0, v46

    move/from16 v1, v121

    if-ge v0, v1, :cond_15

    move/from16 v121, v46

    :cond_15
    move/from16 v0, v44

    move/from16 v1, v118

    if-ge v0, v1, :cond_16

    move/from16 v118, v44

    :cond_16
    move/from16 v0, v45

    move/from16 v1, v120

    if-le v0, v1, :cond_17

    move/from16 v120, v45

    :cond_17
    move/from16 v0, v47

    move/from16 v1, v119

    if-le v0, v1, :cond_18

    move/from16 v119, v47

    :cond_18
    :goto_b
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v5, v10, :cond_2b

    :cond_19
    move/from16 v7, v115

    goto/16 :goto_6

    :cond_1a
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v126

    move/from16 v1, v43

    invoke-interface {v0, v7, v1, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v125

    goto/16 :goto_7

    :cond_1b
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v126

    move/from16 v1, v125

    invoke-interface {v0, v7, v1, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v126

    invoke-static {v6, v0, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v5, p4

    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->addStyleRunEx(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;IILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_8

    :cond_1c
    const/16 v5, 0x9

    move/from16 v0, v99

    if-ne v0, v5, :cond_1f

    if-nez v109, :cond_1d

    const/16 v109, 0x1

    const/16 v24, 0x1

    if-eqz v126, :cond_1d

    const-class v5, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v126

    move/from16 v1, v34

    move/from16 v2, v43

    invoke-static {v0, v1, v2, v5}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    array-length v5, v6

    if-lez v5, :cond_1d

    new-instance v127, Landroid/text/Layout$TabStops;

    const/16 v5, 0x14

    move-object/from16 v0, v127

    invoke-direct {v0, v5, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_1d
    if-eqz v127, :cond_1e

    move-object/from16 v0, v127

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v67

    goto/16 :goto_a

    :cond_1e
    const/16 v5, 0x14

    move/from16 v0, v67

    invoke-static {v0, v5}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v67

    goto/16 :goto_a

    :cond_1f
    const v5, 0xd800

    move/from16 v0, v99

    if-lt v0, v5, :cond_23

    const v5, 0xdfff

    move/from16 v0, v99

    if-gt v0, v5, :cond_23

    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_23

    sub-int v5, v111, v34

    move-object/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v100

    sget v5, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v100

    if-lt v0, v5, :cond_22

    sget v5, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v100

    if-gt v0, v5, :cond_22

    sget-object v5, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v98

    if-eqz v98, :cond_21

    if-nez v126, :cond_20

    move-object/from16 v128, p4

    :goto_c
    invoke-virtual/range {v98 .. v98}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {v128 .. v128}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    neg-float v10, v10

    mul-float/2addr v5, v10

    invoke-virtual/range {v98 .. v98}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v129, v5, v10

    add-float v67, v67, v129

    const/16 v24, 0x1

    add-int/lit8 v111, v111, 0x1

    goto/16 :goto_a

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v128, v0

    goto :goto_c

    :cond_21
    sub-int v5, v111, v34

    aget v5, v33, v5

    add-float v67, v67, v5

    goto/16 :goto_a

    :cond_22
    sub-int v5, v111, v34

    aget v5, v33, v5

    add-float v67, v67, v5

    goto/16 :goto_a

    :cond_23
    sub-int v5, v111, v34

    aget v5, v33, v5

    add-float v67, v67, v5

    goto/16 :goto_a

    :cond_24
    add-int/lit8 v5, v111, 0x1

    move/from16 v0, v125

    if-ge v5, v0, :cond_26

    const/16 v39, 0x1

    :goto_d
    move/from16 v0, v117

    if-eq v0, v12, :cond_28

    const/16 v5, 0x20

    move/from16 v0, v99

    if-ne v0, v5, :cond_25

    add-int/lit8 v117, v111, 0x1

    :cond_25
    :goto_e
    move/from16 v0, v117

    move/from16 v1, v125

    if-ge v0, v1, :cond_27

    sub-int v5, v117, v34

    aget-char v5, v32, v5

    const/16 v10, 0x20

    if-ne v5, v10, :cond_27

    add-int/lit8 v117, v117, 0x1

    goto :goto_e

    :cond_26
    const/16 v39, 0x0

    goto :goto_d

    :cond_27
    move/from16 v13, v117

    move/from16 v14, v118

    move/from16 v15, v120

    move/from16 v16, v121

    move/from16 v17, v119

    move/from16 v37, v122

    :goto_f
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v19, p7

    move/from16 v20, p8

    move-object/from16 v23, v9

    move/from16 v29, p3

    move/from16 v30, p9

    move/from16 v31, p10

    move-object/from16 v35, p12

    move/from16 v36, p11

    move-object/from16 v38, p4

    invoke-direct/range {v10 .. v39}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v18

    move v12, v13

    if-ge v12, v7, :cond_2a

    move/from16 v115, v12

    move/from16 v111, v12

    move/from16 v125, v115

    :goto_10
    move/from16 v103, v12

    move/from16 v117, v12

    const/16 v67, 0x0

    const/16 v47, 0x0

    move/from16 v46, v47

    move/from16 v45, v47

    move/from16 v44, v47

    const/16 v119, 0x0

    move/from16 v121, v119

    move/from16 v120, v119

    move/from16 v118, v119

    add-int/lit8 v102, v102, -0x1

    if-gtz v102, :cond_18

    move/from16 v130, v123

    goto/16 :goto_b

    :cond_28
    move/from16 v0, v103

    if-eq v0, v12, :cond_29

    move/from16 v13, v103

    move/from16 v14, v44

    move/from16 v15, v45

    move/from16 v16, v46

    move/from16 v17, v47

    move/from16 v37, v104

    goto :goto_f

    :cond_29
    add-int/lit8 v13, v12, 0x1

    iget v14, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v15, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v16, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v17, v0

    sub-int v5, v12, v34

    aget v37, v33, v5

    goto :goto_f

    :cond_2a
    add-int/lit8 v111, v12, -0x1

    goto :goto_10

    :cond_2b
    add-int/lit8 v111, v111, 0x1

    goto/16 :goto_9

    :cond_2c
    move/from16 v0, v43

    if-eq v0, v12, :cond_2e

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v10, :cond_2e

    or-int v5, v46, v47

    or-int v5, v5, v45

    or-int v5, v5, v44

    if-nez v5, :cond_2d

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v46, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v47, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v44, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v45, v0

    :cond_2d
    move/from16 v0, v43

    move/from16 v1, p3

    if-eq v0, v1, :cond_32

    const/16 v69, 0x1

    :goto_11
    move-object/from16 v40, p0

    move-object/from16 v41, p1

    move/from16 v42, v12

    move/from16 v48, v18

    move/from16 v49, p7

    move/from16 v50, p8

    move-object/from16 v51, v21

    move-object/from16 v52, v22

    move-object/from16 v53, v9

    move/from16 v54, v24

    move/from16 v55, v25

    move-object/from16 v56, v26

    move/from16 v57, v27

    move/from16 v58, v28

    move/from16 v59, p3

    move/from16 v60, p9

    move/from16 v61, p10

    move-object/from16 v62, v32

    move-object/from16 v63, v33

    move/from16 v64, v34

    move-object/from16 v65, p12

    move/from16 v66, p11

    move-object/from16 v68, p4

    invoke-direct/range {v40 .. v69}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v18

    :cond_2e
    move/from16 v34, v43

    move/from16 v0, v43

    move/from16 v1, p3

    if-ne v0, v1, :cond_33

    :cond_2f
    move/from16 v0, p3

    move/from16 v1, p2

    if-eq v0, v1, :cond_30

    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v10, 0xa

    if-ne v5, v10, :cond_31

    :cond_30
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v5, v10, :cond_31

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v72, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v73, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v74, v0

    iget v0, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v75, v0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v82, 0x0

    const/16 v84, 0x0

    const/16 v86, 0x1

    const/16 v90, 0x0

    const/16 v91, 0x0

    const/16 v95, 0x0

    const/16 v97, 0x0

    move-object/from16 v68, p0

    move-object/from16 v69, p1

    move/from16 v70, p3

    move/from16 v71, p3

    move/from16 v76, v18

    move/from16 v77, p7

    move/from16 v78, p8

    move-object/from16 v81, v9

    move/from16 v83, v25

    move/from16 v87, p3

    move/from16 v88, p9

    move/from16 v89, p10

    move/from16 v92, p2

    move-object/from16 v93, p12

    move/from16 v94, p11

    move-object/from16 v96, p4

    invoke-direct/range {v68 .. v97}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v18

    :cond_31
    return-void

    :cond_32
    const/16 v69, 0x0

    goto/16 :goto_11

    :cond_33
    move/from16 v34, v43

    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x2000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3

    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v3, -0x1

    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    const/4 v3, 0x0

    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3

    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method

.method prepare()V
    .locals 1

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mMeasured:Landroid/text/MeasuredText;

    return-void
.end method
