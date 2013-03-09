.class Ljava/util/Grego;
.super Ljava/lang/Object;
.source "Grego.java"


# static fields
.field private static final DAYS_BEFORE:[I = null

.field private static final JULIAN_1970_CE:I = 0x253d8c

.field private static final JULIAN_1_CE:I = 0x1a4452

.field public static final MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final MILLIS_PER_DAY:I = 0x5265c00

.field public static final MILLIS_PER_HOUR:I = 0x36ee80

.field public static final MILLIS_PER_MINUTE:I = 0xea60

.field public static final MILLIS_PER_SECOND:I = 0x3e8

.field public static final MIN_MILLIS:J = -0x28ec76c40e65000L

.field private static final MONTH_LENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x18

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/Grego;->MONTH_LENGTH:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/Grego;->DAYS_BEFORE:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_1
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

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dayOfWeek(J)I
    .locals 6

    const/4 v2, 0x1

    new-array v1, v2, [J

    const-wide/16 v2, 0x5

    add-long/2addr v2, p0

    const-wide/16 v4, 0x7

    invoke-static {v2, v3, v4, v5, v1}, Ljava/util/Grego;->floorDivide(JJ[J)J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    long-to-int v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x7

    :cond_0
    return v0
.end method

.method public static dayToFields(J[I)[I
    .locals 26

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x5

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    :cond_0
    const/16 v22, 0x5

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 p2, v0

    :cond_1
    const-wide/32 v22, 0xaf93a

    add-long p0, p0, v22

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v20, v0

    const-wide/32 v22, 0x23ab1

    move-wide/from16 v0, p0

    move-wide/from16 v2, v22

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v18

    const/16 v22, 0x0

    aget-wide v22, v20, v22

    const-wide/32 v24, 0x8eac

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v14

    const/16 v22, 0x0

    aget-wide v22, v20, v22

    const-wide/16 v24, 0x5b5

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v16

    const/16 v22, 0x0

    aget-wide v22, v20, v22

    const-wide/16 v24, 0x16d

    move-wide/from16 v0, v22

    move-wide/from16 v2, v24

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v12

    const-wide/16 v22, 0x190

    mul-long v22, v22, v18

    const-wide/16 v24, 0x64

    mul-long v24, v24, v14

    add-long v22, v22, v24

    const-wide/16 v24, 0x4

    mul-long v24, v24, v16

    add-long v22, v22, v24

    add-long v22, v22, v12

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    aget-wide v22, v20, v22

    move-wide/from16 v0, v22

    long-to-int v8, v0

    const-wide/16 v22, 0x4

    cmp-long v22, v14, v22

    if-eqz v22, :cond_2

    const-wide/16 v22, 0x4

    cmp-long v22, v12, v22

    if-nez v22, :cond_5

    :cond_2
    const/16 v8, 0x16d

    :goto_0
    invoke-static/range {v21 .. v21}, Ljava/util/Grego;->isLeapYear(I)Z

    move-result v9

    const/4 v5, 0x0

    if-eqz v9, :cond_6

    const/16 v10, 0x3c

    :goto_1
    if-lt v8, v10, :cond_3

    if-eqz v9, :cond_7

    const/4 v5, 0x1

    :cond_3
    :goto_2
    add-int v22, v8, v5

    mul-int/lit8 v22, v22, 0xc

    add-int/lit8 v22, v22, 0x6

    move/from16 v0, v22

    div-int/lit16 v11, v0, 0x16f

    sget-object v23, Ljava/util/Grego;->DAYS_BEFORE:[I

    if-eqz v9, :cond_8

    add-int/lit8 v22, v11, 0xc

    :goto_3
    aget v22, v23, v22

    sub-int v22, v8, v22

    add-int/lit8 v6, v22, 0x1

    const-wide/16 v22, 0x2

    add-long v22, v22, p0

    const-wide/16 v24, 0x7

    rem-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v7, v0

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ge v7, v0, :cond_4

    add-int/lit8 v7, v7, 0x7

    :cond_4
    add-int/lit8 v8, v8, 0x1

    const/16 v22, 0x0

    aput v21, p2, v22

    const/16 v22, 0x1

    aput v11, p2, v22

    const/16 v22, 0x2

    aput v6, p2, v22

    const/16 v22, 0x3

    aput v7, p2, v22

    const/16 v22, 0x4

    aput v8, p2, v22

    return-object p2

    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    :cond_6
    const/16 v10, 0x3b

    goto :goto_1

    :cond_7
    const/4 v5, 0x2

    goto :goto_2

    :cond_8
    move/from16 v22, v11

    goto :goto_3
.end method

.method public static fieldsToDay(III)J
    .locals 9

    add-int/lit8 v2, p0, -0x1

    mul-int/lit16 v3, v2, 0x16d

    int-to-long v3, v3

    int-to-long v5, v2

    const-wide/16 v7, 0x4

    invoke-static {v5, v6, v7, v8}, Ljava/util/Grego;->floorDivide(JJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/32 v5, 0x1a444f

    add-long/2addr v3, v5

    int-to-long v5, v2

    const-wide/16 v7, 0x190

    invoke-static {v5, v6, v7, v8}, Ljava/util/Grego;->floorDivide(JJ)J

    move-result-wide v5

    add-long/2addr v3, v5

    int-to-long v5, v2

    const-wide/16 v7, 0x64

    invoke-static {v5, v6, v7, v8}, Ljava/util/Grego;->floorDivide(JJ)J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long v4, v3, v5

    sget-object v6, Ljava/util/Grego;->DAYS_BEFORE:[I

    invoke-static {p0}, Ljava/util/Grego;->isLeapYear(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    :goto_0
    add-int/2addr v3, p1

    aget v3, v6, v3

    int-to-long v6, v3

    add-long v3, v4, v6

    int-to-long v5, p2

    add-long v0, v3, v5

    const-wide/32 v3, 0x253d8c

    sub-long v3, v0, v3

    return-wide v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static floorDivide(JJ)J
    .locals 4

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    div-long v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    add-long v0, p0, v2

    div-long/2addr v0, p2

    sub-long/2addr v0, v2

    goto :goto_0
.end method

.method private static floorDivide(JJ[J)J
    .locals 7

    const-wide/16 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-ltz v2, :cond_0

    rem-long v2, p0, p2

    aput-wide v2, p4, v4

    div-long v0, p0, p2

    :goto_0
    return-wide v0

    :cond_0
    add-long v2, p0, v5

    div-long/2addr v2, p2

    sub-long v0, v2, v5

    mul-long v2, v0, p2

    sub-long v2, p0, v2

    aput-wide v2, p4, v4

    goto :goto_0
.end method

.method public static getDayOfWeekInMonth(III)I
    .locals 3

    add-int/lit8 v1, p2, 0x6

    div-int/lit8 v0, v1, 0x7

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    add-int/lit8 v1, p2, 0x7

    invoke-static {p0, p1}, Ljava/util/Grego;->monthLength(II)I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final isLeapYear(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final monthLength(II)I
    .locals 2

    sget-object v1, Ljava/util/Grego;->MONTH_LENGTH:[I

    invoke-static {p0}, Ljava/util/Grego;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    :goto_0
    add-int/2addr v0, p1

    aget v0, v1, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final previousMonthLength(II)I
    .locals 1

    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0}, Ljava/util/Grego;->monthLength(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1f

    goto :goto_0
.end method

.method public static timeToFields(J[I)[I
    .locals 6

    const/4 v4, 0x6

    if-eqz p2, :cond_0

    array-length v3, p2

    if-ge v3, v4, :cond_1

    :cond_0
    new-array p2, v4, [I

    :cond_1
    const/4 v3, 0x1

    new-array v2, v3, [J

    const-wide/32 v3, 0x5265c00

    invoke-static {p0, p1, v3, v4, v2}, Ljava/util/Grego;->floorDivide(JJ[J)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Ljava/util/Grego;->dayToFields(J[I)[I

    const/4 v3, 0x5

    const/4 v4, 0x0

    aget-wide v4, v2, v4

    long-to-int v4, v4

    aput v4, p2, v3

    return-object p2
.end method
