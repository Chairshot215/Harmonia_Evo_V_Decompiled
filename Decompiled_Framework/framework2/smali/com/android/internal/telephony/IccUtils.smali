.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field public static final ENCODING_7BIT_ASCII:I = 0x2

.field public static final ENCODING_EXTENDED_PROTOCOL_MESSAGE:I = 0x1

.field public static final ENCODING_IA5:I = 0x3

.field public static final ENCODING_KOREAN:I = 0x6

.field public static final ENCODING_LATIN:I = 0x8

.field public static final ENCODING_LATIN_HEBREW:I = 0x7

.field public static final ENCODING_SHIFT_JIS:I = 0x5

.field public static final ENCODING_UNICODE:I = 0x4

.field public static final ENCODING_UNSPECIFIED:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 22

    if-nez p2, :cond_1

    const-string v15, ""

    :cond_0
    :goto_0
    return-object v15

    :cond_1
    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_3

    aget-byte v19, p0, p1

    const/16 v20, -0x80

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    add-int/lit8 v19, p2, -0x1

    div-int/lit8 v18, v19, 0x2

    const/16 v16, 0x0

    :try_start_0
    new-instance v17, Ljava/lang/String;

    add-int/lit8 v19, p1, 0x1

    mul-int/lit8 v20, v18, 0x2

    const-string v21, "utf-16be"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v17

    :goto_1
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    :goto_2
    if-lez v18, :cond_2

    add-int/lit8 v19, v18, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const v20, 0xffff

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    add-int/lit8 v18, v18, -0x1

    goto :goto_2

    :catch_0
    move-exception v9

    const-string v19, "IccUtils"

    const-string v20, "implausible UnsupportedEncodingException"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    goto :goto_0

    :cond_3
    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x3

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_7

    aget-byte v19, p0, p1

    const/16 v20, -0x7f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    add-int/lit8 v19, p1, 0x1

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v13, v0, 0xff

    add-int/lit8 v19, p2, -0x3

    move/from16 v0, v19

    if-le v13, v0, :cond_4

    add-int/lit8 v13, p2, -0x3

    :cond_4
    add-int/lit8 v19, p1, 0x2

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x7

    move/from16 v0, v19

    int-to-char v5, v0

    add-int/lit8 p1, p1, 0x3

    const/4 v10, 0x1

    :cond_5
    :goto_3
    if-eqz v10, :cond_b

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4
    if-lez v13, :cond_a

    aget-byte v19, p0, p1

    if-gez v19, :cond_6

    aget-byte v19, p0, p1

    and-int/lit8 v19, v19, 0x7f

    add-int v19, v19, v5

    move/from16 v0, v19

    int-to-char v0, v0

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v13, v13, -0x1

    :cond_6
    const/4 v6, 0x0

    :goto_5
    if-ge v6, v13, :cond_9

    add-int v19, p1, v6

    aget-byte v19, p0, v19

    if-ltz v19, :cond_9

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    const/16 v19, 0x4

    move/from16 v0, p2

    move/from16 v1, v19

    if-lt v0, v1, :cond_5

    aget-byte v19, p0, p1

    const/16 v20, -0x7e

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    add-int/lit8 v19, p1, 0x1

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v13, v0, 0xff

    add-int/lit8 v19, p2, -0x4

    move/from16 v0, v19

    if-le v13, v0, :cond_8

    add-int/lit8 v13, p2, -0x4

    :cond_8
    add-int/lit8 v19, p1, 0x2

    aget-byte v19, p0, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    shl-int/lit8 v19, v19, 0x8

    add-int/lit8 v20, p1, 0x3

    aget-byte v20, p0, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    or-int v19, v19, v20

    move/from16 v0, v19

    int-to-char v5, v0

    add-int/lit8 p1, p1, 0x4

    const/4 v10, 0x1

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int p1, p1, v6

    sub-int/2addr v13, v6

    goto :goto_4

    :cond_a
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    const-string v7, ""

    const v19, 0x1040020

    :try_start_1
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    :goto_6
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_0

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0x50

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_c

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0xd2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    :cond_c
    move/from16 v12, p1

    move/from16 v12, p1

    :goto_7
    move/from16 v0, p2

    if-ge v12, v0, :cond_d

    :try_start_2
    aget-byte v19, p0, v12

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    :cond_d
    sub-int v12, v12, p1

    new-instance v11, Ljava/lang/String;

    const-string v19, "EUC-KR"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v11, v0, v1, v12, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/String;->length()I
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v19

    move/from16 v0, v19

    if-ge v0, v12, :cond_0

    move-object v15, v11

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v19

    goto :goto_6
.end method

.method public static adnStringFieldToString([BIII)Ljava/lang/String;
    .locals 3

    const-string v1, ""

    if-lez p2, :cond_0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    mul-int/lit8 v2, p2, 0x8

    div-int/lit8 v0, v2, 0x7

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static bcdPlmnToString([BII)Ljava/lang/String;
    .locals 7

    const/16 v6, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v5, 0x3

    if-ne p2, v5, :cond_1

    const/16 v1, 0xf

    const/4 v0, 0x0

    move v2, p1

    :goto_0
    add-int v5, p1, p2

    if-ge v2, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    aget-byte v5, p0, v2

    and-int/lit8 v4, v5, 0xf

    if-le v4, v6, :cond_2

    :cond_0
    const/16 v5, 0xa

    if-ge v1, v5, :cond_1

    add-int/lit8 v5, v1, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v5, p0, v2

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v4, v5, 0xf

    const/4 v5, 0x2

    if-ne v0, v5, :cond_4

    if-le v4, v6, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    add-int/lit8 v5, v4, 0x30

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    move v0, p1

    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    if-le v2, v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-gt v2, v4, :cond_0

    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static bitToRGB(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v0, v3, 0xf

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v1

    and-int/lit8 v0, v3, 0xf

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static bytesToHexString([BZ)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    const-string v0, "0123456789abcdef"

    const-string v1, "0123456789ABCDEF"

    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_1
    array-length v5, p0

    if-ge v3, v5, :cond_3

    aget-byte v5, p0, v3

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v2, v5, 0xf

    if-eqz p1, :cond_1

    const-string v5, "0123456789ABCDEF"

    :goto_2
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v5, p0, v3

    and-int/lit8 v2, v5, 0xf

    if-eqz p1, :cond_2

    const-string v5, "0123456789ABCDEF"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "0123456789abcdef"

    goto :goto_2

    :cond_2
    const-string v5, "0123456789abcdef"

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static cdmaBcdToString([BII)Ljava/lang/String;
    .locals 6

    const/16 v5, 0x9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v0, p2, :cond_1

    aget-byte v4, p0, v1

    and-int/lit8 v3, v4, 0xf

    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    :cond_0
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    if-ne v0, p2, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_2
    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v3, v4, 0xf

    if-le v3, v5, :cond_3

    const/4 v3, 0x0

    :cond_3
    add-int/lit8 v4, v3, 0x30

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static getCLUT([BII)[I
    .locals 9

    if-nez p0, :cond_1

    const/4 v4, 0x0

    :cond_0
    return-object v4

    :cond_1
    new-array v4, p2, [I

    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    move v5, p1

    const/4 v1, 0x0

    const/high16 v0, -0x100

    :goto_0
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v6, v5, 0x1

    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    if-ge v6, v3, :cond_0

    move v1, v2

    move v5, v6

    goto :goto_0
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static intToBcdByte(I)B
    .locals 2

    const/4 v0, 0x0

    rem-int/lit8 v1, p0, 0xa

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v0, v1

    rem-int/lit8 v1, p0, 0xa

    sub-int v1, p0, v1

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    add-int/2addr v1, v0

    int-to-byte v0, v1

    return v0
.end method

.method public static intToCdmaBcdByte(I)B
    .locals 2

    const/4 v0, 0x0

    rem-int/lit8 v1, p0, 0xa

    int-to-byte v0, v1

    rem-int/lit8 v1, p0, 0xa

    sub-int v1, p0, v1

    rem-int/lit8 v1, v1, 0x64

    div-int/lit8 v1, v1, 0xa

    shl-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    add-int/2addr v1, v0

    int-to-byte v0, v1

    return v0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11

    const/16 v10, 0x8

    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    const-string v9, "IccUtils"

    const-string v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v0, 0x1

    packed-switch p4, :pswitch_data_0

    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    const/4 v3, 0x0

    div-int v5, v10, p4

    move v8, p1

    :goto_2
    if-ge v3, p2, :cond_2

    add-int/lit8 p1, v8, 0x1

    aget-byte v7, p0, v8

    const/4 v6, 0x0

    move v4, v3

    :goto_3
    if-ge v6, v5, :cond_1

    sub-int v9, v5, v6

    add-int/lit8 v1, v9, -0x1

    add-int/lit8 v3, v4, 0x1

    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v3

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xf

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    :cond_1
    move v3, v4

    move v8, p1

    goto :goto_2

    :cond_2
    move p1, v8

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3

    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    const-string v1, "IccUtils"

    const-string v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-array v0, p2, [I

    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    if-ge p2, v4, :cond_2

    :cond_0
    const-string v2, ""

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    const-string v2, ""

    :goto_1
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_1

    goto :goto_0

    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    add-int/lit8 v4, p2, -0x1

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    add-int/lit8 v5, p2, -0x1

    const-string v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, ""

    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v8, 0x0

    add-int/lit8 v9, v8, 0x1

    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    add-int/lit8 v8, v9, 0x1

    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    mul-int v4, v10, v3

    new-array v7, v4, [I

    const/4 v5, 0x0

    const/4 v0, 0x7

    const/4 v2, 0x0

    move v6, v5

    move v9, v8

    :goto_0
    if-ge v6, v4, :cond_0

    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    add-int/lit8 v8, v9, 0x1

    aget-byte v2, p0, v9

    const/4 v0, 0x7

    :goto_1
    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v1, v0, -0x1

    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    move v6, v5

    move v9, v8

    goto :goto_0

    :cond_0
    if-eq v6, v4, :cond_1

    const-string v11, "IccUtils"

    const-string v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v6, 0x0

    add-int/lit8 v7, v6, 0x1

    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    add-int/lit8 v6, v7, 0x1

    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    add-int/lit8 v7, v6, 0x1

    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    add-int/lit8 v6, v7, 0x1

    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    add-int/lit8 v7, v6, 0x1

    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    const/4 v9, 0x1

    if-ne v9, p2, :cond_0

    add-int/lit8 v9, v3, -0x1

    const/4 v10, 0x0

    aput v10, v2, v9

    :cond_0
    const/4 v5, 0x0

    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    :cond_1
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_0
.end method
