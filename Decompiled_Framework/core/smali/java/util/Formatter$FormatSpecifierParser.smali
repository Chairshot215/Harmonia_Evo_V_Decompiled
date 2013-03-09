.class Ljava/util/Formatter$FormatSpecifierParser;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FormatSpecifierParser"
.end annotation


# instance fields
.field private format:Ljava/lang/String;

.field private i:I

.field private length:I

.field private startIndex:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    return-void
.end method

.method static synthetic access$000(Ljava/util/Formatter$FormatSpecifierParser;)I
    .locals 1

    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    return v0
.end method

.method private advance()C
    .locals 3

    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v0

    throw v0

    :cond_0
    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private failNextInt()I
    .locals 1

    :goto_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private nextInt()I
    .locals 7

    const-wide/16 v0, 0x0

    :cond_0
    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    iget v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v3, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0xa

    mul-long/2addr v2, v0

    iget-object v4, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v5, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long v0, v2, v4

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->failNextInt()I

    move-result v2

    :goto_0
    return v2

    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method private parseArgumentIndexAndFlags(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .locals 5

    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    move-result v1

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v3

    const/16 v4, 0x24

    if-ne v3, v4, :cond_2

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    new-instance v3, Ljava/util/MissingFormatArgumentException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setArgIndex(I)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setFlag(I)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_0

    :cond_2
    const/16 v3, 0x30

    if-ne v0, v3, :cond_3

    iput v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v1}, Ljava/util/Formatter$FormatSpecifierParser;->parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_4
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_1

    const/4 v3, -0x2

    invoke-virtual {p1, v3}, Ljava/util/Formatter$FormatToken;->setArgIndex(I)V

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    move-result v3

    invoke-direct {p0, p1, v3}, Ljava/util/Formatter$FormatSpecifierParser;->parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    goto :goto_1

    :cond_6
    const/16 v3, 0x2e

    if-ne v0, v3, :cond_7

    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v3

    goto :goto_1
.end method

.method private parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .locals 3

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/Formatter$FormatToken;->setConversionType(C)V

    const/16 v2, 0x74

    if-eq v0, v2, :cond_0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Formatter$FormatToken;->setDateSuffix(C)V

    :cond_1
    return-object p1
.end method

.method private parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;
    .locals 2

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->advance()C

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->nextInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/util/Formatter$FormatToken;->setPrecision(I)V

    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;

    move-result-object v1

    throw v1
.end method

.method private parseWidth(Ljava/util/Formatter$FormatToken;I)Ljava/util/Formatter$FormatToken;
    .locals 2

    invoke-virtual {p1, p2}, Ljava/util/Formatter$FormatToken;->setWidth(I)V

    invoke-direct {p0}, Ljava/util/Formatter$FormatSpecifierParser;->peek()I

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parsePrecision(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1}, Ljava/util/Formatter$FormatSpecifierParser;->parseConversionType(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v1

    goto :goto_0
.end method

.method private peek()I
    .locals 2

    iget v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->length:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private unknownFormatConversionException()Ljava/util/UnknownFormatConversionException;
    .locals 2

    new-instance v0, Ljava/util/UnknownFormatConversionException;

    invoke-virtual {p0}, Ljava/util/Formatter$FormatSpecifierParser;->getFormatSpecifierText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/UnknownFormatConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getFormatSpecifierText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Ljava/util/Formatter$FormatSpecifierParser;->format:Ljava/lang/String;

    iget v1, p0, Ljava/util/Formatter$FormatSpecifierParser;->startIndex:I

    iget v2, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method parseFormatToken(I)Ljava/util/Formatter$FormatToken;
    .locals 2

    iput p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->startIndex:I

    iput p1, p0, Ljava/util/Formatter$FormatSpecifierParser;->i:I

    new-instance v0, Ljava/util/Formatter$FormatToken;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/Formatter$FormatToken;-><init>(Ljava/util/Formatter$1;)V

    invoke-direct {p0, v0}, Ljava/util/Formatter$FormatSpecifierParser;->parseArgumentIndexAndFlags(Ljava/util/Formatter$FormatToken;)Ljava/util/Formatter$FormatToken;

    move-result-object v0

    return-object v0
.end method
