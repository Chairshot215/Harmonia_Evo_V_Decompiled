.class public Lgnu/kawa/xml/Base64Binary;
.super Lgnu/kawa/xml/BinaryObject;
.source "Base64Binary.java"


# static fields
.field public static final ENCODING:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 13
    .parameter "str"

    .prologue
    .line 21
    invoke-direct {p0}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 23
    .local v6, len:I
    const/4 v0, 0x0

    .line 24
    .local v0, blen:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 26
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 27
    .local v4, ch:C
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-nez v10, :cond_0

    const/16 v10, 0x3d

    if-eq v4, v10, :cond_0

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 24
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 30
    .end local v4           #ch:C
    :cond_1
    mul-int/lit8 v10, v0, 0x3

    div-int/lit8 v0, v10, 0x4

    .line 31
    new-array v3, v0, [B

    .line 33
    .local v3, bytes:[B
    const/4 v9, 0x0

    .line 34
    .local v9, value:I
    const/4 v2, 0x0

    .line 35
    .local v2, buffered:I
    const/4 v7, 0x0

    .line 36
    .local v7, padding:I
    const/4 v0, 0x0

    .line 37
    const/4 v5, 0x0

    move v1, v0

    .end local v0           #blen:I
    .local v1, blen:I
    :goto_1
    if-ge v5, v6, :cond_b

    .line 39
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 41
    .restart local v4       #ch:C
    const/16 v10, 0x41

    if-lt v4, v10, :cond_3

    const/16 v10, 0x5a

    if-gt v4, v10, :cond_3

    .line 42
    const/16 v10, 0x41

    sub-int v8, v4, v10

    .line 60
    .local v8, v:I
    :goto_2
    if-ltz v8, :cond_2

    if-lez v7, :cond_a

    .line 61
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "illegal character in base64Binary string at position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 43
    .end local v8           #v:I
    :cond_3
    const/16 v10, 0x61

    if-lt v4, v10, :cond_4

    const/16 v10, 0x7a

    if-gt v4, v10, :cond_4

    .line 44
    const/16 v10, 0x61

    sub-int v10, v4, v10

    add-int/lit8 v8, v10, 0x1a

    .restart local v8       #v:I
    goto :goto_2

    .line 45
    .end local v8           #v:I
    :cond_4
    const/16 v10, 0x30

    if-lt v4, v10, :cond_5

    const/16 v10, 0x39

    if-gt v4, v10, :cond_5

    .line 46
    const/16 v10, 0x30

    sub-int v10, v4, v10

    add-int/lit8 v8, v10, 0x34

    .restart local v8       #v:I
    goto :goto_2

    .line 47
    .end local v8           #v:I
    :cond_5
    const/16 v10, 0x2b

    if-ne v4, v10, :cond_6

    .line 48
    const/16 v8, 0x3e

    .restart local v8       #v:I
    goto :goto_2

    .line 49
    .end local v8           #v:I
    :cond_6
    const/16 v10, 0x2f

    if-ne v4, v10, :cond_7

    .line 50
    const/16 v8, 0x3f

    .restart local v8       #v:I
    goto :goto_2

    .line 51
    .end local v8           #v:I
    :cond_7
    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v10

    if-eqz v10, :cond_8

    move v0, v1

    .line 37
    .end local v1           #blen:I
    .restart local v0       #blen:I
    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v1, v0

    .end local v0           #blen:I
    .restart local v1       #blen:I
    goto :goto_1

    .line 53
    :cond_8
    const/16 v10, 0x3d

    if-ne v4, v10, :cond_9

    .line 55
    add-int/lit8 v7, v7, 0x1

    move v0, v1

    .line 56
    .end local v1           #blen:I
    .restart local v0       #blen:I
    goto :goto_3

    .line 59
    .end local v0           #blen:I
    .restart local v1       #blen:I
    :cond_9
    const/4 v8, -0x1

    .restart local v8       #v:I
    goto :goto_2

    .line 62
    :cond_a
    shl-int/lit8 v10, v9, 0x6

    add-int v9, v10, v8

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    const/4 v10, 0x4

    if-ne v2, v10, :cond_f

    .line 66
    add-int/lit8 v0, v1, 0x1

    .end local v1           #blen:I
    .restart local v0       #blen:I
    shr-int/lit8 v10, v9, 0x10

    int-to-byte v10, v10

    aput-byte v10, v3, v1

    .line 67
    add-int/lit8 v1, v0, 0x1

    .end local v0           #blen:I
    .restart local v1       #blen:I
    shr-int/lit8 v10, v9, 0x8

    int-to-byte v10, v10

    aput-byte v10, v3, v0

    .line 68
    add-int/lit8 v0, v1, 0x1

    .end local v1           #blen:I
    .restart local v0       #blen:I
    int-to-byte v10, v9

    aput-byte v10, v3, v1

    .line 69
    const/4 v2, 0x0

    goto :goto_3

    .line 87
    .end local v0           #blen:I
    .end local v4           #ch:C
    .end local v8           #v:I
    .restart local v1       #blen:I
    :cond_b
    add-int v10, v2, v7

    if-lez v10, :cond_d

    add-int v10, v2, v7

    const/4 v11, 0x4

    if-ne v10, v11, :cond_c

    const/4 v10, 0x1

    shl-int/2addr v10, v7

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    and-int/2addr v10, v9

    if-nez v10, :cond_c

    add-int/lit8 v10, v1, 0x3

    sub-int/2addr v10, v7

    array-length v11, v3

    if-eq v10, v11, :cond_e

    .line 92
    :cond_c
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 87
    :cond_d
    array-length v10, v3

    if-ne v1, v10, :cond_c

    .line 93
    :cond_e
    packed-switch v7, :pswitch_data_0

    move v0, v1

    .line 104
    .end local v1           #blen:I
    .restart local v0       #blen:I
    :goto_4
    iput-object v3, p0, Lgnu/kawa/xml/Base64Binary;->data:[B

    .line 105
    return-void

    .line 96
    .end local v0           #blen:I
    .restart local v1       #blen:I
    :pswitch_0
    add-int/lit8 v0, v1, 0x1

    .end local v1           #blen:I
    .restart local v0       #blen:I
    shl-int/lit8 v10, v9, 0xa

    int-to-byte v10, v10

    aput-byte v10, v3, v1

    .line 97
    add-int/lit8 v1, v0, 0x1

    .end local v0           #blen:I
    .restart local v1       #blen:I
    shr-int/lit8 v10, v9, 0x2

    int-to-byte v10, v10

    aput-byte v10, v3, v0

    move v0, v1

    .line 98
    .end local v1           #blen:I
    .restart local v0       #blen:I
    goto :goto_4

    .line 100
    .end local v0           #blen:I
    .restart local v1       #blen:I
    :pswitch_1
    add-int/lit8 v0, v1, 0x1

    .end local v1           #blen:I
    .restart local v0       #blen:I
    shr-int/lit8 v10, v9, 0x4

    int-to-byte v10, v10

    aput-byte v10, v3, v1

    goto :goto_4

    .end local v0           #blen:I
    .restart local v1       #blen:I
    .restart local v4       #ch:C
    .restart local v8       #v:I
    :cond_f
    move v0, v1

    .end local v1           #blen:I
    .restart local v0       #blen:I
    goto :goto_3

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 8
    invoke-direct {p0}, Lgnu/kawa/xml/BinaryObject;-><init>()V

    .line 9
    iput-object p1, p0, Lgnu/kawa/xml/Base64Binary;->data:[B

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lgnu/kawa/xml/Base64Binary;
    .locals 1
    .parameter "str"

    .prologue
    .line 17
    new-instance v0, Lgnu/kawa/xml/Base64Binary;

    invoke-direct {v0, p0}, Lgnu/kawa/xml/Base64Binary;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgnu/kawa/xml/Base64Binary;->toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 7
    .parameter "sbuf"

    .prologue
    .line 109
    iget-object v1, p0, Lgnu/kawa/xml/Base64Binary;->data:[B

    .line 110
    .local v1, bb:[B
    array-length v3, v1

    .line 111
    .local v3, len:I
    const/4 v4, 0x0

    .line 112
    .local v4, value:I
    const/4 v2, 0x0

    .local v2, i:I
    :cond_0
    :goto_0
    if-ge v2, v3, :cond_1

    .line 114
    aget-byte v0, v1, v2

    .line 115
    .local v0, b:B
    shl-int/lit8 v5, v4, 0x8

    and-int/lit16 v6, v0, 0xff

    or-int v4, v5, v6

    .line 116
    add-int/lit8 v2, v2, 0x1

    .line 117
    rem-int/lit8 v5, v2, 0x3

    if-nez v5, :cond_0

    .line 119
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    shr-int/lit8 v6, v4, 0x12

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    shr-int/lit8 v6, v4, 0xc

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    shr-int/lit8 v6, v4, 0x6

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    and-int/lit8 v6, v4, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 125
    .end local v0           #b:B
    :cond_1
    rem-int/lit8 v5, v3, 0x3

    packed-switch v5, :pswitch_data_0

    .line 139
    :goto_1
    return-object p1

    .line 128
    :pswitch_0
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    shr-int/lit8 v6, v4, 0x2

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 129
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    shl-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    const-string v5, "=="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 133
    :pswitch_1
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    shr-int/lit8 v6, v4, 0xa

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    shr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    const-string v5, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="

    shl-int/lit8 v6, v4, 0x2

    and-int/lit8 v6, v6, 0x3f

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 136
    const/16 v5, 0x3d

    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
