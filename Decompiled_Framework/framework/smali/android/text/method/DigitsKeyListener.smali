.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final CHARACTERS:[[C = null

.field private static final DECIMAL:I = 0x2

.field private static final PHONE:I = 0x4

.field private static final SIGN:I = 0x1

.field private static sInstance:[Landroid/text/method/DigitsKeyListener;


# instance fields
.field private mAccepted:[C

.field private mDecimal:Z

.field private mPhone:Z

.field private mSign:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xb

    const/4 v3, 0x5

    new-array v0, v3, [[C

    const/4 v1, 0x0

    const/16 v2, 0xa

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [C

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [C

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0xc

    new-array v2, v2, [C

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x1b

    new-array v2, v2, [C

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    new-array v0, v3, [Landroid/text/method/DigitsKeyListener;

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
    .end array-data

    :array_1
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2dt 0x0t
    .end array-data

    nop

    :array_2
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2et 0x0t
    .end array-data

    nop

    :array_3
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x2dt 0x0t
        0x2et 0x0t
    .end array-data

    :array_4
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2ct 0x0t
        0x2ft 0x0t
        0x4et 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x3bt 0x0t
        0x70t 0x0t
        0x50t 0x0t
        0x77t 0x0t
        0x57t 0x0t
        0x24t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-void

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public constructor <init>(ZZZ)V
    .locals 5

    const/4 v3, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    iput-boolean p1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    iput-boolean p3, p0, Landroid/text/method/DigitsKeyListener;->mPhone:Z

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    move v4, v2

    :goto_0
    if-eqz p2, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v4, v2

    if-eqz p3, :cond_3

    move v2, v3

    :goto_2
    or-int v0, v4, v2

    if-le v0, v3, :cond_0

    move v0, v1

    :cond_0
    sget-object v1, Landroid/text/method/DigitsKeyListener;->CHARACTERS:[[C

    aget-object v1, v1, v0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-void

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2
.end method

.method public static getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v0}, Landroid/text/method/DigitsKeyListener;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, v0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    return-object v0
.end method

.method public static getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 3

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-eqz p1, :cond_0

    const/4 v1, 0x2

    :cond_0
    or-int v0, v2, v1

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    :goto_1
    return-object v1

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1}, Landroid/text/method/DigitsKeyListener;-><init>(ZZ)V

    aput-object v2, v1, v0

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    goto :goto_1
.end method

.method public static getInstance(ZZZ)Landroid/text/method/DigitsKeyListener;
    .locals 5

    const/4 v3, 0x4

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    move v4, v2

    :goto_0
    if-eqz p1, :cond_2

    const/4 v2, 0x2

    :goto_1
    or-int/2addr v4, v2

    if-eqz p2, :cond_3

    move v2, v3

    :goto_2
    or-int v0, v4, v2

    if-le v0, v3, :cond_0

    move v0, v1

    :cond_0
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    :goto_3
    return-object v1

    :cond_1
    move v4, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(ZZZ)V

    aput-object v2, v1, v0

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sInstance:[Landroid/text/method/DigitsKeyListener;

    aget-object v1, v1, v0

    goto :goto_3
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v4

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    if-eqz v4, :cond_2

    move-object p1, v4

    const/4 p2, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result p3

    :cond_2
    const/4 v5, -0x1

    const/4 v1, -0x1

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p5, :cond_5

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_4

    move v5, v3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_3

    move v1, v3

    goto :goto_2

    :cond_5
    move/from16 v3, p6

    :goto_3
    if-ge v3, v2, :cond_8

    invoke-interface {p4, v3}, Landroid/text/Spanned;->charAt(I)C

    move-result v0

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_6

    const-string v4, ""

    goto :goto_0

    :cond_6
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_7

    move v1, v3

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    add-int/lit8 v3, p3, -0x1

    :goto_4
    if-lt v3, p2, :cond_12

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v6, 0x0

    const/16 v8, 0x2d

    if-ne v0, v8, :cond_d

    if-ne v3, p2, :cond_9

    if-eqz p5, :cond_b

    :cond_9
    const/4 v6, 0x1

    :cond_a
    :goto_5
    if-eqz v6, :cond_11

    add-int/lit8 v8, p2, 0x1

    if-ne p3, v8, :cond_f

    const-string v4, ""

    goto :goto_0

    :cond_b
    if-ltz v5, :cond_c

    const/4 v6, 0x1

    goto :goto_5

    :cond_c
    move v5, v3

    goto :goto_5

    :cond_d
    const/16 v8, 0x2e

    if-ne v0, v8, :cond_a

    if-ltz v1, :cond_e

    const/4 v6, 0x1

    goto :goto_5

    :cond_e
    move v1, v3

    goto :goto_5

    :cond_f
    if-nez v7, :cond_10

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    :cond_10
    sub-int v8, v3, p2

    add-int/lit8 v9, v3, 0x1

    sub-int/2addr v9, p2

    invoke-virtual {v7, v8, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_11
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_12
    if-eqz v7, :cond_13

    move-object v4, v7

    goto :goto_0

    :cond_13
    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    iget-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 2

    const/4 v0, 0x2

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x1000

    :cond_0
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_1

    or-int/lit16 v0, v0, 0x2000

    :cond_1
    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mPhone:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :cond_2
    return v0
.end method
