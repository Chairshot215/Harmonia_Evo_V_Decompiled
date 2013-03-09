.class public final Ljavax/obex/ObexHelper;
.super Ljava/lang/Object;
.source "ObexHelper.java"


# static fields
.field public static final BASE_PACKET_LENGTH:I = 0x3

.field public static final MAX_CLIENT_PACKET_SIZE:I = 0xfc00

.field public static final MAX_PACKET_SIZE_INT:I = 0xfffe

.field public static final OBEX_AUTH_REALM_CHARSET_ASCII:I = 0x0

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_1:I = 0x1

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_2:I = 0x2

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_3:I = 0x3

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_4:I = 0x4

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_5:I = 0x5

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_6:I = 0x6

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_7:I = 0x7

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_8:I = 0x8

.field public static final OBEX_AUTH_REALM_CHARSET_ISO_8859_9:I = 0x9

.field public static final OBEX_AUTH_REALM_CHARSET_UNICODE:I = 0xff

.field public static final OBEX_OPCODE_ABORT:I = 0xff

.field public static final OBEX_OPCODE_CONNECT:I = 0x80

.field public static final OBEX_OPCODE_DISCONNECT:I = 0x81

.field public static final OBEX_OPCODE_GET:I = 0x3

.field public static final OBEX_OPCODE_GET_FINAL:I = 0x83

.field public static final OBEX_OPCODE_PUT:I = 0x2

.field public static final OBEX_OPCODE_PUT_FINAL:I = 0x82

.field public static final OBEX_OPCODE_RESERVED:I = 0x4

.field public static final OBEX_OPCODE_RESERVED_FINAL:I = 0x84

.field public static final OBEX_OPCODE_SETPATH:I = 0x85


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeAuthenticationChallenge([BLjava/lang/String;ZZ)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x2

    const/16 v7, 0x10

    const/4 v6, 0x1

    const/16 v5, 0x14

    const/4 v4, 0x0

    const/4 v0, 0x0

    array-length v1, p0

    if-eq v1, v7, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Nonce must be 16 bytes long"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_3

    const/16 v1, 0x15

    new-array v0, v1, [B

    :goto_0
    aput-byte v4, v0, v4

    aput-byte v7, v0, v6

    invoke-static {p0, v4, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x12

    aput-byte v6, v0, v1

    const/16 v1, 0x13

    aput-byte v6, v0, v1

    aput-byte v4, v0, v5

    if-nez p2, :cond_1

    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    :cond_1
    if-eqz p3, :cond_2

    aget-byte v1, v0, v5

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    :cond_2
    return-object v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xff

    if-lt v1, v2, :cond_4

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Realm must be less then 255 bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x18

    new-array v0, v1, [B

    const/16 v1, 0x15

    aput-byte v8, v0, v1

    const/16 v1, 0x16

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    aput-byte v6, v0, v1

    const-string v1, "ISO8859_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static computeMd5Hash([B)[B
    .locals 3

    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static convertToByteArray(J)[B
    .locals 6

    const-wide/16 v4, 0xff

    const/4 v1, 0x4

    new-array v0, v1, [B

    const/4 v1, 0x0

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x8

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    and-long v2, v4, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static convertToLong([B)J
    .locals 9

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v1, 0x0

    array-length v7, p0

    add-int/lit8 v0, v7, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-byte v7, p0, v0

    int-to-long v5, v7

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    const-wide/16 v7, 0x100

    add-long/2addr v5, v7

    :cond_0
    long-to-int v7, v1

    shl-long v7, v5, v7

    or-long/2addr v3, v7

    const-wide/16 v7, 0x8

    add-long/2addr v1, v7

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public static convertToUnicode([BZ)Ljava/lang/String;
    .locals 7

    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    array-length v0, p0

    rem-int/lit8 v5, v0, 0x2

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Byte array not of a valid form"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    shr-int/lit8 v0, v0, 0x1

    if-eqz p1, :cond_3

    add-int/lit8 v0, v0, -0x1

    :cond_3
    new-array v1, v0, [C

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_7

    mul-int/lit8 v5, v2, 0x2

    aget-byte v4, p0, v5

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v3, p0, v5

    if-gez v4, :cond_4

    add-int/lit16 v4, v4, 0x100

    :cond_4
    if-gez v3, :cond_5

    add-int/lit16 v3, v3, 0x100

    :cond_5
    if-nez v4, :cond_6

    if-nez v3, :cond_6

    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v6, v2}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0

    :cond_6
    shl-int/lit8 v5, v4, 0x8

    or-int/2addr v5, v3

    int-to-char v5, v5

    aput-char v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static convertToUnicodeByteArray(Ljava/lang/String;)[B
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v3, v0

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x2

    new-array v2, v3, [B

    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    mul-int/lit8 v3, v1, 0x2

    aget-char v4, v0, v1

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-char v4, v0, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    aput-byte v5, v2, v3

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-byte v5, v2, v3

    goto :goto_0
.end method

.method public static createHeader(Ljavax/obex/HeaderSet;Z)[B
    .locals 21

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v11, v0, [B

    const/4 v7, 0x0

    new-instance v12, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v7, p0

    :try_start_0
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    if-nez v17, :cond_0

    const/16 v17, -0x35

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, v7, Ljavax/obex/HeaderSet;->mConnectionID:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_0
    const/16 v17, 0xc0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    if-eqz v9, :cond_1

    const/16 v17, -0x40

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_1

    const/16 v17, 0xc0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_2

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v14}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_2

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_2
    const/16 v17, 0x42

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_3

    const/16 v17, 0x42

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v17, "ISO8859_1"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v16

    :try_start_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x4

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p1, :cond_3

    const/16 v17, 0x42

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_3
    const/16 v17, 0xc3

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    if-eqz v9, :cond_4

    const/16 v17, -0x3d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_4

    const/16 v17, 0xc3

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_4
    const/16 v17, 0x44

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/Calendar;

    move-object v5, v0

    if-eqz v5, :cond_d

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/16 v17, 0x1

    :try_start_3
    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    move v8, v15

    :goto_0
    const/16 v17, 0x3e8

    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    mul-int/lit8 v8, v8, 0xa

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v17

    :goto_1
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    :try_start_5
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_2
    return-object v13

    :cond_5
    :try_start_6
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_7

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v17, "T"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v17, 0xb

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_8

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_9

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v17, 0xa

    move/from16 v0, v17

    if-ge v15, v0, :cond_a

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a
    invoke-virtual {v3, v15}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTC"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    const-string v17, "Z"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_b
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ISO8859_1"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v16

    :try_start_8
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x44

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_c

    const/16 v17, 0x44

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_c
    move-object v2, v3

    :cond_d
    const/16 v17, 0xc4

    :try_start_9
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/util/Calendar;

    move-object v5, v0

    if-eqz v5, :cond_e

    const/16 v17, 0xc4

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_e

    const/16 v17, 0xc4

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_e
    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_f

    const/16 v17, 0x5

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v14}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_f

    const/16 v17, 0x5

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_f
    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    if-eqz v16, :cond_10

    const/16 v17, 0x46

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_10

    const/16 v17, 0x46

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_10
    const/16 v17, 0x47

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    const/16 v17, 0x47

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_11

    const/16 v17, 0x47

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_11
    const/16 v17, 0x4a

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    const/16 v17, 0x4a

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_12

    const/16 v17, 0x4a

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_12
    const/16 v17, 0x4c

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    if-eqz v16, :cond_13

    const/16 v17, 0x4c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_13

    const/16 v17, 0x4c

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_13
    const/16 v17, 0x4f

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    if-eqz v16, :cond_14

    const/16 v17, 0x4f

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_14

    const/16 v17, 0x4f

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_14
    const/4 v8, 0x0

    :goto_3
    const/16 v17, 0x10

    move/from16 v0, v17

    if-ge v8, v0, :cond_19

    add-int/lit8 v17, v8, 0x30

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_15

    int-to-byte v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x30

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {v14}, Ljavax/obex/ObexHelper;->convertToUnicodeByteArray(Ljava/lang/String;)[B

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_15

    add-int/lit8 v17, v8, 0x30

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_15
    add-int/lit8 v17, v8, 0x70

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v17

    check-cast v0, [B

    move-object/from16 v16, v0

    if-eqz v16, :cond_16

    int-to-byte v0, v8

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x70

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_16

    add-int/lit8 v17, v8, 0x70

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_16
    add-int/lit16 v0, v8, 0xb0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Byte;

    move-object v4, v0

    if-eqz v4, :cond_17

    int-to-byte v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xb0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p1, :cond_17

    add-int/lit16 v0, v8, 0xb0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    :cond_17
    add-int/lit16 v0, v8, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljavax/obex/HeaderSet;->getHeader(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Long;

    move-object v9, v0

    if-eqz v9, :cond_18

    int-to-byte v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    add-int/lit16 v0, v0, 0xf0

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljavax/obex/ObexHelper;->convertToByteArray(J)[B

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_18

    add-int/lit16 v0, v8, 0xf0

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :catch_2
    move-exception v6

    :try_start_a
    throw v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :catch_3
    move-exception v17

    move-object v2, v3

    goto/16 :goto_1

    :cond_19
    :try_start_b
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    const/16 v17, 0x4d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_1a

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v7, Ljavax/obex/HeaderSet;->mAuthChall:[B

    :cond_1a
    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    if-eqz v17, :cond_1b

    const/16 v17, 0x4e

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v10, v17, 0x3

    const/16 v17, 0x0

    shr-int/lit8 v18, v10, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    const/16 v17, 0x1

    and-int/lit16 v0, v10, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v11, v17

    invoke-virtual {v12, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    iget-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-eqz p1, :cond_1b

    const/16 v17, 0x0

    move-object/from16 v0, v17

    iput-object v0, v7, Ljavax/obex/HeaderSet;->mAuthResp:[B
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :cond_1b
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    :try_start_c
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v17

    goto/16 :goto_2

    :catchall_0
    move-exception v17

    :goto_4
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    :try_start_d
    invoke-virtual {v12}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    :goto_5
    throw v17

    :catch_5
    move-exception v17

    goto/16 :goto_2

    :catch_6
    move-exception v18

    goto :goto_5

    :catchall_1
    move-exception v17

    move-object v2, v3

    goto :goto_4
.end method

.method public static findHeaderEnd([BII)I
    .locals 6

    const/4 v0, 0x0

    const/4 v3, -0x1

    move v2, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v0, p2, :cond_3

    array-length v5, p0

    if-ge v2, v5, :cond_3

    aget-byte v5, p0, v2

    if-gez v5, :cond_0

    aget-byte v5, p0, v2

    add-int/lit16 v1, v5, 0x100

    :goto_1
    move v3, v0

    and-int/lit16 v5, v1, 0xc0

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    add-int/lit8 v2, v2, 0x1

    aget-byte v5, p0, v2

    if-gez v5, :cond_1

    aget-byte v5, p0, v2

    add-int/lit16 v4, v5, 0x100

    :goto_2
    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v5, p0, v2

    if-gez v5, :cond_2

    aget-byte v5, p0, v2

    add-int/lit16 v5, v5, 0x100

    :goto_3
    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v4

    add-int/lit8 v5, v4, 0x3

    add-int/2addr v0, v5

    goto :goto_0

    :cond_0
    aget-byte v1, p0, v2

    goto :goto_1

    :cond_1
    aget-byte v4, p0, v2

    goto :goto_2

    :cond_2
    aget-byte v5, p0, v2

    goto :goto_3

    :sswitch_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :sswitch_2
    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :cond_3
    if-nez v3, :cond_5

    if-ge v0, p2, :cond_4

    array-length v5, p0

    :goto_4
    return v5

    :cond_4
    const/4 v5, -0x1

    goto :goto_4

    :cond_5
    add-int v5, v3, p1

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch
.end method

.method public static findTag(B[B)I
    .locals 4

    const/4 v2, -0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-byte v3, p1, v0

    if-eq v3, p0, :cond_2

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    add-int/lit8 v3, v1, 0x2

    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    array-length v3, p1

    if-lt v0, v3, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public static getTagValue(B[B)[B
    .locals 4

    invoke-static {p0, p1}, Ljavax/obex/ObexHelper;->findTag(B[B)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    aget-byte v3, p1, v0

    and-int/lit16 v1, v3, 0xff

    new-array v2, v1, [B

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static updateHeaderSet(Ljavax/obex/HeaderSet;[B)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    move-object/from16 v5, p0

    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v6, v11, :cond_7

    aget-byte v11, p1, v6

    and-int/lit16 v4, v11, 0xff

    and-int/lit16 v11, v4, 0xc0

    sparse-switch v11, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const/4 v9, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, p1, v6

    and-int/lit16 v7, v11, 0xff

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v6, v6, 0x1

    aget-byte v11, p1, v6

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v7, v11

    add-int/lit8 v7, v7, -0x3

    add-int/lit8 v6, v6, 0x1

    new-array v10, v7, [B

    const/4 v11, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v7, :cond_0

    if-lez v7, :cond_1

    add-int/lit8 v11, v7, -0x1

    aget-byte v11, v10, v11

    if-eqz v11, :cond_1

    :cond_0
    const/4 v9, 0x0

    :cond_1
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    and-int/lit16 v11, v4, 0xc0

    if-nez v11, :cond_4

    const/4 v11, 0x1

    invoke-static {v10, v11}, Ljavax/obex/ObexHelper;->convertToUnicode([BZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/2addr v6, v7

    goto :goto_0

    :pswitch_1
    if-nez v9, :cond_2

    :try_start_1
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    array-length v13, v10

    const-string v14, "ISO8859_1"

    invoke-direct {v11, v10, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v4, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v3

    new-instance v11, Ljava/io/IOException;

    const-string v12, "Header was not formatted properly"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_2
    :try_start_3
    new-instance v11, Ljava/lang/String;

    const/4 v12, 0x0

    array-length v13, v10

    add-int/lit8 v13, v13, -0x1

    const-string v14, "ISO8859_1"

    invoke-direct {v11, v10, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v5, v4, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :pswitch_2
    :try_start_4
    new-array v11, v7, [B

    iput-object v11, v5, Ljavax/obex/HeaderSet;->mAuthChall:[B

    iget-object v11, v5, Ljavax/obex/HeaderSet;->mAuthChall:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v11, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :pswitch_3
    new-array v11, v7, [B

    iput-object v11, v5, Ljavax/obex/HeaderSet;->mAuthResp:[B

    iget-object v11, v5, Ljavax/obex/HeaderSet;->mAuthResp:[B

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v6, v11, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :pswitch_4
    add-int/lit8 v11, v7, 0x1

    new-array v1, v11, [B

    const/4 v11, 0x0

    int-to-byte v12, v4

    aput-byte v12, v1, v11

    const/4 v11, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6, v1, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :pswitch_5
    :try_start_5
    new-instance v2, Ljava/lang/String;

    const-string v11, "ISO8859_1"

    invoke-direct {v2, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x10

    if-ne v11, v12, :cond_3

    const/16 v11, 0xf

    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5a

    if-ne v11, v12, :cond_3

    const-string v11, "UTC"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_3
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x4

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x6

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    const/4 v11, 0x5

    const/4 v12, 0x6

    const/16 v13, 0x8

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xb

    const/16 v12, 0x9

    const/16 v13, 0xb

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xd

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0xd

    const/16 v12, 0xd

    const/16 v13, 0xf

    invoke-virtual {v2, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v8, v11, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v11, 0x44

    invoke-virtual {v5, v11, v8}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_2
    move-exception v3

    :try_start_6
    throw v3

    :cond_4
    invoke-virtual {v5, v4, v10}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    :sswitch_1
    add-int/lit8 v6, v6, 0x1

    :try_start_7
    aget-byte v11, p1, v6

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :sswitch_2
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x4

    :try_start_8
    new-array v10, v11, [B

    const/4 v11, 0x0

    const/4 v12, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v6, v10, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    const/16 v11, 0xc4

    if-eq v4, v11, :cond_6

    const/16 v11, 0xcb

    if-ne v4, v11, :cond_5

    const/4 v11, 0x4

    :try_start_9
    new-array v11, v11, [B

    iput-object v11, v5, Ljavax/obex/HeaderSet;->mConnectionID:[B

    const/4 v11, 0x0

    iget-object v12, v5, Ljavax/obex/HeaderSet;->mConnectionID:[B

    const/4 v13, 0x0

    const/4 v14, 0x4

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    add-int/lit8 v6, v6, 0x4

    goto/16 :goto_0

    :cond_5
    invoke-static {v10}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v5, v4, v11}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    :catch_3
    move-exception v3

    :try_start_a
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Header was not formatted properly"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :cond_6
    :try_start_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    new-instance v11, Ljava/util/Date;

    invoke-static {v10}, Ljavax/obex/ObexHelper;->convertToLong([B)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 v11, 0xc4

    invoke-virtual {v5, v11, v8}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_3

    :cond_7
    return-object v1

    :catch_4
    move-exception v11

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
