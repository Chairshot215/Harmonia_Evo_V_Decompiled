.class public Lgnu/lists/Strings;
.super Ljava/lang/Object;
.source "Strings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeCapitalize(Lgnu/lists/CharSeq;)V
    .locals 5
    .parameter "str"

    .prologue
    .line 29
    const/16 v3, 0x20

    .line 30
    .local v3, prev:C
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v2

    .line 31
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 33
    invoke-interface {p0, v1}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v0

    .line 34
    .local v0, ch:C
    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 35
    invoke-static {v0}, Ljava/lang/Character;->toTitleCase(C)C

    move-result v0

    .line 38
    :goto_1
    invoke-interface {p0, v1, v0}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    .line 39
    move v3, v0

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    goto :goto_1

    .line 41
    .end local v0           #ch:C
    :cond_1
    return-void
.end method

.method public static makeLowerCase(Lgnu/lists/CharSeq;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 20
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v0

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 21
    invoke-interface {p0, v0}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    invoke-interface {p0, v0, v1}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public static makeUpperCase(Lgnu/lists/CharSeq;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 13
    invoke-interface {p0}, Lgnu/lists/CharSeq;->length()I

    move-result v0

    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 14
    invoke-interface {p0, v0}, Lgnu/lists/CharSeq;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-interface {p0, v0, v1}, Lgnu/lists/CharSeq;->setCharAt(IC)V

    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method

.method public static printQuoted(Ljava/lang/CharSequence;Ljava/io/PrintWriter;I)V
    .locals 6
    .parameter "str"
    .parameter "ps"
    .parameter "escapes"

    .prologue
    const/16 v5, 0x5c

    const/16 v4, 0x22

    .line 51
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 52
    .local v2, len:I
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_9

    .line 55
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 56
    .local v0, ch:C
    if-eq v0, v5, :cond_0

    if-ne v0, v4, :cond_2

    .line 57
    :cond_0
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 76
    :cond_1
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 53
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_2
    if-lez p2, :cond_1

    .line 61
    const/16 v3, 0xa

    if-ne v0, v3, :cond_3

    .line 62
    const-string v3, "\\n"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 63
    :cond_3
    const/16 v3, 0xd

    if-ne v0, v3, :cond_4

    .line 64
    const-string v3, "\\r"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_4
    const/16 v3, 0x9

    if-ne v0, v3, :cond_5

    .line 66
    const-string v3, "\\t"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_5
    const/4 v3, 0x7

    if-ne v0, v3, :cond_6

    .line 68
    const-string v3, "\\a"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_6
    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    .line 70
    const-string v3, "\\b"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_7
    const/16 v3, 0xb

    if-ne v0, v3, :cond_8

    .line 72
    const-string v3, "\\v"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_8
    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    .line 74
    const-string v3, "\\f"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    .end local v0           #ch:C
    :cond_9
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 79
    return-void
.end method
