.class public final Llibcore/util/ZoneInfo;
.super Ljava/util/TimeZone;
.source "ZoneInfo.java"


# static fields
.field private static final LEAP:[I = null

.field private static final MILLISECONDS_PER_400_YEARS:J = 0xb7af85d9c00L

.field private static final MILLISECONDS_PER_DAY:J = 0x5265c00L

.field private static final NORMAL:[I = null

.field private static final UNIX_OFFSET:J = 0x388a6f046000L


# instance fields
.field private final mEarliestRawOffset:I

.field private final mIsDsts:[B

.field private final mOffsets:[I

.field private mRawOffset:I

.field private final mTransitions:[I

.field private final mTypes:[B

.field private final mUseDst:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xc

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Llibcore/util/ZoneInfo;->NORMAL:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Llibcore/util/ZoneInfo;->LEAP:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb5t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x5bt 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x98t 0x0t 0x0t 0x0t
        0xb6t 0x0t 0x0t 0x0t
        0xd5t 0x0t 0x0t 0x0t
        0xf4t 0x0t 0x0t 0x0t
        0x12t 0x1t 0x0t 0x0t
        0x31t 0x1t 0x0t 0x0t
        0x4ft 0x1t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;[I[B[I[B)V
    .locals 14

    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    move-object/from16 v0, p2

    iput-object v0, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    move-object/from16 v0, p3

    iput-object v0, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    move-object/from16 v0, p5

    iput-object v0, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-virtual {p0, p1}, Llibcore/util/ZoneInfo;->setID(Ljava/lang/String;)V

    iget-object v10, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v10, v10

    add-int/lit8 v6, v10, -0x1

    :goto_0
    if-ltz v6, :cond_0

    iget-object v10, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v11, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v11, v11, v6

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    if-nez v10, :cond_3

    :cond_0
    if-gez v6, :cond_1

    const/4 v6, 0x0

    :cond_1
    iget-object v10, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    array-length v10, v10

    if-lt v6, v10, :cond_4

    const/4 v10, 0x0

    aget v10, p4, v10

    iput v10, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    :goto_1
    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_2
    iget-object v10, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v10, v10

    if-ge v5, v10, :cond_2

    iget-object v10, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v11, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v11, v11, v5

    and-int/lit16 v11, v11, 0xff

    aget-byte v10, v10, v11

    if-nez v10, :cond_5

    move v4, v5

    :cond_2
    const/4 v10, -0x1

    if-eq v4, v10, :cond_6

    iget-object v10, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v10, v10, v4

    and-int/lit16 v10, v10, 0xff

    aget v3, p4, v10

    :goto_3
    move-object/from16 v0, p4

    iput-object v0, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    array-length v10, v10

    if-ge v5, v10, :cond_7

    iget-object v10, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    aget v11, v10, v5

    iget v12, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    sub-int/2addr v11, v12

    aput v11, v10, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_4
    iget-object v10, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v10, v10, v6

    and-int/lit16 v10, v10, 0xff

    aget v10, p4, v10

    iput v10, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    goto :goto_3

    :cond_7
    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v1, v10, v12

    iget-object v10, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v10, v10

    if-lez v10, :cond_8

    iget-object v10, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    iget-object v11, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    int-to-long v10, v10

    const-wide/16 v12, -0x1

    and-long v7, v10, v12

    cmp-long v10, v1, v7

    if-gez v10, :cond_8

    const/4 v9, 0x1

    :cond_8
    iput-boolean v9, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    iget v10, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    mul-int/lit16 v10, v10, 0x3e8

    iput v10, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    mul-int/lit16 v10, v3, 0x3e8

    iput v10, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    return-void
.end method

.method private static formatTime(ILjava/util/TimeZone;)Ljava/lang/String;
    .locals 7

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE MMM dd HH:mm:ss yyyy zzz"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    int-to-long v3, p0

    const-wide/16 v5, 0x3e8

    mul-long v0, v3, v5

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Llibcore/util/ZoneInfo;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Llibcore/util/ZoneInfo;

    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Llibcore/util/ZoneInfo;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 8

    div-int/lit16 v4, p2, 0x190

    int-to-long v4, v4

    const-wide v6, 0xb7af85d9c00L

    mul-long v0, v4, v6

    rem-int/lit16 p2, p2, 0x190

    int-to-long v4, p2

    const-wide v6, 0x757b12c00L

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p2, 0x3

    div-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    if-lez p2, :cond_0

    add-int/lit8 v4, p2, -0x1

    div-int/lit8 v4, v4, 0x64

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    sub-long/2addr v0, v4

    :cond_0
    if-eqz p2, :cond_1

    rem-int/lit8 v4, p2, 0x4

    if-nez v4, :cond_2

    rem-int/lit8 v4, p2, 0x64

    if-eqz v4, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_3

    sget-object v3, Llibcore/util/ZoneInfo;->LEAP:[I

    :goto_1
    aget v4, v3, p3

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    add-int/lit8 v4, p4, -0x1

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    int-to-long v4, p6

    add-long/2addr v0, v4

    iget v4, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    int-to-long v4, v4

    sub-long/2addr v0, v4

    const-wide v4, 0x388a6f046000L

    sub-long/2addr v0, v4

    invoke-virtual {p0, v0, v1}, Llibcore/util/ZoneInfo;->getOffset(J)I

    move-result v4

    return v4

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    sget-object v3, Llibcore/util/ZoneInfo;->NORMAL:[I

    goto :goto_1
.end method

.method public getOffset(J)I
    .locals 5

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v1, v2

    iget-object v2, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    xor-int/lit8 v2, v0, -0x1

    add-int/lit8 v0, v2, -0x1

    if-gez v0, :cond_0

    iget v2, p0, Llibcore/util/ZoneInfo;->mEarliestRawOffset:I

    :goto_0
    return v2

    :cond_0
    iget v2, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    iget-object v4, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    goto :goto_0
.end method

.method public getRawOffset()I
    .locals 1

    iget v0, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Llibcore/util/ZoneInfo;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    move-object v0, p1

    check-cast v0, Llibcore/util/ZoneInfo;

    iget-boolean v3, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    iget-boolean v4, v0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-nez v3, :cond_3

    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    iget v4, v0, Llibcore/util/ZoneInfo;->mRawOffset:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mOffsets:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mTypes:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    iget-object v4, v0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    move v2, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/lit8 v1, v2, 0x1f

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([I)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int v1, v2, v3

    mul-int/lit8 v3, v1, 0x1f

    iget-boolean v2, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int v1, v3, v2

    return v1

    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    long-to-int v1, v6

    iget-object v6, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    invoke-static {v6, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    xor-int/lit8 v6, v0, -0x1

    add-int/lit8 v0, v6, -0x1

    if-gez v0, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-object v6, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    iget-object v7, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    if-ne v6, v4, :cond_1

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_1
.end method

.method public setRawOffset(I)V
    .locals 0

    iput p1, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mRawOffset="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mUseDst="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0, v5}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v8, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    array-length v8, v8

    if-ge v2, v8, :cond_0

    iget-object v8, p0, Llibcore/util/ZoneInfo;->mTypes:[B

    aget-byte v8, v8, v2

    and-int/lit16 v6, v8, 0xff

    iget-object v8, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    aget v8, v8, v2

    const-string v9, "UTC"

    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    invoke-static {v8, v9}, Llibcore/util/ZoneInfo;->formatTime(ILjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    aget v8, v8, v2

    invoke-static {v8, p0}, Llibcore/util/ZoneInfo;->formatTime(ILjava/util/TimeZone;)Ljava/lang/String;

    move-result-object v3

    iget-object v8, p0, Llibcore/util/ZoneInfo;->mOffsets:[I

    aget v4, v8, v6

    iget v8, p0, Llibcore/util/ZoneInfo;->mRawOffset:I

    div-int/lit16 v8, v8, 0x3e8

    add-int v1, v8, v4

    const-string v8, "%4d : time=%11d %s = %s isDst=%d offset=%5d gmtOffset=%d\n"

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Llibcore/util/ZoneInfo;->mTransitions:[I

    aget v11, v11, v2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    aput-object v7, v9, v10

    const/4 v10, 0x3

    aput-object v3, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Llibcore/util/ZoneInfo;->mIsDsts:[B

    aget-byte v11, v11, v6

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public useDaylightTime()Z
    .locals 1

    iget-boolean v0, p0, Llibcore/util/ZoneInfo;->mUseDst:Z

    return v0
.end method
