.class public Lcom/htc/android/mail/ByteQuotedPrintable;
.super Ljava/lang/Object;
.source "ByteQuotedPrintable.java"


# static fields
.field private static final DEBUG:Z

.field private static ESCAPE_CHAR:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/16 v0, 0x3d

    sput-byte v0, Lcom/htc/android/mail/ByteQuotedPrintable;->ESCAPE_CHAR:B

    .line 23
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/ByteQuotedPrintable;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 12
    .parameter "bytes"

    .prologue
    const/4 v8, 0x0

    const/4 v11, -0x1

    .line 26
    if-nez p0, :cond_1

    .line 27
    sget-boolean v9, Lcom/htc/android/mail/ByteQuotedPrintable;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "ByteQuotedPrintable"

    const-string v10, "return null"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    return-object v8

    .line 30
    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 31
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v9, p0

    if-ge v3, v9, :cond_9

    .line 32
    aget-byte v0, p0, v3

    .line 33
    .local v0, b:I
    sget-byte v9, Lcom/htc/android/mail/ByteQuotedPrintable;->ESCAPE_CHAR:B

    if-ne v0, v9, :cond_8

    .line 36
    :try_start_0
    array-length v9, p0

    sub-int/2addr v9, v3

    const/4 v10, 0x2

    if-gt v9, v10, :cond_2

    .line 31
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 40
    :cond_2
    const/16 v9, 0xd

    add-int/lit8 v10, v3, 0x1

    aget-byte v10, p0, v10

    int-to-char v10, v10

    if-ne v9, v10, :cond_3

    const/16 v9, 0xa

    add-int/lit8 v10, v3, 0x2

    aget-byte v10, p0, v10

    int-to-char v10, v10

    if-ne v9, v10, :cond_3

    .line 42
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 45
    :cond_3
    add-int/lit8 v3, v3, 0x1

    aget-byte v7, p0, v3

    .line 46
    .local v7, ub:B
    add-int/lit8 v3, v3, 0x1

    aget-byte v5, p0, v3

    .line 47
    .local v5, lb:B
    int-to-char v9, v7

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v6

    .line 48
    .local v6, u:I
    int-to-char v9, v5

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    .line 49
    .local v4, l:I
    if-eq v6, v11, :cond_4

    if-ne v4, v11, :cond_7

    .line 50
    :cond_4
    sget-boolean v9, Lcom/htc/android/mail/ByteQuotedPrintable;->DEBUG:Z

    if-eqz v9, :cond_5

    const-string v9, "ByteQuotedPrintable"

    const-string v10, "return null at u l = -1"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_5
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 52
    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 57
    .end local v4           #l:I
    .end local v5           #lb:B
    .end local v6           #u:I
    .end local v7           #ub:B
    :catch_0
    move-exception v2

    .line 58
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-boolean v9, Lcom/htc/android/mail/ByteQuotedPrintable;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "ByteQuotedPrintable"

    const-string v10, "exception return null"

    invoke-static {v9, v10}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_6
    invoke-virtual {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .line 55
    .end local v2           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4       #l:I
    .restart local v5       #lb:B
    .restart local v6       #u:I
    .restart local v7       #ub:B
    :cond_7
    shl-int/lit8 v9, v6, 0x4

    add-int/2addr v9, v4

    int-to-char v9, v9

    :try_start_1
    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 63
    .end local v4           #l:I
    .end local v5           #lb:B
    .end local v6           #u:I
    .end local v7           #ub:B
    :cond_8
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 66
    .end local v0           #b:I
    :cond_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    goto :goto_0
.end method
