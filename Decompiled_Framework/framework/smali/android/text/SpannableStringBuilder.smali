.class public Landroid/text/SpannableStringBuilder;
.super Ljava/lang/Object;
.source "SpannableStringBuilder.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Landroid/text/GetChars;
.implements Landroid/text/Spannable;
.implements Landroid/text/Editable;
.implements Ljava/lang/Appendable;
.implements Landroid/text/GraphicsOperations;


# static fields
.field private static final END_MASK:I = 0xf

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PARAGRAPH:I = 0x3

.field private static final POINT:I = 0x2

.field private static final START_MASK:I = 0xf0

.field private static final START_SHIFT:I = 0x4


# instance fields
.field private mFilters:[Landroid/text/InputFilter;

.field private mGapLength:I

.field private mGapStart:I

.field private mSpanCount:I

.field private mSpanEnds:[I

.field private mSpanFlags:[I

.field private mSpanStarts:[I

.field private mSpans:[Ljava/lang/Object;

.field private mText:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/text/InputFilter;

    sput-object v0, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .locals 11

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v9, Landroid/text/SpannableStringBuilder;->NO_FILTERS:[Landroid/text/InputFilter;

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    sub-int v7, p3, p2

    add-int/lit8 v9, v7, 0x1

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v4

    new-array v9, v4, [C

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iput v7, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v9, v4, v7

    iput v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget-object v9, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    invoke-static {p1, p2, p3, v9, v10}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iput v10, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    invoke-static {v10}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    new-array v9, v0, [Ljava/lang/Object;

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    new-array v9, v0, [I

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    new-array v9, v0, [I

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    new-array v9, v0, [I

    iput-object v9, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    instance-of v9, p1, Landroid/text/Spanned;

    if-eqz v9, :cond_5

    move-object v5, p1

    check-cast v5, Landroid/text/Spanned;

    const-class v9, Ljava/lang/Object;

    invoke-interface {v5, p2, p3, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    array-length v9, v6

    if-ge v3, v9, :cond_5

    aget-object v9, v6, v3

    instance-of v9, v9, Landroid/text/NoCopySpan;

    if-eqz v9, :cond_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    sub-int v8, v9, p2

    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    sub-int v1, v9, p2

    aget-object v9, v6, v3

    invoke-interface {v5, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v2

    if-gez v8, :cond_1

    const/4 v8, 0x0

    :cond_1
    sub-int v9, p3, p2

    if-le v8, v9, :cond_2

    sub-int v8, p3, p2

    :cond_2
    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    sub-int v9, p3, p2

    if-le v1, v9, :cond_4

    sub-int v1, p3, p2

    :cond_4
    aget-object v9, v6, v3

    invoke-virtual {p0, v9, v8, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method private change(IILjava/lang/CharSequence;II)I
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method private change(ZIILjava/lang/CharSequence;II)I
    .locals 23

    const-string/jumbo v4, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v4, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    sub-int v19, p6, p5

    const/16 v18, 0x0

    if-eqz p1, :cond_0

    sub-int v4, p3, p2

    sub-int v5, p6, p5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v4, v5}, Landroid/text/SpannableStringBuilder;->sendTextWillChange(III)[Landroid/text/TextWatcher;

    move-result-object v18

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v14, v4, -0x1

    :goto_0
    if-ltz v14, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v14

    and-int/lit8 v4, v4, 0x33

    const/16 v5, 0x33

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v22, v4, v14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, v22

    if-le v0, v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v22, v22, v4

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v12, v4, v14

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v12, v4, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v12, v4

    :cond_2
    move/from16 v17, v22

    move/from16 v16, v12

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    move/from16 v0, v22

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    move/from16 v0, v22

    move/from16 v1, p3

    if-gt v0, v1, :cond_3

    move/from16 v22, p3

    :goto_1
    move/from16 v0, v22

    if-ge v0, v11, :cond_3

    move/from16 v0, v22

    move/from16 v1, p3

    if-le v0, v1, :cond_7

    add-int/lit8 v4, v22, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_7

    :cond_3
    move/from16 v0, p2

    if-le v12, v0, :cond_4

    move/from16 v0, p3

    if-gt v12, v0, :cond_4

    move/from16 v12, p3

    :goto_2
    if-ge v12, v11, :cond_4

    move/from16 v0, p3

    if-le v12, v0, :cond_8

    add-int/lit8 v4, v12, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_8

    :cond_4
    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    move/from16 v0, v16

    if-eq v12, v0, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v4, v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v5, v5, v14

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1, v12, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_6
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    sub-int v4, p6, p5

    sub-int v5, p3, p2

    sub-int v15, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-lt v15, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v4

    add-int/2addr v4, v15

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/2addr v4, v15

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v4, v15

    move-object/from16 v0, p0

    iput v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v5, 0x1

    if-ge v4, v5, :cond_b

    new-instance v4, Ljava/lang/Exception;

    const-string/jumbo v5, "mGapLength < 1"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v4, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    move-object/from16 v0, p4

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_f

    move-object/from16 v20, p4

    check-cast v20, Landroid/text/Spanned;

    const-class v4, Ljava/lang/Object;

    move-object/from16 v0, v20

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    const/4 v14, 0x0

    :goto_3
    move-object/from16 v0, v21

    array-length v4, v0

    if-ge v14, v4, :cond_f

    aget-object v4, v21, v14

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    aget-object v4, v21, v14

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    move/from16 v0, v22

    move/from16 v1, p5

    if-ge v0, v1, :cond_c

    move/from16 v22, p5

    :cond_c
    move/from16 v0, p6

    if-le v12, v0, :cond_d

    move/from16 v12, p6

    :cond_d
    aget-object v4, v21, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_e

    const/4 v5, 0x0

    aget-object v6, v21, v14

    sub-int v4, v22, p5

    add-int v7, v4, p2

    sub-int v4, v12, p5

    add-int v8, v4, p2

    aget-object v4, v21, v14

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_f
    move/from16 v0, p6

    move/from16 v1, p5

    if-le v0, v1, :cond_11

    sub-int v4, p3, p2

    if-nez v4, :cond_11

    if-eqz p1, :cond_10

    sub-int v4, p3, p2

    sub-int v5, p6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    :cond_10
    :goto_4
    return v19

    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    if-ne v4, v5, :cond_17

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v14, v4, -0x1

    :goto_6
    if-ltz v14, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v14

    move/from16 v0, p2

    if-lt v4, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v14

    and-int/lit16 v4, v4, 0xf0

    shr-int/lit8 v13, v4, 0x4

    const/4 v4, 0x2

    if-eq v13, v4, :cond_12

    const/4 v4, 0x3

    if-ne v13, v4, :cond_18

    if-eqz v10, :cond_18

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    aput v5, v4, v14

    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v14

    move/from16 v0, p2

    if-lt v4, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    if-ge v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v4, v4, v14

    and-int/lit8 v13, v4, 0xf

    const/4 v4, 0x2

    if-eq v13, v4, :cond_14

    const/4 v4, 0x3

    if-ne v13, v4, :cond_19

    if-eqz v10, :cond_19

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    aput v5, v4, v14

    :cond_15
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v4, v4, v14

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v5, v14

    if-ge v4, v5, :cond_16

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    :cond_16
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_6

    :cond_17
    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p2, v4, v14

    goto :goto_7

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p2, v4, v14

    goto :goto_8

    :cond_1a
    if-eqz p1, :cond_10

    sub-int v4, p3, p2

    sub-int v5, p6, p5

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    goto/16 :goto_4
.end method

.method private checkRange(Ljava/lang/String;II)V
    .locals 4

    if-ge p3, p2, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has end before start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-le p3, v0, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ends beyond length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-ltz p2, :cond_3

    if-gez p3, :cond_4

    :cond_3
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2, p3}, Landroid/text/SpannableStringBuilder;->region(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts before 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-void
.end method

.method private moveGapTo(I)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne p1, v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ne p1, v6, :cond_5

    const/4 v0, 0x1

    :goto_1
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ge p1, v6, :cond_6

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, v6, p1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v8, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v4

    invoke-static {v6, p1, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    const/4 v3, 0x0

    :goto_3
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v3, v6, :cond_b

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v6, v3

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v6, v3

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_1

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v6

    :cond_1
    if-le v5, p1, :cond_7

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    :cond_2
    :goto_4
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v6, :cond_3

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v6

    :cond_3
    if-le v1, p1, :cond_9

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    :cond_4
    :goto_5
    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput v5, v6, v3

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v4, p1, v6

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v7, p1

    sub-int/2addr v7, v4

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v9, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v6, v7, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_7
    if-ne v5, p1, :cond_2

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v2, v6, 0x4

    if-eq v2, v10, :cond_8

    if-eqz v0, :cond_2

    if-ne v2, v11, :cond_2

    :cond_8
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v5, v6

    goto :goto_4

    :cond_9
    if-ne v1, p1, :cond_4

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v6, v6, v3

    and-int/lit8 v2, v6, 0xf

    if-eq v2, v10, :cond_a

    if-eqz v0, :cond_4

    if-ne v2, v11, :cond_4

    :cond_a
    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v6

    goto :goto_5

    :cond_b
    iput p1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    goto/16 :goto_0
.end method

.method private static region(II)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeSpan(I)V
    .locals 7

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v2, v4, p1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, p1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, p1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    :cond_1
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v5, p1, 0x1

    sub-int v0, v4, v5

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    invoke-static {v4, v5, v6, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    invoke-direct {p0, v2, v3, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    return-void
.end method

.method private resizeFor(I)V
    .locals 9

    const/4 v8, 0x0

    add-int/lit8 v5, p1, 0x1

    invoke-static {v5}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v2

    new-array v3, v2, [C

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v5, v5

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v7, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v6, v7

    sub-int v0, v5, v6

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    invoke-static {v5, v8, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v6, v6

    sub-int/2addr v6, v0

    sub-int v7, v2, v0

    invoke-static {v5, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v5, v1

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_0

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v5, v1

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v7, v7

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    :cond_0
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v5, v1

    iget v6, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v6, :cond_1

    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v5, v1

    iget-object v7, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v7, v7

    sub-int v7, v2, v7

    add-int/2addr v6, v7

    aput v6, v5, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v4, v5

    iput-object v3, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v6, v6

    sub-int/2addr v6, v4

    add-int/2addr v5, v6

    iput v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    iget v5, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_3

    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private sendSpanAdded(Ljava/lang/Object;II)V
    .locals 4

    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanChanged(Ljava/lang/Object;IIII)V
    .locals 10

    invoke-static {p2, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p3, p5}, Ljava/lang/Math;->max(II)I

    move-result v1

    const-class v2, Landroid/text/SpanWatcher;

    invoke-virtual {p0, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/SpanWatcher;

    array-length v8, v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v0, v9, v7

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/text/SpanWatcher;->onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendSpanRemoved(Ljava/lang/Object;II)V
    .locals 4

    const-class v3, Landroid/text/SpanWatcher;

    invoke-virtual {p0, p2, p3, v3}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/SpanWatcher;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/SpanWatcher;->onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendTextChange([Landroid/text/TextWatcher;III)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-interface {v2, p0, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendTextHasChanged([Landroid/text/TextWatcher;)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-interface {v2, p0}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private sendTextWillChange(III)[Landroid/text/TextWatcher;
    .locals 5

    add-int v3, p1, p2

    const-class v4, Landroid/text/TextWatcher;

    invoke-virtual {p0, p1, v3, v4}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/TextWatcher;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, v2, v0

    invoke-interface {v3, p0, p1, p2, p3}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private setSpan(ZLjava/lang/Object;III)V
    .locals 21

    move/from16 v7, p3

    move/from16 v8, p4

    const-string/jumbo v3, "setSpan"

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    move/from16 v0, p5

    and-int/lit16 v3, v0, 0xf0

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p3

    if-eq v0, v3, :cond_0

    add-int/lit8 v3, p3, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    const/16 v3, 0xa

    if-eq v9, v3, :cond_0

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PARAGRAPH span must start at paragraph boundary"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    and-int/lit8 v3, p5, 0xf

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p4

    if-eq v0, v3, :cond_1

    add-int/lit8 v3, p4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    const/16 v3, 0xa

    if-eq v9, v3, :cond_1

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "PARAGRAPH span must end at paragraph boundary"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-le v0, v3, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v3

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-le v0, v3, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v3

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_c

    aget-object v3, v18, v12

    move-object/from16 v0, p2

    if-ne v3, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v3, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v3, v12

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v5, v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v5, v3

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v6, v3, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v6, v3

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aput p3, v3, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aput p4, v3, v12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aput p5, v3, v12

    if-eqz p1, :cond_6

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v3 .. v8}, Landroid/text/SpannableStringBuilder;->sendSpanChanged(Ljava/lang/Object;IIII)V

    :cond_6
    :goto_3
    return-void

    :cond_7
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    move/from16 v0, p5

    and-int/lit16 v3, v0, 0xf0

    shr-int/lit8 v11, v3, 0x4

    const/4 v3, 0x2

    if-eq v11, v3, :cond_8

    const/4 v3, 0x3

    if-ne v11, v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p3, p3, v3

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    and-int/lit8 v11, p5, 0xf

    const/4 v3, 0x2

    if-eq v11, v3, :cond_a

    const/4 v3, 0x3

    if-ne v11, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    move/from16 v0, p4

    if-ne v0, v3, :cond_3

    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int p4, p4, v3

    goto/16 :goto_1

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    array-length v4, v4

    if-lt v3, v4, :cond_d

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v13

    new-array v0, v13, [Ljava/lang/Object;

    move-object/from16 v16, v0

    new-array v0, v13, [I

    move-object/from16 v17, v0

    new-array v14, v13, [I

    new-array v15, v13, [I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v4, v14, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    const/4 v4, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v4, v15, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    aput-object p2, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    aput p3, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    aput p4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    aput p5, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    if-eqz p1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v8}, Landroid/text/SpannableStringBuilder;->sendSpanAdded(Ljava/lang/Object;II)V

    goto/16 :goto_3
.end method

.method public static valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 1

    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic append(C)Landroid/text/Editable;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(C)Landroid/text/SpannableStringBuilder;
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public charAt(I)C
    .locals 4

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-gez p1, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-lt p1, v0, :cond_1

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charAt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >= length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v1, :cond_2

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v2, p1

    aget-char v1, v1, v2

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    aget-char v1, v1, p1

    goto :goto_0
.end method

.method public clear()V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-string v3, ""

    move-object v0, p0

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public clearSpans()V
    .locals 6

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v4, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v3, v4, v0

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v2, v4, v0

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v1, v4, v0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v2, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v2, v4

    :cond_0
    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v1, v4, :cond_1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v1, v4

    :cond_1
    iput v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v5, v4, v0

    invoke-direct {p0, v3, v2, v1}, Landroid/text/SpannableStringBuilder;->sendSpanRemoved(Ljava/lang/Object;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic delete(II)Landroid/text/Editable;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public delete(II)Landroid/text/SpannableStringBuilder;
    .locals 7

    const/4 v4, 0x0

    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_0
    return-object v6
.end method

.method public drawText(Landroid/graphics/Canvas;IIFFLandroid/graphics/Paint;)V
    .locals 7

    const/4 v2, 0x0

    const-string v0, "drawText"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p3, v0, :cond_0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p3, p2

    move-object v0, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p2, v0, :cond_1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    invoke-virtual {p0, p2, p3, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v3, p3, p2

    move-object v0, p1

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public drawTextRun(Landroid/graphics/Canvas;IIIIFFILandroid/graphics/Paint;)V
    .locals 10

    const-string v0, "drawTextRun"

    invoke-direct {p0, v0, p2, p3}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    sub-int v5, p5, p4

    sub-int v3, p3, p2

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p5, v0, :cond_0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p1

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p4, v0, :cond_1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p2, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p4, v0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, p4, p5, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p2, p4

    const/4 v4, 0x0

    move-object v0, p1

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFILandroid/graphics/Paint;)V

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getChars(II[CI)V
    .locals 4

    const-string v0, "getChars"

    invoke-direct {p0, v0, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v1, p2, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, p1

    sub-int v2, p2, p1

    invoke-static {v0, v1, p3, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v1, p1

    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int/2addr v2, p1

    add-int/2addr v2, p4

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    sub-int v3, p2, v3

    invoke-static {v0, v1, p3, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget-object v4, v2, v1

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v3, v4, v1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_0
    :goto_1
    return v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 4

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    aget v3, v3, v1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 5

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_2

    aget-object v4, v2, v1

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v3, v4, v1

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-le v3, v4, :cond_0

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v3, v4

    :cond_0
    :goto_1
    return v3

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    if-nez p3, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    :cond_0
    :goto_0
    return-object v13

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanFlags:[I

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v2, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    move v3, v2

    :goto_1
    if-ge v8, v15, :cond_e

    aget v17, v19, v8

    move/from16 v0, v17

    if-le v0, v7, :cond_2

    sub-int v17, v17, v6

    :cond_2
    move/from16 v0, v17

    move/from16 v1, p2

    if-le v0, v1, :cond_3

    move v2, v3

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move v3, v2

    goto :goto_1

    :cond_3
    aget v16, v4, v8

    move/from16 v0, v16

    if-le v0, v7, :cond_4

    sub-int v16, v16, v6

    :cond_4
    move/from16 v0, v16

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    move/from16 v0, p1

    move/from16 v1, p2

    if-eq v0, v1, :cond_7

    move/from16 v0, v17

    move/from16 v1, p2

    if-ne v0, v1, :cond_6

    move v2, v3

    goto :goto_2

    :cond_6
    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_7

    move v2, v3

    goto :goto_2

    :cond_7
    aget-object v20, v18, v8

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_8

    move v2, v3

    goto :goto_2

    :cond_8
    if-nez v3, :cond_9

    aget-object v14, v18, v8

    add-int/lit8 v2, v3, 0x1

    goto :goto_2

    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_a

    sub-int v20, v15, v8

    add-int/lit8 v20, v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v14, v13, v20

    :cond_a
    aget v20, v5, v8

    const/high16 v21, 0xff

    and-int v12, v20, v21

    if-eqz v12, :cond_d

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v3, :cond_b

    aget-object v20, v13, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->getSpanFlags(Ljava/lang/Object;)I

    move-result v20

    const/high16 v21, 0xff

    and-int v11, v20, v21

    if-le v12, v11, :cond_c

    :cond_b
    add-int/lit8 v20, v9, 0x1

    sub-int v21, v3, v9

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v9, v13, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v20, v18, v8

    aput-object v20, v13, v9

    add-int/lit8 v2, v3, 0x1

    goto/16 :goto_2

    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v2, v3, 0x1

    aget-object v20, v18, v8

    aput-object v20, v13, v3

    goto/16 :goto_2

    :cond_e
    if-nez v3, :cond_f

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v13

    goto/16 :goto_0

    :cond_f
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_10

    const/16 v20, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v13, v20

    check-cast v13, [Ljava/lang/Object;

    const/16 v20, 0x0

    aput-object v14, v13, v20

    goto/16 :goto_0

    :cond_10
    array-length v0, v13

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v3, v0, :cond_0

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/Object;

    move-object/from16 v10, v20

    check-cast v10, [Ljava/lang/Object;

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-static {v13, v0, v10, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v10

    goto/16 :goto_0
.end method

.method public getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F
    .locals 10

    sub-int v5, p4, p3

    sub-int v3, p2, p1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v4, p3

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v9

    :goto_0
    return v9

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v9

    goto :goto_0

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p1, p3

    const/4 v4, 0x0

    move-object/from16 v0, p8

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v9

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getTextRunAdvances(IIIII[FILandroid/graphics/Paint;I)F
    .locals 11

    sub-int v5, p4, p3

    sub-int v3, p2, p1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p8

    move v2, p1

    move v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v10

    :goto_0
    return v10

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v4, p3, v0

    move-object/from16 v0, p8

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v10

    goto :goto_0

    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v1, v0}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p1, p3

    const/4 v4, 0x0

    move-object/from16 v0, p8

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FII)F

    move-result v10

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getTextRunCursor(IIIIILandroid/graphics/Paint;)I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    sub-int v3, p2, p1

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v0, :cond_0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object v0, p6

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    :goto_0
    return v7

    :cond_0
    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v0, :cond_1

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v2, p1, v0

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int v5, p4, v0

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int v7, v0, v2

    goto :goto_0

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v5, p4, p1

    move-object v0, p6

    move v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v0

    add-int v7, v0, p1

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public getTextWidths(II[FLandroid/graphics/Paint;)I
    .locals 5

    const/4 v3, 0x0

    const-string v2, "getTextWidths"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p4, v2, p1, v3, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p4, v2, v3, v4, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    goto :goto_0

    :cond_1
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p2, p1

    invoke-virtual {p4, v0, v3, v2, p3}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic insert(ILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/4 v4, 0x0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public length()I
    .locals 2

    iget-object v0, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    array-length v0, v0

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public measureText(IILandroid/graphics/Paint;)F
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v2, "measureText"

    invoke-direct {p0, v2, p1, p2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-gt p2, v2, :cond_0

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    sub-int v3, p2, p1

    invoke-virtual {p3, v2, p1, v3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-lt p1, v2, :cond_1

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mText:[C

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/2addr v3, p1

    sub-int v4, p2, p1

    invoke-virtual {p3, v2, v3, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    goto :goto_0

    :cond_1
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, v3}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    sub-int v2, p2, p1

    invoke-virtual {p3, v0, v3, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    goto :goto_0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 10

    iget v0, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    iget-object v6, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    iget-object v8, p0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    iget-object v2, p0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    iget v4, p0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    iget v3, p0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    if-nez p3, :cond_0

    const-class p3, Ljava/lang/Object;

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_5

    aget v7, v8, v5

    aget v1, v2, v5

    if-le v7, v4, :cond_1

    sub-int/2addr v7, v3

    :cond_1
    if-le v1, v4, :cond_2

    sub-int/2addr v1, v3

    :cond_2
    if-le v7, p1, :cond_3

    if-ge v7, p2, :cond_3

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    move p2, v7

    :cond_3
    if-le v1, p1, :cond_4

    if-ge v1, p2, :cond_4

    aget-object v9, v6, v5

    invoke-virtual {p3, v9}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move p2, v1

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return p2
.end method

.method public removeSpan(Ljava/lang/Object;)V
    .locals 2

    iget v1, p0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/text/SpannableStringBuilder;->mSpans:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    invoke-direct {p0, v0}, Landroid/text/SpannableStringBuilder;->removeSpan(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;)Landroid/text/Editable;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(IILjava/lang/CharSequence;II)Landroid/text/Editable;
    .locals 1

    invoke-virtual/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
    .locals 6

    const/4 v4, 0x0

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public replace(IILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;
    .locals 24

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    array-length v15, v5

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    if-ge v0, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    aget-object v5, v5, v16

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v22

    if-eqz v22, :cond_0

    move-object/from16 p3, v22

    const/16 p4, 0x0

    invoke-interface/range {v22 .. v22}, Ljava/lang/CharSequence;->length()I

    move-result p5

    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :cond_1
    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_2

    :goto_1
    return-object p0

    :cond_2
    move/from16 v0, p2

    move/from16 v1, p1

    if-eq v0, v1, :cond_3

    move/from16 v0, p4

    move/from16 v1, p5

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-direct/range {p0 .. p5}, Landroid/text/SpannableStringBuilder;->change(IILjava/lang/CharSequence;II)I

    goto :goto_1

    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v23

    invoke-static/range {p0 .. p0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v12

    const-string/jumbo v5, "replace"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v5, v1, v2}, Landroid/text/SpannableStringBuilder;->checkRange(Ljava/lang/String;II)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->moveGapTo(I)V

    sub-int v20, p2, p1

    sub-int v5, p5, p4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->sendTextWillChange(III)[Landroid/text/TextWatcher;

    move-result-object v21

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x2

    if-ge v5, v6, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;->resizeFor(I)V

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mSpanCount:I

    add-int/lit8 v16, v5, -0x1

    :goto_2
    if-ltz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v5, v5, v16

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanStarts:[I

    aget v6, v5, v16

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v16

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v5, v5, v16

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    if-ne v5, v6, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mSpanEnds:[I

    aget v6, v5, v16

    add-int/lit8 v6, v6, 0x1

    aput v6, v5, v16

    :cond_7
    add-int/lit8 v16, v16, -0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/SpannableStringBuilder;->mText:[C

    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    const/16 v7, 0x20

    aput-char v7, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/SpannableStringBuilder;->mGapStart:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/SpannableStringBuilder;->mGapLength:I

    const/4 v6, 0x1

    if-ge v5, v6, :cond_9

    new-instance v5, Ljava/lang/Exception;

    const-string/jumbo v6, "mGapLength < 1"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    const/4 v6, 0x0

    add-int/lit8 v7, p1, 0x1

    add-int/lit8 v8, p1, 0x1

    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move-result v17

    const/4 v6, 0x0

    add-int/lit8 v8, p1, 0x1

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v7, p1

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    const/4 v6, 0x0

    add-int v7, p1, v17

    add-int v5, p1, v17

    add-int v8, v5, v20

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Landroid/text/SpannableStringBuilder;->change(ZIILjava/lang/CharSequence;II)I

    move/from16 v0, v23

    move/from16 v1, p1

    if-le v0, v1, :cond_b

    move/from16 v0, v23

    move/from16 v1, p2

    if-ge v0, v1, :cond_b

    sub-int v5, v23, p1

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move/from16 v0, v17

    int-to-long v5, v0

    mul-long v5, v5, v18

    sub-int v7, p2, p1

    int-to-long v9, v7

    div-long v18, v5, v9

    move-wide/from16 v0, v18

    long-to-int v5, v0

    add-int v8, v5, p1

    const/4 v6, 0x0

    sget-object v7, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    const/16 v10, 0x22

    move-object/from16 v5, p0

    move v9, v8

    invoke-direct/range {v5 .. v10}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    :goto_3
    move/from16 v0, p1

    if-le v12, v0, :cond_a

    move/from16 v0, p2

    if-ge v12, v0, :cond_a

    sub-int v5, v12, p1

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move/from16 v0, v17

    int-to-long v5, v0

    mul-long v5, v5, v18

    sub-int v7, p2, p1

    int-to-long v9, v7

    div-long v18, v5, v9

    move-wide/from16 v0, v18

    long-to-int v5, v0

    add-int v12, v5, p1

    const/4 v10, 0x0

    sget-object v11, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    const/16 v14, 0x22

    move-object/from16 v9, p0

    move v13, v12

    invoke-direct/range {v9 .. v14}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p1

    move/from16 v3, v20

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->sendTextChange([Landroid/text/TextWatcher;III)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;->sendTextHasChanged([Landroid/text/TextWatcher;)V

    goto/16 :goto_1

    :cond_b
    move/from16 v8, v23

    goto :goto_3
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/text/SpannableStringBuilder;->mFilters:[Landroid/text/InputFilter;

    return-void
.end method

.method public setSpan(Ljava/lang/Object;III)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/SpannableStringBuilder;->setSpan(ZLjava/lang/Object;III)V

    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    sub-int v1, p2, p1

    new-array v0, v1, [C

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    new-array v0, v1, [C

    invoke-virtual {p0, v2, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->getChars(II[CI)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
