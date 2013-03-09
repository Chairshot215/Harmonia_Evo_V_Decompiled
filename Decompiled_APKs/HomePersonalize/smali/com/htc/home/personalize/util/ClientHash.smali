.class public Lcom/htc/home/personalize/util/ClientHash;
.super Ljava/lang/Object;
.source "ClientHash.java"


# static fields
.field protected static ESCAPE_CHAR:B = 0x0t

.field protected static ESCAPE_CHAR_:Ljava/lang/String; = null

.field static final RADIX:I = 0x10

.field public static final SEPARATOR:Ljava/lang/String; = "#"

.field protected static final WWW_FORM_URL:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const/16 v0, 0x25

    sput-byte v0, Lcom/htc/home/personalize/util/ClientHash;->ESCAPE_CHAR:B

    .line 15
    const-string v0, "%"

    sput-object v0, Lcom/htc/home/personalize/util/ClientHash;->ESCAPE_CHAR_:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/htc/home/personalize/util/ClientHash;->WWW_FORM_URL:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final encodeUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "value"

    .prologue
    const/16 v11, 0x10

    .line 30
    :try_start_0
    invoke-static {p0}, Lcom/htc/home/personalize/util/ClientHash;->newBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 34
    .local v2, bytes:[B
    if-nez v2, :cond_0

    .line 35
    const/4 v7, 0x0

    .line 65
    .end local v2           #bytes:[B
    :goto_0
    return-object v7

    .line 31
    :catch_0
    move-exception v3

    .line 32
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    goto :goto_0

    .line 37
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #bytes:[B
    :cond_0
    const/4 v9, 0x0

    aget-byte v10, v2, v9

    add-int/lit8 v10, v10, 0x1

    int-to-byte v10, v10

    aput-byte v10, v2, v9

    .line 39
    sget-object v8, Lcom/htc/home/personalize/util/ClientHash;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 40
    .local v8, urlsafe:Ljava/util/BitSet;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 41
    .local v1, buffer:Ljava/io/ByteArrayOutputStream;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v9, v2

    if-ge v6, v9, :cond_4

    .line 42
    aget-byte v0, v2, v6

    .line 43
    .local v0, b:I
    if-gez v0, :cond_1

    .line 44
    add-int/lit16 v0, v0, 0x100

    .line 46
    :cond_1
    invoke-virtual {v8, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 47
    const/16 v9, 0x20

    if-ne v0, v9, :cond_2

    .line 48
    const/16 v0, 0x2b

    .line 50
    :cond_2
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 41
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 52
    :cond_3
    sget-byte v9, Lcom/htc/home/personalize/util/ClientHash;->ESCAPE_CHAR:B

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 53
    shr-int/lit8 v9, v0, 0x4

    and-int/lit8 v9, v9, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    .line 54
    .local v4, hex1:C
    and-int/lit8 v9, v0, 0xf

    invoke-static {v9, v11}, Ljava/lang/Character;->forDigit(II)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    .line 55
    .local v5, hex2:C
    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 56
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 61
    .end local v0           #b:I
    .end local v4           #hex1:C
    .end local v5           #hex2:C
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-static {v9}, Lcom/htc/home/personalize/util/ClientHash;->newString([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .local v7, result:Ljava/lang/String;
    goto :goto_0

    .line 62
    .end local v7           #result:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 63
    .restart local v3       #ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, ""

    goto :goto_0
.end method

.method public static getAuthDigest(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "currentTimeStamp"
    .parameter "imei"
    .parameter "myhtcAccount"

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 23
    .local v0, conbine:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/home/personalize/util/ClientHash;->encodeUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static newBytes(Ljava/lang/String;)[B
    .locals 1
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 69
    if-nez p0, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 72
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static newString([B)Ljava/lang/String;
    .locals 2
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0
.end method
