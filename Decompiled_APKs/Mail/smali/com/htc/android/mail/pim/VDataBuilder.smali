.class public Lcom/htc/android/mail/pim/VDataBuilder;
.super Ljava/lang/Object;
.source "VDataBuilder.java"

# interfaces
.implements Lcom/htc/android/mail/pim/VBuilder;


# static fields
.field private static final TAG:Ljava/lang/String; = "VDataBuilder"


# instance fields
.field curParamType:Ljava/lang/String;

.field curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

.field curVNode:Lcom/htc/android/mail/pim/VNode;

.field nodeListPos:I

.field public vNodeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/pim/VNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/pim/VDataBuilder;->vNodeList:Ljava/util/ArrayList;

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/pim/VDataBuilder;->nodeListPos:I

    return-void
.end method

.method private static byte2String([B)Ljava/lang/String;
    .locals 5
    .parameter "bytes"

    .prologue
    .line 247
    array-length v4, p0

    new-array v0, v4, [C

    .line 248
    .local v0, aChar:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 249
    aget-byte v4, p0, v2

    int-to-char v4, v4

    aput-char v4, v0, v2

    .line 248
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 251
    .local v1, cb:Ljava/nio/CharBuffer;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 252
    .local v3, sb:Ljava/lang/StringBuffer;
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 4
    .parameter "str"

    .prologue
    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 264
    .local v1, aChar:[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 265
    .local v0, aByte:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 266
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    :cond_0
    return-object v0
.end method

.method public static getRawString(Ljava/io/RandomAccessFile;JJ)Ljava/lang/String;
    .locals 8
    .parameter "file"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 186
    sub-long v4, p3, p1

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 187
    const/4 v4, 0x0

    .line 207
    :goto_0
    return-object v4

    .line 188
    :cond_0
    sub-long v4, p3, p1

    long-to-int v4, v4

    :try_start_0
    new-array v2, v4, [B

    .line 189
    .local v2, readb:[B
    invoke-virtual {p0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 190
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->read([B)I

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, bIsUTF8:Z
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 198
    .local v3, temp:[B
    array-length v4, v3

    array-length v5, v2

    if-ne v4, v5, :cond_1

    .line 199
    const/4 v0, 0x1

    .line 201
    :cond_1
    if-eqz v0, :cond_2

    .line 202
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    .end local v0           #bIsUTF8:Z
    .end local v2           #readb:[B
    .end local v3           #temp:[B
    :catch_0
    move-exception v1

    .line 206
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 207
    const-string v4, ""

    goto :goto_0

    .line 204
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bIsUTF8:Z
    .restart local v2       #readb:[B
    .restart local v3       #temp:[B
    :cond_2
    :try_start_1
    invoke-static {v2}, Lcom/htc/android/mail/pim/VDataBuilder;->byte2String([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_0
.end method

.method public static getRawString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "filepath"

    .prologue
    .line 156
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 157
    .local v3, fis:Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v2

    .line 158
    .local v2, fSize:I
    new-array v5, v2, [B

    .line 159
    .local v5, vcard_byte:[B
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    .line 160
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, bIsUTF8:Z
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 169
    .local v4, temp:[B
    array-length v6, v4

    array-length v7, v5

    if-ne v6, v7, :cond_0

    .line 170
    const/4 v0, 0x1

    .line 172
    :cond_0
    if-eqz v0, :cond_1

    .line 173
    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 179
    .end local v0           #bIsUTF8:Z
    .end local v2           #fSize:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #temp:[B
    .end local v5           #vcard_byte:[B
    :goto_0
    return-object v6

    .line 175
    .restart local v0       #bIsUTF8:Z
    .restart local v2       #fSize:I
    .restart local v3       #fis:Ljava/io/FileInputStream;
    .restart local v4       #temp:[B
    .restart local v5       #vcard_byte:[B
    :cond_1
    invoke-static {v5}, Lcom/htc/android/mail/pim/VDataBuilder;->byte2String([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 177
    .end local v0           #bIsUTF8:Z
    .end local v2           #fSize:I
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v4           #temp:[B
    .end local v5           #vcard_byte:[B
    :catch_0
    move-exception v1

    .line 178
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    const-string v6, ""

    goto :goto_0
.end method

.method private static isUTF8([B)Z
    .locals 8
    .parameter "data"

    .prologue
    const/16 v7, 0xc0

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, count_good_utf:I
    const/4 v0, 0x0

    .line 217
    .local v0, count_bad_utf:I
    const/4 v2, 0x0

    .line 218
    .local v2, current_byte:B
    const/4 v4, 0x0

    .line 219
    .local v4, previous_byte:B
    const/4 v3, 0x1

    .local v3, i:I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_3

    .line 220
    aget-byte v2, p0, v3

    .line 221
    add-int/lit8 v5, v3, -0x1

    aget-byte v4, p0, v5

    .line 222
    and-int/lit16 v5, v2, 0xc0

    const/16 v6, 0x80

    if-ne v5, v6, :cond_2

    .line 223
    and-int/lit16 v5, v4, 0xc0

    if-ne v5, v7, :cond_1

    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 219
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 225
    :cond_1
    and-int/lit16 v5, v4, 0x80

    if-nez v5, :cond_0

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :cond_2
    and-int/lit16 v5, v4, 0xc0

    if-ne v5, v7, :cond_0

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 232
    :cond_3
    if-le v1, v0, :cond_4

    .line 233
    const/4 v5, 0x1

    .line 235
    :goto_2
    return v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method private listToString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, list:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v3, typeListB:Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 273
    .local v2, type:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 275
    .end local v2           #type:Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 276
    .local v1, len:I
    if-lez v1, :cond_1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x3b

    if-ne v4, v5, :cond_1

    .line 277
    const/4 v4, 0x0

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 279
    :goto_1
    return-object v4

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public endProperty()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method public endRecord()V
    .locals 3

    .prologue
    .line 62
    iget-object v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->vNodeList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/mail/pim/VDataBuilder;->nodeListPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/pim/VNode;

    .line 63
    .local v0, endNode:Lcom/htc/android/mail/pim/VNode;
    const/4 v1, 0x0

    iput v1, v0, Lcom/htc/android/mail/pim/VNode;->parseStatus:I

    .line 64
    :cond_0
    iget v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->nodeListPos:I

    if-lez v1, :cond_1

    .line 65
    iget v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->nodeListPos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->nodeListPos:I

    .line 66
    iget-object v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->vNodeList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/mail/pim/VDataBuilder;->nodeListPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/pim/VNode;

    iget v1, v1, Lcom/htc/android/mail/pim/VNode;->parseStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->vNodeList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/mail/pim/VDataBuilder;->nodeListPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/pim/VNode;

    iput-object v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curVNode:Lcom/htc/android/mail/pim/VNode;

    .line 70
    return-void
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return-object v0
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 79
    new-instance v0, Lcom/htc/android/mail/pim/PropertyNode;

    invoke-direct {v0}, Lcom/htc/android/mail/pim/PropertyNode;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    .line 80
    iget-object v0, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iput-object p1, v0, Lcom/htc/android/mail/pim/PropertyNode;->propName:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curParamType:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curParamType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v0, v0, Lcom/htc/android/mail/pim/PropertyNode;->paraMap_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curParamType:Ljava/lang/String;

    .line 96
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curParamType:Ljava/lang/String;

    const-string v1, "TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v0, v0, Lcom/htc/android/mail/pim/PropertyNode;->paraMap_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v0, v0, Lcom/htc/android/mail/pim/PropertyNode;->paraMap:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curParamType:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public propertyValues(Ljava/util/Collection;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, values:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iput-object p1, v5, Lcom/htc/android/mail/pim/PropertyNode;->propValue_vector:Ljava/util/Collection;

    .line 100
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    invoke-direct {p0, p1}, Lcom/htc/android/mail/pim/VDataBuilder;->listToString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/htc/android/mail/pim/PropertyNode;->propValue:Ljava/lang/String;

    .line 102
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v5, v5, Lcom/htc/android/mail/pim/PropertyNode;->paraMap:Landroid/content/ContentValues;

    const-string v6, "ENCODING"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v5, v5, Lcom/htc/android/mail/pim/PropertyNode;->paraMap:Landroid/content/ContentValues;

    const-string v6, "ENCODING"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "BASE64"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v6, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v6, v6, Lcom/htc/android/mail/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\t"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "\r\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    iput-object v6, v5, Lcom/htc/android/mail/pim/PropertyNode;->propValue_byts:[B

    .line 111
    :cond_0
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v5, v5, Lcom/htc/android/mail/pim/PropertyNode;->paraMap:Landroid/content/ContentValues;

    const-string v6, "ENCODING"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "QUOTED-PRINTABLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 114
    :try_start_0
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v6, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v6, v6, Lcom/htc/android/mail/pim/PropertyNode;->propValue:Ljava/lang/String;

    const-string v7, "= "

    const-string v8, " "

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "=\t"

    const-string v8, "\t"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "=\r\n"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v6

    iput-object v6, v5, Lcom/htc/android/mail/pim/PropertyNode;->propValue_byts:[B

    .line 119
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v5, v5, Lcom/htc/android/mail/pim/PropertyNode;->paraMap:Landroid/content/ContentValues;

    const-string v6, "CHARSET"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v5, v5, Lcom/htc/android/mail/pim/PropertyNode;->paraMap:Landroid/content/ContentValues;

    const-string v6, "CHARSET"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, charset:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v7, v7, Lcom/htc/android/mail/pim/PropertyNode;->propValue_byts:[B

    invoke-direct {v6, v7, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, v5, Lcom/htc/android/mail/pim/PropertyNode;->propValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v0           #charset:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curVNode:Lcom/htc/android/mail/pim/VNode;

    iget-object v5, v5, Lcom/htc/android/mail/pim/VNode;->propList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    return-void

    .line 124
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v7, v7, Lcom/htc/android/mail/pim/PropertyNode;->propValue_byts:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    iput-object v6, v5, Lcom/htc/android/mail/pim/PropertyNode;->propValue:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    .line 128
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "=Decode quoted-printable exception."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    const-string v5, "VDataBuilder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in get QUOTED-PRINTABLE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 133
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v5, v5, Lcom/htc/android/mail/pim/PropertyNode;->paraMap:Landroid/content/ContentValues;

    const-string v6, "CHARSET"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v5, v5, Lcom/htc/android/mail/pim/PropertyNode;->paraMap:Landroid/content/ContentValues;

    const-string v6, "CHARSET"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .restart local v0       #charset:Ljava/lang/String;
    :try_start_2
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v7, v7, Lcom/htc/android/mail/pim/PropertyNode;->propValue:Ljava/lang/String;

    invoke-static {v7}, Lcom/htc/android/mail/pim/VDataBuilder;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v6, v5, Lcom/htc/android/mail/pim/PropertyNode;->propValue:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 138
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v3, prop_vec_new:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iget-object v5, v5, Lcom/htc/android/mail/pim/PropertyNode;->propValue_vector:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 142
    .local v4, s:Ljava/lang/String;
    :try_start_3
    new-instance v5, Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/android/mail/pim/VDataBuilder;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 143
    :catch_1
    move-exception v1

    .line 144
    .restart local v1       #e:Ljava/lang/Exception;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 147
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #s:Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curPropNode:Lcom/htc/android/mail/pim/PropertyNode;

    iput-object v3, v5, Lcom/htc/android/mail/pim/PropertyNode;->propValue_vector:Ljava/util/Collection;

    goto/16 :goto_0

    .line 137
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #prop_vec_new:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method public start()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public startProperty()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public startRecord(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 53
    new-instance v0, Lcom/htc/android/mail/pim/VNode;

    invoke-direct {v0}, Lcom/htc/android/mail/pim/VNode;-><init>()V

    .line 54
    .local v0, vnode:Lcom/htc/android/mail/pim/VNode;
    const/4 v1, 0x1

    iput v1, v0, Lcom/htc/android/mail/pim/VNode;->parseStatus:I

    .line 55
    iput-object p1, v0, Lcom/htc/android/mail/pim/VNode;->VName:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->vNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->vNodeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->nodeListPos:I

    .line 58
    iget-object v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->vNodeList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/htc/android/mail/pim/VDataBuilder;->nodeListPos:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/pim/VNode;

    iput-object v1, p0, Lcom/htc/android/mail/pim/VDataBuilder;->curVNode:Lcom/htc/android/mail/pim/VNode;

    .line 59
    return-void
.end method
