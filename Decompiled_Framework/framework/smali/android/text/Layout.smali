.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions; = null

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions; = null

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory; = null

#the value of this static final field might be set in the static constructor
.field static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field static final MIN_EMOJI:I = 0x0

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle; = null

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I

.field mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, -0x1

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v2, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x3t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0x7t
    .end array-data
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    :cond_1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-void
.end method

.method static synthetic access$000(Landroid/text/Layout;III[CI)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/text/Layout;->ellipsize(III[CI)V

    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    add-int/lit8 v15, v15, -0x1

    :cond_0
    const/4 v14, 0x0

    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    move/from16 v0, v18

    if-le v0, v15, :cond_1

    move/from16 v18, v15

    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v11

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    :cond_3
    return-void
.end method

.method private ellipsize(III[CI)V
    .locals 7

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    move v4, v3

    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_0

    if-ne v4, v3, :cond_3

    const/16 v1, 0x2026

    :goto_1
    add-int v0, v4, v5

    if-lt v0, p1, :cond_2

    if-ge v0, p2, :cond_2

    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const v1, 0xfeff

    goto :goto_1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 6

    const/4 v1, 0x0

    new-instance v4, Landroid/text/TextPaint;

    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_2

    const/16 v5, 0xa

    invoke-static {p0, v5, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    if-gez v2, :cond_0

    move v2, p2

    :cond_0
    invoke-static {p3, v4, p0, v0, v2}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v3

    cmpl-float v5, v3, v1

    if-lez v5, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getHorizontal(IZ)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/Layout;->getHorizontal(IZI)F

    move-result v1

    return v1
.end method

.method private getHorizontal(IZI)F
    .locals 14

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    const/4 v9, 0x0

    if-eqz v8, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    array-length v2, v12

    if-lez v2, :cond_0

    new-instance v9, Landroid/text/Layout$TabStops;

    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v9

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0
.end method

.method private getLineExtent(IZ)F
    .locals 11

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    array-length v1, v9

    if-lez v1, :cond_0

    new-instance v8, Landroid/text/Layout$TabStops;

    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-nez v6, :cond_2

    const/4 v10, 0x0

    :goto_1
    return v10

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_1
.end method

.method private getLineStartPos(III)I
    .locals 12

    const/4 v11, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_0

    move v8, p2

    :goto_0
    return v8

    :cond_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_2

    if-ne v1, v11, :cond_1

    move v8, p2

    goto :goto_0

    :cond_1
    move v8, p3

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    const-class v10, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    const-class v9, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    array-length v9, v6

    if-lez v9, :cond_3

    new-instance v7, Landroid/text/Layout$TabStops;

    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_3
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_4

    sub-int v8, p3, v2

    goto :goto_0

    :cond_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_6

    if-ne v1, v11, :cond_5

    sub-int v8, p3, v2

    goto :goto_0

    :cond_5
    sub-int v8, p2, v2

    goto :goto_0

    :cond_6
    and-int/lit8 v2, v2, -0x2

    add-int v9, p2, p3

    sub-int/2addr v9, v2

    shr-int/lit8 v8, v9, 0x1

    goto :goto_0
.end method

.method private getLineVisibleEnd(III)I
    .locals 3

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    move v2, p3

    :goto_0
    return v2

    :cond_0
    add-int/lit8 p3, p3, -0x1

    :cond_1
    if-le p3, p2, :cond_3

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    add-int/lit8 v2, p3, -0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    :cond_3
    move v2, p3

    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9

    if-nez p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const v7, 0xdc00

    if-lt v0, v7, :cond_1

    const v7, 0xdfff

    if-gt v0, v7, :cond_1

    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v7, 0xd800

    if-lt v1, v7, :cond_1

    const v7, 0xdbff

    if-gt v1, v7, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_1
    array-length v7, v4

    if-ge v3, v7, :cond_3

    move-object v7, v6

    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    move-object v7, v6

    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    move p1, v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v7, p1

    goto :goto_0
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 15

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v12

    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v13, 0x0

    const/4 v2, -0x1

    if-ne v6, v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    const/4 v10, 0x1

    :goto_1
    if-eqz v10, :cond_5

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v12, v2, :cond_4

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    :cond_0
    :goto_2
    if-eqz v13, :cond_1

    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {p0, v12}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v14

    if-eq v14, v6, :cond_1

    if-nez p2, :cond_7

    const/16 p2, 0x1

    :goto_3
    move v6, v14

    :cond_1
    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    sub-int v2, p1, v4

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v2

    add-int p1, v4, v2

    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v1

    move/from16 v11, p1

    :goto_4
    return v11

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    :cond_4
    move/from16 v11, p1

    goto :goto_4

    :cond_5
    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    if-lez v12, :cond_6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_6
    move/from16 v11, p1

    goto :goto_4

    :cond_7
    const/16 p2, 0x0

    goto :goto_3
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_1

    const/4 v6, 0x0

    :cond_0
    :goto_0
    return v6

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    const-class v14, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    array-length v14, v12

    if-nez v14, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    if-eqz v5, :cond_3

    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_5

    :cond_3
    const/4 v3, 0x1

    :goto_1
    const/4 v2, 0x0

    :goto_2
    array-length v14, v12

    if-ge v2, v14, :cond_0

    aget-object v8, v12, v2

    move v13, v3

    instance-of v14, v8, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_4

    invoke-interface {v11, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    move-object v14, v8

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_6

    const/4 v13, 0x1

    :cond_4
    :goto_3
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const/4 v13, 0x0

    goto :goto_3
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method static measurePara(Landroid/text/TextPaint;Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .locals 20

    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v15

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v19

    :try_start_0
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    iget-boolean v3, v15, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v3, :cond_1

    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v8, 0x1

    :goto_0
    iget-object v12, v15, Landroid/text/MeasuredText;->mChars:[C

    iget v14, v15, Landroid/text/MeasuredText;->mLen:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v14, :cond_0

    aget-char v3, v12, v13

    const/16 v4, 0x9

    if-ne v3, v4, :cond_2

    const/4 v10, 0x1

    move-object/from16 v0, p2

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    move-object/from16 v0, p2

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v17, v0

    const-class v3, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v16

    const-class v3, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v17

    move/from16 v1, p3

    move/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v18

    array-length v3, v0

    if-lez v3, :cond_0

    new-instance v11, Landroid/text/Layout$TabStops;

    const/16 v3, 0x14

    move-object/from16 v0, v18

    invoke-direct {v11, v3, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :cond_0
    move-object/from16 v3, v19

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    invoke-static/range {v19 .. v19}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    invoke-static {v15}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    return v3

    :cond_1
    :try_start_1
    iget v3, v15, Landroid/text/MeasuredText;->mDir:I

    iget-object v4, v15, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v5, 0x0

    iget-object v6, v15, Landroid/text/MeasuredText;->mChars:[C

    const/4 v7, 0x0

    iget v8, v15, Landroid/text/MeasuredText;->mLen:I

    invoke-static/range {v3 .. v8}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v9

    iget v8, v15, Landroid/text/MeasuredText;->mDir:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static/range {v19 .. v19}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    invoke-static {v15}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    throw v3
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6

    const/high16 v5, 0x41a0

    const v2, 0x7f7fffff

    const/4 v0, 0x0

    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    if-nez p4, :cond_0

    check-cast p0, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    if-nez v0, :cond_2

    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    int-to-float v2, v3

    goto :goto_1

    :cond_3
    const v4, 0x7f7fffff

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_2
    return v4

    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    goto :goto_2
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 13

    const v12, 0x3ffffff

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_0
    array-length v11, v7

    if-ge v0, v11, :cond_2

    aget v11, v7, v0

    add-int v8, v6, v11

    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    if-le v3, v5, :cond_0

    move v3, v5

    :cond_0
    if-lt p1, v8, :cond_5

    if-ge p1, v3, :cond_5

    if-le p1, v8, :cond_1

    :goto_1
    return v9

    :cond_1
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    :cond_2
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_6

    move v1, v9

    :cond_3
    :goto_2
    const/4 v2, -0x1

    if-ne p1, v6, :cond_8

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v10, :cond_7

    move v2, v9

    :cond_4
    :goto_3
    if-ge v2, v1, :cond_b

    :goto_4
    move v9, v10

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_6
    move v1, v10

    goto :goto_2

    :cond_7
    move v2, v10

    goto :goto_3

    :cond_8
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_5
    array-length v11, v7

    if-ge v0, v11, :cond_4

    aget v11, v7, v0

    add-int v8, v6, v11

    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    if-le v3, v5, :cond_9

    move v3, v5

    :cond_9
    if-lt p1, v8, :cond_a

    if-ge p1, v3, :cond_a

    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    goto :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_b
    move v10, v9

    goto :goto_4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 79

    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    :try_start_0
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v57, v0

    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v56, v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v76, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v54

    move/from16 v0, v57

    move/from16 v1, v76

    if-le v0, v1, :cond_1

    move/from16 v76, v57

    :cond_1
    move/from16 v0, v56

    move/from16 v1, v54

    if-ge v0, v1, :cond_2

    move/from16 v54, v56

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v58

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v60

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v65

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v66

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v69, v0

    sget-object v70, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/16 v68, 0x0

    const/16 v74, 0x0

    if-eqz v69, :cond_6

    move-object/from16 v67, v10

    check-cast v67, Landroid/text/Spanned;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v74

    move/from16 v13, v58

    :goto_1
    move/from16 v0, v60

    if-gt v13, v0, :cond_5

    move/from16 v11, v66

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    move/from16 v66, v12

    move/from16 v7, v65

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    move/from16 v65, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    move/from16 v0, v68

    if-lt v11, v0, :cond_3

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v67

    move/from16 v1, v74

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v68

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v67

    invoke-static {v0, v11, v12, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v70

    check-cast v70, [Landroid/text/style/ParagraphStyle;

    :cond_3
    const/16 v63, 0x0

    :goto_2
    move-object/from16 v0, v70

    array-length v3, v0

    move/from16 v0, v63

    if-ge v0, v3, :cond_4

    aget-object v2, v70, v63

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v63, v63, 0x1

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    const/16 v68, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v65

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v66

    sget-object v70, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    :cond_6
    if-eqz p2, :cond_8

    if-eqz p4, :cond_7

    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p4, :cond_8

    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v64, v0

    const/16 v38, 0x0

    const/16 v73, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v75

    move/from16 v13, v58

    move-object/from16 v72, v38

    :goto_3
    move/from16 v0, v60

    if-gt v13, v0, :cond_21

    move/from16 v11, v66

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v66

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-direct {v0, v13, v11, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v12

    move/from16 v7, v65

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    move/from16 v65, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v18

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v17, v0

    if-eqz v69, :cond_13

    move-object/from16 v67, v10

    check-cast v67, Landroid/text/Spanned;

    if-eqz v11, :cond_9

    add-int/lit8 v3, v11, -0x1

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_f

    :cond_9
    const/16 v25, 0x1

    :goto_4
    move/from16 v0, v68

    if-lt v11, v0, :cond_c

    move/from16 v0, v58

    if-eq v13, v0, :cond_a

    if-eqz v25, :cond_c

    :cond_a
    const-class v3, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v67

    move/from16 v1, v74

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v68

    const-class v3, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v67

    move/from16 v1, v68

    invoke-static {v0, v11, v1, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v70

    check-cast v70, [Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v64, v0

    move-object/from16 v0, v70

    array-length v3, v0

    add-int/lit8 v63, v3, -0x1

    :goto_5
    if-ltz v63, :cond_b

    aget-object v3, v70, v63

    instance-of v3, v3, Landroid/text/style/AlignmentSpan;

    if-eqz v3, :cond_10

    aget-object v3, v70, v63

    check-cast v3, Landroid/text/style/AlignmentSpan;

    invoke-interface {v3}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v64

    :cond_b
    const/16 v73, 0x0

    :cond_c
    move-object/from16 v0, v70

    array-length v0, v0

    move/from16 v61, v0

    const/16 v63, 0x0

    :goto_6
    move/from16 v0, v63

    move/from16 v1, v61

    if-ge v0, v1, :cond_13

    aget-object v3, v70, v63

    instance-of v3, v3, Landroid/text/style/LeadingMarginSpan;

    if-eqz v3, :cond_e

    aget-object v14, v70, v63

    check-cast v14, Landroid/text/style/LeadingMarginSpan;

    move/from16 v77, v25

    instance-of v3, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v3, :cond_d

    move-object v3, v14

    check-cast v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v3}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v55

    move-object/from16 v0, v67

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v71

    add-int v3, v71, v55

    if-ge v13, v3, :cond_11

    const/16 v77, 0x1

    :cond_d
    :goto_7
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_12

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v26, p0

    invoke-interface/range {v14 .. v26}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move/from16 v0, v77

    invoke-interface {v14, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    sub-int v17, v17, v3

    :cond_e
    :goto_8
    add-int/lit8 v63, v63, 0x1

    goto :goto_6

    :cond_f
    const/16 v25, 0x0

    goto/16 :goto_4

    :cond_10
    add-int/lit8 v63, v63, -0x1

    goto :goto_5

    :cond_11
    const/16 v77, 0x0

    goto :goto_7

    :cond_12
    move-object/from16 v26, v14

    move-object/from16 v27, p1

    move-object/from16 v28, v4

    move/from16 v30, v18

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v34, v10

    move/from16 v35, v11

    move/from16 v36, v12

    move/from16 v37, v25

    move-object/from16 v38, p0

    invoke-interface/range {v26 .. v38}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move/from16 v0, v77

    invoke-interface {v14, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    add-int v29, v29, v3

    goto :goto_8

    :cond_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v37

    if-eqz v37, :cond_22

    if-nez v73, :cond_22

    if-nez v72, :cond_15

    new-instance v38, Landroid/text/Layout$TabStops;

    const/16 v3, 0x14

    move-object/from16 v0, v38

    move-object/from16 v1, v70

    invoke-direct {v0, v3, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :goto_9
    const/16 v73, 0x1

    :goto_a
    move-object/from16 v53, v64

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_17

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_16

    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :cond_14
    :goto_b
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_1a

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_19

    move/from16 v78, v29

    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v36

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v36

    if-ne v0, v3, :cond_1d

    if-nez v69, :cond_1d

    if-nez v37, :cond_1d

    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_d
    if-eqz v69, :cond_20

    move-object/from16 v67, v10

    check-cast v67, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/LineForegroundSpan;

    move-object/from16 v0, v67

    invoke-interface {v0, v11, v12, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v59

    check-cast v59, [Landroid/text/style/LineForegroundSpan;

    move-object/from16 v0, v59

    array-length v0, v0

    move/from16 v61, v0

    const/16 v63, 0x0

    :goto_e
    move/from16 v0, v63

    move/from16 v1, v61

    if-ge v0, v1, :cond_20

    aget-object v39, v59, v63

    move-object/from16 v0, v67

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v50

    move-object/from16 v0, v67

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v51

    move/from16 v0, v50

    if-lt v0, v11, :cond_1e

    :goto_f
    move/from16 v0, v51

    if-gt v0, v12, :cond_1f

    :goto_10
    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v43, v0

    move-object/from16 v40, p1

    move-object/from16 v41, v4

    move/from16 v44, v7

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v47, v10

    move/from16 v48, v11

    move/from16 v49, v12

    move/from16 v52, v13

    invoke-interface/range {v39 .. v52}, Landroid/text/style/LineForegroundSpan;->drawForeground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIIII)V

    add-int/lit8 v63, v63, 0x1

    goto :goto_e

    :cond_15
    const/16 v3, 0x14

    move-object/from16 v0, v72

    move-object/from16 v1, v70

    invoke-virtual {v0, v3, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v38, v72

    goto/16 :goto_9

    :cond_16
    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_b

    :cond_17
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_14

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_18

    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_11
    goto/16 :goto_b

    :cond_18
    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_11

    :cond_19
    move/from16 v78, v17

    goto/16 :goto_c

    :cond_1a
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v13, v1, v3}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v3

    float-to-int v0, v3

    move/from16 v62, v0

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_1c

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1b

    sub-int v78, v17, v62

    goto/16 :goto_c

    :cond_1b
    sub-int v78, v29, v62

    goto/16 :goto_c

    :cond_1c
    and-int/lit8 v62, v62, -0x2

    add-int v3, v17, v29

    sub-int v3, v3, v62

    shr-int/lit8 v78, v3, 0x1

    goto/16 :goto_c

    :cond_1d
    move-object/from16 v30, v75

    move-object/from16 v31, v4

    move-object/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 v35, v18

    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    move/from16 v0, v78

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v75

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_d

    :cond_1e
    move/from16 v50, v11

    goto/16 :goto_f

    :cond_1f
    move/from16 v51, v12

    goto/16 :goto_10

    :cond_20
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v72, v38

    goto/16 :goto_3

    :cond_21
    invoke-static/range {v75 .. v75}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto/16 :goto_0

    :cond_22
    move-object/from16 v38, v72

    goto/16 :goto_a
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/text/TextPaint;I)V
    .locals 85

    const/16 v54, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    :try_start_0
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v58, v0

    sget-object v3, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v57, v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v82, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v55

    move/from16 v0, v58

    move/from16 v1, v82

    if-le v0, v1, :cond_1

    move/from16 v82, v58

    :cond_1
    move/from16 v0, v57

    move/from16 v1, v55

    if-ge v0, v1, :cond_2

    move/from16 v55, v57

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v82

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v59

    move-object/from16 v0, p0

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v61

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v68

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v69

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v74, v0

    sget-object v75, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/16 v73, 0x0

    const/16 v80, 0x0

    if-eqz v74, :cond_6

    move-object/from16 v72, v10

    check-cast v72, Landroid/text/Spanned;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v80

    move/from16 v13, v59

    :goto_1
    move/from16 v0, v61

    if-gt v13, v0, :cond_5

    move/from16 v11, v69

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    move/from16 v69, v12

    move/from16 v7, v68

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    move/from16 v68, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    move/from16 v0, v73

    if-lt v11, v0, :cond_3

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v72

    move/from16 v1, v80

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v73

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    move-object/from16 v0, v72

    invoke-static {v0, v11, v12, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v75

    check-cast v75, [Landroid/text/style/ParagraphStyle;

    :cond_3
    const/16 v66, 0x0

    :goto_2
    move-object/from16 v0, v75

    array-length v3, v0

    move/from16 v0, v66

    if-ge v0, v3, :cond_4

    aget-object v2, v75, v66

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v66, v66, 0x1

    goto :goto_2

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    const/16 v73, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v68

    move-object/from16 v0, p0

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v69

    sget-object v75, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    :cond_6
    if-eqz p2, :cond_9

    if-eqz p5, :cond_7

    const/4 v3, 0x0

    move/from16 v0, p5

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_7
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p5, :cond_8

    const/4 v3, 0x0

    move/from16 v0, p5

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v71

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v70

    move/from16 v0, v71

    move/from16 v1, v70

    if-eq v0, v1, :cond_12

    const/16 v54, 0x1

    :goto_3
    move/from16 v0, v71

    move/from16 v1, v70

    if-le v0, v1, :cond_9

    move/from16 v79, v71

    move/from16 v71, v70

    move/from16 v70, v79

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v67, v0

    const/16 v38, 0x0

    const/16 v78, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v81

    move/from16 v13, v59

    move-object/from16 v77, v38

    :goto_4
    move/from16 v0, v61

    if-gt v13, v0, :cond_29

    move/from16 v11, v69

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v69

    move-object/from16 v0, p0

    move/from16 v1, v69

    invoke-direct {v0, v13, v11, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v12

    move/from16 v7, v68

    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    move/from16 v68, v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v18

    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v17, v0

    const/16 v63, -0x1

    const/16 v64, -0x1

    if-eqz v54, :cond_b

    move/from16 v0, v71

    if-lt v11, v0, :cond_a

    move/from16 v0, v70

    if-gt v11, v0, :cond_a

    move/from16 v71, v11

    :cond_a
    move/from16 v0, v71

    if-lt v0, v11, :cond_b

    move/from16 v0, v71

    if-gt v0, v12, :cond_b

    move/from16 v64, v71

    move/from16 v0, v70

    if-le v0, v12, :cond_13

    move/from16 v63, v12

    :cond_b
    :goto_5
    if-eqz v74, :cond_18

    move-object/from16 v72, v10

    check-cast v72, Landroid/text/Spanned;

    if-eqz v11, :cond_c

    add-int/lit8 v3, v11, -0x1

    invoke-interface {v10, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_14

    :cond_c
    const/16 v25, 0x1

    :goto_6
    move/from16 v0, v73

    if-lt v11, v0, :cond_f

    move/from16 v0, v59

    if-eq v13, v0, :cond_d

    if-eqz v25, :cond_f

    :cond_d
    const-class v3, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v72

    move/from16 v1, v80

    invoke-interface {v0, v11, v1, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v73

    const-class v3, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v72

    move/from16 v1, v73

    invoke-static {v0, v11, v1, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v75

    check-cast v75, [Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v67, v0

    move-object/from16 v0, v75

    array-length v3, v0

    add-int/lit8 v66, v3, -0x1

    :goto_7
    if-ltz v66, :cond_e

    aget-object v3, v75, v66

    instance-of v3, v3, Landroid/text/style/AlignmentSpan;

    if-eqz v3, :cond_15

    aget-object v3, v75, v66

    check-cast v3, Landroid/text/style/AlignmentSpan;

    invoke-interface {v3}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v67

    :cond_e
    const/16 v78, 0x0

    :cond_f
    move-object/from16 v0, v75

    array-length v0, v0

    move/from16 v62, v0

    const/16 v66, 0x0

    :goto_8
    move/from16 v0, v66

    move/from16 v1, v62

    if-ge v0, v1, :cond_18

    aget-object v3, v75, v66

    instance-of v3, v3, Landroid/text/style/LeadingMarginSpan;

    if-eqz v3, :cond_11

    aget-object v14, v75, v66

    check-cast v14, Landroid/text/style/LeadingMarginSpan;

    move/from16 v83, v25

    instance-of v3, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v3, :cond_10

    move-object v3, v14

    check-cast v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v3}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v56

    move-object/from16 v0, v72

    invoke-interface {v0, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v76

    add-int v3, v76, v56

    if-ge v13, v3, :cond_16

    const/16 v83, 0x1

    :cond_10
    :goto_9
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_17

    move-object/from16 v15, p1

    move-object/from16 v16, v4

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v26, p0

    invoke-interface/range {v14 .. v26}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move/from16 v0, v83

    invoke-interface {v14, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    sub-int v17, v17, v3

    :cond_11
    :goto_a
    add-int/lit8 v66, v66, 0x1

    goto :goto_8

    :cond_12
    const/16 v54, 0x0

    goto/16 :goto_3

    :cond_13
    move/from16 v63, v70

    goto/16 :goto_5

    :cond_14
    const/16 v25, 0x0

    goto/16 :goto_6

    :cond_15
    add-int/lit8 v66, v66, -0x1

    goto :goto_7

    :cond_16
    const/16 v83, 0x0

    goto :goto_9

    :cond_17
    move-object/from16 v26, v14

    move-object/from16 v27, p1

    move-object/from16 v28, v4

    move/from16 v30, v18

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v33, v9

    move-object/from16 v34, v10

    move/from16 v35, v11

    move/from16 v36, v12

    move/from16 v37, v25

    move-object/from16 v38, p0

    invoke-interface/range {v26 .. v38}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    move/from16 v0, v83

    invoke-interface {v14, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    add-int v29, v29, v3

    goto :goto_a

    :cond_18
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v37

    if-eqz v37, :cond_2a

    if-nez v78, :cond_2a

    if-nez v77, :cond_1a

    new-instance v38, Landroid/text/Layout$TabStops;

    const/16 v3, 0x14

    move-object/from16 v0, v38

    move-object/from16 v1, v75

    invoke-direct {v0, v3, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    :goto_b
    const/16 v78, 0x1

    :goto_c
    move-object/from16 v53, v67

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_1c

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1b

    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :cond_19
    :goto_d
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_1f

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1e

    move/from16 v84, v29

    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v36

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v36

    if-ne v0, v3, :cond_24

    if-nez v74, :cond_24

    if-nez v37, :cond_24

    if-eqz v54, :cond_23

    if-ltz v64, :cond_22

    if-ltz v63, :cond_22

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v64

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v64

    move/from16 v33, v63

    move-object/from16 v36, p4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v63

    move/from16 v33, v12

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :goto_f
    if-eqz v74, :cond_28

    move-object/from16 v72, v10

    check-cast v72, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/LineForegroundSpan;

    move-object/from16 v0, v72

    invoke-interface {v0, v11, v12, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v60

    check-cast v60, [Landroid/text/style/LineForegroundSpan;

    move-object/from16 v0, v60

    array-length v0, v0

    move/from16 v62, v0

    const/16 v66, 0x0

    :goto_10
    move/from16 v0, v66

    move/from16 v1, v62

    if-ge v0, v1, :cond_28

    aget-object v39, v60, v66

    move-object/from16 v0, v72

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v50

    move-object/from16 v0, v72

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v51

    move/from16 v0, v50

    if-lt v0, v11, :cond_26

    :goto_11
    move/from16 v0, v51

    if-gt v0, v12, :cond_27

    :goto_12
    const/16 v42, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v43, v0

    move-object/from16 v40, p1

    move-object/from16 v41, v4

    move/from16 v44, v7

    move/from16 v45, v8

    move/from16 v46, v9

    move-object/from16 v47, v10

    move/from16 v48, v11

    move/from16 v49, v12

    move/from16 v52, v13

    invoke-interface/range {v39 .. v52}, Landroid/text/style/LineForegroundSpan;->drawForeground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIIII)V

    add-int/lit8 v66, v66, 0x1

    goto :goto_10

    :cond_1a
    const/16 v3, 0x14

    move-object/from16 v0, v77

    move-object/from16 v1, v75

    invoke-virtual {v0, v3, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v38, v77

    goto/16 :goto_b

    :cond_1b
    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_d

    :cond_1c
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_19

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1d

    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_13
    goto/16 :goto_d

    :cond_1d
    sget-object v53, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_13

    :cond_1e
    move/from16 v84, v17

    goto/16 :goto_e

    :cond_1f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v13, v1, v3}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v3

    float-to-int v0, v3

    move/from16 v65, v0

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v53

    if-ne v0, v3, :cond_21

    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_20

    sub-int v84, v17, v65

    goto/16 :goto_e

    :cond_20
    sub-int v84, v29, v65

    goto/16 :goto_e

    :cond_21
    and-int/lit8 v65, v65, -0x2

    add-int v3, v17, v29

    sub-int v3, v3, v65

    shr-int/lit8 v84, v3, 0x1

    goto/16 :goto_e

    :cond_22
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_23
    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v34, v0

    int-to-float v0, v8

    move/from16 v35, v0

    move-object/from16 v30, p1

    move-object/from16 v31, v10

    move/from16 v32, v11

    move/from16 v33, v12

    move-object/from16 v36, v4

    invoke-virtual/range {v30 .. v36}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_f

    :cond_24
    if-eqz v54, :cond_25

    if-ltz v64, :cond_25

    if-ltz v63, :cond_25

    move-object/from16 v30, v81

    move-object/from16 v31, v4

    move-object/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v64

    move/from16 v35, v18

    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v81

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v84, v0

    move-object/from16 v30, v81

    move-object/from16 v31, p4

    move-object/from16 v32, v10

    move/from16 v33, v64

    move/from16 v34, v63

    move/from16 v35, v18

    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v81

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    move-object/from16 v0, p0

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v84, v0

    move-object/from16 v30, v81

    move-object/from16 v31, v4

    move-object/from16 v32, v10

    move/from16 v33, v63

    move/from16 v34, v12

    move/from16 v35, v18

    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v81

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_f

    :cond_25
    move-object/from16 v30, v81

    move-object/from16 v31, v4

    move-object/from16 v32, v10

    move/from16 v33, v11

    move/from16 v34, v12

    move/from16 v35, v18

    invoke-virtual/range {v30 .. v38}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    move/from16 v0, v84

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v81

    move-object/from16 v20, p1

    move/from16 v22, v7

    move/from16 v23, v8

    move/from16 v24, v9

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    goto/16 :goto_f

    :cond_26
    move/from16 v50, v11

    goto/16 :goto_11

    :cond_27
    move/from16 v51, v12

    goto/16 :goto_12

    :cond_28
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v77, v38

    goto/16 :goto_4

    :cond_29
    invoke-static/range {v81 .. v81}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v38, v77

    goto/16 :goto_c
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 23

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v17

    add-int/lit8 v20, v16, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v20

    const/high16 v21, 0x3f00

    sub-float v9, v20, v21

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v20

    const/high16 v21, 0x3f00

    sub-float v12, v20, v21

    :goto_0
    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v20

    const/16 v21, 0x800

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v21

    or-int v6, v20, v21

    const/16 v20, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v8

    const/4 v7, 0x0

    if-nez v6, :cond_0

    if-eqz v8, :cond_2

    :cond_0
    sub-int v20, v5, v17

    shr-int/lit8 v7, v20, 0x2

    if-eqz v8, :cond_1

    add-int v17, v17, v7

    :cond_1
    if-eqz v6, :cond_2

    sub-int/2addr v5, v7

    :cond_2
    const/high16 v20, 0x3f00

    cmpg-float v20, v9, v20

    if-gez v20, :cond_3

    const/high16 v9, 0x3f00

    :cond_3
    const/high16 v20, 0x3f00

    cmpg-float v20, v12, v20

    if-gez v20, :cond_4

    const/high16 v12, 0x3f00

    :cond_4
    invoke-static {v9, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v20

    if-nez v20, :cond_6

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v6, v0, :cond_7

    add-int v20, v5, v7

    move/from16 v0, v20

    int-to-float v3, v0

    int-to-float v0, v7

    move/from16 v20, v0

    add-float v14, v12, v20

    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v13, v12, v20

    const/high16 v20, 0x3f80

    sub-float v3, v3, v20

    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v3}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v14, v3}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v15, 0x0

    :goto_2
    int-to-float v0, v7

    move/from16 v20, v0

    cmpg-float v20, v15, v20

    if-gez v20, :cond_8

    int-to-float v0, v5

    move/from16 v20, v0

    add-float v4, v20, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v4}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v20, v12, v15

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v4}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v20, v12, v15

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1, v4}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v20, 0x3f80

    add-float v15, v15, v20

    goto :goto_2

    :cond_5
    move v12, v9

    goto/16 :goto_0

    :cond_6
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-int v20, v17, v5

    shr-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    add-int v20, v17, v5

    shr-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1

    :cond_7
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v6, v0, :cond_8

    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v20, v12, v20

    add-int v21, v5, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v20, v12, v20

    add-int v21, v5, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v7

    move/from16 v20, v0

    add-float v20, v20, v12

    add-int v21, v5, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, v7

    move/from16 v20, v0

    add-float v20, v20, v12

    add-int v21, v5, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    sub-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v12, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_8
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v8, v0, :cond_9

    sub-int v20, v17, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v7

    move/from16 v20, v0

    add-float v11, v9, v20

    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v10, v9, v20

    const/high16 v20, 0x3f80

    add-float v18, v18, v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p2

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v15, 0x0

    :goto_3
    int-to-float v0, v7

    move/from16 v20, v0

    cmpg-float v20, v15, v20

    if-gez v20, :cond_a

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v20, v15

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v20, v9, v15

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v20, v9, v15

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const/high16 v20, 0x3f80

    add-float v15, v15, v20

    goto :goto_3

    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v8, v0, :cond_a

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v20, v9, v20

    sub-int v21, v17, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, v7

    move/from16 v20, v0

    sub-float v20, v9, v20

    sub-int v21, v17, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v0, v7

    move/from16 v20, v0

    add-float v20, v20, v9

    sub-int v21, v17, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v0, v7

    move/from16 v20, v0

    add-float v20, v20, v9

    sub-int v21, v17, v7

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    move-object/from16 v0, p2

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_a
    return-void
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 5

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    return v2
.end method

.method public getLineForVertical(I)I
    .locals 5

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, -0x1

    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_0

    :cond_1
    if-gez v2, :cond_2

    const/4 v2, 0x0

    :cond_2
    return v2
.end method

.method public getLineLeft(I)F
    .locals 8

    const/4 v7, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_2

    if-ne v1, v7, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    :cond_2
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_3

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    :cond_3
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v6, :cond_4

    if-eq v1, v7, :cond_0

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    goto :goto_0
.end method

.method public getLineMax(I)F
    .locals 4

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getLineRight(I)F
    .locals 7

    const/4 v6, -0x1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    :goto_0
    return v5

    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    if-ne v1, v6, :cond_1

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_0

    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    if-ne v1, v6, :cond_4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    goto :goto_0

    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    goto :goto_0
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 4

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    add-float v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    add-int/lit8 v13, v13, 0x1

    :cond_0
    move v4, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v11, 0x0

    :goto_0
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x400

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    const/16 v16, -0x1

    :goto_1
    move/from16 v0, v17

    if-le v0, v13, :cond_1

    move/from16 v17, v13

    :cond_1
    add-int/lit8 v18, v17, -0x1

    add-int/lit8 v10, v18, 0x1

    add-int/lit8 v18, v9, 0x1

    add-int/lit8 v12, v18, -0x1

    :goto_2
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_3

    move v10, v8

    goto :goto_2

    :cond_2
    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    move v12, v8

    goto :goto_2

    :cond_4
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_5

    add-int/lit8 v12, v9, 0x1

    :cond_5
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move/from16 v0, v17

    if-ge v3, v0, :cond_6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    cmpg-float v18, v15, v7

    if-gez v18, :cond_6

    move v7, v15

    move v12, v3

    :cond_6
    cmpg-float v18, v7, v5

    if-gez v18, :cond_7

    move v5, v7

    move v4, v12

    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v18, v7, v5

    if-gez v18, :cond_8

    move v5, v7

    move v4, v9

    :cond_8
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpg-float v18, v7, v5

    if-gez v18, :cond_a

    move v5, v7

    move v4, v13

    :cond_a
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const-class v6, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    array-length v2, v3

    if-lez v2, :cond_0

    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v1

    goto :goto_0
.end method

.method public final getParagraphRight(I)I
    .locals 3

    iget v1, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public getPrimaryHorizontal(I)F
    .locals 2

    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    return v1
.end method

.method public getSecondaryHorizontal(I)F
    .locals 2

    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    move/from16 v17, p2

    move/from16 p2, p1

    move/from16 p1, v17

    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_1
    add-int/lit8 v16, v3, 0x1

    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    return-void
.end method

.method public isLevelBoundary(I)Z
    .locals 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_5

    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v9, :cond_3

    move v5, v8

    :goto_1
    if-ne p1, v4, :cond_4

    move v6, v8

    :goto_2
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_0

    move v8, v9

    goto :goto_0

    :cond_3
    move v5, v9

    goto :goto_1

    :cond_4
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    goto :goto_2

    :cond_5
    sub-int/2addr p1, v4

    const/4 v1, 0x0

    :goto_3
    array-length v10, v7

    if-ge v1, v10, :cond_0

    aget v10, v7, v1

    if-ne p1, v10, :cond_6

    move v8, v9

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method public isRtlCharAt(I)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    sget-object v9, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    sget-object v9, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v9, :cond_2

    move v8, v7

    goto :goto_0

    :cond_2
    iget-object v5, v0, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    const/4 v1, 0x0

    :goto_1
    array-length v9, v5

    if-ge v1, v9, :cond_0

    aget v9, v5, v1

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int v6, v4, v9

    if-lt p1, v6, :cond_4

    add-int/lit8 v9, v1, 0x1

    aget v9, v5, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v2, v9, 0x3f

    and-int/lit8 v9, v2, 0x1

    if-eqz v9, :cond_3

    :goto_2
    move v8, v7

    goto :goto_0

    :cond_3
    move v7, v8

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1
.end method

.method protected final isSpanned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3

    if-gez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return-void
.end method
