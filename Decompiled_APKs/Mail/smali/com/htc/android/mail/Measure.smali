.class public Lcom/htc/android/mail/Measure;
.super Ljava/lang/Object;
.source "Measure.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Time"

.field static m_Time:[J

.field static m_bShow:[Z

.field static m_labels:[Ljava/lang/String;

.field static m_nLast:I

.field static m_nLine:[I

.field static m_nMaxCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/16 v0, 0x3c

    sput v0, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    .line 113
    sget v0, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    new-array v0, v0, [J

    sput-object v0, Lcom/htc/android/mail/Measure;->m_Time:[J

    .line 114
    sget v0, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    .line 115
    sget v0, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/htc/android/mail/Measure;->m_bShow:[Z

    .line 116
    sget v0, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    new-array v0, v0, [I

    sput-object v0, Lcom/htc/android/mail/Measure;->m_nLine:[I

    .line 117
    const/4 v0, 0x0

    sput v0, Lcom/htc/android/mail/Measure;->m_nLast:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static RecordTime()J
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 218
    invoke-static {v0, v0}, Lcom/htc/android/mail/Measure;->RecordTime(Ljava/lang/String;Ljava/lang/Exception;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static RecordTime(Ljava/lang/String;Ljava/lang/Exception;)J
    .locals 14
    .parameter "szLabel"
    .parameter "e"

    .prologue
    const/4 v13, 0x0

    .line 230
    const/4 v5, 0x0

    .line 232
    .local v5, nLine:I
    if-eqz p1, :cond_0

    .line 233
    invoke-static {p1}, Lcom/htc/android/mail/Measure;->getLineNumber(Ljava/lang/Exception;)I

    move-result v5

    .line 236
    :cond_0
    sget v10, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    add-int/lit8 v10, v10, -0x1

    sget v11, Lcom/htc/android/mail/Measure;->m_nLast:I

    if-ne v10, v11, :cond_2

    .line 237
    const-string v10, "Time"

    const-string v11, "Extent Table"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/16 v4, 0x1e

    .line 247
    .local v4, nIncrement:I
    sget v10, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    add-int/2addr v10, v4

    new-array v7, v10, [J

    .line 248
    .local v7, nNewTimes:[J
    sget v10, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    add-int/2addr v10, v4

    new-array v0, v10, [Ljava/lang/String;

    .line 249
    .local v0, NewLabels:[Ljava/lang/String;
    sget v10, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    add-int/2addr v10, v4

    new-array v1, v10, [Z

    .line 250
    .local v1, bNewShows:[Z
    sget v10, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    add-int/2addr v10, v4

    new-array v6, v10, [I

    .line 252
    .local v6, nNewLines:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget v10, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    if-ge v2, v10, :cond_1

    .line 253
    sget-object v10, Lcom/htc/android/mail/Measure;->m_Time:[J

    aget-wide v10, v10, v2

    aput-wide v10, v7, v2

    .line 254
    sget-object v10, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aget-object v10, v10, v2

    aput-object v10, v0, v2

    .line 255
    sget-object v10, Lcom/htc/android/mail/Measure;->m_bShow:[Z

    aget-boolean v10, v10, v2

    aput-boolean v10, v1, v2

    .line 256
    sget-object v10, Lcom/htc/android/mail/Measure;->m_nLine:[I

    aget v10, v10, v2

    aput v10, v6, v2

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_1
    sget v10, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    add-int/2addr v10, v4

    sput v10, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    .line 261
    sput-object v7, Lcom/htc/android/mail/Measure;->m_Time:[J

    .line 262
    sput-object v0, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    .line 263
    sput-object v1, Lcom/htc/android/mail/Measure;->m_bShow:[Z

    .line 264
    sput-object v6, Lcom/htc/android/mail/Measure;->m_nLine:[I

    .line 267
    .end local v0           #NewLabels:[Ljava/lang/String;
    .end local v1           #bNewShows:[Z
    .end local v2           #i:I
    .end local v4           #nIncrement:I
    .end local v6           #nNewLines:[I
    .end local v7           #nNewTimes:[J
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 268
    .local v8, nTime:J
    if-nez p0, :cond_4

    .line 269
    sget-object v10, Lcom/htc/android/mail/Measure;->m_Time:[J

    sget v11, Lcom/htc/android/mail/Measure;->m_nLast:I

    aput-wide v8, v10, v11

    .line 270
    sget-object v10, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    sget v11, Lcom/htc/android/mail/Measure;->m_nLast:I

    aput-object p0, v10, v11

    .line 271
    sget-object v10, Lcom/htc/android/mail/Measure;->m_nLine:[I

    sget v11, Lcom/htc/android/mail/Measure;->m_nLast:I

    aput v5, v10, v11

    .line 272
    sget-object v10, Lcom/htc/android/mail/Measure;->m_bShow:[Z

    sget v11, Lcom/htc/android/mail/Measure;->m_nLast:I

    aput-boolean v13, v10, v11

    .line 273
    sget v10, Lcom/htc/android/mail/Measure;->m_nLast:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/htc/android/mail/Measure;->m_nLast:I

    .line 304
    :goto_1
    if-eqz v5, :cond_3

    .line 305
    if-eqz p0, :cond_9

    .line 306
    sget-object v10, Lcom/htc/android/mail/Measure;->m_Time:[J

    aget-wide v10, v10, v13

    cmp-long v10, v8, v10

    if-eqz v10, :cond_8

    .line 307
    const-string v10, "Time"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Line="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/htc/android/mail/Measure;->m_Time:[J

    aget-wide v12, v12, v13

    sub-long v12, v8, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_3
    :goto_2
    return-wide v8

    .line 277
    :cond_4
    const/4 v3, -0x1

    .line 278
    .local v3, nFound:I
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    sget v10, Lcom/htc/android/mail/Measure;->m_nLast:I

    if-ge v2, v10, :cond_5

    .line 279
    sget-object v10, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aget-object v10, v10, v2

    if-eqz v10, :cond_6

    .line 281
    sget-object v10, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aget-object v10, v10, v2

    invoke-virtual {p0, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v10

    if-nez v10, :cond_6

    .line 282
    move v3, v2

    .line 288
    :cond_5
    const/4 v10, -0x1

    if-eq v3, v10, :cond_7

    .line 291
    sget-object v10, Lcom/htc/android/mail/Measure;->m_Time:[J

    aput-wide v8, v10, v3

    .line 292
    sget-object v10, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aput-object p0, v10, v3

    .line 293
    sget-object v10, Lcom/htc/android/mail/Measure;->m_nLine:[I

    aput v5, v10, v3

    .line 294
    sget-object v10, Lcom/htc/android/mail/Measure;->m_bShow:[Z

    aput-boolean v13, v10, v3

    goto :goto_1

    .line 278
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 296
    :cond_7
    sget-object v10, Lcom/htc/android/mail/Measure;->m_Time:[J

    sget v11, Lcom/htc/android/mail/Measure;->m_nLast:I

    aput-wide v8, v10, v11

    .line 297
    sget-object v10, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    sget v11, Lcom/htc/android/mail/Measure;->m_nLast:I

    aput-object p0, v10, v11

    .line 298
    sget-object v10, Lcom/htc/android/mail/Measure;->m_nLine:[I

    sget v11, Lcom/htc/android/mail/Measure;->m_nLast:I

    aput v5, v10, v11

    .line 299
    sget-object v10, Lcom/htc/android/mail/Measure;->m_bShow:[Z

    sget v11, Lcom/htc/android/mail/Measure;->m_nLast:I

    aput-boolean v13, v10, v11

    .line 300
    sget v10, Lcom/htc/android/mail/Measure;->m_nLast:I

    add-int/lit8 v10, v10, 0x1

    sput v10, Lcom/htc/android/mail/Measure;->m_nLast:I

    goto/16 :goto_1

    .line 309
    .end local v2           #i:I
    .end local v3           #nFound:I
    :cond_8
    const-string v10, "Time"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Line="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 311
    :cond_9
    sget-object v10, Lcom/htc/android/mail/Measure;->m_Time:[J

    aget-wide v10, v10, v13

    cmp-long v10, v8, v10

    if-eqz v10, :cond_a

    .line 312
    const-string v10, "Time"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Line="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/htc/android/mail/Measure;->m_Time:[J

    aget-wide v12, v12, v13

    sub-long v12, v8, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 314
    :cond_a
    const-string v10, "Time"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Line="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static Reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 120
    const/4 v0, 0x0

    .line 121
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/htc/android/mail/Measure;->m_nMaxCount:I

    if-ge v0, v1, :cond_0

    .line 122
    sget-object v1, Lcom/htc/android/mail/Measure;->m_Time:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 123
    sget-object v1, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 124
    sget-object v1, Lcom/htc/android/mail/Measure;->m_bShow:[Z

    aput-boolean v4, v1, v0

    .line 125
    sget-object v1, Lcom/htc/android/mail/Measure;->m_nLine:[I

    aput v4, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_0
    sput v4, Lcom/htc/android/mail/Measure;->m_nLast:I

    .line 129
    return-void
.end method

.method public static ShowTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .parameter "szText"
    .parameter "szFromlabel"

    .prologue
    .line 134
    const/4 v2, -0x1

    .line 136
    .local v2, nFound:I
    const/4 v3, 0x0

    .line 137
    .local v3, nLast:I
    const/4 v4, -0x1

    .line 138
    .local v4, nLastShow:I
    const/4 v5, 0x1

    .line 140
    .local v5, nTypeDetail:I
    new-instance v7, Ljava/lang/String;

    const-string v8, "ShowTime "

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 141
    .local v7, szContent2:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 142
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 147
    :cond_0
    if-nez p1, :cond_3

    .line 149
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget v8, Lcom/htc/android/mail/Measure;->m_nLast:I

    if-ge v1, v8, :cond_5

    .line 150
    sget-object v8, Lcom/htc/android/mail/Measure;->m_bShow:[Z

    aget-boolean v8, v8, v1

    if-nez v8, :cond_2

    .line 151
    sget-object v8, Lcom/htc/android/mail/Measure;->m_bShow:[Z

    const/4 v9, 0x1

    aput-boolean v9, v8, v1

    .line 153
    const/4 v8, -0x1

    if-eq v4, v8, :cond_1

    .line 154
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, " (From %s:%d to %s:%d time=%d)"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aget-object v12, v12, v4

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/htc/android/mail/Measure;->m_nLine:[I

    aget v12, v12, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aget-object v12, v12, v1

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/htc/android/mail/Measure;->m_nLine:[I

    aget v12, v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/htc/android/mail/Measure;->m_Time:[J

    aget-wide v12, v12, v1

    sget-object v14, Lcom/htc/android/mail/Measure;->m_Time:[J

    aget-wide v14, v14, v4

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, szContent1:Ljava/lang/String;
    const/4 v4, -0x1

    .line 170
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 173
    move v3, v1

    .line 149
    .end local v6           #szContent1:Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_1
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, " (From %s:%d to %s:%d time=%d)"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aget-object v12, v12, v3

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/htc/android/mail/Measure;->m_nLine:[I

    aget v12, v12, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aget-object v12, v12, v1

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/htc/android/mail/Measure;->m_nLine:[I

    aget v12, v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/htc/android/mail/Measure;->m_Time:[J

    aget-wide v12, v12, v1

    sget-object v14, Lcom/htc/android/mail/Measure;->m_Time:[J

    aget-wide v14, v14, v3

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #szContent1:Ljava/lang/String;
    goto :goto_1

    .line 175
    .end local v6           #szContent1:Ljava/lang/String;
    :cond_2
    move v4, v1

    goto :goto_2

    .line 183
    .end local v1           #i:I
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_3
    sget v8, Lcom/htc/android/mail/Measure;->m_nLast:I

    if-ge v1, v8, :cond_4

    .line 184
    sget-object v8, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aget-object v8, v8, v1

    if-eqz v8, :cond_6

    .line 185
    sget-object v8, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aget-object v8, v8, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_6

    .line 186
    move v2, v1

    .line 192
    :cond_4
    const/4 v8, -0x1

    if-eq v2, v8, :cond_7

    .line 193
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, " (From %s:%d to %s:%d time=%d)"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    aget-object v12, v12, v2

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/htc/android/mail/Measure;->m_nLine:[I

    aget v12, v12, v2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    sget v13, Lcom/htc/android/mail/Measure;->m_nLast:I

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x3

    sget-object v12, Lcom/htc/android/mail/Measure;->m_nLine:[I

    sget v13, Lcom/htc/android/mail/Measure;->m_nLast:I

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    sget-object v12, Lcom/htc/android/mail/Measure;->m_Time:[J

    sget v13, Lcom/htc/android/mail/Measure;->m_nLast:I

    add-int/lit8 v13, v13, -0x1

    aget-wide v12, v12, v13

    sget-object v14, Lcom/htc/android/mail/Measure;->m_Time:[J

    aget-wide v14, v14, v2

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 204
    .restart local v6       #szContent1:Ljava/lang/String;
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 211
    .end local v6           #szContent1:Ljava/lang/String;
    :cond_5
    const-string v8, "Time"

    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    return-void

    .line 183
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 198
    :cond_7
    sget v8, Lcom/htc/android/mail/Measure;->m_nLast:I

    if-eqz v8, :cond_8

    .line 199
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, " (From %s:%d time=%d) can\'t find %s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    sget v13, Lcom/htc/android/mail/Measure;->m_nLast:I

    add-int/lit8 v13, v13, -0x1

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/htc/android/mail/Measure;->m_nLine:[I

    sget v13, Lcom/htc/android/mail/Measure;->m_nLast:I

    add-int/lit8 v13, v13, -0x1

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/htc/android/mail/Measure;->m_Time:[J

    sget v13, Lcom/htc/android/mail/Measure;->m_nLast:I

    add-int/lit8 v13, v13, -0x1

    aget-wide v12, v12, v13

    sget-object v14, Lcom/htc/android/mail/Measure;->m_Time:[J

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object p1, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #szContent1:Ljava/lang/String;
    goto :goto_4

    .line 201
    .end local v6           #szContent1:Ljava/lang/String;
    :cond_8
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, " (From %s:%d time=%d) can\'t find %s"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    sget-object v12, Lcom/htc/android/mail/Measure;->m_labels:[Ljava/lang/String;

    sget v13, Lcom/htc/android/mail/Measure;->m_nLast:I

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/htc/android/mail/Measure;->m_nLine:[I

    sget v13, Lcom/htc/android/mail/Measure;->m_nLast:I

    aget v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    sget-object v12, Lcom/htc/android/mail/Measure;->m_Time:[J

    sget v13, Lcom/htc/android/mail/Measure;->m_nLast:I

    aget-wide v12, v12, v13

    sget-object v14, Lcom/htc/android/mail/Measure;->m_Time:[J

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    aput-object p1, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #szContent1:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public static getLineNumber(Ljava/lang/Exception;)I
    .locals 2
    .parameter "e"

    .prologue
    .line 222
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 223
    .local v0, trace:[Ljava/lang/StackTraceElement;
    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, -0x1

    .line 224
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    goto :goto_0
.end method
