.class public Lgov/nist/core/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"


# instance fields
.field protected buffer:Ljava/lang/String;

.field protected bufferLen:I

.field protected ptr:I

.field protected savedPtr:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-void
.end method

.method public static getSDPFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_0

    move-object v2, v3

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v4, "="

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v2, v3

    goto :goto_0
.end method

.method public static isAlpha(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x7f

    if-gt p0, v2, :cond_3

    const/16 v2, 0x61

    if-lt p0, v2, :cond_0

    const/16 v2, 0x7a

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0x41

    if-lt p0, v2, :cond_2

    const/16 v2, 0x5a

    if-gt p0, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public static isAlphaDigit(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x7f

    if-gt p0, v2, :cond_4

    const/16 v2, 0x61

    if-lt p0, v2, :cond_0

    const/16 v2, 0x7a

    if-le p0, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-lt p0, v2, :cond_1

    const/16 v2, 0x5a

    if-le p0, v2, :cond_2

    :cond_1
    const/16 v2, 0x39

    if-gt p0, v2, :cond_3

    const/16 v2, 0x30

    if-lt p0, v2, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    move v0, v1

    goto :goto_0
.end method

.method public static isDigit(C)Z
    .locals 1

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    goto :goto_0
.end method

.method public static isHexDigit(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-le p0, v0, :cond_2

    :cond_1
    invoke-static {p0}, Lgov/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public consume()V
    .locals 1

    iget v0, p0, Lgov/nist/core/StringTokenizer;->savedPtr:I

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-void
.end method

.method public consume(I)V
    .locals 1

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v0, p1

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-void
.end method

.method public getLine()Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :goto_0
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :cond_1
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLines()Ljava/util/Vector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_0
    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->hasMoreChars()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getNextChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getNextChar: End of buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_0
    iget-object v0, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public getNextToken(C)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v4, 0x0

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :goto_0
    invoke-virtual {p0, v4}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    if-nez v0, :cond_1

    new-instance v2, Ljava/text/ParseException;

    const-string v3, "EOL reached"

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lgov/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0
.end method

.method public hasMoreChars()Z
    .locals 2

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v1, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lookAhead()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lgov/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    return v0
.end method

.method public lookAhead(I)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nextToken()Ljava/lang/String;
    .locals 4

    iget v1, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    :cond_0
    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    iget v3, p0, Lgov/nist/core/StringTokenizer;->bufferLen:I

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    const/16 v2, 0xa

    if-ne v0, v2, :cond_0

    :cond_1
    iget-object v2, p0, Lgov/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public peekLine()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {p0}, Lgov/nist/core/StringTokenizer;->getLine()Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lgov/nist/core/StringTokenizer;->ptr:I

    return-object v1
.end method
