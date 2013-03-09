.class public Lcom/htc/android/mail/eassvc/util/TimeZoneParser;
.super Ljava/lang/Object;
.source "TimeZoneParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;
    }
.end annotation


# instance fields
.field public Bias:J

.field public DaylightBias:J

.field public DaylightDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

.field public DaylightName:Ljava/lang/String;

.field public StandardBias:J

.field public StandardDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

.field public StandardName:Ljava/lang/String;

.field private offset:I

.field private timezone:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardName:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private getLong()J
    .locals 9

    .prologue
    const-wide/16 v3, 0x0

    .line 111
    iget v5, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v5, v5, 0x4

    iget-object v6, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    array-length v6, v6

    if-le v5, v6, :cond_0

    move-wide v1, v3

    .line 119
    :goto_0
    return-wide v1

    .line 113
    :cond_0
    const-wide/16 v1, 0x0

    .line 114
    .local v1, result:J
    const/4 v0, 0x3

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_1

    .line 115
    const/16 v5, 0x8

    invoke-static {v1, v2, v5}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v5

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v8, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v8, v0

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    int-to-long v7, v7

    add-long v1, v5, v7

    .line 114
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 116
    :cond_1
    const-wide/32 v5, 0x4c4b400

    and-long/2addr v5, v1

    cmp-long v3, v5, v3

    if-lez v3, :cond_2

    .line 117
    const-wide v3, 0xffffffffL

    xor-long/2addr v3, v1

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    const-wide/16 v5, -0x1

    mul-long v1, v3, v5

    .line 118
    :cond_2
    iget v3, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    goto :goto_0
.end method

.method private getSystemTime()Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;
    .locals 8

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getWord()I

    move-result v7

    .line 151
    .local v7, year:I
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getWord()I

    move-result v5

    .line 152
    .local v5, month:I
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getWord()I

    move-result v1

    .line 153
    .local v1, dayOfWeek:I
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getWord()I

    move-result v0

    .line 154
    .local v0, day:I
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getWord()I

    move-result v3

    .line 155
    .local v3, hourOfDay:I
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getWord()I

    move-result v4

    .line 156
    .local v4, minute:I
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getWord()I

    move-result v2

    .line 157
    .local v2, dump:I
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getWord()I

    move-result v2

    .line 158
    new-instance v6, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    invoke-direct {v6, v5, v1, v0, v3}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;-><init>(IIII)V

    .line 159
    .local v6, result:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;
    return-object v6
.end method

.method private getWChar(I)Ljava/lang/String;
    .locals 7
    .parameter "length"

    .prologue
    .line 127
    mul-int/lit8 p1, p1, 0x2

    .line 129
    const/4 v3, 0x0

    .line 131
    .local v3, newLength:I
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v5, p1, -0x3

    if-ge v3, v5, :cond_0

    .line 132
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v6, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v6, v3

    aget-byte v5, v5, v6

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v6, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v6, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x2

    aget-byte v5, v5, v6

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v6, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v6

    if-nez v5, :cond_1

    .line 136
    :cond_0
    new-array v2, v3, [B

    .line 137
    .local v2, newByte:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 138
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v6, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v6, v1

    aget-byte v5, v5, v6

    aput-byte v5, v2, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 131
    .end local v1           #i:I
    .end local v2           #newByte:[B
    :cond_1
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 141
    .restart local v1       #i:I
    .restart local v2       #newByte:[B
    :cond_2
    :try_start_0
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-16LE"

    invoke-direct {v4, v2, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .local v4, result:Ljava/lang/String;
    iget v5, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v5, p1

    iput v5, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    .line 146
    .end local v4           #result:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v4, ""

    goto :goto_2
.end method

.method private getWord()I
    .locals 3

    .prologue
    .line 122
    iget v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    .line 123
    .local v0, temp:I
    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    .line 124
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v2

    mul-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    return v1
.end method

.method private writeLong(J)V
    .locals 5
    .parameter "l"

    .prologue
    .line 162
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v2, v0

    const-wide/16 v3, 0xff

    and-long/2addr v3, p1

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 164
    const/16 v1, 0x8

    invoke-static {p1, p2, v1}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide p1

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_0
    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    .line 167
    return-void
.end method

.method private writeSystemTime(IIII)V
    .locals 5
    .parameter "month"
    .parameter "dayOfWeek"
    .parameter "day"
    .parameter "hour"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 185
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    aput-byte v3, v0, v1

    .line 186
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    aput-byte v3, v0, v1

    .line 188
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 189
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    invoke-static {p1, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 191
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    invoke-static {p2, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 194
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    and-int/lit16 v2, p3, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 195
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    invoke-static {p1, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 197
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    and-int/lit16 v2, p4, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 198
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    invoke-static {p1, v4}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 200
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    aput-byte v3, v0, v1

    .line 201
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    aput-byte v3, v0, v1

    .line 203
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    aput-byte v3, v0, v1

    .line 204
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    aput-byte v3, v0, v1

    .line 206
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    aput-byte v3, v0, v1

    .line 207
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    aput-byte v3, v0, v1

    .line 208
    return-void
.end method

.method private writeWChar(Ljava/lang/String;I)V
    .locals 5
    .parameter "str"
    .parameter "length"

    .prologue
    .line 169
    mul-int/lit8 p2, p2, 0x2

    .line 171
    :try_start_0
    const-string v2, "UTF-16LE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 172
    .local v1, strbt:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 173
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v3, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v3, v0

    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 172
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    iget v3, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v3, v0

    aget-byte v4, v1, v0

    aput-byte v4, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 178
    .end local v0           #i:I
    .end local v1           #strbt:[B
    :catch_0
    move-exception v2

    .line 180
    iget v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    :goto_2
    add-int/2addr v2, p2

    iput v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    .line 182
    return-void

    .line 180
    :catchall_0
    move-exception v2

    iget v3, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    throw v2

    .restart local v0       #i:I
    .restart local v1       #strbt:[B
    :cond_1
    iget v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 63
    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->Bias:J

    .line 64
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardName:Ljava/lang/String;

    .line 65
    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardBias:J

    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightName:Ljava/lang/String;

    .line 67
    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightBias:J

    .line 68
    new-instance v0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;-><init>(III)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 69
    new-instance v0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    invoke-direct {v0, v1, v1, v1}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;-><init>(III)V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 70
    return-void
.end method

.method public encode()[B
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 78
    const/16 v0, 0xac

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    .line 80
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->Bias:J

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->writeLong(J)V

    .line 81
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardName:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->writeWChar(Ljava/lang/String;I)V

    .line 82
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    iget v0, v0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->month:I

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    iget v1, v1, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->dayOfWeek:I

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    iget v2, v2, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->day:I

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    iget v3, v3, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->hour:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->writeSystemTime(IIII)V

    .line 86
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardBias:J

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->writeLong(J)V

    .line 87
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightName:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->writeWChar(Ljava/lang/String;I)V

    .line 88
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    iget v0, v0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->month:I

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    iget v1, v1, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->dayOfWeek:I

    iget-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    iget v2, v2, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->day:I

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    iget v3, v3, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;->hour:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->writeSystemTime(IIII)V

    .line 92
    iget-wide v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightBias:J

    invoke-direct {p0, v0, v1}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->writeLong(J)V

    .line 93
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    return-object v0
.end method

.method public parse([B)V
    .locals 5
    .parameter "timezone"

    .prologue
    const/16 v4, 0x20

    .line 100
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->timezone:[B

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->offset:I

    .line 102
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getLong()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->Bias:J

    .line 103
    invoke-direct {p0, v4}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getWChar(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardName:Ljava/lang/String;

    .line 104
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getSystemTime()Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 105
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardBias:J

    .line 106
    invoke-direct {p0, v4}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getWChar(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightName:Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getSystemTime()Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 108
    invoke-direct {p0}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightBias:J

    .line 109
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 6
    .parameter "tzone"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    div-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->Bias:J

    .line 41
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v2}, Ljava/util/TimeZone;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardName:Ljava/lang/String;

    .line 45
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardName:Ljava/lang/String;

    .line 46
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardBias:J

    .line 47
    const-string v2, ""

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v2

    div-int/lit8 v2, v2, 0x3c

    div-int/lit16 v2, v2, 0x3e8

    mul-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightBias:J

    .line 50
    invoke-virtual {p1}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 52
    .local v0, c:Ljava/util/Calendar;
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {p1, v2}, Lcom/htc/android/mail/eassvc/util/EASTimeZone;->calculate(Ljava/util/TimeZone;I)[Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    move-result-object v1

    .line 53
    .local v1, dlTime:[Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;
    aget-object v2, v1, v4

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 54
    aget-object v2, v1, v5

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 59
    .end local v0           #c:Ljava/util/Calendar;
    .end local v1           #dlTime:[Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v2, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    invoke-direct {v2, v4, v4, v4}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;-><init>(III)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->StandardDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    .line 57
    new-instance v2, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    invoke-direct {v2, v4, v4, v4}, Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;-><init>(III)V

    iput-object v2, p0, Lcom/htc/android/mail/eassvc/util/TimeZoneParser;->DaylightDate:Lcom/htc/android/mail/eassvc/util/TimeZoneParser$SystemTime;

    goto :goto_0
.end method
