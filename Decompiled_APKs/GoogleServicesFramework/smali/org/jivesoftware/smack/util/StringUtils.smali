.class public Lorg/jivesoftware/smack/util/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final AMP_ENCODE:[C

.field private static final GT_ENCODE:[C

.field private static final LT_ENCODE:[C

.field private static final QUOTE_ENCODE:[C

.field private static digest:Ljava/security/MessageDigest;

.field private static numbersAndLetters:[C

.field private static randGen:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "&quot;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->QUOTE_ENCODE:[C

    .line 36
    const-string v0, "&amp;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->AMP_ENCODE:[C

    .line 37
    const-string v0, "&lt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->LT_ENCODE:[C

    .line 38
    const-string v0, "&gt;"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->GT_ENCODE:[C

    .line 245
    const/4 v0, 0x0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;

    .line 368
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->randGen:Ljava/util/Random;

    .line 376
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/jivesoftware/smack/util/StringUtils;->numbersAndLetters:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .parameter "data"

    .prologue
    .line 360
    invoke-static {p0}, Lorg/jivesoftware/smack/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 311
    .local v0, bytes:[B
    :try_start_0
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 316
    :goto_0
    invoke-static {v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([B)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 313
    :catch_0
    move-exception v1

    .line 314
    .local v1, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 326
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([BZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([BIIZ)Ljava/lang/String;
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "len"
    .parameter "lineBreaks"

    .prologue
    .line 350
    if-eqz p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p1, p2, v0}, Lorg/jivesoftware/smack/util/Base64;->encodeBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static encodeBase64([BZ)Ljava/lang/String;
    .locals 2
    .parameter "data"
    .parameter "lineBreaks"

    .prologue
    .line 337
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/jivesoftware/smack/util/StringUtils;->encodeBase64([BIIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([B)Ljava/lang/String;
    .locals 4
    .parameter "bytes"

    .prologue
    const/16 v3, 0x10

    .line 290
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 292
    .local v0, hex:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 293
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    if-ge v2, v3, :cond_0

    .line 294
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    :cond_0
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 299
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static escapeForXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "string"

    .prologue
    const/16 v10, 0x3e

    .line 182
    if-nez p0, :cond_1

    .line 183
    const/4 p0, 0x0

    .line 239
    .end local p0
    .local v1, i:I
    .local v2, input:[C
    .local v3, last:I
    .local v4, len:I
    .local v5, out:Ljava/lang/StringBuffer;
    :cond_0
    :goto_0
    return-object p0

    .line 186
    .end local v1           #i:I
    .end local v2           #input:[C
    .end local v3           #last:I
    .end local v4           #len:I
    .end local v5           #out:Ljava/lang/StringBuffer;
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    .line 187
    .restart local v1       #i:I
    const/4 v3, 0x0

    .line 188
    .restart local v3       #last:I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 189
    .restart local v2       #input:[C
    array-length v4, v2

    .line 190
    .restart local v4       #len:I
    new-instance v5, Ljava/lang/StringBuffer;

    int-to-double v6, v4

    const-wide v8, 0x3ff4cccccccccccdL

    mul-double/2addr v6, v8

    double-to-int v6, v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 191
    .restart local v5       #out:Ljava/lang/StringBuffer;
    :goto_1
    if-ge v1, v4, :cond_c

    .line 192
    aget-char v0, v2, v1

    .line 193
    .local v0, ch:C
    if-le v0, v10, :cond_3

    .line 191
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 195
    :cond_3
    const/16 v6, 0x3c

    if-ne v0, v6, :cond_5

    .line 196
    if-le v1, v3, :cond_4

    .line 197
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 199
    :cond_4
    add-int/lit8 v3, v1, 0x1

    .line 200
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->LT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 202
    :cond_5
    if-ne v0, v10, :cond_7

    .line 203
    if-le v1, v3, :cond_6

    .line 204
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 206
    :cond_6
    add-int/lit8 v3, v1, 0x1

    .line 207
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->GT_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 210
    :cond_7
    const/16 v6, 0x26

    if-ne v0, v6, :cond_a

    .line 211
    if-le v1, v3, :cond_8

    .line 212
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 215
    :cond_8
    add-int/lit8 v6, v1, 0x5

    if-le v4, v6, :cond_9

    add-int/lit8 v6, v1, 0x1

    aget-char v6, v2, v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_9

    add-int/lit8 v6, v1, 0x2

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x3

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x4

    aget-char v6, v2, v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_9

    add-int/lit8 v6, v1, 0x5

    aget-char v6, v2, v6

    const/16 v7, 0x3b

    if-eq v6, v7, :cond_2

    .line 221
    :cond_9
    add-int/lit8 v3, v1, 0x1

    .line 222
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->AMP_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 225
    :cond_a
    const/16 v6, 0x22

    if-ne v0, v6, :cond_2

    .line 226
    if-le v1, v3, :cond_b

    .line 227
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 229
    :cond_b
    add-int/lit8 v3, v1, 0x1

    .line 230
    sget-object v6, Lorg/jivesoftware/smack/util/StringUtils;->QUOTE_ENCODE:[C

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 233
    .end local v0           #ch:C
    :cond_c
    if-eqz v3, :cond_0

    .line 236
    if-le v1, v3, :cond_d

    .line 237
    sub-int v6, v1, v3

    invoke-virtual {v5, v2, v3, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 239
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method public static extractBuddyUsername(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "message"
    .parameter "myUsername"

    .prologue
    .line 165
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, fromJid:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v0

    .line 171
    .end local v0           #fromJid:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "data"

    .prologue
    .line 264
    const-class v3, Lorg/jivesoftware/smack/util/StringUtils;

    monitor-enter v3

    :try_start_0
    sget-object v2, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 266
    :try_start_1
    const-string v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sput-object v2, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    .line 275
    :cond_0
    :goto_0
    :try_start_2
    sget-object v2, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;

    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/MessageDigest;->update([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    .line 280
    :goto_1
    :try_start_3
    sget-object v2, Lorg/jivesoftware/smack/util/StringUtils;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->encodeHex([B)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 268
    :catch_0
    move-exception v1

    .line 269
    .local v1, nsae:Ljava/security/NoSuchAlgorithmException;
    :try_start_4
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Failed to load the SHA-1 MessageDigest. Jive will be unable to function normally."

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 264
    .end local v1           #nsae:Ljava/security/NoSuchAlgorithmException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 277
    :catch_1
    move-exception v0

    .line 278
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    :try_start_5
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method public static parseAbbrevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 145
    if-nez p0, :cond_1

    .line 146
    const/4 p0, 0x0

    .line 153
    .end local p0
    .local v0, index:I
    :cond_0
    :goto_0
    return-object p0

    .line 148
    .end local v0           #index:I
    .restart local p0
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 149
    .restart local v0       #index:I
    if-ltz v0, :cond_0

    .line 153
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseBareAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "XMPPAddress"

    .prologue
    .line 121
    if-nez p0, :cond_1

    .line 122
    const/4 p0, 0x0

    .line 132
    .end local p0
    .local v0, slashIndex:I
    :cond_0
    :goto_0
    return-object p0

    .line 124
    .end local v0           #slashIndex:I
    .restart local p0
    :cond_1
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 125
    .restart local v0       #slashIndex:I
    if-ltz v0, :cond_0

    .line 128
    if-nez v0, :cond_2

    .line 129
    const-string p0, ""

    goto :goto_0

    .line 132
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "address"

    .prologue
    .line 49
    if-nez p0, :cond_1

    .line 50
    const/4 p0, 0x0

    .line 59
    .end local p0
    .local v0, atIndex:I
    :cond_0
    :goto_0
    return-object p0

    .line 52
    .end local v0           #atIndex:I
    .restart local p0
    :cond_1
    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 53
    .restart local v0       #atIndex:I
    if-ltz v0, :cond_0

    .line 56
    if-nez v0, :cond_2

    .line 57
    const-string p0, ""

    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static parseResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "XMPPAddress"

    .prologue
    .line 100
    if-nez p0, :cond_0

    .line 101
    const/4 v1, 0x0

    .line 108
    :goto_0
    return-object v1

    .line 103
    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 104
    .local v0, slashIndex:I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_1

    if-gez v0, :cond_2

    .line 105
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 108
    :cond_2
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static parseServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "XMPPAddress"

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const/4 v2, 0x0

    .line 87
    :goto_0
    return-object v2

    .line 75
    :cond_0
    const-string v2, "@"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, atIndex:I
    if-ltz v0, :cond_1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    .line 79
    :cond_1
    const-string v2, ""

    goto :goto_0

    .line 82
    :cond_2
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 83
    .local v1, slashIndex:I
    if-lez v1, :cond_3

    .line 84
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 87
    :cond_3
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static randomString(I)Ljava/lang/String;
    .locals 5
    .parameter "length"

    .prologue
    .line 393
    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    .line 394
    const/4 v2, 0x0

    .line 401
    :goto_0
    return-object v2

    .line 397
    :cond_0
    new-array v1, p0, [C

    .line 398
    .local v1, randBuffer:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 399
    sget-object v2, Lorg/jivesoftware/smack/util/StringUtils;->numbersAndLetters:[C

    sget-object v3, Lorg/jivesoftware/smack/util/StringUtils;->randGen:Ljava/util/Random;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v2, v2, v3

    aput-char v2, v1, v0

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 401
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method
