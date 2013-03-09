.class public Lcom/futuredial/atparser/ParserHelper;
.super Ljava/lang/Object;
.source "ParserHelper.java"


# static fields
.field public static PERCENT_SIGN:Ljava/lang/String;

.field public static SEP_COMMA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, ","

    sput-object v0, Lcom/futuredial/atparser/ParserHelper;->SEP_COMMA:Ljava/lang/String;

    .line 9
    const-string v0, ""

    sput-object v0, Lcom/futuredial/atparser/ParserHelper;->PERCENT_SIGN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findComma(Ljava/lang/String;)I
    .locals 5
    .parameter "str"

    .prologue
    const/4 v4, -0x1

    .line 16
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    .local v0, cnt:I
    const/4 v1, -0x1

    .line 23
    .local v1, i:I
    :cond_2
    const-string v2, ","

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 24
    if-eq v1, v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 25
    :cond_3
    if-ne v1, v4, :cond_2

    goto :goto_0
.end method

.method public static findLengthUnit(Ljava/lang/String;)I
    .locals 7
    .parameter "str"

    .prologue
    .line 35
    const/4 v4, 0x0

    .line 36
    .local v4, len:I
    const/4 v2, 0x0

    .line 37
    .local v2, i:I
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 40
    .local v3, l:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 42
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 43
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_2

    .line 49
    .end local v0           #c:C
    .end local v3           #l:I
    :cond_0
    if-eqz p0, :cond_1

    .line 51
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, tmp:Ljava/lang/String;
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 62
    .end local v5           #tmp:Ljava/lang/String;
    :cond_1
    :goto_1
    return v4

    .line 40
    .restart local v0       #c:C
    .restart local v3       #l:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 56
    .end local v0           #c:C
    .end local v3           #l:I
    .restart local v5       #tmp:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"

    .prologue
    .line 78
    const-string v1, "1,2"

    .line 79
    .local v1, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/futuredial/atparser/ParserHelper;->findComma(Ljava/lang/String;)I

    move-result v0

    .line 80
    .local v0, i:I
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(I)V

    .line 82
    const-string v1, "2342d;kad/"

    .line 83
    invoke-static {v1}, Lcom/futuredial/atparser/ParserHelper;->findLengthUnit(Ljava/lang/String;)I

    move-result v0

    .line 84
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(I)V

    .line 86
    const-string v1, "1,2,3,4,\"12,34\",2,f,s,\"df,2\""

    .line 87
    invoke-static {v1}, Lcom/futuredial/atparser/ParserHelper;->parseByRex(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 88
    .local v2, subStr:[Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    .line 90
    return-void
.end method

.method public static parseByRex(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 69
    :cond_0
    const/4 v1, 0x0

    .line 73
    :goto_0
    return-object v1

    .line 71
    :cond_1
    const-string v0, ",(?=(?:[^\"]*\"[^\"]*\")*(?![^\"]*\"))"

    .line 72
    .local v0, strRegex:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, subStr:[Ljava/lang/String;
    goto :goto_0
.end method
