.class public Lcom/google/android/mms/pdu/QuotedPrintable;
.super Ljava/lang/Object;
.source "QuotedPrintable.java"


# static fields
.field private static ESCAPE_CHAR:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3d

    sput-byte v0, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 10

    const/4 v9, -0x1

    const/4 v5, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :goto_1
    array-length v7, p0

    if-ge v3, v7, :cond_4

    aget-byte v0, p0, v3

    sget-byte v7, Lcom/google/android/mms/pdu/QuotedPrintable;->ESCAPE_CHAR:B

    if-ne v0, v7, :cond_3

    const/16 v7, 0xd

    add-int/lit8 v8, v3, 0x1

    :try_start_0
    aget-byte v8, p0, v8

    int-to-char v8, v8

    if-ne v7, v8, :cond_2

    const/16 v7, 0xa

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p0, v8

    int-to-char v8, v8

    if-ne v7, v8, :cond_2

    add-int/lit8 v3, v3, 0x2

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    aget-byte v7, p0, v3

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    add-int/lit8 v3, v3, 0x1

    aget-byte v7, p0, v3

    int-to-char v7, v7

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-eq v6, v9, :cond_0

    if-eq v4, v9, :cond_0

    shl-int/lit8 v7, v6, 0x4

    add-int/2addr v7, v4

    int-to-char v7, v7

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    new-array v5, v7, [B

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
