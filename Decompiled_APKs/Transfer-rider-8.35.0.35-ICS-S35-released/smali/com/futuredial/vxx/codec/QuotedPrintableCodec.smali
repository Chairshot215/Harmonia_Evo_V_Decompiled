.class public Lcom/futuredial/vxx/codec/QuotedPrintableCodec;
.super Ljava/lang/Object;
.source "QuotedPrintableCodec.java"


# static fields
.field private static ESCAPE_CHAR:B

.field private static final PRINTABLE_CHARS:Ljava/util/BitSet;

.field private static SPACE:B

.field private static TAB:B


# instance fields
.field private charset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 64
    const/16 v1, 0x3d

    sput-byte v1, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->ESCAPE_CHAR:B

    .line 66
    const/16 v1, 0x9

    sput-byte v1, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->TAB:B

    .line 68
    const/16 v1, 0x20

    sput-byte v1, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->SPACE:B

    .line 72
    const/16 v0, 0x21

    .local v0, i:I
    :goto_0
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 73
    sget-object v1, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/16 v0, 0x3e

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 76
    sget-object v1, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    :cond_1
    sget-object v1, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    sget-byte v2, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->TAB:B

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 79
    sget-object v1, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    sget-byte v2, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->SPACE:B

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->charset:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "charset"

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->charset:Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->charset:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 9
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 168
    if-nez p0, :cond_0

    .line 169
    const/4 v6, 0x0

    .line 189
    :goto_0
    return-object v6

    .line 171
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 172
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, p0

    if-ge v3, v6, :cond_4

    .line 173
    aget-byte v0, p0, v3

    .line 174
    .local v0, b:I
    sget-byte v6, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->ESCAPE_CHAR:B

    if-ne v0, v6, :cond_3

    .line 176
    add-int/lit8 v3, v3, 0x1

    :try_start_0
    aget-byte v6, p0, v3

    int-to-char v6, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 177
    .local v5, u:I
    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    int-to-char v6, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 178
    .local v4, l:I
    if-eq v5, v8, :cond_1

    if-ne v4, v8, :cond_2

    .line 179
    :cond_1
    new-instance v6, Lcom/futuredial/vxx/codec/DecoderException;

    const-string v7, "Invalid quoted-printable encoding"

    invoke-direct {v6, v7}, Lcom/futuredial/vxx/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v4           #l:I
    .end local v5           #u:I
    :catch_0
    move-exception v2

    .line 183
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Lcom/futuredial/vxx/codec/DecoderException;

    const-string v7, "Invalid quoted-printable encoding"

    invoke-direct {v6, v7}, Lcom/futuredial/vxx/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 181
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4       #l:I
    .restart local v5       #u:I
    :cond_2
    shl-int/lit8 v6, v5, 0x4

    add-int/2addr v6, v4

    int-to-char v6, v6

    :try_start_1
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 172
    .end local v4           #l:I
    .end local v5           #u:I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 189
    .end local v0           #b:I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0
.end method

.method private static final encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)V
    .locals 4
    .parameter "b"
    .parameter "buffer"

    .prologue
    const/16 v3, 0x10

    .line 109
    sget-byte v2, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->ESCAPE_CHAR:B

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 110
    shr-int/lit8 v2, p0, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 111
    .local v0, hex1:C
    and-int/lit8 v2, p0, 0xf

    invoke-static {v2, v3}, Ljava/lang/Character;->forDigit(II)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .line 112
    .local v1, hex2:C
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 113
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 114
    return-void
.end method

.method public static final encodeQuotedPrintable(Ljava/util/BitSet;[B)[B
    .locals 4
    .parameter "printable"
    .parameter "bytes"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 132
    const/4 v3, 0x0

    .line 149
    :goto_0
    return-object v3

    .line 134
    :cond_0
    if-nez p0, :cond_1

    .line 135
    sget-object p0, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 137
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 138
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 139
    aget-byte v0, p1, v2

    .line 140
    .local v0, b:I
    if-gez v0, :cond_2

    .line 141
    add-int/lit16 v0, v0, 0x100

    .line 143
    :cond_2
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 144
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 138
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_3
    invoke-static {v0, v1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->encodeQuotedPrintable(ILjava/io/ByteArrayOutputStream;)V

    goto :goto_2

    .line 149
    .end local v0           #b:I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "pObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 337
    const/4 v0, 0x0

    .line 341
    .end local p1
    :goto_0
    return-object v0

    .line 338
    .restart local p1
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 339
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->decode([B)[B

    move-result-object v0

    goto :goto_0

    .line 340
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 341
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 343
    .restart local p1
    :cond_2
    new-instance v0, Lcom/futuredial/vxx/codec/DecoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be quoted-printable decoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 291
    const/4 v1, 0x0

    .line 294
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/futuredial/vxx/codec/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/futuredial/vxx/codec/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "pString"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/DecoderException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 270
    if-nez p1, :cond_0

    .line 271
    const/4 v0, 0x0

    .line 273
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->decode([B)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public decode([B)[B
    .locals 1
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/DecoderException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-static {p1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter "pObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 311
    if-nez p1, :cond_0

    .line 312
    const/4 v0, 0x0

    .line 316
    .end local p1
    :goto_0
    return-object v0

    .line 313
    .restart local p1
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 314
    check-cast p1, [B

    .end local p1
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->encode([B)[B

    move-result-object v0

    goto :goto_0

    .line 315
    .restart local p1
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 316
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    .restart local p1
    :cond_2
    new-instance v0, Lcom/futuredial/vxx/codec/EncoderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Objects of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be quoted-printable encoded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/futuredial/vxx/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/futuredial/vxx/codec/EncoderException;
        }
    .end annotation

    .prologue
    .line 245
    if-nez p1, :cond_0

    .line 246
    const/4 v1, 0x0

    .line 249
    :goto_0
    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->getDefaultCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/futuredial/vxx/codec/EncoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/futuredial/vxx/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "pString"
    .parameter "charset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 376
    if-nez p1, :cond_0

    .line 377
    const/4 v0, 0x0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->encode([B)[B

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method

.method public encode([B)[B
    .locals 1
    .parameter "bytes"

    .prologue
    .line 205
    sget-object v0, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-static {v0, p1}, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->encodeQuotedPrintable(Ljava/util/BitSet;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/futuredial/vxx/codec/QuotedPrintableCodec;->charset:Ljava/lang/String;

    return-object v0
.end method
