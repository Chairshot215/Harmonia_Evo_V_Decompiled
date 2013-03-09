.class public Lcom/htc/android/mail/pim/util/StringUtil;
.super Ljava/lang/Object;
.source "StringUtil.java"


# static fields
.field private static final CRLF:Ljava/lang/String; = "\r\n"

.field private static final HT:Ljava/lang/String; = "\t"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SplitN(Ljava/lang/String;Ljava/lang/String;I)[Ljava/lang/String;
    .locals 6
    .parameter "srcStr"
    .parameter "reg"
    .parameter "num"

    .prologue
    .line 24
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 25
    .local v4, vs:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 27
    .local v3, result:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 28
    .local v2, offset:I
    const/4 v1, 0x0

    .line 29
    .local v1, flag1:I
    const/4 v0, 0x0

    .line 30
    .local v0, count:I
    :goto_0
    if-ltz v1, :cond_1

    .line 32
    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 34
    if-ltz v1, :cond_0

    add-int/lit8 v5, p2, -0x1

    if-ne v0, v5, :cond_2

    .line 36
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    return-object v5

    .line 40
    :cond_2
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v2, v1, v5

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "string1"
    .parameter "string2"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 234
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 238
    :cond_1
    if-eqz p0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move v0, v1

    .line 239
    goto :goto_0

    .line 242
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 245
    goto :goto_0
.end method

.method public static findEmptyLine(Ljava/lang/String;)I
    .locals 3
    .parameter "s"

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 145
    .local v0, ret:I
    :cond_0
    const-string v1, "\n"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 147
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 152
    add-int/lit8 v0, v0, 0x1

    .line 156
    :cond_2
    return v0
.end method

.method public static fold(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "recipients"

    .prologue
    .line 217
    const-string v4, ","

    invoke-static {p0, v4}, Lcom/htc/android/mail/pim/util/StringUtil;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, list:[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 221
    .local v1, buffer:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_0

    const-string v4, ","

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, address:Ljava/lang/String;
    if-nez v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v0           #address:Ljava/lang/String;
    :cond_0
    const-string v4, ""

    goto :goto_1

    .line 223
    .restart local v0       #address:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 226
    .end local v0           #address:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getBooleanValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "string"

    .prologue
    const/4 v0, 0x0

    .line 255
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v0

    .line 258
    :cond_1
    const-string v1, "true"

    invoke-static {p0, v1}, Lcom/htc/android/mail/pim/util/StringUtil;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getStringArray(Ljava/util/Vector;)[Ljava/lang/String;
    .locals 3
    .parameter "stringVec"

    .prologue
    .line 125
    if-nez p0, :cond_1

    .line 126
    const/4 v1, 0x0

    .line 133
    :cond_0
    return-object v1

    .line 129
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 130
    .local v1, stringArray:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 131
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v0, 0x1

    .line 293
    if-nez p0, :cond_1

    .line 299
    :cond_0
    :goto_0
    return v0

    .line 296
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "list"
    .parameter "sep"

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, buffer:Ljava/lang/StringBuffer;
    array-length v2, p0

    .line 112
    .local v2, len:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static removeBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "content"

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    const/4 v3, 0x0

    .line 201
    :goto_0
    return-object v3

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 194
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    .line 197
    .local v2, len:I
    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 198
    const/16 v3, 0x5c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 197
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 201
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static removeBlanks(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "content"

    .prologue
    .line 166
    if-nez p0, :cond_0

    .line 167
    const/4 v2, 0x0

    .line 178
    :goto_0
    return-object v2

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 171
    .local v0, buff:Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_2

    .line 174
    const/16 v2, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 173
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "s"
    .parameter "sep"

    .prologue
    const/4 v9, 0x0

    .line 59
    new-instance v6, Ljava/util/Vector;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/Vector;-><init>(I)V

    .line 60
    .local v6, tokenIndex:Ljava/util/Vector;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 64
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 65
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 66
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 64
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v4

    .line 71
    .local v4, size:I
    add-int/lit8 v7, v4, 0x1

    new-array v0, v7, [Ljava/lang/String;

    .line 74
    .local v0, elements:[Ljava/lang/String;
    if-nez v4, :cond_2

    .line 75
    aput-object p0, v0, v9

    .line 96
    :goto_1
    return-object v0

    .line 79
    :cond_2
    const/4 v5, 0x0

    .line 80
    .local v5, start:I
    invoke-virtual {v6, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 82
    .local v1, end:I
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v9

    .line 85
    const/4 v2, 0x1

    :goto_2
    if-ge v2, v4, :cond_3

    .line 87
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 88
    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 89
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v2

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 92
    :cond_3
    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_4

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    aput-object v7, v0, v2

    goto :goto_1

    :cond_4
    const-string v7, ""

    goto :goto_3
.end method

.method public static trim(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .parameter "s"
    .parameter "c"

    .prologue
    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 273
    .local v0, end:I
    :cond_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_1

    .line 274
    add-int/lit8 v1, v1, 0x1

    if-lt v1, v0, :cond_0

    .line 276
    const-string v2, ""

    .line 286
    :goto_0
    return-object v2

    .line 280
    :cond_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_2

    .line 281
    add-int/lit8 v0, v0, -0x1

    if-gt v0, v1, :cond_1

    .line 282
    const-string v2, ""

    goto :goto_0

    .line 286
    :cond_2
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
