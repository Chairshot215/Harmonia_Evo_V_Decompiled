.class Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuotedPrintableCodecPort"
.end annotation


# static fields
.field private static ESCAPE_CHAR:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x3d

    sput-byte v0, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->ESCAPE_CHAR:B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 9
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/VCardUtils$DecoderException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 68
    if-nez p0, :cond_0

    .line 69
    const/4 v6, 0x0

    .line 89
    :goto_0
    return-object v6

    .line 71
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 72
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, p0

    if-ge v3, v6, :cond_4

    .line 73
    aget-byte v0, p0, v3

    .line 74
    .local v0, b:I
    sget-byte v6, Lcom/android/vcard/VCardUtils$QuotedPrintableCodecPort;->ESCAPE_CHAR:B

    if-ne v0, v6, :cond_3

    .line 76
    add-int/lit8 v3, v3, 0x1

    :try_start_0
    aget-byte v6, p0, v3

    int-to-char v6, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 77
    .local v5, u:I
    add-int/lit8 v3, v3, 0x1

    aget-byte v6, p0, v3

    int-to-char v6, v6

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 78
    .local v4, l:I
    if-eq v5, v8, :cond_1

    if-ne v4, v8, :cond_2

    .line 79
    :cond_1
    new-instance v6, Lcom/android/vcard/VCardUtils$DecoderException;

    const-string v7, "Invalid quoted-printable encoding"

    invoke-direct {v6, v7}, Lcom/android/vcard/VCardUtils$DecoderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .end local v4           #l:I
    .end local v5           #u:I
    :catch_0
    move-exception v2

    .line 83
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v6, Lcom/android/vcard/VCardUtils$DecoderException;

    const-string v7, "Invalid quoted-printable encoding"

    invoke-direct {v6, v7}, Lcom/android/vcard/VCardUtils$DecoderException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 81
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

    .line 72
    .end local v4           #l:I
    .end local v5           #u:I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 89
    .end local v0           #b:I
    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    goto :goto_0
.end method
