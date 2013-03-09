.class public Lcom/htc/android/mail/eassvc/core/EasStringUtil;
.super Ljava/lang/Object;
.source "EasStringUtil.java"


# static fields
.field private static final REPLACEMENT_CHAR:C = '\ufffd'


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayToString([C)Ljava/lang/String;
    .locals 1
    .parameter "data"

    .prologue
    .line 189
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/htc/android/mail/eassvc/core/EasStringUtil;->arrayToString([CI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static arrayToString([CI)Ljava/lang/String;
    .locals 2
    .parameter "data"
    .parameter "length"

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .local v0, sbuilder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 195
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    return-object v1
.end method

.method public static encode([BLjava/lang/String;)Ljava/lang/String;
    .locals 30
    .parameter "data"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 32
    const/16 v25, 0x0

    .line 33
    .local v25, value:[C
    const/4 v6, 0x0

    .line 34
    .local v6, count:I
    const/16 v19, 0x0

    .line 35
    .local v19, start:I
    move-object/from16 v0, p0

    array-length v14, v0

    .line 36
    .local v14, length:I
    if-nez p1, :cond_0

    .line 37
    new-instance v28, Ljava/lang/NullPointerException;

    invoke-direct/range {v28 .. v28}, Ljava/lang/NullPointerException;-><init>()V

    throw v28

    .line 40
    :cond_0
    if-ltz v19, :cond_14

    if-ltz v14, :cond_14

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v28, v0

    sub-int v28, v28, v19

    move/from16 v0, v28

    if-gt v14, v0, :cond_14

    .line 43
    const-string v28, "ISO-8859-1"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_1

    const-string v28, "ISO8859_1"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_3

    .line 45
    :cond_1
    new-array v0, v14, [C

    move-object/from16 v25, v0

    .line 46
    move v6, v14

    .line 47
    const/4 v10, 0x0

    .local v10, i:I
    move/from16 v20, v19

    .end local v19           #start:I
    .local v20, start:I
    :goto_0
    if-ge v10, v6, :cond_2

    .line 48
    add-int/lit8 v19, v20, 0x1

    .end local v20           #start:I
    .restart local v19       #start:I
    aget-byte v28, p0, v20

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-char v0, v0

    move/from16 v28, v0

    aput-char v28, v25, v10

    .line 47
    add-int/lit8 v10, v10, 0x1

    move/from16 v20, v19

    .end local v19           #start:I
    .restart local v20       #start:I
    goto :goto_0

    .line 50
    :cond_2
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/EasStringUtil;->arrayToString([C)Ljava/lang/String;

    move-result-object v28

    move/from16 v19, v20

    .line 182
    .end local v10           #i:I
    .end local v20           #start:I
    .restart local v19       #start:I
    :goto_1
    return-object v28

    .line 51
    :cond_3
    const-string v28, "utf8"

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    const-string v28, "utf-8"

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    const-string v28, "UTF8"

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    const-string v28, "UTF-8"

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_12

    .line 58
    :cond_4
    move-object/from16 v7, p0

    .line 59
    .local v7, d:[B
    new-array v0, v14, [C

    move-object/from16 v23, v0

    .line 61
    .local v23, v:[C
    move/from16 v11, v19

    .local v11, idx:I
    add-int v13, v19, v14

    .local v13, last:I
    const/16 v17, 0x0

    .local v17, s:I
    move/from16 v18, v17

    .end local v17           #s:I
    .local v18, s:I
    move v12, v11

    .line 63
    .end local v11           #idx:I
    .local v12, idx:I
    :goto_2
    if-ge v12, v13, :cond_15

    .line 64
    add-int/lit8 v11, v12, 0x1

    .end local v12           #idx:I
    .restart local v11       #idx:I
    aget-byte v3, v7, v12

    .line 65
    .local v3, b0:B
    and-int/lit16 v0, v3, 0x80

    move/from16 v28, v0

    if-nez v28, :cond_5

    .line 68
    and-int/lit16 v0, v3, 0xff

    move/from16 v24, v0

    .line 69
    .local v24, val:I
    add-int/lit8 v17, v18, 0x1

    .end local v18           #s:I
    .restart local v17       #s:I
    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v28, v0

    aput-char v28, v23, v18

    .end local v24           #val:I
    :goto_3
    move/from16 v18, v17

    .end local v17           #s:I
    .restart local v18       #s:I
    move v12, v11

    .line 151
    .end local v11           #idx:I
    .restart local v12       #idx:I
    goto :goto_2

    .line 70
    .end local v12           #idx:I
    .restart local v11       #idx:I
    :cond_5
    and-int/lit16 v0, v3, 0xe0

    move/from16 v28, v0

    const/16 v29, 0xc0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    and-int/lit16 v0, v3, 0xf0

    move/from16 v28, v0

    const/16 v29, 0xe0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    and-int/lit16 v0, v3, 0xf8

    move/from16 v28, v0

    const/16 v29, 0xf0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    and-int/lit16 v0, v3, 0xfc

    move/from16 v28, v0

    const/16 v29, 0xf8

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    and-int/lit16 v0, v3, 0xfe

    move/from16 v28, v0

    const/16 v29, 0xfc

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 75
    :cond_6
    const/16 v22, 0x1

    .line 76
    .local v22, utfCount:I
    and-int/lit16 v0, v3, 0xf0

    move/from16 v28, v0

    const/16 v29, 0xe0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_8

    const/16 v22, 0x2

    .line 88
    :cond_7
    :goto_4
    add-int v28, v11, v22

    move/from16 v0, v28

    if-le v0, v13, :cond_b

    .line 89
    add-int/lit8 v17, v18, 0x1

    .end local v18           #s:I
    .restart local v17       #s:I
    const v28, 0xfffd

    aput-char v28, v23, v18

    .line 152
    .end local v3           #b0:B
    .end local v22           #utfCount:I
    :goto_5
    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/core/EasStringUtil;->arrayToString([CI)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_1

    .line 77
    .end local v17           #s:I
    .restart local v3       #b0:B
    .restart local v18       #s:I
    .restart local v22       #utfCount:I
    :cond_8
    and-int/lit16 v0, v3, 0xf8

    move/from16 v28, v0

    const/16 v29, 0xf0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    const/16 v22, 0x3

    goto :goto_4

    .line 78
    :cond_9
    and-int/lit16 v0, v3, 0xfc

    move/from16 v28, v0

    const/16 v29, 0xf8

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a

    const/16 v22, 0x4

    goto :goto_4

    .line 79
    :cond_a
    and-int/lit16 v0, v3, 0xfe

    move/from16 v28, v0

    const/16 v29, 0xfc

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7

    const/16 v22, 0x5

    goto :goto_4

    .line 94
    :cond_b
    const/16 v28, 0x1f

    add-int/lit8 v29, v22, -0x1

    shr-int v28, v28, v29

    and-int v24, v3, v28

    .line 95
    .restart local v24       #val:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    move v12, v11

    .end local v11           #idx:I
    .restart local v12       #idx:I
    :goto_6
    move/from16 v0, v22

    if-ge v10, v0, :cond_d

    .line 96
    add-int/lit8 v11, v12, 0x1

    .end local v12           #idx:I
    .restart local v11       #idx:I
    aget-byte v2, v7, v12

    .line 97
    .local v2, b:B
    and-int/lit16 v0, v2, 0xc0

    move/from16 v28, v0

    const/16 v29, 0x80

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_c

    .line 98
    add-int/lit8 v17, v18, 0x1

    .end local v18           #s:I
    .restart local v17       #s:I
    const v28, 0xfffd

    aput-char v28, v23, v18

    .line 99
    add-int/lit8 v11, v11, -0x1

    move/from16 v18, v17

    .end local v17           #s:I
    .restart local v18       #s:I
    move v12, v11

    .line 100
    .end local v11           #idx:I
    .restart local v12       #idx:I
    goto/16 :goto_2

    .line 103
    .end local v12           #idx:I
    .restart local v11       #idx:I
    :cond_c
    shl-int/lit8 v24, v24, 0x6

    .line 104
    and-int/lit8 v28, v2, 0x3f

    or-int v24, v24, v28

    .line 95
    add-int/lit8 v10, v10, 0x1

    move v12, v11

    .end local v11           #idx:I
    .restart local v12       #idx:I
    goto :goto_6

    .line 122
    .end local v2           #b:B
    :cond_d
    const/16 v28, 0x2

    move/from16 v0, v22

    move/from16 v1, v28

    if-eq v0, v1, :cond_e

    const v28, 0xd800

    move/from16 v0, v24

    move/from16 v1, v28

    if-lt v0, v1, :cond_e

    const v28, 0xdfff

    move/from16 v0, v24

    move/from16 v1, v28

    if-gt v0, v1, :cond_e

    .line 124
    add-int/lit8 v17, v18, 0x1

    .end local v18           #s:I
    .restart local v17       #s:I
    const v28, 0xfffd

    aput-char v28, v23, v18

    move/from16 v18, v17

    .line 125
    .end local v17           #s:I
    .restart local v18       #s:I
    goto/16 :goto_2

    .line 130
    :cond_e
    const v28, 0x10ffff

    move/from16 v0, v24

    move/from16 v1, v28

    if-le v0, v1, :cond_f

    .line 131
    add-int/lit8 v17, v18, 0x1

    .end local v18           #s:I
    .restart local v17       #s:I
    const v28, 0xfffd

    aput-char v28, v23, v18

    move/from16 v18, v17

    .line 132
    .end local v17           #s:I
    .restart local v18       #s:I
    goto/16 :goto_2

    .line 136
    :cond_f
    const/high16 v28, 0x1

    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_10

    .line 137
    add-int/lit8 v17, v18, 0x1

    .end local v18           #s:I
    .restart local v17       #s:I
    move/from16 v0, v24

    int-to-char v0, v0

    move/from16 v28, v0

    aput-char v28, v23, v18

    :goto_7
    move v11, v12

    .line 147
    .end local v12           #idx:I
    .restart local v11       #idx:I
    goto/16 :goto_3

    .line 139
    .end local v11           #idx:I
    .end local v17           #s:I
    .restart local v12       #idx:I
    .restart local v18       #s:I
    :cond_10
    const v28, 0xffff

    and-int v27, v24, v28

    .line 140
    .local v27, x:I
    shr-int/lit8 v28, v24, 0x10

    and-int/lit8 v21, v28, 0x1f

    .line 141
    .local v21, u:I
    add-int/lit8 v28, v21, -0x1

    const v29, 0xffff

    and-int v26, v28, v29

    .line 142
    .local v26, w:I
    const v28, 0xd800

    shl-int/lit8 v29, v26, 0x6

    or-int v28, v28, v29

    shr-int/lit8 v29, v27, 0xa

    or-int v9, v28, v29

    .line 143
    .local v9, hi:I
    const v28, 0xdc00

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v29, v0

    or-int v15, v28, v29

    .line 144
    .local v15, lo:I
    add-int/lit8 v17, v18, 0x1

    .end local v18           #s:I
    .restart local v17       #s:I
    int-to-char v0, v9

    move/from16 v28, v0

    aput-char v28, v23, v18

    .line 145
    add-int/lit8 v18, v17, 0x1

    .end local v17           #s:I
    .restart local v18       #s:I
    int-to-char v0, v15

    move/from16 v28, v0

    aput-char v28, v23, v17

    move/from16 v17, v18

    .end local v18           #s:I
    .restart local v17       #s:I
    goto :goto_7

    .line 149
    .end local v9           #hi:I
    .end local v10           #i:I
    .end local v12           #idx:I
    .end local v15           #lo:I
    .end local v17           #s:I
    .end local v21           #u:I
    .end local v22           #utfCount:I
    .end local v24           #val:I
    .end local v26           #w:I
    .end local v27           #x:I
    .restart local v11       #idx:I
    .restart local v18       #s:I
    :cond_11
    add-int/lit8 v17, v18, 0x1

    .end local v18           #s:I
    .restart local v17       #s:I
    const v28, 0xfffd

    aput-char v28, v23, v18

    goto/16 :goto_3

    .line 155
    .end local v3           #b0:B
    .end local v7           #d:[B
    .end local v11           #idx:I
    .end local v13           #last:I
    .end local v17           #s:I
    .end local v23           #v:[C
    :cond_12
    const/4 v5, 0x0

    .line 157
    .local v5, charset:Ljava/nio/charset/Charset;
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 169
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-static {v0, v1, v14}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 175
    .local v4, cb:Ljava/nio/CharBuffer;
    :goto_8
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->length()I

    move-result v16

    .local v16, result:I
    if-lez v16, :cond_13

    .line 176
    invoke-virtual {v4}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v25

    .line 177
    move/from16 v6, v16

    .line 182
    :goto_9
    invoke-static/range {v25 .. v25}, Lcom/htc/android/mail/eassvc/core/EasStringUtil;->arrayToString([C)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_1

    .line 158
    .end local v4           #cb:Ljava/nio/CharBuffer;
    .end local v16           #result:I
    :catch_0
    move-exception v8

    .line 159
    .local v8, e:Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v28, Ljava/io/UnsupportedEncodingException;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v28

    check-cast v28, Ljava/io/UnsupportedEncodingException;

    check-cast v28, Ljava/io/UnsupportedEncodingException;

    throw v28

    .line 161
    .end local v8           #e:Ljava/nio/charset/IllegalCharsetNameException;
    :catch_1
    move-exception v8

    .line 162
    .local v8, e:Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v28, Ljava/io/UnsupportedEncodingException;

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v28

    check-cast v28, Ljava/io/UnsupportedEncodingException;

    check-cast v28, Ljava/io/UnsupportedEncodingException;

    throw v28

    .line 170
    .end local v8           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :catch_2
    move-exception v8

    .line 173
    .local v8, e:Ljava/lang/Exception;
    const-string v28, "?"

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->toCharArray()[C

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v4

    .restart local v4       #cb:Ljava/nio/CharBuffer;
    goto :goto_8

    .line 179
    .end local v8           #e:Ljava/lang/Exception;
    .restart local v16       #result:I
    :cond_13
    const/4 v6, 0x0

    .line 180
    const/16 v28, 0x0

    move/from16 v0, v28

    new-array v0, v0, [C

    move-object/from16 v25, v0

    goto :goto_9

    .line 184
    .end local v4           #cb:Ljava/nio/CharBuffer;
    .end local v5           #charset:Ljava/nio/charset/Charset;
    .end local v16           #result:I
    :cond_14
    new-instance v28, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringIndexOutOfBoundsException;-><init>()V

    throw v28

    .restart local v7       #d:[B
    .restart local v12       #idx:I
    .restart local v13       #last:I
    .restart local v18       #s:I
    .restart local v23       #v:[C
    :cond_15
    move/from16 v17, v18

    .end local v18           #s:I
    .restart local v17       #s:I
    move v11, v12

    .end local v12           #idx:I
    .restart local v11       #idx:I
    goto/16 :goto_5
.end method
