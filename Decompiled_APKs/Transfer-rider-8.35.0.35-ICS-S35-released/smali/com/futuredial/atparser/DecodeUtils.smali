.class public Lcom/futuredial/atparser/DecodeUtils;
.super Ljava/lang/Object;
.source "DecodeUtils.java"


# instance fields
.field result:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/atparser/DecodeUtils;->result:Ljava/lang/String;

    return-void
.end method

.method private SwitchByte([BII)V
    .locals 3
    .parameter "buffer"
    .parameter "iStart"
    .parameter "iEnd"

    .prologue
    .line 50
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-lt p2, v2, :cond_1

    .line 64
    :cond_0
    return-void

    .line 54
    :cond_1
    array-length v2, p1

    if-le p3, v2, :cond_2

    .line 56
    array-length p3, p1

    .line 58
    :cond_2
    move v0, p2

    .local v0, i:I
    :goto_0
    add-int/lit8 v2, p3, -0x1

    if-ge v0, v2, :cond_0

    .line 60
    aget-byte v1, p1, v0

    .line 61
    .local v1, temp:B
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    .line 62
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v2

    .line 58
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private hexToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "original"

    .prologue
    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 70
    :cond_0
    const-string v5, ""

    .line 84
    :goto_0
    return-object v5

    .line 72
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_3

    .line 75
    add-int/lit8 v2, v1, 0x4

    .line 76
    .local v2, len:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v2, v5, :cond_2

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 80
    :cond_2
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, str:Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    int-to-char v0, v5

    .line 82
    .local v0, hexStr:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 73
    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    .line 84
    .end local v0           #hexStr:C
    .end local v2           #len:I
    .end local v4           #str:Ljava/lang/String;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "decodeType"
    .parameter "str"

    .prologue
    .line 19
    iput-object p2, p0, Lcom/futuredial/atparser/DecodeUtils;->result:Ljava/lang/String;

    .line 20
    if-eqz p2, :cond_0

    .line 24
    :try_start_0
    const-string v2, "base64"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    const/4 v2, 0x0

    invoke-static {p2, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 27
    .local v0, buf:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {p0, v0, v2, v3}, Lcom/futuredial/atparser/DecodeUtils;->SwitchByte([BII)V

    .line 28
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v0

    add-int/lit8 v4, v4, -0x2

    const-string v5, "UNICODE"

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/futuredial/atparser/DecodeUtils;->result:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0           #buf:[B
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/futuredial/atparser/DecodeUtils;->result:Ljava/lang/String;

    return-object v2

    .line 30
    :cond_1
    :try_start_1
    const-string v2, "ucshex"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 32
    invoke-direct {p0, p2}, Lcom/futuredial/atparser/DecodeUtils;->hexToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/futuredial/atparser/DecodeUtils;->result:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v1

    .line 41
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 36
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :cond_2
    :try_start_2
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v2, p0, Lcom/futuredial/atparser/DecodeUtils;->result:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
