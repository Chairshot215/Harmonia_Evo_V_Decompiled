.class public Lcom/amazon/s3/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final ALTERNATIVE_DATE_HEADER:Ljava/lang/String; = "x-amz-date"

.field static final AMAZON_HEADER_PREFIX:Ljava/lang/String; = "x-amz-"

.field public static final DEFAULT_HOST:Ljava/lang/String; = "s3.amazonaws.com"

.field private static final HMAC_SHA1_ALGORITHM:Ljava/lang/String; = "HmacSHA1"

.field public static final INSECURE_PORT:I = 0x50

.field static final METADATA_PREFIX:Ljava/lang/String; = "x-amz-meta-"

.field public static final SECURE_PORT:I = 0x1bb

.field public static final US_WEST_HOST:Ljava/lang/String; = "s3-us-west-1.amazonaws.com"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeMD5Hash(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 7
    .parameter "is"

    .prologue
    .line 492
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 495
    .local v1, digest:Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 496
    .local v4, length:I
    const/16 v6, 0x100

    new-array v0, v6, [B

    .line 497
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_0

    .line 498
    const/4 v6, 0x0

    invoke-virtual {v1, v0, v6, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 504
    .end local v0           #buffer:[B
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v4           #length:I
    :catch_0
    move-exception v2

    .line 505
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 510
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :goto_1
    const-string v6, ""

    :goto_2
    return-object v6

    .line 501
    .restart local v0       #buffer:[B
    .restart local v1       #digest:Ljava/security/MessageDigest;
    .restart local v4       #length:I
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 503
    .local v5, passDigest:[B
    invoke-static {v5}, Lcom/amazon/thirdparty/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_2

    .line 506
    .end local v0           #buffer:[B
    .end local v1           #digest:Ljava/security/MessageDigest;
    .end local v4           #length:I
    .end local v5           #passDigest:[B
    :catch_1
    move-exception v3

    .line 507
    .local v3, ioe:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static computeMD5Hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 473
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 475
    .local v0, digest:Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 476
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 478
    .local v2, passDigest:[B
    invoke-static {v2}, Lcom/amazon/thirdparty/Base64;->encodeBytes([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 483
    .end local v0           #digest:Ljava/security/MessageDigest;
    .end local v2           #passDigest:[B
    :goto_0
    return-object v3

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 483
    const-string v3, ""

    goto :goto_0
.end method

.method private static concatenateList(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter "values"

    .prologue
    .line 409
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 411
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 412
    add-int/lit8 v3, v2, -0x1

    if-eq v1, v3, :cond_0

    .line 413
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static convertPathArgsHashToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "pathArgs"

    .prologue
    .line 349
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    .local v4, pathArgsString:Ljava/lang/StringBuffer;
    const/4 v3, 0x1

    .line 352
    .local v3, firstRun:Z
    if-eqz p0, :cond_2

    .line 353
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 354
    .local v1, argumentIterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    .local v0, argument:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 357
    const/4 v3, 0x0

    .line 358
    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    :goto_1
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 364
    .local v2, argumentValue:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    if-eqz v2, :cond_0

    .line 366
    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 360
    .end local v2           #argumentValue:Ljava/lang/String;
    :cond_1
    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 372
    .end local v0           #argument:Ljava/lang/String;
    .end local v1           #argumentIterator:Ljava/util/Iterator;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static createXMLReader()Lorg/xml/sax/XMLReader;
    .locals 3

    .prologue
    .line 386
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 394
    .local v0, e:Lorg/xml/sax/SAXException;
    :goto_0
    return-object v1

    .line 387
    .end local v0           #e:Lorg/xml/sax/SAXException;
    :catch_0
    move-exception v0

    .line 389
    .restart local v0       #e:Lorg/xml/sax/SAXException;
    const-string v1, "org.xml.sax.driver"

    const-string v2, "org.apache.crimson.parser.XMLReaderImpl"

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    :try_start_1
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 395
    :catch_1
    move-exception v0

    .line 396
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t initialize a sax driver for the XMLReader"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static encode(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "awsSecretAccessKey"
    .parameter "canonicalString"
    .parameter "urlencode"

    .prologue
    .line 286
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const-string v5, "HmacSHA1"

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 290
    .local v3, signingKey:Ljavax/crypto/spec/SecretKeySpec;
    const/4 v2, 0x0

    .line 292
    .local v2, mac:Ljavax/crypto/Mac;
    :try_start_0
    const-string v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 298
    :try_start_1
    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/thirdparty/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, b64:Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 310
    invoke-static {v0}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .end local v0           #b64:Ljava/lang/String;
    :cond_0
    return-object v0

    .line 293
    :catch_0
    move-exception v1

    .line 295
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not find sha1 algorithm"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 299
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 301
    .local v1, e:Ljava/security/InvalidKeyException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not initialize the MAC algorithm"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method static getCallingFormatForBucket(Lcom/amazon/s3/CallingFormat;Ljava/lang/String;)Lcom/amazon/s3/CallingFormat;
    .locals 2
    .parameter "desiredFormat"
    .parameter "bucketName"

    .prologue
    .line 459
    move-object v0, p0

    .line 460
    .local v0, callingFormat:Lcom/amazon/s3/CallingFormat;
    invoke-static {}, Lcom/amazon/s3/CallingFormat;->getSubdomainCallingFormat()Lcom/amazon/s3/CallingFormat;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/amazon/s3/Utils;->isValidSubdomainBucketName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 462
    invoke-static {}, Lcom/amazon/s3/CallingFormat;->getPathCallingFormat()Lcom/amazon/s3/CallingFormat;

    move-result-object v0

    .line 464
    :cond_0
    return-object v0
.end method

.method public static getContentLength(Ljava/io/InputStream;)J
    .locals 5
    .parameter "is"

    .prologue
    .line 515
    const-wide/16 v1, 0x0

    .line 517
    .local v1, length:J
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 518
    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    .line 520
    :catch_0
    move-exception v0

    .line 521
    .local v0, ioe:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 524
    .end local v0           #ioe:Ljava/io/IOException;
    :cond_0
    return-wide v1
.end method

.method public static getContentLength(Ljava/lang/String;)J
    .locals 3
    .parameter "s"

    .prologue
    .line 528
    const-wide/16 v0, 0x0

    .line 529
    .local v0, length:J
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v0, v2

    .line 530
    return-wide v0
.end method

.method static isValidSubdomainBucketName(Ljava/lang/String;)Z
    .locals 6
    .parameter "bucketName"

    .prologue
    .line 440
    const/4 v3, 0x3

    .line 441
    .local v3, MIN_BUCKET_LENGTH:I
    const/16 v2, 0x3f

    .line 443
    .local v2, MAX_BUCKET_LENGTH:I
    const-string v1, "^[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+$"

    .line 445
    .local v1, IPv4_REGEX:Ljava/lang/String;
    const-string v0, "^[a-z0-9]([a-z0-9\\-]*[a-z0-9])?(\\.[a-z0-9]([a-z0-9\\-]*[a-z0-9])?)*$"

    .line 451
    .local v0, BUCKET_NAME_REGEX:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3f

    if-gt v4, v5, :cond_0

    const-string v4, "^[0-9]+\\.[0-9]+\\.[0-9]+\\.[0-9]+$"

    invoke-virtual {p0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "^[a-z0-9]([a-z0-9\\-]*[a-z0-9])?(\\.[a-z0-9]([a-z0-9\\-]*[a-z0-9])?)*$"

    invoke-virtual {p0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static makeCanonicalString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "method"
    .parameter "bucket"
    .parameter "key"
    .parameter "pathArgs"
    .parameter "headers"

    .prologue
    .line 75
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/s3/Utils;->makeCanonicalString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static makeCanonicalString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "method"
    .parameter "bucketName"
    .parameter "key"
    .parameter "pathArgs"
    .parameter "headers"
    .parameter "expires"

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 186
    .local v4, interestingHeaders:Ljava/util/SortedMap;
    if-eqz p4, :cond_2

    .line 187
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 188
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 189
    .local v1, hashKey:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, lk:Ljava/lang/String;
    const-string v7, "content-type"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "content-md5"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "date"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "x-amz-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 197
    :cond_1
    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 198
    .local v6, s:Ljava/util/List;
    invoke-static {v6}, Lcom/amazon/s3/Utils;->concatenateList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 203
    .end local v1           #hashKey:Ljava/lang/String;
    .end local v3           #i:Ljava/util/Iterator;
    .end local v5           #lk:Ljava/lang/String;
    .end local v6           #s:Ljava/util/List;
    :cond_2
    const-string v7, "x-amz-date"

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 204
    const-string v7, "date"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_3
    if-eqz p5, :cond_4

    .line 210
    const-string v7, "date"

    invoke-interface {v4, v7, p5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_4
    const-string v7, "content-type"

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 216
    const-string v7, "content-type"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    :cond_5
    const-string v7, "content-md5"

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 219
    const-string v7, "content-md5"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_6
    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3       #i:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 225
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    .local v2, headerKey:Ljava/lang/String;
    const-string v7, "x-amz-"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 227
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v4, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 232
    :goto_2
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 230
    :cond_7
    invoke-interface {v4, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 236
    .end local v2           #headerKey:Ljava/lang/String;
    :cond_8
    if-eqz p1, :cond_9

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    :cond_9
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    if-eqz p2, :cond_a

    .line 244
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    :cond_a
    if-eqz p3, :cond_b

    .line 250
    const-string v7, "acl"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 251
    const-string v7, "?acl"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 261
    :cond_b
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 252
    :cond_c
    const-string v7, "torrent"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 253
    const-string v7, "?torrent"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 254
    :cond_d
    const-string v7, "logging"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 255
    const-string v7, "?logging"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 256
    :cond_e
    const-string v7, "location"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 257
    const-string v7, "?location"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method static makeCanonicalStringForHttpClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lorg/apache/http/Header;)Ljava/lang/String;
    .locals 6
    .parameter "method"
    .parameter "bucket"
    .parameter "key"
    .parameter "pathArgs"
    .parameter "header_list"

    .prologue
    .line 81
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/amazon/s3/Utils;->makeCanonicalStringForHttpClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static makeCanonicalStringForHttpClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Lorg/apache/http/Header;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "method"
    .parameter "bucketName"
    .parameter "key"
    .parameter "pathArgs"
    .parameter "headers"
    .parameter "expires"

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v0, buf:Ljava/lang/StringBuffer;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 92
    .local v4, interestingHeaders:Ljava/util/SortedMap;
    if-eqz p4, :cond_3

    .line 93
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, p4

    if-ge v3, v7, :cond_3

    .line 94
    aget-object v7, p4, v3

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, hashKey:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 93
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 101
    .local v5, lk:Ljava/lang/String;
    const-string v7, "content-type"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "content-md5"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "date"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "x-amz-"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 105
    :cond_2
    aget-object v7, p4, v3

    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, s:Ljava/lang/String;
    invoke-interface {v4, v5, v6}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 111
    .end local v1           #hashKey:Ljava/lang/String;
    .end local v3           #i:I
    .end local v5           #lk:Ljava/lang/String;
    .end local v6           #s:Ljava/lang/String;
    :cond_3
    const-string v7, "x-amz-date"

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 112
    const-string v7, "date"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_4
    if-eqz p5, :cond_5

    .line 118
    const-string v7, "date"

    invoke-interface {v4, v7, p5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_5
    const-string v7, "content-type"

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 124
    const-string v7, "content-type"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_6
    const-string v7, "content-md5"

    invoke-interface {v4, v7}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 127
    const-string v7, "content-md5"

    const-string v8, ""

    invoke-interface {v4, v7, v8}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_7
    invoke-interface {v4}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 133
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    .local v2, headerKey:Ljava/lang/String;
    const-string v7, "x-amz-"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 135
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-interface {v4, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 140
    :goto_3
    const-string v7, "\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 138
    :cond_8
    invoke-interface {v4, v2}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 144
    .end local v2           #headerKey:Ljava/lang/String;
    :cond_9
    if-eqz p1, :cond_a

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 145
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_a
    const-string v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    if-eqz p2, :cond_b

    .line 152
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    :cond_b
    if-eqz p3, :cond_c

    .line 158
    const-string v7, "acl"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 159
    const-string v7, "?acl"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 169
    :cond_c
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 160
    :cond_d
    const-string v7, "torrent"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 161
    const-string v7, "?torrent"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 162
    :cond_e
    const-string v7, "logging"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 163
    const-string v7, "?logging"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 164
    :cond_f
    const-string v7, "location"

    invoke-interface {p3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 165
    const-string v7, "?location"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method static paramsForListOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/Map;
    .locals 1
    .parameter "prefix"
    .parameter "marker"
    .parameter "maxKeys"

    .prologue
    .line 318
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/amazon/s3/Utils;->paramsForListOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static paramsForListOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .parameter "prefix"
    .parameter "marker"
    .parameter "maxKeys"
    .parameter "delimiter"

    .prologue
    .line 324
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 326
    .local v0, argParams:Ljava/util/Map;
    if-eqz p0, :cond_0

    .line 327
    const-string v1, "prefix"

    invoke-static {p0}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_0
    if-eqz p1, :cond_1

    .line 329
    const-string v1, "marker"

    invoke-static {p1}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_1
    if-eqz p3, :cond_2

    .line 331
    const-string v1, "delimiter"

    invoke-static {p3}, Lcom/amazon/s3/Utils;->urlencode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_2
    if-eqz p2, :cond_3

    .line 334
    const-string v1, "max-keys"

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    :cond_3
    return-object v0
.end method

.method static urlencode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "unencoded"

    .prologue
    .line 377
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 378
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not url encode to UTF-8"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static validateBucketName(Ljava/lang/String;Lcom/amazon/s3/CallingFormat;Z)Z
    .locals 5
    .parameter "bucketName"
    .parameter "callingFormat"
    .parameter "located"

    .prologue
    .line 425
    invoke-static {}, Lcom/amazon/s3/CallingFormat;->getPathCallingFormat()Lcom/amazon/s3/CallingFormat;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 426
    const/4 v2, 0x3

    .line 427
    .local v2, MIN_BUCKET_LENGTH:I
    const/16 v1, 0xff

    .line 428
    .local v1, MAX_BUCKET_LENGTH:I
    const-string v0, "^[0-9A-Za-z\\.\\-_]*$"

    .line 430
    .local v0, BUCKET_NAME_REGEX:Ljava/lang/String;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xff

    if-gt v3, v4, :cond_0

    const-string v3, "^[0-9A-Za-z\\.\\-_]*$"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 435
    .end local v0           #BUCKET_NAME_REGEX:Ljava/lang/String;
    .end local v1           #MAX_BUCKET_LENGTH:I
    .end local v2           #MIN_BUCKET_LENGTH:I
    :goto_0
    return v3

    .line 430
    .restart local v0       #BUCKET_NAME_REGEX:Ljava/lang/String;
    .restart local v1       #MAX_BUCKET_LENGTH:I
    .restart local v2       #MIN_BUCKET_LENGTH:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 435
    .end local v0           #BUCKET_NAME_REGEX:Ljava/lang/String;
    .end local v1           #MAX_BUCKET_LENGTH:I
    .end local v2           #MIN_BUCKET_LENGTH:I
    :cond_1
    invoke-static {p0}, Lcom/amazon/s3/Utils;->isValidSubdomainBucketName(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0
.end method
