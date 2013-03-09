.class public Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;
.super Ljava/lang/Object;
.source "ExtraFieldUtils.java"


# static fields
.field private static final WORD:I = 0x4

.field private static implementations:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;->implementations:Ljava/util/Hashtable;

    .line 44
    const-class v0, Lcom/htc/htccompressviewer/zip/AsiExtraField;

    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 45
    const-class v0, Lcom/htc/htccompressviewer/zip/JarMarker;

    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;->register(Ljava/lang/Class;)V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtraField(Lcom/htc/htccompressviewer/zip/ZipShort;)Lcom/htc/htccompressviewer/zip/ZipExtraField;
    .locals 3
    .parameter "headerId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 81
    sget-object v2, Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;->implementations:Ljava/util/Hashtable;

    invoke-virtual {v2, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 82
    .local v0, c:Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccompressviewer/zip/ZipExtraField;

    .line 87
    :goto_0
    return-object v2

    .line 85
    :cond_0
    new-instance v1, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;

    invoke-direct {v1}, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;-><init>()V

    .line 86
    .local v1, u:Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;
    invoke-virtual {v1, p0}, Lcom/htc/htccompressviewer/zip/UnrecognizedExtraField;->setHeaderId(Lcom/htc/htccompressviewer/zip/ZipShort;)V

    move-object v2, v1

    .line 87
    goto :goto_0
.end method

.method public static mergeCentralDirectoryData([Lcom/htc/htccompressviewer/zip/ZipExtraField;)[B
    .locals 9
    .parameter "data"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 161
    array-length v5, p0

    mul-int/lit8 v4, v5, 0x4

    .line 162
    .local v4, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 163
    aget-object v5, p0, v0

    invoke-interface {v5}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getCentralDirectoryLength()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue()I

    move-result v5

    add-int/2addr v4, v5

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    new-array v2, v4, [B

    .line 166
    .local v2, result:[B
    const/4 v3, 0x0

    .line 167
    .local v3, start:I
    const/4 v0, 0x0

    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_1

    .line 168
    aget-object v5, p0, v0

    invoke-interface {v5}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getHeaderId()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v7, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    aget-object v5, p0, v0

    invoke-interface {v5}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getCentralDirectoryLength()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes()[B

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    invoke-static {v5, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    aget-object v5, p0, v0

    invoke-interface {v5}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getCentralDirectoryData()[B

    move-result-object v1

    .line 173
    .local v1, local:[B
    add-int/lit8 v5, v3, 0x4

    array-length v6, v1

    invoke-static {v1, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    array-length v5, v1

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 176
    .end local v1           #local:[B
    :cond_1
    return-object v2
.end method

.method public static mergeLocalFileDataData([Lcom/htc/htccompressviewer/zip/ZipExtraField;)[B
    .locals 9
    .parameter "data"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 136
    array-length v5, p0

    mul-int/lit8 v4, v5, 0x4

    .line 137
    .local v4, sum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_0

    .line 138
    aget-object v5, p0, v0

    invoke-interface {v5}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getLocalFileDataLength()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue()I

    move-result v5

    add-int/2addr v4, v5

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-array v2, v4, [B

    .line 141
    .local v2, result:[B
    const/4 v3, 0x0

    .line 142
    .local v3, start:I
    const/4 v0, 0x0

    :goto_1
    array-length v5, p0

    if-ge v0, v5, :cond_1

    .line 143
    aget-object v5, p0, v0

    invoke-interface {v5}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getHeaderId()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v7, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 145
    aget-object v5, p0, v0

    invoke-interface {v5}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getLocalFileDataLength()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/htccompressviewer/zip/ZipShort;->getBytes()[B

    move-result-object v5

    add-int/lit8 v6, v3, 0x2

    invoke-static {v5, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    aget-object v5, p0, v0

    invoke-interface {v5}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getLocalFileDataData()[B

    move-result-object v1

    .line 148
    .local v1, local:[B
    add-int/lit8 v5, v3, 0x4

    array-length v6, v1

    invoke-static {v1, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    array-length v5, v1

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v3, v5

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 151
    .end local v1           #local:[B
    :cond_1
    return-object v2
.end method

.method public static parse([B)[Lcom/htc/htccompressviewer/zip/ZipExtraField;
    .locals 11
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    .line 100
    .local v6, v:Ljava/util/Vector;
    const/4 v5, 0x0

    .line 101
    .local v5, start:I
    :goto_0
    array-length v8, p0

    add-int/lit8 v8, v8, -0x4

    if-gt v5, v8, :cond_1

    .line 102
    new-instance v0, Lcom/htc/htccompressviewer/zip/ZipShort;

    invoke-direct {v0, p0, v5}, Lcom/htc/htccompressviewer/zip/ZipShort;-><init>([BI)V

    .line 103
    .local v0, headerId:Lcom/htc/htccompressviewer/zip/ZipShort;
    new-instance v8, Lcom/htc/htccompressviewer/zip/ZipShort;

    add-int/lit8 v9, v5, 0x2

    invoke-direct {v8, p0, v9}, Lcom/htc/htccompressviewer/zip/ZipShort;-><init>([BI)V

    invoke-virtual {v8}, Lcom/htc/htccompressviewer/zip/ZipShort;->getValue()I

    move-result v3

    .line 104
    .local v3, length:I
    add-int/lit8 v8, v5, 0x4

    add-int/2addr v8, v3

    array-length v9, p0

    if-le v8, v9, :cond_0

    .line 105
    new-instance v8, Ljava/util/zip/ZipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data starting at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is in unknown format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 109
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;->createExtraField(Lcom/htc/htccompressviewer/zip/ZipShort;)Lcom/htc/htccompressviewer/zip/ZipExtraField;

    move-result-object v7

    .line 110
    .local v7, ze:Lcom/htc/htccompressviewer/zip/ZipExtraField;
    add-int/lit8 v8, v5, 0x4

    invoke-interface {v7, p0, v8, v3}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->parseFromLocalFileData([BII)V

    .line 111
    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    add-int/lit8 v8, v3, 0x4

    add-int/2addr v5, v8

    .line 118
    goto :goto_0

    .line 112
    .end local v7           #ze:Lcom/htc/htccompressviewer/zip/ZipExtraField;
    :catch_0
    move-exception v2

    .line 113
    .local v2, ie:Ljava/lang/InstantiationException;
    new-instance v8, Ljava/util/zip/ZipException;

    invoke-virtual {v2}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 114
    .end local v2           #ie:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 115
    .local v1, iae:Ljava/lang/IllegalAccessException;
    new-instance v8, Ljava/util/zip/ZipException;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 119
    .end local v0           #headerId:Lcom/htc/htccompressviewer/zip/ZipShort;
    .end local v1           #iae:Ljava/lang/IllegalAccessException;
    .end local v3           #length:I
    :cond_1
    array-length v8, p0

    if-eq v5, v8, :cond_2

    .line 120
    new-instance v8, Ljava/util/zip/ZipException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "data starting at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is in unknown format"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 124
    :cond_2
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v8

    new-array v4, v8, [Lcom/htc/htccompressviewer/zip/ZipExtraField;

    .line 125
    .local v4, result:[Lcom/htc/htccompressviewer/zip/ZipExtraField;
    invoke-virtual {v6, v4}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 126
    return-object v4
.end method

.method public static register(Ljava/lang/Class;)V
    .locals 6
    .parameter "c"

    .prologue
    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/htccompressviewer/zip/ZipExtraField;

    .line 60
    .local v2, ze:Lcom/htc/htccompressviewer/zip/ZipExtraField;
    sget-object v3, Lcom/htc/htccompressviewer/zip/ExtraFieldUtils;->implementations:Ljava/util/Hashtable;

    invoke-interface {v2}, Lcom/htc/htccompressviewer/zip/ZipExtraField;->getHeaderId()Lcom/htc/htccompressviewer/zip/ZipShort;

    move-result-object v4

    invoke-virtual {v3, v4, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 68
    return-void

    .line 61
    .end local v2           #ze:Lcom/htc/htccompressviewer/zip/ZipExtraField;
    :catch_0
    move-exception v0

    .line 62
    .local v0, cc:Ljava/lang/ClassCastException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t implement ZipExtraField"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    .end local v0           #cc:Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 64
    .local v1, ie:Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a concrete class"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 65
    .end local v1           #ie:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 66
    .local v1, ie:Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'s no-arg constructor is not public"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
