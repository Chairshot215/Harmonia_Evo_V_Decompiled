.class public Lgnu/lists/CharBuffer;
.super Lgnu/lists/StableVector;
.source "CharBuffer.java"

# interfaces
.implements Lgnu/lists/CharSeq;
.implements Ljava/io/Serializable;


# instance fields
.field private string:Lgnu/lists/FString;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lgnu/lists/StableVector;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialSize"

    .prologue
    .line 26
    new-instance v0, Lgnu/lists/FString;

    invoke-direct {v0, p1}, Lgnu/lists/FString;-><init>(I)V

    invoke-direct {p0, v0}, Lgnu/lists/CharBuffer;-><init>(Lgnu/lists/FString;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lgnu/lists/FString;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lgnu/lists/StableVector;-><init>(Lgnu/lists/SimpleVector;)V

    .line 21
    iput-object p1, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    .line 22
    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .parameter "index"

    .prologue
    .line 38
    iget v0, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 39
    iget v0, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 40
    :cond_0
    iget-object v0, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    invoke-virtual {v0, p1}, Lgnu/lists/FString;->charAt(I)C

    move-result v0

    return v0
.end method

.method public consume(IILgnu/lists/Consumer;)V
    .locals 4
    .parameter "start"
    .parameter "count"
    .parameter "dest"

    .prologue
    .line 207
    iget-object v2, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v2, Lgnu/lists/FString;->data:[C

    .line 208
    .local v0, array:[C
    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge p1, v2, :cond_1

    .line 210
    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int v1, v2, p1

    .line 211
    .local v1, count0:I
    if-le v1, p2, :cond_0

    .line 212
    move v1, p2

    .line 213
    :cond_0
    invoke-interface {p3, v0, p1, v1}, Lgnu/lists/Consumer;->write([CII)V

    .line 214
    sub-int/2addr p2, v1

    .line 215
    add-int/2addr p1, p2

    .line 217
    .end local v1           #count0:I
    :cond_1
    if-lez p2, :cond_2

    .line 219
    iget v2, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v3, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 220
    invoke-interface {p3, v0, p1, p2}, Lgnu/lists/Consumer;->write([CII)V

    .line 222
    :cond_2
    return-void
.end method

.method public delete(II)V
    .locals 2
    .parameter "where"
    .parameter "count"

    .prologue
    .line 192
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lgnu/lists/CharBuffer;->createPos(IZ)I

    move-result v0

    .line 193
    .local v0, ipos:I
    invoke-virtual {p0, v0, p2}, Lgnu/lists/CharBuffer;->removePos(II)V

    .line 194
    invoke-virtual {p0, v0}, Lgnu/lists/CharBuffer;->releasePos(I)V

    .line 195
    return-void
.end method

.method public dump()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x2

    .line 277
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Buffer Content dump.  size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  buffer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 278
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "before gap: \""

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 279
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v6

    iget v7, p0, Lgnu/lists/CharBuffer;->gapStart:I

    invoke-direct {v5, v6, v11, v7}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 280
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\" (gapStart:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgnu/lists/CharBuffer;->gapStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gapEnd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 281
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "after gap: \""

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 282
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v6

    iget v7, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v8

    array-length v8, v8

    iget v9, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    sub-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 283
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 284
    iget-object v4, p0, Lgnu/lists/CharBuffer;->positions:[I

    if-nez v4, :cond_0

    move v3, v11

    .line 285
    .local v3, poslen:I
    :goto_0
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Positions (size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " free:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lgnu/lists/CharBuffer;->free:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x0

    .line 287
    .local v1, isFree:[Z
    iget v4, p0, Lgnu/lists/CharBuffer;->free:I

    if-eq v4, v10, :cond_1

    .line 289
    iget-object v4, p0, Lgnu/lists/CharBuffer;->positions:[I

    array-length v4, v4

    new-array v1, v4, [Z

    .line 290
    iget v0, p0, Lgnu/lists/CharBuffer;->free:I

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 291
    const/4 v4, 0x1

    aput-boolean v4, v1, v0

    .line 290
    iget-object v4, p0, Lgnu/lists/CharBuffer;->positions:[I

    aget v0, v4, v0

    goto :goto_1

    .line 284
    .end local v0           #i:I
    .end local v1           #isFree:[Z
    .end local v3           #poslen:I
    :cond_0
    iget-object v4, p0, Lgnu/lists/CharBuffer;->positions:[I

    array-length v4, v4

    move v3, v4

    goto :goto_0

    .line 293
    .restart local v1       #isFree:[Z
    .restart local v3       #poslen:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, v3, :cond_4

    .line 295
    iget-object v4, p0, Lgnu/lists/CharBuffer;->positions:[I

    aget v2, v4, v0

    .line 296
    .local v2, pos:I
    iget v4, p0, Lgnu/lists/CharBuffer;->free:I

    if-ne v4, v10, :cond_3

    if-eq v2, v10, :cond_2

    .line 297
    :goto_3
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "position#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    shr-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isAfter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 293
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 296
    :cond_3
    aget-boolean v4, v1, v0

    if-nez v4, :cond_2

    goto :goto_3

    .line 299
    .end local v2           #pos:I
    :cond_4
    return-void
.end method

.method public final fill(C)V
    .locals 3
    .parameter "value"

    .prologue
    .line 181
    iget-object v2, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v2, Lgnu/lists/FString;->data:[C

    .line 182
    .local v0, array:[C
    array-length v1, v0

    .local v1, i:I
    :goto_0
    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    if-lt v1, v2, :cond_0

    .line 183
    aput-char p1, v0, v1

    goto :goto_0

    .line 184
    :cond_0
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 185
    aput-char p1, v0, v1

    goto :goto_1

    .line 186
    :cond_1
    return-void
.end method

.method public fill(IIC)V
    .locals 6
    .parameter "fromIndex"
    .parameter "toIndex"
    .parameter "value"

    .prologue
    .line 166
    iget-object v4, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v4, Lgnu/lists/FString;->data:[C

    .line 167
    .local v0, array:[C
    move v2, p1

    .line 168
    .local v2, i:I
    iget v4, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge v4, p2, :cond_0

    iget v4, p0, Lgnu/lists/CharBuffer;->gapStart:I

    move v3, v4

    .line 169
    .local v3, limit:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 170
    aput-char p3, v0, v2

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #limit:I
    :cond_0
    move v3, p2

    .line 168
    goto :goto_0

    .line 171
    .restart local v3       #limit:I
    :cond_1
    iget v4, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v5, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int v1, v4, v5

    .line 172
    .local v1, gapSize:I
    add-int v2, v3, v1

    .line 173
    add-int/2addr v3, p2

    .line 174
    :goto_1
    if-ge v2, v3, :cond_2

    .line 175
    aput-char p3, v0, v2

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 176
    :cond_2
    return-void
.end method

.method public getArray()[C
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lgnu/lists/CharBuffer;->base:Lgnu/lists/SimpleVector;

    invoke-virtual {v0}, Lgnu/lists/SimpleVector;->getBuffer()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [C

    check-cast p0, [C

    return-object p0
.end method

.method public getChars(II[CI)V
    .locals 5
    .parameter "srcBegin"
    .parameter "srcEnd"
    .parameter "dst"
    .parameter "dstBegin"

    .prologue
    .line 113
    iget-object v3, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v3, Lgnu/lists/FString;->data:[C

    .line 115
    .local v0, array:[C
    iget v3, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge p1, v3, :cond_0

    .line 117
    iget v3, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge p2, v3, :cond_2

    move v3, p2

    :goto_0
    sub-int v1, v3, p1

    .line 118
    .local v1, count:I
    if-lez v1, :cond_0

    .line 120
    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    add-int/2addr p1, v1

    .line 122
    add-int/2addr p4, v1

    .line 125
    .end local v1           #count:I
    :cond_0
    iget v3, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v4, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int v2, v3, v4

    .line 126
    .local v2, gapSize:I
    add-int/2addr p1, v2

    .line 127
    add-int/2addr p2, v2

    .line 128
    sub-int v1, p2, p1

    .line 129
    .restart local v1       #count:I
    if-lez v1, :cond_1

    .line 130
    invoke-static {v0, p1, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    :cond_1
    return-void

    .line 117
    .end local v1           #count:I
    .end local v2           #gapSize:I
    :cond_2
    iget v3, p0, Lgnu/lists/CharBuffer;->gapStart:I

    goto :goto_0
.end method

.method public indexOf(II)I
    .locals 7
    .parameter "ch"
    .parameter "fromChar"

    .prologue
    const/high16 v5, 0x1

    .line 46
    if-lt p1, v5, :cond_3

    .line 48
    sub-int v5, p1, v5

    shr-int/lit8 v5, v5, 0xa

    const v6, 0xd800

    add-int/2addr v5, v6

    int-to-char v1, v5

    .line 49
    .local v1, c1:C
    and-int/lit16 v5, p1, 0x3ff

    const v6, 0xdc00

    add-int/2addr v5, v6

    int-to-char v2, v5

    .line 56
    .local v2, c2:C
    :goto_0
    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v0

    .line 57
    .local v0, arr:[C
    move v3, p2

    .line 58
    .local v3, i:I
    iget v4, p0, Lgnu/lists/CharBuffer;->gapStart:I

    .line 59
    .local v4, limit:I
    if-lt v3, v4, :cond_0

    .line 61
    iget v5, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v6, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 62
    array-length v4, v0

    .line 66
    :cond_0
    :goto_1
    if-ne v3, v4, :cond_1

    .line 68
    array-length v4, v0

    .line 69
    if-ge v3, v4, :cond_7

    .line 70
    iget v3, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    .line 74
    :cond_1
    aget-char v5, v0, v3

    if-ne v5, v1, :cond_5

    if-eqz v2, :cond_2

    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_4

    add-int/lit8 v5, v3, 0x1

    aget-char v5, v0, v5

    if-ne v5, v2, :cond_5

    .line 78
    :cond_2
    iget v5, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-le v3, v5, :cond_6

    iget v5, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v6, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v5, v6

    sub-int v5, v3, v5

    .line 80
    :goto_2
    return v5

    .line 53
    .end local v0           #arr:[C
    .end local v1           #c1:C
    .end local v2           #c2:C
    .end local v3           #i:I
    .end local v4           #limit:I
    :cond_3
    int-to-char v1, p1

    .line 54
    .restart local v1       #c1:C
    const/4 v2, 0x0

    .restart local v2       #c2:C
    goto :goto_0

    .line 74
    .restart local v0       #arr:[C
    .restart local v3       #i:I
    .restart local v4       #limit:I
    :cond_4
    iget v5, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    array-length v6, v0

    if-ge v5, v6, :cond_5

    iget v5, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    aget-char v5, v0, v5

    if-eq v5, v2, :cond_2

    .line 64
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    move v5, v3

    .line 78
    goto :goto_2

    .line 80
    :cond_7
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public insert(ILjava/lang/String;Z)V
    .locals 3
    .parameter "where"
    .parameter "str"
    .parameter "beforeMarkers"

    .prologue
    .line 199
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 200
    .local v0, len:I
    invoke-virtual {p0, p1, v0}, Lgnu/lists/CharBuffer;->gapReserve(II)V

    .line 201
    const/4 v1, 0x0

    iget-object v2, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v2, v2, Lgnu/lists/FString;->data:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 202
    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    add-int/2addr v1, v0

    iput v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    .line 203
    return-void
.end method

.method public lastIndexOf(II)I
    .locals 6
    .parameter "ch"
    .parameter "fromChar"

    .prologue
    const/high16 v3, 0x1

    const/4 v5, 0x1

    .line 86
    if-lt p1, v3, :cond_1

    .line 88
    sub-int v3, p1, v3

    shr-int/lit8 v3, v3, 0xa

    const v4, 0xd800

    add-int/2addr v3, v4

    int-to-char v0, v3

    .line 89
    .local v0, c1:C
    and-int/lit16 v3, p1, 0x3ff

    const v4, 0xdc00

    add-int/2addr v3, v4

    int-to-char v1, v3

    .line 96
    .local v1, c2:C
    :goto_0
    move v2, p2

    .local v2, i:I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_3

    .line 98
    invoke-virtual {p0, v2}, Lgnu/lists/CharBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v1, :cond_0

    .line 100
    if-nez v0, :cond_2

    move v3, v2

    .line 106
    :goto_1
    return v3

    .line 93
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #i:I
    :cond_1
    const/4 v0, 0x0

    .line 94
    .restart local v0       #c1:C
    int-to-char v1, p1

    .restart local v1       #c2:C
    goto :goto_0

    .line 102
    .restart local v2       #i:I
    :cond_2
    if-lez v2, :cond_0

    sub-int v3, v2, v5

    invoke-virtual {p0, v3}, Lgnu/lists/CharBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v0, :cond_0

    .line 103
    sub-int v3, v2, v5

    goto :goto_1

    .line 106
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public length()I
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v0

    return v0
.end method

.method public setCharAt(IC)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 136
    iget v0, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-lt p1, v0, :cond_0

    .line 137
    iget v0, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v1, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    .line 138
    :cond_0
    iget-object v0, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    invoke-virtual {v0, p1, p2}, Lgnu/lists/FString;->setCharAt(IC)V

    .line 139
    return-void
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 155
    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v0

    .line 156
    .local v0, sz:I
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    if-le p2, v0, :cond_1

    .line 157
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 158
    :cond_1
    new-instance v1, Lgnu/lists/SubCharSeq;

    iget-object v2, p0, Lgnu/lists/CharBuffer;->base:Lgnu/lists/SimpleVector;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lgnu/lists/SimpleVector;->createPos(IZ)I

    move-result v2

    iget-object v3, p0, Lgnu/lists/CharBuffer;->base:Lgnu/lists/SimpleVector;

    const/4 v4, 0x1

    invoke-virtual {v3, p2, v4}, Lgnu/lists/SimpleVector;->createPos(IZ)I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lgnu/lists/SubCharSeq;-><init>(Lgnu/lists/AbstractSequence;II)V

    return-object v1
.end method

.method public substring(II)Ljava/lang/String;
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 143
    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v1

    .line 144
    .local v1, sz:I
    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    if-le p2, v1, :cond_1

    .line 145
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 146
    :cond_1
    sub-int v0, p2, p1

    .line 147
    .local v0, len:I
    invoke-virtual {p0, p1, v0}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result p1

    .line 148
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v3

    invoke-direct {v2, v3, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v0

    .line 227
    .local v0, len:I
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lgnu/lists/CharBuffer;->getSegment(II)I

    move-result v1

    .line 228
    .local v1, start:I
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->getArray()[C

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v2
.end method

.method public writeTo(IILjava/io/Writer;)V
    .locals 4
    .parameter "start"
    .parameter "count"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 251
    iget-object v2, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v2, Lgnu/lists/FString;->data:[C

    .line 252
    .local v0, array:[C
    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    if-ge p1, v2, :cond_1

    .line 254
    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int v1, v2, p1

    .line 255
    .local v1, count0:I
    if-le v1, p2, :cond_0

    .line 256
    move v1, p2

    .line 257
    :cond_0
    invoke-virtual {p3, v0, p1, v1}, Ljava/io/Writer;->write([CII)V

    .line 258
    sub-int/2addr p2, v1

    .line 259
    add-int/2addr p1, p2

    .line 261
    .end local v1           #count0:I
    :cond_1
    if-lez p2, :cond_2

    .line 263
    iget v2, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    iget v3, p0, Lgnu/lists/CharBuffer;->gapStart:I

    sub-int/2addr v2, v3

    add-int/2addr p1, v2

    .line 264
    invoke-virtual {p3, v0, p1, p2}, Ljava/io/Writer;->write([CII)V

    .line 266
    :cond_2
    return-void
.end method

.method public writeTo(IILjava/lang/Appendable;)V
    .locals 1
    .parameter "start"
    .parameter "count"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    instance-of v0, p3, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 236
    check-cast p3, Ljava/io/Writer;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lgnu/lists/CharBuffer;->writeTo(IILjava/io/Writer;)V

    .line 239
    :goto_0
    return-void

    .line 238
    .restart local p3
    :cond_0
    add-int v0, p1, p2

    invoke-interface {p3, p0, p1, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    goto :goto_0
.end method

.method public writeTo(Ljava/io/Writer;)V
    .locals 4
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 270
    iget-object v1, p0, Lgnu/lists/CharBuffer;->string:Lgnu/lists/FString;

    iget-object v0, v1, Lgnu/lists/FString;->data:[C

    .line 271
    .local v0, array:[C
    const/4 v1, 0x0

    iget v2, p0, Lgnu/lists/CharBuffer;->gapStart:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 272
    iget v1, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    array-length v2, v0

    iget v3, p0, Lgnu/lists/CharBuffer;->gapEnd:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    .line 273
    return-void
.end method

.method public writeTo(Ljava/lang/Appendable;)V
    .locals 2
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0}, Lgnu/lists/CharBuffer;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lgnu/lists/CharBuffer;->writeTo(IILjava/lang/Appendable;)V

    .line 245
    return-void
.end method
