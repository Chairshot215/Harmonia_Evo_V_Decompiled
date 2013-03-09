.class public Lcom/futuredial/xmlbuild/XmlCDATA;
.super Ljava/lang/Object;
.source "XmlCDATA.java"


# static fields
.field private static ENABLE_LOG:Z


# instance fields
.field protected m_strValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/futuredial/xmlbuild/XmlCDATA;->ENABLE_LOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlCDATA;->m_strValue:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "strValue"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlCDATA;->m_strValue:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "binData"

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p0, p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->setCDATA([B)V

    .line 16
    return-void
.end method

.method public static HexString2byte(Ljava/lang/String;)[B
    .locals 7
    .parameter "strData"

    .prologue
    const/16 v6, 0x39

    .line 148
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_2

    .line 150
    :cond_0
    const/4 v4, 0x0

    new-array v3, v4, [B

    .line 175
    :cond_1
    return-object v3

    .line 152
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [B

    .line 153
    .local v3, ret:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 155
    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 156
    .local v0, h:I
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 157
    .local v2, l:I
    if-gt v0, v6, :cond_3

    .line 159
    add-int/lit8 v0, v0, -0x30

    .line 165
    :goto_1
    if-gt v2, v6, :cond_4

    .line 167
    add-int/lit8 v2, v2, -0x30

    .line 173
    :goto_2
    shl-int/lit8 v4, v0, 0x4

    and-int/lit16 v4, v4, 0xf0

    and-int/lit8 v5, v2, 0xf

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_3
    add-int/lit8 v0, v0, -0x37

    goto :goto_1

    .line 171
    :cond_4
    add-int/lit8 v2, v2, -0x37

    goto :goto_2
.end method

.method public static LogBinData(Ljava/lang/String;[B)V
    .locals 13
    .parameter "strType"
    .parameter "binData"

    .prologue
    .line 37
    sget-boolean v11, Lcom/futuredial/xmlbuild/XmlCDATA;->ENABLE_LOG:Z

    if-eqz v11, :cond_9

    .line 38
    const-string v7, "DMI"

    .line 39
    .local v7, st:Ljava/lang/String;
    const-string v11, "Begin"

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, bFinished:Z
    const/16 v6, 0x10

    .line 42
    .local v6, nLen:I
    const/16 v11, 0x30

    new-array v9, v11, [C

    .line 43
    .local v9, szBinLine:[C
    new-array v10, v6, [C

    .line 44
    .local v10, szStrLine:[C
    const-string v8, ""

    .line 45
    .local v8, strMsg:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, m:I
    :goto_0
    array-length v11, v9

    if-ge v5, v11, :cond_0

    .line 47
    const/16 v11, 0x20

    aput-char v11, v9, v5

    .line 45
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    :cond_0
    const/4 v5, 0x0

    :goto_1
    array-length v11, v10

    if-ge v5, v11, :cond_1

    .line 51
    const/16 v11, 0x20

    aput-char v11, v10, v5

    .line 49
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 54
    :cond_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, p1

    if-ge v2, v11, :cond_7

    .line 56
    const/4 v0, 0x0

    .line 57
    aget-byte v11, p1, v2

    shr-int/lit8 v11, v11, 0x4

    int-to-byte v11, v11

    and-int/lit8 v1, v11, 0xf

    .line 58
    .local v1, h:I
    aget-byte v11, p1, v2

    and-int/lit8 v4, v11, 0xf

    .line 59
    .local v4, l:I
    rem-int v3, v2, v6

    .line 60
    .local v3, id:I
    const/16 v11, 0x9

    if-gt v1, v11, :cond_2

    .line 62
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v12, v1, 0x30

    int-to-char v12, v12

    aput-char v12, v9, v11

    .line 69
    :goto_3
    const/16 v11, 0x9

    if-gt v4, v11, :cond_3

    .line 71
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v4, 0x30

    int-to-char v12, v12

    aput-char v12, v9, v11

    .line 77
    :goto_4
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, 0x2

    const/16 v12, 0x20

    aput-char v12, v9, v11

    .line 79
    aget-byte v11, p1, v2

    const/16 v12, 0x1e

    if-lt v11, v12, :cond_4

    .line 81
    aget-byte v11, p1, v2

    int-to-char v11, v11

    aput-char v11, v10, v3

    .line 88
    :goto_5
    add-int/lit8 v11, v2, 0x1

    rem-int/2addr v11, v6

    if-nez v11, :cond_6

    .line 90
    const/4 v0, 0x1

    .line 91
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 92
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v5, 0x0

    :goto_6
    array-length v11, v9

    if-ge v5, v11, :cond_5

    .line 96
    const/16 v11, 0x20

    aput-char v11, v9, v5

    .line 94
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 66
    :cond_2
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v12, v1, 0x37

    int-to-char v12, v12

    aput-char v12, v9, v11

    goto :goto_3

    .line 75
    :cond_3
    mul-int/lit8 v11, v3, 0x3

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v4, 0x37

    int-to-char v12, v12

    aput-char v12, v9, v11

    goto :goto_4

    .line 85
    :cond_4
    const/16 v11, 0x2e

    aput-char v11, v10, v3

    goto :goto_5

    .line 98
    :cond_5
    const/4 v5, 0x0

    :goto_7
    array-length v11, v10

    if-ge v5, v11, :cond_6

    .line 100
    const/16 v11, 0x20

    aput-char v11, v10, v5

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 54
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 105
    .end local v1           #h:I
    .end local v3           #id:I
    .end local v4           #l:I
    :cond_7
    if-nez v0, :cond_8

    .line 107
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 108
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_8
    const-string v11, "End"

    invoke-static {v7, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .end local v0           #bFinished:Z
    .end local v2           #i:I
    .end local v5           #m:I
    .end local v6           #nLen:I
    .end local v7           #st:Ljava/lang/String;
    .end local v8           #strMsg:Ljava/lang/String;
    .end local v9           #szBinLine:[C
    .end local v10           #szStrLine:[C
    :cond_9
    return-void
.end method

.method public static byte2HexString([B)Ljava/lang/String;
    .locals 7
    .parameter "binData"

    .prologue
    const/16 v6, 0x9

    .line 116
    if-eqz p0, :cond_0

    array-length v4, p0

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 118
    :cond_0
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-object v4

    .line 120
    :cond_1
    array-length v4, p0

    mul-int/lit8 v4, v4, 0x2

    new-array v3, v4, [C

    .line 121
    .local v3, str:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_4

    .line 123
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    and-int/lit8 v0, v4, 0xf

    .line 124
    .local v0, h:I
    aget-byte v4, p0, v1

    and-int/lit8 v2, v4, 0xf

    .line 125
    .local v2, l:I
    if-gt v0, v6, :cond_2

    .line 127
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v0, 0x30

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 134
    :goto_2
    if-gt v2, v6, :cond_3

    .line 136
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    aput-char v5, v3, v4

    .line 121
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    :cond_2
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v0, 0x37

    int-to-char v5, v5

    aput-char v5, v3, v4

    goto :goto_2

    .line 140
    :cond_3
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v2, 0x37

    int-to-char v5, v5

    aput-char v5, v3, v4

    goto :goto_3

    .line 144
    .end local v0           #h:I
    .end local v2           #l:I
    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method


# virtual methods
.method public getCDATA()[B
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlCDATA;->m_strValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/futuredial/xmlbuild/XmlCDATA;->HexString2byte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getLen()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlCDATA;->m_strValue:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlCDATA;->m_strValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/futuredial/xmlbuild/XmlCDATA;->m_strValue:Ljava/lang/String;

    return-object v0
.end method

.method public setCDATA([B)V
    .locals 1
    .parameter "binData"

    .prologue
    .line 179
    invoke-static {p1}, Lcom/futuredial/xmlbuild/XmlCDATA;->byte2HexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/futuredial/xmlbuild/XmlCDATA;->m_strValue:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "strValue"

    .prologue
    .line 23
    iput-object p1, p0, Lcom/futuredial/xmlbuild/XmlCDATA;->m_strValue:Ljava/lang/String;

    .line 24
    return-void
.end method
