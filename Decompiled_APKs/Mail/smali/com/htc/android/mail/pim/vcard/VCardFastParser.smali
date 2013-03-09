.class public Lcom/htc/android/mail/pim/vcard/VCardFastParser;
.super Ljava/lang/Object;
.source "VCardFastParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;
    }
.end annotation


# instance fields
.field private final BUFFER_SIZE:I

.field private mStopFlag:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->mStopFlag:Z

    .line 192
    const/16 v0, 0x1000

    iput v0, p0, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->BUFFER_SIZE:I

    return-void
.end method

.method private getContact([B)Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;
    .locals 16
    .parameter "vcard_raw"

    .prologue
    .line 27
    new-instance v13, Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;

    invoke-direct {v13}, Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;-><init>()V

    .line 28
    .local v13, result:Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v12, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 33
    .local v7, findName:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    :try_start_0
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v8, v14, :cond_13

    .line 34
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x4

    if-ge v8, v14, :cond_4

    .line 35
    aget-byte v14, p1, v8

    const/16 v15, 0xa

    if-ne v14, v15, :cond_0

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, p1, v14

    const/16 v15, 0x4e

    if-ne v14, v15, :cond_0

    add-int/lit8 v14, v8, 0x2

    aget-byte v14, p1, v14

    const/16 v15, 0x3a

    if-eq v14, v15, :cond_1

    :cond_0
    aget-byte v14, p1, v8

    const/16 v15, 0xd

    if-ne v14, v15, :cond_9

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, p1, v14

    const/16 v15, 0x4e

    if-ne v14, v15, :cond_9

    add-int/lit8 v14, v8, 0x2

    aget-byte v14, p1, v14

    const/16 v15, 0x3a

    if-ne v14, v15, :cond_9

    .line 37
    :cond_1
    add-int/lit8 v4, v8, 0x3

    .line 40
    .local v4, endline:I
    :goto_1
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v4, v14, :cond_2

    aget-byte v14, p1, v4

    const/16 v15, 0xa

    if-eq v14, v15, :cond_2

    aget-byte v14, p1, v4

    const/16 v15, 0xd

    if-eq v14, v15, :cond_2

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 43
    :cond_2
    sub-int v14, v4, v8

    add-int/lit8 v14, v14, -0x3

    new-array v10, v14, [B

    .line 44
    .local v10, name:[B
    const/4 v9, 0x0

    .local v9, j:I
    :goto_2
    array-length v14, v10

    if-ge v9, v14, :cond_3

    .line 45
    add-int/lit8 v14, v8, 0x3

    add-int/2addr v14, v9

    aget-byte v14, p1, v14

    aput-byte v14, v10, v9

    .line 44
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 46
    :cond_3
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v10}, Ljava/lang/String;-><init>([B)V

    invoke-static {v14}, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;->Name:Ljava/lang/String;

    .line 47
    add-int/lit8 v8, v4, -0x1

    .line 89
    .end local v4           #endline:I
    .end local v9           #j:I
    .end local v10           #name:[B
    :cond_4
    :goto_3
    move-object/from16 v0, p1

    array-length v14, v0

    add-int/lit8 v14, v14, -0x5

    if-ge v8, v14, :cond_17

    .line 91
    aget-byte v14, p1, v8

    const/16 v15, 0xa

    if-ne v14, v15, :cond_5

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, p1, v14

    const/16 v15, 0x54

    if-ne v14, v15, :cond_5

    add-int/lit8 v14, v8, 0x2

    aget-byte v14, p1, v14

    const/16 v15, 0x45

    if-ne v14, v15, :cond_5

    add-int/lit8 v14, v8, 0x3

    aget-byte v14, p1, v14

    const/16 v15, 0x4c

    if-ne v14, v15, :cond_5

    add-int/lit8 v14, v8, 0x4

    aget-byte v14, p1, v14

    const/16 v15, 0x3a

    if-eq v14, v15, :cond_8

    :cond_5
    aget-byte v14, p1, v8

    const/16 v15, 0xa

    if-ne v14, v15, :cond_6

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, p1, v14

    const/16 v15, 0x54

    if-ne v14, v15, :cond_6

    add-int/lit8 v14, v8, 0x2

    aget-byte v14, p1, v14

    const/16 v15, 0x45

    if-ne v14, v15, :cond_6

    add-int/lit8 v14, v8, 0x3

    aget-byte v14, p1, v14

    const/16 v15, 0x4c

    if-ne v14, v15, :cond_6

    add-int/lit8 v14, v8, 0x4

    aget-byte v14, p1, v14

    const/16 v15, 0x3b

    if-eq v14, v15, :cond_8

    :cond_6
    aget-byte v14, p1, v8

    const/16 v15, 0xd

    if-ne v14, v15, :cond_7

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, p1, v14

    const/16 v15, 0x54

    if-ne v14, v15, :cond_7

    add-int/lit8 v14, v8, 0x2

    aget-byte v14, p1, v14

    const/16 v15, 0x45

    if-ne v14, v15, :cond_7

    add-int/lit8 v14, v8, 0x3

    aget-byte v14, p1, v14

    const/16 v15, 0x4c

    if-ne v14, v15, :cond_7

    add-int/lit8 v14, v8, 0x4

    aget-byte v14, p1, v14

    const/16 v15, 0x3a

    if-eq v14, v15, :cond_8

    :cond_7
    aget-byte v14, p1, v8

    const/16 v15, 0xd

    if-ne v14, v15, :cond_17

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, p1, v14

    const/16 v15, 0x54

    if-ne v14, v15, :cond_17

    add-int/lit8 v14, v8, 0x2

    aget-byte v14, p1, v14

    const/16 v15, 0x45

    if-ne v14, v15, :cond_17

    add-int/lit8 v14, v8, 0x3

    aget-byte v14, p1, v14

    const/16 v15, 0x4c

    if-ne v14, v15, :cond_17

    add-int/lit8 v14, v8, 0x4

    aget-byte v14, p1, v14

    const/16 v15, 0x3b

    if-ne v14, v15, :cond_17

    .line 100
    :cond_8
    add-int/lit8 v5, v8, 0x4

    .line 101
    .local v5, endparam:I
    :goto_4
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v5, v14, :cond_14

    aget-byte v14, p1, v5

    const/16 v15, 0x3a

    if-eq v14, v15, :cond_14

    .line 102
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 49
    .end local v5           #endparam:I
    :cond_9
    aget-byte v14, p1, v8

    const/16 v15, 0xa

    if-ne v14, v15, :cond_a

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, p1, v14

    const/16 v15, 0x4e

    if-ne v14, v15, :cond_a

    add-int/lit8 v14, v8, 0x2

    aget-byte v14, p1, v14

    const/16 v15, 0x3b

    if-eq v14, v15, :cond_b

    :cond_a
    aget-byte v14, p1, v8

    const/16 v15, 0xd

    if-ne v14, v15, :cond_4

    add-int/lit8 v14, v8, 0x1

    aget-byte v14, p1, v14

    const/16 v15, 0x4e

    if-ne v14, v15, :cond_4

    add-int/lit8 v14, v8, 0x2

    aget-byte v14, p1, v14

    const/16 v15, 0x3b

    if-ne v14, v15, :cond_4

    .line 51
    :cond_b
    add-int/lit8 v5, v8, 0x3

    .line 52
    .restart local v5       #endparam:I
    const/4 v2, 0x0

    .line 54
    .local v2, charset:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v5, v14, :cond_f

    aget-byte v14, p1, v5

    const/16 v15, 0x3a

    if-eq v14, v15, :cond_f

    .line 55
    aget-byte v14, p1, v5

    const/16 v15, 0x43

    if-ne v14, v15, :cond_e

    add-int/lit8 v5, v5, 0x1

    aget-byte v14, p1, v5

    const/16 v15, 0x48

    if-ne v14, v15, :cond_e

    add-int/lit8 v5, v5, 0x1

    aget-byte v14, p1, v5

    const/16 v15, 0x41

    if-ne v14, v15, :cond_e

    add-int/lit8 v5, v5, 0x1

    aget-byte v14, p1, v5

    const/16 v15, 0x52

    if-ne v14, v15, :cond_e

    add-int/lit8 v5, v5, 0x1

    aget-byte v14, p1, v5

    const/16 v15, 0x53

    if-ne v14, v15, :cond_e

    add-int/lit8 v5, v5, 0x1

    aget-byte v14, p1, v5

    const/16 v15, 0x45

    if-ne v14, v15, :cond_e

    add-int/lit8 v5, v5, 0x1

    aget-byte v14, p1, v5

    const/16 v15, 0x54

    if-ne v14, v15, :cond_e

    add-int/lit8 v5, v5, 0x1

    aget-byte v14, p1, v5

    const/16 v15, 0x3d

    if-ne v14, v15, :cond_e

    .line 60
    add-int/lit8 v6, v5, 0x1

    .line 63
    .local v6, endthisparam:I
    :goto_6
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v6, v14, :cond_c

    aget-byte v14, p1, v6

    const/16 v15, 0x3a

    if-eq v14, v15, :cond_c

    aget-byte v14, p1, v6

    const/16 v15, 0x3b

    if-eq v14, v15, :cond_c

    .line 64
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 65
    :cond_c
    sub-int v14, v6, v5

    new-array v1, v14, [B

    .line 66
    .local v1, btcharset:[B
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_7
    array-length v14, v1

    if-ge v9, v14, :cond_d

    .line 67
    add-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v9

    aget-byte v14, p1, v14

    aput-byte v14, v1, v9

    .line 66
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 68
    :cond_d
    new-instance v2, Ljava/lang/String;

    .end local v2           #charset:Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 69
    .restart local v2       #charset:Ljava/lang/String;
    add-int/lit8 v5, v6, -0x1

    .line 71
    .end local v1           #btcharset:[B
    .end local v6           #endthisparam:I
    .end local v9           #j:I
    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 73
    :cond_f
    add-int/lit8 v4, v5, 0x1

    .line 76
    .restart local v4       #endline:I
    :goto_8
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v4, v14, :cond_10

    aget-byte v14, p1, v4

    const/16 v15, 0xa

    if-eq v14, v15, :cond_10

    aget-byte v14, p1, v4

    const/16 v15, 0xd

    if-eq v14, v15, :cond_10

    .line 77
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 79
    :cond_10
    sub-int v14, v4, v5

    add-int/lit8 v14, v14, -0x1

    new-array v10, v14, [B

    .line 80
    .restart local v10       #name:[B
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_9
    array-length v14, v10

    if-ge v9, v14, :cond_11

    .line 81
    add-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v9

    aget-byte v14, p1, v14

    aput-byte v14, v10, v9

    .line 80
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 82
    :cond_11
    if-eqz v2, :cond_12

    .line 83
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v10, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v14}, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;->Name:Ljava/lang/String;

    .line 86
    :goto_a
    add-int/lit8 v8, v4, -0x1

    goto/16 :goto_3

    .line 85
    :cond_12
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v10}, Ljava/lang/String;-><init>([B)V

    invoke-static {v14}, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v13, Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;->Name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 118
    .end local v2           #charset:Ljava/lang/String;
    .end local v4           #endline:I
    .end local v5           #endparam:I
    .end local v9           #j:I
    .end local v10           #name:[B
    :catch_0
    move-exception v3

    .line 119
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 121
    .end local v3           #e:Ljava/lang/Exception;
    :cond_13
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    iput-object v14, v13, Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;->Phone:[Ljava/lang/String;

    .line 122
    return-object v13

    .line 104
    .restart local v5       #endparam:I
    :cond_14
    add-int/lit8 v4, v5, 0x1

    .line 107
    .restart local v4       #endline:I
    :goto_b
    :try_start_1
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v4, v14, :cond_15

    aget-byte v14, p1, v4

    const/16 v15, 0xa

    if-eq v14, v15, :cond_15

    aget-byte v14, p1, v4

    const/16 v15, 0xd

    if-eq v14, v15, :cond_15

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 109
    :cond_15
    sub-int v14, v4, v5

    add-int/lit8 v14, v14, -0x1

    new-array v11, v14, [B

    .line 110
    .local v11, phone:[B
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_c
    array-length v14, v11

    if-ge v9, v14, :cond_16

    .line 111
    add-int/lit8 v14, v5, 0x1

    add-int/2addr v14, v9

    aget-byte v14, p1, v14

    aput-byte v14, v11, v9

    .line 110
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 112
    :cond_16
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    add-int/lit8 v8, v4, -0x1

    .line 33
    .end local v4           #endline:I
    .end local v5           #endparam:I
    .end local v9           #j:I
    .end local v11           #phone:[B
    :cond_17
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0
.end method

.method private getRawData(Ljava/io/RandomAccessFile;JJ)[B
    .locals 6
    .parameter "file"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 180
    sub-long v2, p4, p2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 181
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    .line 182
    :cond_0
    sub-long v2, p4, p2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 184
    .local v0, byteread:[B
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 185
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 131
    const-string v0, ""

    .line 132
    .local v0, name:Ljava/lang/String;
    const-string v2, "(?<=[^\\\\]);"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, names:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 136
    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    aget-object v0, v1, v4

    goto :goto_0

    .line 141
    :cond_2
    array-length v2, v1

    if-ne v2, v5, :cond_3

    .line 142
    aget-object v0, v1, v4

    goto :goto_0

    .line 143
    :cond_3
    array-length v2, v1

    if-nez v2, :cond_0

    .line 144
    move-object v0, p0

    goto :goto_0
.end method

.method private setStopPoint()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 283
    iget-boolean v0, p0, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->mStopFlag:Z

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->mStopFlag:Z

    .line 285
    new-instance v0, Lcom/htc/android/mail/pim/vcard/VCardException;

    const/16 v1, 0x14

    const-string v2, "ContactGen Stop manual"

    invoke-direct {v0, v1, v2}, Lcom/htc/android/mail/pim/vcard/VCardException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 287
    :cond_0
    return-void
.end method


# virtual methods
.method public getvCardCount(Ljava/io/File;)I
    .locals 10
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/android/mail/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/16 v9, 0x1000

    const/4 v6, 0x0

    .line 201
    iput-boolean v6, p0, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->mStopFlag:Z

    .line 202
    const/4 v0, 0x0

    .line 203
    .local v0, count:I
    new-array v5, v9, [B

    .line 204
    .local v5, rawdata:[B
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string v6, "r"

    invoke-direct {v4, p1, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .local v4, raf:Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 207
    .local v3, nowLength:I
    :goto_0
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .local v2, length:I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3

    .line 208
    invoke-direct {p0}, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->setStopPoint()V

    .line 209
    if-ge v2, v9, :cond_0

    .line 210
    add-int/lit8 v6, v2, 0x1

    const/16 v7, 0xfff

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/util/Arrays;->fill([BIIB)V

    .line 211
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v6, 0xff5

    if-ge v1, v6, :cond_2

    .line 212
    aget-byte v6, v5, v1

    const/16 v7, 0x42

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, v5, v6

    const/16 v7, 0x45

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x2

    aget-byte v6, v5, v6

    const/16 v7, 0x47

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x3

    aget-byte v6, v5, v6

    const/16 v7, 0x49

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x4

    aget-byte v6, v5, v6

    const/16 v7, 0x4e

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x5

    aget-byte v6, v5, v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x6

    aget-byte v6, v5, v6

    const/16 v7, 0x56

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x7

    aget-byte v6, v5, v6

    const/16 v7, 0x43

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x8

    aget-byte v6, v5, v6

    const/16 v7, 0x41

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0x9

    aget-byte v6, v5, v6

    const/16 v7, 0x52

    if-ne v6, v7, :cond_1

    add-int/lit8 v6, v1, 0xa

    aget-byte v6, v5, v6

    const/16 v7, 0x44

    if-ne v6, v7, :cond_1

    .line 216
    add-int/lit8 v0, v0, 0x1

    .line 211
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 219
    :cond_2
    add-int v6, v3, v1

    add-int/lit8 v3, v6, 0x1

    .line 220
    int-to-long v6, v3

    invoke-virtual {v4, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 223
    .end local v1           #i:I
    .end local v2           #length:I
    :catchall_0
    move-exception v6

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    throw v6

    .restart local v2       #length:I
    :cond_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    .line 225
    const/4 v6, 0x1

    if-le v0, v6, :cond_4

    add-int/lit8 v0, v0, -0x1

    .line 226
    :cond_4
    return v0
.end method

.method public getvCardStartpoint(Ljava/io/File;)[J
    .locals 13
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/android/mail/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    .line 237
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->mStopFlag:Z

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, count:I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v8, startPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v9, 0x1000

    new-array v6, v9, [B

    .line 241
    .local v6, rawdata:[B
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v9, "r"

    invoke-direct {v5, p1, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 243
    .local v5, raf:Ljava/io/RandomAccessFile;
    const-wide/16 v3, 0x0

    .line 245
    .local v3, nowLength:J
    :goto_0
    invoke-virtual {v5, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .local v2, length:I
    const/4 v9, -0x1

    if-eq v2, v9, :cond_3

    .line 246
    invoke-direct {p0}, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->setStopPoint()V

    .line 247
    const/16 v9, 0x1000

    if-ge v2, v9, :cond_0

    .line 248
    add-int/lit8 v9, v2, 0x1

    const/16 v10, 0xfff

    const/4 v11, 0x0

    invoke-static {v6, v9, v10, v11}, Ljava/util/Arrays;->fill([BIIB)V

    .line 249
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/16 v9, 0xff5

    if-ge v1, v9, :cond_2

    .line 250
    aget-byte v9, v6, v1

    const/16 v10, 0x42

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v1, 0x1

    aget-byte v9, v6, v9

    const/16 v10, 0x45

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v1, 0x2

    aget-byte v9, v6, v9

    const/16 v10, 0x47

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v1, 0x3

    aget-byte v9, v6, v9

    const/16 v10, 0x49

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v1, 0x4

    aget-byte v9, v6, v9

    const/16 v10, 0x4e

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v1, 0x5

    aget-byte v9, v6, v9

    const/16 v10, 0x3a

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v1, 0x6

    aget-byte v9, v6, v9

    const/16 v10, 0x56

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v1, 0x7

    aget-byte v9, v6, v9

    const/16 v10, 0x43

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v1, 0x8

    aget-byte v9, v6, v9

    const/16 v10, 0x41

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v1, 0x9

    aget-byte v9, v6, v9

    const/16 v10, 0x52

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v1, 0xa

    aget-byte v9, v6, v9

    const/16 v10, 0x44

    if-ne v9, v10, :cond_1

    .line 254
    add-int/lit8 v0, v0, 0x1

    .line 255
    int-to-long v9, v1

    add-long/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 258
    :cond_2
    int-to-long v9, v1

    add-long/2addr v9, v3

    const-wide/16 v11, 0x1

    add-long v3, v9, v11

    .line 259
    invoke-virtual {v5, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 261
    .end local v1           #i:I
    :cond_3
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 262
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 263
    const/4 v7, 0x0

    .line 271
    :cond_4
    :goto_2
    return-object v7

    .line 264
    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 265
    const/4 v9, 0x1

    new-array v7, v9, [J

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    aput-wide v11, v7, v10

    goto :goto_2

    .line 267
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    new-array v7, v9, [J

    .line 268
    .local v7, result:[J
    const/4 v1, 0x1

    .restart local v1       #i:I
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 269
    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    aput-wide v11, v7, v10

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method

.method public parseContactsData(Ljava/io/File;)[Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;
    .locals 12
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/htc/android/mail/pim/vcard/VCardException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 157
    iput-boolean v11, p0, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->mStopFlag:Z

    .line 158
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v6, contactList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;>;"
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 161
    .local v1, raf:Ljava/io/RandomAccessFile;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->getvCardStartpoint(Ljava/io/File;)[J

    move-result-object v9

    .line 163
    .local v9, starts:[J
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 164
    .local v7, d1:Ljava/util/Date;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v9

    if-ge v8, v0, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->setStopPoint()V

    .line 167
    add-int/lit8 v0, v8, 0x1

    array-length v2, v9

    if-ne v0, v2, :cond_0

    .line 168
    aget-wide v2, v9, v8

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->getRawData(Ljava/io/RandomAccessFile;JJ)[B

    move-result-object v10

    .line 171
    .local v10, vcard_raw:[B
    :goto_1
    invoke-direct {p0, v10}, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->getContact([B)Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 170
    .end local v10           #vcard_raw:[B
    :cond_0
    aget-wide v2, v9, v8

    add-int/lit8 v0, v8, 0x1

    aget-wide v4, v9, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->getRawData(Ljava/io/RandomAccessFile;JJ)[B

    move-result-object v10

    .restart local v10       #vcard_raw:[B
    goto :goto_1

    .line 173
    .end local v10           #vcard_raw:[B
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 177
    new-array v0, v11, [Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/android/mail/pim/vcard/VCardFastParser$SimpleContact;

    return-object v0

    .line 175
    .end local v7           #d1:Ljava/util/Date;
    .end local v8           #i:I
    .end local v9           #starts:[J
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/android/mail/pim/vcard/VCardFastParser;->mStopFlag:Z

    .line 280
    return-void
.end method
