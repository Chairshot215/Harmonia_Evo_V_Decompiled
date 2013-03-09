.class public Lgnu/kawa/xml/HexBinary;
.super Lgnu/kawa/xml/BinaryObject;
.source "HexBinary.java"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 9
    iput-object p1, p0, Lgnu/kawa/xml/HexBinary;->data:[B

    .line 10
    return-void
.end method

.method static forHexDigit(I)C
    .locals 1
    .parameter "val"

    .prologue
    const/16 v0, 0xa

    .line 41
    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_0
    sub-int v0, p0, v0

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    goto :goto_0
.end method

.method static parseHexBinary(Ljava/lang/String;)[B
    .locals 9
    .parameter "str"

    .prologue
    const/16 v7, 0x10

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 21
    .local v4, len:I
    and-int/lit8 v6, v4, 0x1

    if-eqz v6, :cond_0

    .line 22
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "hexBinary string length not a multiple of 2"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 23
    :cond_0
    shr-int/lit8 v4, v4, 0x1

    .line 24
    new-array v5, v4, [B

    .line 25
    .local v5, result:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 27
    mul-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 28
    .local v1, d1:I
    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 29
    .local v2, d2:I
    const/4 v0, -0x1

    .line 30
    .local v0, bad:I
    if-gez v1, :cond_2

    mul-int/lit8 v0, v3, 0x2

    .line 32
    :cond_1
    :goto_1
    if-ltz v0, :cond_3

    .line 33
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid hexBinary character at position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 31
    :cond_2
    if-gez v2, :cond_1

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v0, v6, 0x1

    goto :goto_1

    .line 34
    :cond_3
    mul-int/lit8 v6, v1, 0x10

    add-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 25
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    .end local v0           #bad:I
    .end local v1           #d1:I
    .end local v2           #d2:I
    :cond_4
    return-object v5
.end method

.method static valueOf(Ljava/lang/String;)Lgnu/kawa/xml/HexBinary;
    .locals 2
    .parameter "str"

    .prologue
    .line 14
    new-instance v0, Lgnu/kawa/xml/HexBinary;

    invoke-static {p0}, Lgnu/kawa/xml/HexBinary;->parseHexBinary(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lgnu/kawa/xml/HexBinary;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/HexBinary;->toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 5
    .parameter "sbuf"

    .prologue
    .line 46
    iget-object v1, p0, Lgnu/kawa/xml/HexBinary;->data:[B

    .line 47
    .local v1, bb:[B
    array-length v3, v1

    .line 48
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 50
    aget-byte v0, v1, v2

    .line 51
    .local v0, b:B
    shr-int/lit8 v4, v0, 0x4

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Lgnu/kawa/xml/HexBinary;->forHexDigit(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 52
    and-int/lit8 v4, v0, 0xf

    invoke-static {v4}, Lgnu/kawa/xml/HexBinary;->forHexDigit(I)C

    move-result v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v0           #b:B
    :cond_0
    return-object p1
.end method
