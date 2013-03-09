.class final Ljava/lang/HexStringParser;
.super Ljava/lang/Object;
.source "HexStringParser.java"


# static fields
.field private static final BINARY_EXPONENT:Ljava/lang/String; = "[pP]([+-]?\\d+)"

.field private static final DOUBLE_EXPONENT_WIDTH:I = 0xb

.field private static final DOUBLE_MANTISSA_WIDTH:I = 0x34

.field private static final FLOAT_EXPONENT_WIDTH:I = 0x8

.field private static final FLOAT_MANTISSA_WIDTH:I = 0x17

.field private static final FLOAT_TYPE_SUFFIX:Ljava/lang/String; = "[fFdD]?"

.field private static final HEX_PATTERN:Ljava/lang/String; = "[\\x00-\\x20]*([+-]?)0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)[pP]([+-]?\\d+)[fFdD]?[\\x00-\\x20]*"

.field private static final HEX_RADIX:I = 0x10

.field private static final HEX_SIGNIFICANT:Ljava/lang/String; = "0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)"

.field private static final MAX_SIGNIFICANT_LENGTH:I = 0xf

.field private static final PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final EXPONENT_BASE:J

.field private final EXPONENT_WIDTH:I

.field private final MANTISSA_MASK:J

.field private final MANTISSA_WIDTH:I

.field private final MAX_EXPONENT:J

.field private final MIN_EXPONENT:J

.field private abandonedNumber:Ljava/lang/String;

.field private exponent:J

.field private mantissa:J

.field private sign:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[\\x00-\\x20]*([+-]?)0[xX](\\p{XDigit}+\\.?|\\p{XDigit}*\\.\\p{XDigit}+)[pP]([+-]?\\d+)[fFdD]?[\\x00-\\x20]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ljava/lang/HexStringParser;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    const-wide/16 v2, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    iput p1, p0, Ljava/lang/HexStringParser;->EXPONENT_WIDTH:I

    iput p2, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, p1, -0x1

    shl-long v0, v2, v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Ljava/lang/HexStringParser;->EXPONENT_BASE:J

    shl-long v0, v2, p1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Ljava/lang/HexStringParser;->MAX_EXPONENT:J

    iget v0, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Ljava/lang/HexStringParser;->MIN_EXPONENT:J

    shl-long v0, v2, p2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Ljava/lang/HexStringParser;->MANTISSA_MASK:J

    return-void
.end method

.method private checkedAddExponent(J)V
    .locals 7

    iget-wide v3, p0, Ljava/lang/HexStringParser;->exponent:J

    add-long v1, v3, p1

    iget-wide v3, p0, Ljava/lang/HexStringParser;->exponent:J

    invoke-static {v3, v4}, Ljava/lang/Long;->signum(J)I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Long;->signum(J)I

    move-result v3

    mul-int/2addr v3, v0

    if-lez v3, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->signum(J)I

    move-result v3

    mul-int/2addr v3, v0

    if-gez v3, :cond_0

    int-to-long v3, v0

    const-wide v5, 0x7fffffffffffffffL

    mul-long/2addr v3, v5

    iput-wide v3, p0, Ljava/lang/HexStringParser;->exponent:J

    :goto_0
    return-void

    :cond_0
    iput-wide v1, p0, Ljava/lang/HexStringParser;->exponent:J

    goto :goto_0
.end method

.method private countBitsLength(J)I
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v1, v0, 0x40

    return v1
.end method

.method private discardTrailingBits(J)V
    .locals 6

    const-wide/16 v4, -0x1

    long-to-int v2, p1

    shl-long v2, v4, v2

    xor-long v0, v2, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Ljava/lang/HexStringParser;->mantissa:J

    and-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    iget-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    long-to-int v4, p1

    shr-long/2addr v2, v4

    iput-wide v2, p0, Ljava/lang/HexStringParser;->mantissa:J

    return-void
.end method

.method private fitMantissaInDesiredWidth(I)V
    .locals 4

    iget-wide v1, p0, Ljava/lang/HexStringParser;->mantissa:J

    invoke-direct {p0, v1, v2}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    move-result v0

    if-le v0, p1, :cond_0

    sub-int v1, v0, p1

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Ljava/lang/HexStringParser;->discardTrailingBits(J)V

    :goto_0
    return-void

    :cond_0
    iget-wide v1, p0, Ljava/lang/HexStringParser;->mantissa:J

    sub-int v3, p1, v0

    shl-long/2addr v1, v3

    iput-wide v1, p0, Ljava/lang/HexStringParser;->mantissa:J

    goto :goto_0
.end method

.method private getNormalizedSignificand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^0+"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "0"

    :cond_0
    return-object v0
.end method

.method private getOffset(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/16 v5, 0x10

    const/4 v2, 0x0

    const-string v3, "^0+"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private parse(Ljava/lang/String;Z)J
    .locals 8

    sget-object v4, Ljava/lang/HexStringParser;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid hex "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_0

    const-string v4, "double"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const-string v4, "float"

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2}, Ljava/lang/HexStringParser;->parseHexSign(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/lang/HexStringParser;->parseExponent(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Ljava/lang/HexStringParser;->parseMantissa(Ljava/lang/String;)V

    iget-wide v4, p0, Ljava/lang/HexStringParser;->sign:J

    iget v6, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    iget v7, p0, Ljava/lang/HexStringParser;->EXPONENT_WIDTH:I

    add-int/2addr v6, v7

    shl-long/2addr v4, v6

    iput-wide v4, p0, Ljava/lang/HexStringParser;->sign:J

    iget-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    iget v6, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    shl-long/2addr v4, v6

    iput-wide v4, p0, Ljava/lang/HexStringParser;->exponent:J

    iget-wide v4, p0, Ljava/lang/HexStringParser;->sign:J

    iget-wide v6, p0, Ljava/lang/HexStringParser;->exponent:J

    or-long/2addr v4, v6

    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    or-long/2addr v4, v6

    return-wide v4
.end method

.method public static parseDouble(Ljava/lang/String;)D
    .locals 5

    new-instance v0, Ljava/lang/HexStringParser;

    const/16 v3, 0xb

    const/16 v4, 0x34

    invoke-direct {v0, v3, v4}, Ljava/lang/HexStringParser;-><init>(II)V

    const/4 v3, 0x1

    invoke-direct {v0, p0, v3}, Ljava/lang/HexStringParser;->parse(Ljava/lang/String;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    return-wide v3
.end method

.method private parseExponent(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2d

    if-ne v2, v4, :cond_1

    const/4 v1, -0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    int-to-long v3, v1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v3, v5

    iput-wide v3, p0, Ljava/lang/HexStringParser;->exponent:J

    iget-wide v3, p0, Ljava/lang/HexStringParser;->EXPONENT_BASE:J

    invoke-direct {p0, v3, v4}, Ljava/lang/HexStringParser;->checkedAddExponent(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v0

    int-to-long v3, v1

    const-wide v5, 0x7fffffffffffffffL

    mul-long/2addr v3, v5

    iput-wide v3, p0, Ljava/lang/HexStringParser;->exponent:J

    goto :goto_1
.end method

.method public static parseFloat(Ljava/lang/String;)F
    .locals 4

    new-instance v0, Ljava/lang/HexStringParser;

    const/16 v2, 0x8

    const/16 v3, 0x17

    invoke-direct {v0, v2, v3}, Ljava/lang/HexStringParser;-><init>(II)V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Ljava/lang/HexStringParser;->parse(Ljava/lang/String;Z)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    return v2
.end method

.method private parseHexSign(Ljava/lang/String;)V
    .locals 2

    const-string v0, "-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    iput-wide v0, p0, Ljava/lang/HexStringParser;->sign:J

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private parseMantissa(Ljava/lang/String;)V
    .locals 11

    const/4 v6, 0x1

    const/4 v10, 0x0

    const/16 v9, 0xf

    const-string v5, "\\."

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v10

    array-length v5, v4

    if-le v5, v6, :cond_0

    aget-object v2, v4, v6

    :goto_0
    invoke-direct {p0, v3, v2}, Ljava/lang/HexStringParser;->getNormalizedSignificand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "0"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Ljava/lang/HexStringParser;->setZero()V

    :goto_1
    return-void

    :cond_0
    const-string v2, ""

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v2}, Ljava/lang/HexStringParser;->getOffset(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    invoke-direct {p0, v5, v6}, Ljava/lang/HexStringParser;->checkedAddExponent(J)V

    iget-wide v5, p0, Ljava/lang/HexStringParser;->exponent:J

    iget-wide v7, p0, Ljava/lang/HexStringParser;->MAX_EXPONENT:J

    cmp-long v5, v5, v7

    if-ltz v5, :cond_2

    invoke-direct {p0}, Ljava/lang/HexStringParser;->setInfinite()V

    goto :goto_1

    :cond_2
    iget-wide v5, p0, Ljava/lang/HexStringParser;->exponent:J

    iget-wide v7, p0, Ljava/lang/HexStringParser;->MIN_EXPONENT:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_3

    invoke-direct {p0}, Ljava/lang/HexStringParser;->setZero()V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v9, :cond_4

    invoke-virtual {v1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    invoke-virtual {v1, v10, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const/16 v5, 0x10

    invoke-static {v1, v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    iput-wide v5, p0, Ljava/lang/HexStringParser;->mantissa:J

    iget-wide v5, p0, Ljava/lang/HexStringParser;->exponent:J

    const-wide/16 v7, 0x1

    cmp-long v5, v5, v7

    if-ltz v5, :cond_5

    invoke-direct {p0}, Ljava/lang/HexStringParser;->processNormalNumber()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Ljava/lang/HexStringParser;->processSubNormalNumber()V

    goto :goto_1
.end method

.method private processNormalNumber()V
    .locals 5

    iget v1, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v1, 0x2

    invoke-direct {p0, v0}, Ljava/lang/HexStringParser;->fitMantissaInDesiredWidth(I)V

    invoke-direct {p0}, Ljava/lang/HexStringParser;->round()V

    iget-wide v1, p0, Ljava/lang/HexStringParser;->mantissa:J

    iget-wide v3, p0, Ljava/lang/HexStringParser;->MANTISSA_MASK:J

    and-long/2addr v1, v3

    iput-wide v1, p0, Ljava/lang/HexStringParser;->mantissa:J

    return-void
.end method

.method private processSubNormalNumber()V
    .locals 5

    iget v1, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    add-int/lit8 v0, v1, 0x1

    iget-wide v1, p0, Ljava/lang/HexStringParser;->exponent:J

    long-to-int v1, v1

    add-int/2addr v0, v1

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Ljava/lang/HexStringParser;->exponent:J

    invoke-direct {p0, v0}, Ljava/lang/HexStringParser;->fitMantissaInDesiredWidth(I)V

    invoke-direct {p0}, Ljava/lang/HexStringParser;->round()V

    iget-wide v1, p0, Ljava/lang/HexStringParser;->mantissa:J

    iget-wide v3, p0, Ljava/lang/HexStringParser;->MANTISSA_MASK:J

    and-long/2addr v1, v3

    iput-wide v1, p0, Ljava/lang/HexStringParser;->mantissa:J

    return-void
.end method

.method private round()V
    .locals 12

    const-wide/16 v10, 0x1

    const/4 v6, 0x1

    iget-object v7, p0, Ljava/lang/HexStringParser;->abandonedNumber:Ljava/lang/String;

    const-string v8, "0+"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    move v1, v6

    :goto_0
    iget-wide v7, p0, Ljava/lang/HexStringParser;->mantissa:J

    and-long/2addr v7, v10

    long-to-int v0, v7

    iget-wide v7, p0, Ljava/lang/HexStringParser;->mantissa:J

    shr-long/2addr v7, v6

    iput-wide v7, p0, Ljava/lang/HexStringParser;->mantissa:J

    iget-wide v7, p0, Ljava/lang/HexStringParser;->mantissa:J

    and-long/2addr v7, v10

    long-to-int v5, v7

    if-ne v0, v6, :cond_1

    if-nez v1, :cond_0

    if-ne v5, v6, :cond_1

    :cond_0
    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    invoke-direct {p0, v6, v7}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    move-result v3

    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    add-long/2addr v6, v10

    iput-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    iget-wide v6, p0, Ljava/lang/HexStringParser;->mantissa:J

    invoke-direct {p0, v6, v7}, Ljava/lang/HexStringParser;->countBitsLength(J)I

    move-result v2

    iget v6, p0, Ljava/lang/HexStringParser;->MANTISSA_WIDTH:I

    if-lt v3, v6, :cond_1

    if-le v2, v3, :cond_1

    invoke-direct {p0, v10, v11}, Ljava/lang/HexStringParser;->checkedAddExponent(J)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setInfinite()V
    .locals 2

    iget-wide v0, p0, Ljava/lang/HexStringParser;->MAX_EXPONENT:J

    iput-wide v0, p0, Ljava/lang/HexStringParser;->exponent:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/HexStringParser;->mantissa:J

    return-void
.end method

.method private setZero()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ljava/lang/HexStringParser;->exponent:J

    iput-wide v0, p0, Ljava/lang/HexStringParser;->mantissa:J

    return-void
.end method
