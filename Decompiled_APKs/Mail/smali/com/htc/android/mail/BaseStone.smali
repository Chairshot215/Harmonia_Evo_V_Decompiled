.class public Lcom/htc/android/mail/BaseStone;
.super Ljava/lang/Object;
.source "BaseStone.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BaseStone"

.field private static final VERBOSE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method public static CheckEmailAddr(Ljava/lang/String;)Z
    .locals 11
    .parameter "addr"

    .prologue
    const/16 v10, 0x2e

    const/4 v7, 0x0

    .line 568
    if-nez p0, :cond_1

    .line 657
    :cond_0
    :goto_0
    return v7

    .line 571
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    .line 572
    .local v6, value:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .line 574
    .local v2, last:I
    const/4 v5, 0x0

    .line 575
    .local v5, nIndex:I
    const/4 v0, 0x1

    .line 576
    .local v0, bParseFront:Z
    const/4 v3, 0x0

    .line 577
    .local v3, nBackDot:I
    const/4 v4, 0x0

    .line 578
    .local v4, nErrorCode:I
    const/4 v1, 0x0

    .line 580
    .local v1, bText:Z
    :goto_1
    if-gt v5, v2, :cond_8

    .line 581
    aget-char v8, v6, v5

    const/16 v9, 0x61

    if-lt v8, v9, :cond_2

    aget-char v8, v6, v5

    const/16 v9, 0x7a

    if-le v8, v9, :cond_5

    :cond_2
    aget-char v8, v6, v5

    const/16 v9, 0x41

    if-lt v8, v9, :cond_3

    aget-char v8, v6, v5

    const/16 v9, 0x5a

    if-le v8, v9, :cond_5

    :cond_3
    aget-char v8, v6, v5

    const/16 v9, 0x30

    if-lt v8, v9, :cond_4

    aget-char v8, v6, v5

    const/16 v9, 0x39

    if-le v8, v9, :cond_5

    :cond_4
    aget-char v8, v6, v5

    const/16 v9, 0x2d

    if-eq v8, v9, :cond_5

    aget-char v8, v6, v5

    const/16 v9, 0x5f

    if-ne v8, v9, :cond_7

    .line 585
    :cond_5
    const/4 v1, 0x1

    .line 637
    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 586
    :cond_7
    aget-char v8, v6, v5

    if-ne v8, v10, :cond_d

    .line 587
    if-nez v0, :cond_6

    .line 588
    add-int/lit8 v3, v3, 0x1

    .line 589
    if-nez v1, :cond_c

    .line 590
    const/4 v4, 0x1

    .line 640
    :cond_8
    :goto_3
    if-nez v4, :cond_b

    .line 641
    if-nez v3, :cond_9

    .line 642
    const/16 v4, 0x11

    .line 643
    :cond_9
    if-eqz v0, :cond_a

    .line 644
    const/16 v4, 0x12

    .line 645
    :cond_a
    if-nez v1, :cond_b

    .line 646
    const/16 v4, 0x13

    .line 653
    :cond_b
    if-nez v4, :cond_17

    .line 654
    const/4 v7, 0x1

    goto :goto_0

    .line 593
    :cond_c
    const/4 v1, 0x0

    goto :goto_2

    .line 595
    :cond_d
    aget-char v8, v6, v5

    const/16 v9, 0x25

    if-ne v8, v9, :cond_e

    .line 596
    if-nez v0, :cond_6

    .line 597
    const/4 v4, 0x2

    .line 598
    goto :goto_3

    .line 600
    :cond_e
    aget-char v8, v6, v5

    const/16 v9, 0x40

    if-ne v8, v9, :cond_10

    .line 601
    if-nez v0, :cond_f

    .line 602
    const/4 v4, 0x3

    .line 603
    goto :goto_3

    .line 605
    :cond_f
    const/4 v0, 0x0

    .line 606
    const/4 v1, 0x0

    goto :goto_2

    .line 607
    :cond_10
    aget-char v8, v6, v5

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_11

    aget-char v8, v6, v5

    const/16 v9, 0x3b

    if-ne v8, v9, :cond_16

    .line 608
    :cond_11
    if-eqz v0, :cond_12

    .line 609
    const/4 v4, 0x4

    .line 610
    goto :goto_3

    .line 612
    :cond_12
    if-nez v3, :cond_13

    .line 613
    const/4 v4, 0x5

    .line 614
    goto :goto_3

    .line 617
    :cond_13
    if-eqz v0, :cond_14

    .line 618
    const/4 v4, 0x6

    .line 619
    goto :goto_3

    .line 622
    :cond_14
    add-int/lit8 v8, v5, -0x1

    if-ltz v8, :cond_15

    .line 623
    add-int/lit8 v8, v5, -0x1

    aget-char v8, v6, v8

    if-ne v8, v10, :cond_15

    .line 624
    const/4 v4, 0x7

    .line 625
    goto :goto_3

    .line 629
    :cond_15
    const/4 v0, 0x1

    .line 630
    const/4 v3, 0x0

    .line 631
    const/4 v1, 0x0

    goto :goto_2

    .line 634
    :cond_16
    const/16 v4, 0x8

    .line 635
    goto :goto_3

    .line 656
    :cond_17
    sget-boolean v8, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "BaseStone"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not match "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " error="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static RecordTime(Ljava/lang/String;Ljava/lang/Exception;)J
    .locals 2
    .parameter "szLabel"
    .parameter "e"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/htc/android/mail/Measure;->RecordTime(Ljava/lang/String;Ljava/lang/Exception;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static ShowTime()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-static {v0, v0}, Lcom/htc/android/mail/BaseStone;->ShowTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static ShowTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "szText"
    .parameter "szFromlabel"

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/htc/android/mail/Measure;->ShowTime(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static TrimReFwd(Ljava/lang/String;)I
    .locals 11
    .parameter "szSubject"

    .prologue
    const/16 v10, 0x77

    const/16 v9, 0x66

    const/16 v8, 0x57

    const/16 v7, 0x46

    const/4 v4, -0x1

    .line 127
    if-nez p0, :cond_1

    move v1, v4

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 130
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 131
    .local v3, value:[C
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 132
    .local v0, last:I
    const/4 v1, -0x1

    .line 133
    .local v1, nHit:I
    const/4 v2, 0x0

    .line 136
    .local v2, nSpace:I
    :cond_2
    :goto_1
    if-ltz v0, :cond_18

    .line 137
    aget-char v5, v3, v0

    const/16 v6, 0x20

    if-gt v5, v6, :cond_3

    .line 138
    add-int/lit8 v0, v0, -0x1

    .line 139
    if-ne v1, v4, :cond_2

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 144
    :cond_3
    aget-char v5, v3, v0

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_17

    .line 145
    const/4 v5, 0x2

    if-le v0, v5, :cond_f

    .line 146
    add-int/lit8 v5, v0, -0x1

    aget-char v5, v3, v5

    const/16 v6, 0x64

    if-eq v5, v6, :cond_4

    add-int/lit8 v5, v0, -0x1

    aget-char v5, v3, v5

    const/16 v6, 0x44

    if-ne v5, v6, :cond_8

    :cond_4
    add-int/lit8 v5, v0, -0x2

    aget-char v5, v3, v5

    if-eq v5, v10, :cond_5

    add-int/lit8 v5, v0, -0x2

    aget-char v5, v3, v5

    if-ne v5, v8, :cond_8

    :cond_5
    add-int/lit8 v5, v0, -0x3

    aget-char v5, v3, v5

    if-eq v5, v9, :cond_6

    add-int/lit8 v5, v0, -0x3

    aget-char v5, v3, v5

    if-ne v5, v7, :cond_8

    .line 147
    :cond_6
    if-ne v1, v4, :cond_7

    .line 148
    move v1, v0

    .line 150
    :cond_7
    add-int/lit8 v0, v0, -0x3

    .line 180
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 151
    :cond_8
    add-int/lit8 v5, v0, -0x1

    aget-char v5, v3, v5

    if-eq v5, v10, :cond_9

    add-int/lit8 v5, v0, -0x1

    aget-char v5, v3, v5

    if-ne v5, v8, :cond_a

    :cond_9
    add-int/lit8 v5, v0, -0x2

    aget-char v5, v3, v5

    if-eq v5, v9, :cond_c

    add-int/lit8 v5, v0, -0x2

    aget-char v5, v3, v5

    if-eq v5, v7, :cond_c

    :cond_a
    add-int/lit8 v5, v0, -0x1

    aget-char v5, v3, v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_b

    add-int/lit8 v5, v0, -0x1

    aget-char v5, v3, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_e

    :cond_b
    add-int/lit8 v5, v0, -0x2

    aget-char v5, v3, v5

    const/16 v6, 0x72

    if-eq v5, v6, :cond_c

    add-int/lit8 v5, v0, -0x2

    aget-char v5, v3, v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_e

    .line 153
    :cond_c
    if-ne v1, v4, :cond_d

    .line 154
    move v1, v0

    .line 156
    :cond_d
    add-int/lit8 v0, v0, -0x2

    goto :goto_2

    .line 158
    :cond_e
    const/4 v1, -0x1

    .line 159
    const/4 v2, 0x0

    goto :goto_2

    .line 161
    :cond_f
    const/4 v5, 0x2

    if-ne v0, v5, :cond_16

    .line 162
    add-int/lit8 v5, v0, -0x1

    aget-char v5, v3, v5

    if-eq v5, v10, :cond_10

    add-int/lit8 v5, v0, -0x1

    aget-char v5, v3, v5

    if-ne v5, v8, :cond_11

    :cond_10
    add-int/lit8 v5, v0, -0x2

    aget-char v5, v3, v5

    if-eq v5, v9, :cond_13

    add-int/lit8 v5, v0, -0x2

    aget-char v5, v3, v5

    if-eq v5, v7, :cond_13

    :cond_11
    add-int/lit8 v5, v0, -0x1

    aget-char v5, v3, v5

    const/16 v6, 0x65

    if-eq v5, v6, :cond_12

    add-int/lit8 v5, v0, -0x1

    aget-char v5, v3, v5

    const/16 v6, 0x45

    if-ne v5, v6, :cond_15

    :cond_12
    add-int/lit8 v5, v0, -0x2

    aget-char v5, v3, v5

    const/16 v6, 0x72

    if-eq v5, v6, :cond_13

    add-int/lit8 v5, v0, -0x2

    aget-char v5, v3, v5

    const/16 v6, 0x52

    if-ne v5, v6, :cond_15

    .line 164
    :cond_13
    if-ne v1, v4, :cond_14

    .line 165
    move v1, v0

    .line 167
    :cond_14
    add-int/lit8 v0, v0, -0x2

    goto/16 :goto_2

    .line 169
    :cond_15
    const/4 v1, -0x1

    .line 170
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 173
    :cond_16
    const/4 v1, -0x1

    .line 174
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 177
    :cond_17
    const/4 v1, -0x1

    .line 178
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 184
    :cond_18
    if-eq v1, v4, :cond_19

    .line 185
    add-int/lit8 v1, v1, 0x1

    .line 186
    add-int/2addr v1, v2

    .line 197
    :cond_19
    sget-boolean v5, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v5, :cond_0

    .line 198
    if-eq v1, v4, :cond_1a

    .line 199
    const-string v4, "BaseStone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " left="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " right="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 201
    :cond_1a
    const-string v4, "BaseStone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Trim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " none"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private static createGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/String;
    .locals 17
    .parameter "szFromMail"
    .parameter "szTo"
    .parameter "szSubject"
    .parameter "szCc"
    .parameter "nExtraResult"

    .prologue
    .line 224
    move-object/from16 v11, p2

    .line 225
    .local v11, szKey:Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    .line 226
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Empty"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 227
    sget-boolean v12, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v12, :cond_1

    const-string v12, "BaseStone"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Assign a key for null subject"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    if-eqz v11, :cond_8

    .line 238
    :try_start_0
    const-string v12, "MD5"

    invoke-static {v12}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 239
    .local v5, md:Ljava/security/MessageDigest;
    invoke-static {v11}, Lcom/htc/android/mail/Util;->trimRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/security/MessageDigest;->update([B)V

    .line 240
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    .line 243
    .local v6, messageDigest:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    .local v3, hexString:Ljava/lang/StringBuffer;
    const-wide/16 v9, 0x0

    .local v9, nFrontLong:J
    const-wide/16 v7, 0x0

    .line 247
    .local v7, nBackLong:J
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v12, v6

    if-ge v4, v12, :cond_3

    .line 248
    aget-byte v12, v6, v4

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, hex:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2

    .line 250
    const/16 v12, 0x30

    invoke-virtual {v3, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 252
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 255
    .end local v2           #hex:Ljava/lang/String;
    :cond_3
    array-length v12, v6

    const/16 v13, 0x10

    if-ne v12, v13, :cond_4

    .line 256
    const/4 v12, 0x0

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    const/16 v14, 0x38

    shl-long/2addr v12, v14

    const/4 v14, 0x1

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x30

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/4 v14, 0x2

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x28

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/4 v14, 0x3

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x20

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/4 v14, 0x4

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x18

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/4 v14, 0x5

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x10

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/4 v14, 0x6

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x8

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/4 v14, 0x7

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    add-long v9, v12, v14

    .line 257
    const/16 v12, 0x8

    aget-byte v12, v6, v12

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    const/16 v14, 0x38

    shl-long/2addr v12, v14

    const/16 v14, 0x9

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x30

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/16 v14, 0xa

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x28

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/16 v14, 0xb

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x20

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/16 v14, 0xc

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x18

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/16 v14, 0xd

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x10

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/16 v14, 0xe

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    const/16 v16, 0x8

    shl-long v14, v14, v16

    add-long/2addr v12, v14

    const/16 v14, 0xf

    aget-byte v14, v6, v14

    and-int/lit16 v14, v14, 0xff

    int-to-long v14, v14

    add-long v7, v12, v14

    .line 258
    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-nez v12, :cond_4

    .line 259
    sget-boolean v12, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v12, :cond_4

    const-string v12, "BaseStone"

    const-string v13, " not impossible"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_4
    if-eqz p4, :cond_7

    move-object/from16 v0, p4

    array-length v12, v0

    const/4 v13, 0x1

    if-lt v12, v13, :cond_7

    .line 264
    const/4 v12, 0x0

    aput-wide v9, p4, v12

    .line 270
    :cond_5
    :goto_1
    sget-boolean v12, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v12, :cond_6

    const-string v12, "BaseStone"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "createGroupID "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " P:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " N:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 280
    .end local v3           #hexString:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v6           #messageDigest:[B
    .end local v7           #nBackLong:J
    .end local v9           #nFrontLong:J
    :goto_2
    return-object v12

    .line 266
    .restart local v3       #hexString:Ljava/lang/StringBuffer;
    .restart local v4       #i:I
    .restart local v5       #md:Ljava/security/MessageDigest;
    .restart local v6       #messageDigest:[B
    .restart local v7       #nBackLong:J
    .restart local v9       #nFrontLong:J
    :cond_7
    sget-boolean v12, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v12, :cond_5

    const-string v12, "BaseStone"

    const-string v13, "createGroupID:Invalid arg"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 272
    .end local v3           #hexString:Ljava/lang/StringBuffer;
    .end local v4           #i:I
    .end local v5           #md:Ljava/security/MessageDigest;
    .end local v6           #messageDigest:[B
    .end local v7           #nBackLong:J
    .end local v9           #nFrontLong:J
    :catch_0
    move-exception v1

    .line 273
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    const-string v12, "BaseStone"

    const-string v13, "catch NoSuchAlgorithmException"

    invoke-static {v12, v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    const/4 v12, 0x0

    goto :goto_2

    .line 278
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_8
    sget-boolean v12, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v12, :cond_9

    const-string v12, "BaseStone"

    const-string v13, "Null mail "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_9
    const/4 v12, 0x0

    goto :goto_2
.end method

.method public static dumpCursor(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cur"

    .prologue
    .line 325
    if-nez p0, :cond_1

    .line 326
    sget-boolean v4, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "BaseStone"

    const-string v5, "Cursor is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    return-void

    .line 330
    :cond_1
    sget-boolean v4, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "BaseStone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cursor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Num= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Field="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, ColumName:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 334
    invoke-interface {p0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 335
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 336
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 337
    .local v3, key:Ljava/lang/String;
    sget-boolean v4, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "BaseStone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Item:("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 333
    .end local v3           #key:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static dumpMailBox(JLcom/htc/android/mail/Mailbox;)V
    .locals 8
    .parameter "nAccountID"
    .parameter "box"

    .prologue
    .line 296
    const-string v5, "_to collate nocase desc, _internaldate desc"

    .line 297
    .local v5, order:Ljava/lang/String;
    const/4 v6, 0x0

    .line 301
    .local v6, cur:Landroid/database/Cursor;
    sget-boolean v0, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseStone"

    const-string v1, "dumpMailBox"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_account="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND _mailboxId = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p2, Lcom/htc/android/mail/Mailbox;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND _del <> \'1\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 306
    .local v3, where:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v0

    sget-object v1, Lcom/htc/android/mail/MailProvider;->sSummariesURI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 312
    :goto_0
    if-nez v6, :cond_2

    .line 313
    sget-boolean v0, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "BaseStone"

    const-string v1, "Error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    :goto_1
    return-void

    .line 308
    :catch_0
    move-exception v7

    .line 309
    .local v7, ex:Landroid/os/RemoteException;
    const-string v0, "BaseStone"

    const-string v1, " dumpMailBox Fail"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 316
    .end local v7           #ex:Landroid/os/RemoteException;
    :cond_2
    invoke-static {v6}, Lcom/htc/android/mail/BaseStone;->dumpCursor(Landroid/database/Cursor;)V

    .line 317
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method public static getGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/String;
    .locals 9
    .parameter "fromMail"
    .parameter "to"
    .parameter "subject"
    .parameter "cc"
    .parameter "bcc"
    .parameter "references"
    .parameter "nExtraResult"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 83
    const/4 v1, 0x0

    .line 88
    .local v1, szResult:Ljava/lang/String;
    const/4 p5, 0x0

    .line 90
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 91
    :cond_0
    invoke-static {p0, p1, p2, p3, p6}, Lcom/htc/android/mail/BaseStone;->createGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v1

    .line 114
    :cond_1
    :goto_0
    sget-boolean v2, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 115
    if-eqz p6, :cond_7

    array-length v2, p6

    if-lt v2, v8, :cond_7

    .line 116
    const-string v2, "BaseStone"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Group :%s key:%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aget-wide v6, p6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_2
    :goto_1
    return-object v1

    .line 95
    :cond_3
    sget-boolean v2, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "BaseStone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Div referencer :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_4
    const-string v2, ">"

    throw p5

    move-result v0

    .line 99
    .local v0, nIndex:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 100
    throw p5

    move-result-object v1

    .line 106
    :goto_2
    if-eqz v1, :cond_1

    .line 107
    throw v1

    move-result-object v2

    const-string v3, "<"

    const-string v4, ""

    throw v2

    move-result-object v2

    const-string v3, ">"

    const-string v4, ""

    throw v2

    move-result-object v1

    goto :goto_0

    .line 102
    :cond_5
    sget-boolean v2, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v2, :cond_6

    const-string v2, "BaseStone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "References is wrong "

    throw v3

    move-result-object v3

    throw v3

    move-result-object v3

    throw v3

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_6
    throw p5

    move-result-object v1

    goto :goto_2

    .line 118
    .end local v0           #nIndex:I
    :cond_7
    const-string v2, "BaseStone"

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "Group :%s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getGroupID_Send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[J)Ljava/lang/String;
    .locals 8
    .parameter "from"
    .parameter "to"
    .parameter "subject"
    .parameter "cc"
    .parameter "bcc"
    .parameter "references"
    .parameter "oldMessageId"
    .parameter "nExtraResult"

    .prologue
    .line 60
    invoke-static {p2}, Lcom/htc/android/mail/BaseStone;->TrimReFwd(Ljava/lang/String;)I

    move-result v7

    .line 61
    .local v7, nTrim:I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_0

    .line 62
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p8

    .line 65
    invoke-static/range {v0 .. v6}, Lcom/htc/android/mail/BaseStone;->getGroupID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getGroupSummaryCursor(JJLjava/lang/String;Ljava/lang/String;[IZ)Landroid/database/Cursor;
    .locals 17
    .parameter "AccountID"
    .parameter "nBoxId"
    .parameter "Colum"
    .parameter "orderOption"
    .parameter "ExcludeFoldersId"
    .parameter "bExchangeTable"

    .prologue
    .line 451
    const/4 v8, 0x0

    .line 455
    .local v8, c:Landroid/database/Cursor;
    const-string v10, "GROUP BY _group "

    .line 458
    .local v10, group:Ljava/lang/String;
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 460
    .local v7, Limit:Ljava/lang/String;
    sget-boolean v1, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "BaseStone"

    const-string v2, "getGroupSummaryCursor"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    if-nez p4, :cond_2

    if-nez p5, :cond_2

    .line 463
    const-string p4, "_internaldate"

    .line 464
    const-string p5, "DESC"

    .line 470
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ORDER BY "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", _group ASC,_internaldate DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 473
    .local v12, order:Ljava/lang/String;
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_5

    .line 474
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "WHERE _account = \'%d\' AND _del = \'-1\' "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p0 .. p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 478
    .local v15, where:Ljava/lang/String;
    :goto_0
    if-eqz p6, :cond_7

    .line 479
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p6

    array-length v1, v0

    if-ge v11, v1, :cond_6

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "AND _mailboxId <> \'%d\' "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v16, p6, v11

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 479
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 465
    .end local v11           #i:I
    .end local v12           #order:Ljava/lang/String;
    .end local v15           #where:Ljava/lang/String;
    :cond_2
    if-eqz p4, :cond_3

    if-nez p5, :cond_1

    .line 466
    :cond_3
    sget-boolean v1, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "BaseStone"

    const-string v2, "Invalid Arg"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_4
    const/4 v1, 0x0

    .line 556
    :goto_2
    return-object v1

    .line 476
    .restart local v12       #order:Ljava/lang/String;
    :cond_5
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "WHERE _mailboxId = \'%d\' AND _del = \'-1\' "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .restart local v15       #where:Ljava/lang/String;
    goto :goto_0

    .line 482
    .restart local v11       #i:I
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 485
    .end local v11           #i:I
    :cond_7
    const-string v13, "_id,_subject,_group,_from,_internaldate,_subjtype,_incAttachment,_read,_flags"

    .line 487
    .local v13, selection:Ljava/lang/String;
    const-string v1, "_id"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "_subject"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "_group"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "_from"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "_internaldate"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 495
    :cond_8
    const-string v14, "messages "

    .line 503
    .local v14, table:Ljava/lang/String;
    if-eqz p7, :cond_a

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT _id,_subject,count(distinct _id) as count,group_concat(distinct _from) as namelist,_group,_internaldate,_subjtype,_incAttachment,_read,_flags,_downloadtotalsize,_messagesize,sum(_read) as readcount FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 512
    .local v4, sqlcmd:Ljava/lang/String;
    :goto_3
    const-string v1, "SearchWhere"

    const/4 v2, 0x6

    invoke-virtual {v15, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    const-string v1, "sqlcmd"

    invoke-static {v1, v4}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    sget-boolean v1, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "BaseStone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sqlcmd= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_9
    :try_start_0
    invoke-static {}, Lcom/htc/android/mail/MailProvider;->instance()Landroid/content/IContentProvider;

    move-result-object v1

    sget-object v2, Lcom/htc/android/mail/MailProvider;->SqliteCommandURI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_4
    move-object v1, v8

    .line 556
    goto/16 :goto_2

    .line 506
    .end local v4           #sqlcmd:Ljava/lang/String;
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT _id,_subject,count(distinct _messageId) as count,group_concat(distinct _from) as namelist,_group,_internaldate,_subjtype,_incAttachment,_read,_flags,_downloadtotalsize,_messagesize,sum(_read) as readcount FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #sqlcmd:Ljava/lang/String;
    goto :goto_3

    .line 552
    :catch_0
    move-exception v9

    .line 553
    .local v9, ex:Landroid/os/RemoteException;
    const-string v1, "BaseStone"

    const-string v2, " getGroupSummaryCursor Fail "

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public static getReferencesFromID(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "szNewSubject"
    .parameter "oldMessageId"

    .prologue
    const/4 v2, 0x0

    .line 71
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 72
    sget-boolean v0, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "BaseStone"

    const-string v1, "getReferencesFromID null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    return-object v2
.end method

.method public static getWhereClause([Ljava/lang/String;JJJ[IZLjava/lang/String;)Ljava/lang/String;
    .locals 16
    .parameter "projection"
    .parameter "AccountID"
    .parameter "nBoxId"
    .parameter "nSentBoxId"
    .parameter "ExcludeFoldersId"
    .parameter "bExchangeTable"
    .parameter "GroupKey"

    .prologue
    .line 397
    const/4 v2, 0x0

    .line 400
    .local v2, c:Landroid/database/Cursor;
    const-string v5, " ORDER BY _internaldate DESC, _mailboxId ASC , _messageId ASC "

    .line 401
    .local v5, order:Ljava/lang/String;
    const-string v3, ""

    .line 403
    .local v3, group:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 406
    .local v1, Limit:Ljava/lang/String;
    if-eqz p8, :cond_0

    .line 407
    const-string v5, " ORDER BY _internaldate DESC, _mailboxId ASC , _id ASC "

    .line 411
    :cond_0
    if-eqz p0, :cond_1

    move-object/from16 v0, p0

    array-length v10, v0

    if-nez v10, :cond_3

    .line 412
    :cond_1
    const-string v6, "* "

    .line 423
    .local v6, selection:Ljava/lang/String;
    :cond_2
    const-string v8, "messages"

    .line 427
    .local v8, table:Ljava/lang/String;
    const-wide/16 v10, -0x1

    cmp-long v10, p3, v10

    if-nez v10, :cond_4

    .line 428
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, " WHERE _account=\'%d\' AND _group=\'%s\' "

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object p9, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 434
    .local v9, where:Ljava/lang/String;
    :goto_0
    if-eqz p7, :cond_7

    .line 435
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    move-object/from16 v0, p7

    array-length v10, v0

    if-ge v4, v10, :cond_6

    .line 436
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v12, "AND _mailboxId <> \'%d\' "

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aget v15, p7, v4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 435
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 414
    .end local v4           #i:I
    .end local v6           #selection:Ljava/lang/String;
    .end local v8           #table:Ljava/lang/String;
    .end local v9           #where:Ljava/lang/String;
    :cond_3
    const/4 v10, 0x0

    aget-object v6, p0, v10

    .line 415
    .restart local v6       #selection:Ljava/lang/String;
    const/4 v4, 0x1

    .restart local v4       #i:I
    :goto_2
    move-object/from16 v0, p0

    array-length v10, v0

    if-ge v4, v10, :cond_2

    .line 416
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, p0, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 415
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 429
    .end local v4           #i:I
    .restart local v8       #table:Ljava/lang/String;
    :cond_4
    const-wide/16 v10, -0x1

    cmp-long v10, p5, v10

    if-eqz v10, :cond_5

    .line 430
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, " WHERE _account=\'%d\' AND _mailboxId in (\'%d\',\'%d\') AND _group=\'%s\' "

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    aput-object p9, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #where:Ljava/lang/String;
    goto :goto_0

    .line 432
    .end local v9           #where:Ljava/lang/String;
    :cond_5
    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, " WHERE _account=\'%d\' AND _mailboxId=\'%d\' AND _group=\'%s\' "

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    aput-object p9, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #where:Ljava/lang/String;
    goto/16 :goto_0

    .line 438
    .restart local v4       #i:I
    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 441
    .end local v4           #i:I
    :cond_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " FROM "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, sqlcmd:Ljava/lang/String;
    sget-boolean v10, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v10, :cond_8

    const-string v10, "BaseStone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getWhereClause sqlcmd="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_8
    return-object v7
.end method

.method public static getWhereClauseAllGroup([Ljava/lang/String;JJJ[IZLjava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "projection"
    .parameter "AccountID"
    .parameter "nBoxId"
    .parameter "nSentBoxId"
    .parameter "ExcludeFoldersId"
    .parameter "bExchangeTable"
    .parameter "GroupKey"

    .prologue
    .line 346
    const-string v4, " ORDER BY _internaldate DESC, _mailboxId ASC , _messageId ASC "

    .line 347
    .local v4, order:Ljava/lang/String;
    const-string v2, ""

    .line 349
    .local v2, group:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 352
    .local v1, Limit:Ljava/lang/String;
    if-eqz p8, :cond_0

    .line 353
    const-string v4, " ORDER BY _internaldate DESC, _mailboxId ASC , _id ASC "

    .line 357
    :cond_0
    if-eqz p0, :cond_1

    array-length v9, p0

    if-nez v9, :cond_3

    .line 358
    :cond_1
    const-string v5, "* "

    .line 369
    .local v5, selection:Ljava/lang/String;
    :cond_2
    const-string v7, "messages"

    .line 373
    .local v7, table:Ljava/lang/String;
    const-wide/16 v9, -0x1

    cmp-long v9, p3, v9

    if-nez v9, :cond_4

    .line 374
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " WHERE _account=\'%d\' AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 380
    .local v8, where:Ljava/lang/String;
    :goto_0
    if-eqz p7, :cond_7

    .line 381
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    move-object/from16 v0, p7

    array-length v9, v0

    if-ge v3, v9, :cond_6

    .line 382
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "AND _mailboxId <> \'%d\' "

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget v14, p7, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 381
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 360
    .end local v3           #i:I
    .end local v5           #selection:Ljava/lang/String;
    .end local v7           #table:Ljava/lang/String;
    .end local v8           #where:Ljava/lang/String;
    :cond_3
    const/4 v9, 0x0

    aget-object v5, p0, v9

    .line 361
    .restart local v5       #selection:Ljava/lang/String;
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_2
    array-length v9, p0

    if-ge v3, v9, :cond_2

    .line 362
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, p0, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 361
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 375
    .end local v3           #i:I
    .restart local v7       #table:Ljava/lang/String;
    :cond_4
    const-wide/16 v9, -0x1

    cmp-long v9, p5, v9

    if-eqz v9, :cond_5

    .line 376
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " WHERE _account=\'%d\' AND _mailboxId in (\'%d\',\'%d\') AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #where:Ljava/lang/String;
    goto/16 :goto_0

    .line 378
    .end local v8           #where:Ljava/lang/String;
    :cond_5
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " WHERE _account=\'%d\' AND _mailboxId=\'%d\' AND "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p9

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #where:Ljava/lang/String;
    goto/16 :goto_0

    .line 384
    .restart local v3       #i:I
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 387
    .end local v3           #i:I
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SELECT "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " FROM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 390
    .local v6, sqlcmd:Ljava/lang/String;
    sget-boolean v9, Lcom/htc/android/mail/BaseStone;->DEBUG:Z

    if-eqz v9, :cond_8

    const-string v9, "BaseStone"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getWhereClause sqlcmd="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_8
    return-object v6
.end method
