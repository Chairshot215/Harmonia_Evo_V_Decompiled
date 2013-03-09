.class public Lcom/htc/util/mail/mimemessage/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .parameter "a"
    .parameter "o"

    .prologue
    .line 47
    const/4 v1, 0x0

    .local v1, i:I
    array-length v0, p0

    .local v0, count:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 48
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v2, 0x1

    .line 52
    :goto_1
    return v2

    .line 47
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static base64Decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "encoded"

    .prologue
    .line 79
    if-nez p0, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    .line 82
    :cond_0
    new-instance v1, Lcom/htc/util/mail/mimemessage/Base64;

    invoke-direct {v1}, Lcom/htc/util/mail/mimemessage/Base64;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/mimemessage/Base64;->decode([B)[B

    move-result-object v0

    .line 83
    .local v0, decoded:[B
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static base64Encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 91
    .end local p0
    :goto_0
    return-object p0

    .line 90
    .restart local p0
    :cond_0
    new-instance v1, Lcom/htc/util/mail/mimemessage/Base64;

    invoke-direct {v1}, Lcom/htc/util/mail/mimemessage/Base64;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/util/mail/mimemessage/Base64;->encode([B)[B

    move-result-object v0

    .line 91
    .local v0, encoded:[B
    new-instance p0, Ljava/lang/String;

    .end local p0
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static combine([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 3
    .parameter "parts"
    .parameter "seperator"

    .prologue
    .line 65
    if-nez p0, :cond_0

    .line 66
    const/4 v2, 0x0

    .line 75
    :goto_0
    return-object v2

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 69
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 70
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_1

    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "s"

    .prologue
    const/16 v9, 0x9

    .line 168
    :try_start_0
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 170
    .local v0, bytes:[B
    const/4 v6, 0x0

    .line 171
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    array-length v2, v0

    .local v2, count:I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 172
    aget-byte v1, v0, v4

    .line 173
    .local v1, ch:B
    const/16 v8, 0x25

    if-ne v1, v8, :cond_2

    .line 174
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, v0, v8

    add-int/lit8 v3, v8, -0x30

    .line 175
    .local v3, h:I
    add-int/lit8 v8, v4, 0x2

    aget-byte v8, v0, v8

    add-int/lit8 v5, v8, -0x30

    .line 176
    .local v5, l:I
    if-le v3, v9, :cond_0

    .line 177
    add-int/lit8 v3, v3, -0x7

    .line 179
    :cond_0
    if-le v5, v9, :cond_1

    .line 180
    add-int/lit8 v5, v5, -0x7

    .line 182
    :cond_1
    shl-int/lit8 v8, v3, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 183
    add-int/lit8 v4, v4, 0x2

    .line 191
    .end local v3           #h:I
    .end local v5           #l:I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 185
    :cond_2
    const/16 v8, 0x2b

    if-ne v1, v8, :cond_3

    .line 186
    const/16 v8, 0x20

    aput-byte v8, v0, v6

    goto :goto_1

    .line 195
    .end local v0           #bytes:[B
    .end local v1           #ch:B
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #length:I
    :catch_0
    move-exception v7

    .line 196
    .local v7, uee:Ljava/io/UnsupportedEncodingException;
    const/4 v8, 0x0

    .end local v7           #uee:Ljava/io/UnsupportedEncodingException;
    :goto_2
    return-object v8

    .line 189
    .restart local v0       #bytes:[B
    .restart local v1       #ch:B
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v6       #length:I
    :cond_3
    aget-byte v8, v0, v4

    aput-byte v8, v0, v6

    goto :goto_1

    .line 193
    .end local v1           #ch:B
    :cond_4
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v8, v0, v9, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public static generateMessageId()Ljava/lang/String;
    .locals 6

    .prologue
    .line 324
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x18

    if-ge v0, v2, :cond_0

    .line 327
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4041800000000000L

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const/16 v3, 0x24

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    :cond_0
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    const-string v2, "@email.android.com>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static imapQuoted(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    .line 150
    const-string v1, "\\\\"

    const-string v2, "\\\\\\\\"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, result:Ljava/lang/String;
    const-string v1, "\""

    const-string v2, "\\\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isDateToday(Ljava/util/Date;)Z
    .locals 3
    .parameter "date"

    .prologue
    .line 207
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 208
    .local v0, today:Ljava/util/Date;
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 211
    const/4 v1, 0x1

    .line 213
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 120
    if-nez p0, :cond_1

    .line 121
    const/4 p0, 0x0

    .line 127
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 123
    .restart local p0
    :cond_1
    const-string v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static final readInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 37
    .local v2, reader:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 39
    .local v3, sb:Ljava/lang/StringBuffer;
    const/16 v4, 0x200

    new-array v0, v4, [C

    .line 40
    .local v0, buf:[C
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    .local v1, count:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 41
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static requiredFieldValid(Landroid/text/Editable;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 99
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requiredFieldValid(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setCompoundDrawablesAlpha(Landroid/widget/TextView;I)V
    .locals 0
    .parameter "view"
    .parameter "alpha"

    .prologue
    .line 227
    return-void
.end method
