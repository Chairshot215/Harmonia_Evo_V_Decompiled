.class public Lcom/htc/util/mail/mimemessage/Address;
.super Ljava/lang/Object;
.source "Address.java"


# static fields
.field private static final EMPTY_ADDRESS_ARRAY:[Lcom/htc/util/mail/mimemessage/Address; = null

.field private static final LIST_DELIMITER_EMAIL:C = '\u0001'

.field private static final LIST_DELIMITER_PERSONAL:C = '\u0002'

.field private static final REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

.field private static final REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

.field private static final UNQUOTE:Ljava/util/regex/Pattern;


# instance fields
.field mAddress:Ljava/lang/String;

.field mPersonal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, "^<?([^>]+)>?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/mimemessage/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    .line 55
    const-string v0, "^\"?([^\"]*)\"?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/mimemessage/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    .line 57
    const-string v0, "\\\\([\\\\\"])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/mimemessage/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/htc/util/mail/mimemessage/Address;

    sput-object v0, Lcom/htc/util/mail/mimemessage/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/htc/util/mail/mimemessage/Address;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/mimemessage/Address;->setAddress(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "address"
    .parameter "personal"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/htc/util/mail/mimemessage/Address;->setAddress(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p2}, Lcom/htc/util/mail/mimemessage/Address;->setPersonal(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static isAllValid(Ljava/lang/String;)Z
    .locals 6
    .parameter "addressList"

    .prologue
    .line 116
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 117
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v4

    .line 118
    .local v4, tokens:[Landroid/text/util/Rfc822Token;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, length:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 119
    aget-object v3, v4, v1

    .line 120
    .local v3, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v3}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 122
    const/4 v5, 0x0

    .line 126
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #token:Landroid/text/util/Rfc822Token;
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :goto_1
    return v5

    .line 118
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    .restart local v3       #token:Landroid/text/util/Rfc822Token;
    .restart local v4       #tokens:[Landroid/text/util/Rfc822Token;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0           #address:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #token:Landroid/text/util/Rfc822Token;
    .end local v4           #tokens:[Landroid/text/util/Rfc822Token;
    :cond_1
    const/4 v5, 0x1

    goto :goto_1
.end method

.method static isValidAddress(Ljava/lang/String;)Z
    .locals 7
    .parameter "address"

    .prologue
    const/16 v5, 0x40

    const/16 v6, 0x2e

    .line 166
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 167
    .local v4, len:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 168
    .local v0, firstAt:I
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 169
    .local v2, lastAt:I
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 170
    .local v1, firstDot:I
    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 171
    .local v3, lastDot:I
    if-lez v0, :cond_0

    if-ne v0, v2, :cond_0

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v1, :cond_0

    if-gt v1, v3, :cond_0

    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static legacyUnpack(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;
    .locals 10
    .parameter "addressList"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 441
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 442
    :cond_0
    new-array v7, v9, [Lcom/htc/util/mail/mimemessage/Address;

    .line 470
    :goto_0
    return-object v7

    .line 444
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v2, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/mimemessage/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 446
    .local v3, length:I
    const/4 v5, 0x0

    .line 447
    .local v5, pairStartIndex:I
    const/4 v4, 0x0

    .line 448
    .local v4, pairEndIndex:I
    const/4 v1, 0x0

    .line 449
    .local v1, addressEndIndex:I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 450
    const/16 v7, 0x2c

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 451
    if-ne v4, v8, :cond_2

    .line 452
    move v4, v3

    .line 454
    :cond_2
    const/16 v7, 0x3b

    invoke-virtual {p0, v7, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 455
    const/4 v0, 0x0

    .line 456
    .local v0, address:Ljava/lang/String;
    const/4 v6, 0x0

    .line 457
    .local v6, personal:Ljava/lang/String;
    if-eq v1, v8, :cond_3

    if-le v1, v4, :cond_4

    .line 458
    :cond_3
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/util/mail/mimemessage/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    :goto_2
    new-instance v7, Lcom/htc/util/mail/mimemessage/Address;

    invoke-direct {v7, v0, v6}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    add-int/lit8 v5, v4, 0x1

    .line 469
    goto :goto_1

    .line 462
    :cond_4
    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/util/mail/mimemessage/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 464
    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/htc/util/mail/mimemessage/Utility;->fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 470
    .end local v0           #address:Ljava/lang/String;
    .end local v6           #personal:Ljava/lang/String;
    :cond_5
    new-array v7, v9, [Lcom/htc/util/mail/mimemessage/Address;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0
.end method

.method public static pack([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;
    .locals 8
    .parameter "addresses"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 393
    if-nez p0, :cond_0

    .line 394
    const/4 v5, 0x0

    .line 419
    :goto_0
    return-object v5

    .line 396
    :cond_0
    array-length v3, p0

    .line 397
    .local v3, nAddr:I
    if-nez v3, :cond_1

    .line 398
    const-string v5, ""

    goto :goto_0

    .line 402
    :cond_1
    if-ne v3, v7, :cond_2

    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/htc/util/mail/mimemessage/Address;->getPersonal()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 403
    aget-object v5, p0, v6

    invoke-virtual {v5}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 406
    :cond_2
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 407
    .local v4, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 408
    if-eqz v2, :cond_3

    .line 409
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 411
    :cond_3
    aget-object v0, p0, v2

    .line 412
    .local v0, address:Lcom/htc/util/mail/mimemessage/Address;
    invoke-virtual {v0}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {v0}, Lcom/htc/util/mail/mimemessage/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 414
    .local v1, displayName:Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 415
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 416
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    .end local v0           #address:Lcom/htc/util/mail/mimemessage/Address;
    .end local v1           #displayName:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static packedToHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packedList"

    .prologue
    .line 334
    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/Address;->unpack(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Address;->toHeader([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;
    .locals 8
    .parameter "addressList"

    .prologue
    .line 137
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 138
    :cond_0
    sget-object v7, Lcom/htc/util/mail/mimemessage/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/htc/util/mail/mimemessage/Address;

    .line 155
    :goto_0
    return-object v7

    .line 140
    :cond_1
    invoke-static {p0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v6

    .line 141
    .local v6, tokens:[Landroid/text/util/Rfc822Token;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v1, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/mimemessage/Address;>;"
    const/4 v2, 0x0

    .local v2, i:I
    array-length v3, v6

    .local v3, length:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 143
    aget-object v5, v6, v2

    .line 144
    .local v5, token:Landroid/text/util/Rfc822Token;
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 146
    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Address;->isValidAddress(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 147
    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v4

    .line 148
    .local v4, name:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 149
    const/4 v4, 0x0

    .line 151
    :cond_2
    new-instance v7, Lcom/htc/util/mail/mimemessage/Address;

    invoke-direct {v7, v0, v4}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .end local v4           #name:Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    .end local v0           #address:Ljava/lang/String;
    .end local v5           #token:Landroid/text/util/Rfc822Token;
    :cond_4
    const/4 v7, 0x0

    new-array v7, v7, [Lcom/htc/util/mail/mimemessage/Address;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0
.end method

.method public static parseAndPack(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "textList"

    .prologue
    .line 315
    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/Address;->parse(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Address;->pack([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toFriendly([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;
    .locals 5
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 290
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 291
    :cond_0
    const/4 v2, 0x0

    .line 301
    :goto_0
    return-object v2

    .line 293
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 294
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 296
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 298
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 299
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/Address;->toFriendly()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toHeader([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;
    .locals 5
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 252
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 253
    :cond_0
    const/4 v2, 0x0

    .line 264
    :goto_0
    return-object v2

    .line 255
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 256
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 258
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 259
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 261
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/Address;->toHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static toString([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;
    .locals 5
    .parameter "addresses"

    .prologue
    const/4 v4, 0x0

    .line 216
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 217
    :cond_0
    const/4 v2, 0x0

    .line 227
    :goto_0
    return-object v2

    .line 219
    :cond_1
    array-length v2, p0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 220
    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/Address;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 222
    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    aget-object v2, p0, v4

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    .line 224
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 225
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/htc/util/mail/mimemessage/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static unpack(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;
    .locals 10
    .parameter "addressList"

    .prologue
    const/4 v9, 0x2

    const/4 v8, -0x1

    .line 343
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 344
    :cond_0
    sget-object v6, Lcom/htc/util/mail/mimemessage/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/htc/util/mail/mimemessage/Address;

    .line 377
    :goto_0
    return-object v6

    .line 346
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v2, addresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/mimemessage/Address;>;"
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 348
    .local v3, length:I
    const/4 v5, 0x0

    .line 349
    .local v5, pairStartIndex:I
    const/4 v4, 0x0

    .line 356
    .local v4, pairEndIndex:I
    invoke-virtual {p0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 358
    .local v1, addressEndIndex:I
    :goto_1
    if-ge v5, v3, :cond_5

    .line 359
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 360
    if-ne v4, v8, :cond_2

    .line 361
    move v4, v3

    .line 364
    :cond_2
    if-eq v1, v8, :cond_3

    if-gt v4, v1, :cond_4

    .line 367
    :cond_3
    new-instance v0, Lcom/htc/util/mail/mimemessage/Address;

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v0, v6, v7}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    .local v0, address:Lcom/htc/util/mail/mimemessage/Address;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    add-int/lit8 v5, v4, 0x1

    .line 376
    goto :goto_1

    .line 369
    .end local v0           #address:Lcom/htc/util/mail/mimemessage/Address;
    :cond_4
    new-instance v0, Lcom/htc/util/mail/mimemessage/Address;

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/htc/util/mail/mimemessage/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    .restart local v0       #address:Lcom/htc/util/mail/mimemessage/Address;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_2

    .line 377
    .end local v0           #address:Lcom/htc/util/mail/mimemessage/Address;
    :cond_5
    sget-object v6, Lcom/htc/util/mail/mimemessage/Address;->EMPTY_ADDRESS_ARRAY:[Lcom/htc/util/mail/mimemessage/Address;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/htc/util/mail/mimemessage/Address;

    goto :goto_0
.end method

.method public static unpackFirst(Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Address;
    .locals 2
    .parameter "packedList"

    .prologue
    .line 324
    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/Address;->unpack(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v0

    .line 325
    .local v0, array:[Lcom/htc/util/mail/mimemessage/Address;
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static unpackToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "packedList"

    .prologue
    .line 308
    invoke-static {p0}, Lcom/htc/util/mail/mimemessage/Address;->unpack(Ljava/lang/String;)[Lcom/htc/util/mail/mimemessage/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/util/mail/mimemessage/Address;->toString([Lcom/htc/util/mail/mimemessage/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 177
    instance-of v0, p1, Lcom/htc/util/mail/mimemessage/Address;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/htc/util/mail/mimemessage/Address;

    .end local p1
    invoke-virtual {p1}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 188
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonal()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    return-object v0
.end method

.method public pack()Ljava/lang/String;
    .locals 4

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, address:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/util/mail/mimemessage/Address;->getPersonal()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, personal:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 431
    .end local v0           #address:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #address:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2
    .parameter "address"

    .prologue
    .line 79
    sget-object v0, Lcom/htc/util/mail/mimemessage/Address;->REMOVE_OPTIONAL_BRACKET:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mAddress:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .locals 2
    .parameter "personal"

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    sget-object v0, Lcom/htc/util/mail/mimemessage/Address;->REMOVE_OPTIONAL_DQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    sget-object v0, Lcom/htc/util/mail/mimemessage/Address;->UNQUOTE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 p1, 0x0

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public toFriendly()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    .line 277
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/codec/EncoderUtil;->encodeAddressDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    const-string v1, ".*[\\(\\)<>@,;:\\\\\".\\[\\]].*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/util/mail/mimemessage/Utility;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 205
    :goto_0
    return-object v0

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Address;->mPersonal:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/mail/mimemessage/Address;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/Address;->mAddress:Ljava/lang/String;

    goto :goto_0
.end method
