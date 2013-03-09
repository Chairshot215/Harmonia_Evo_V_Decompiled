.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field static DaysInMonth:[B = null

.field private static DaysInYear:[I = null

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static leastMaximums:[I = null

.field private static maximums:[I = null

.field private static minimums:[I = null

.field private static final serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private cachedFields:[I

.field private transient changeYear:I

.field private currentYearSkew:I

.field private gregorianCutover:J

.field private isCached:Z

.field private transient julianSkew:I

.field private lastMidnightMillis:J

.field private lastYearSkew:I

.field private nextMidnightMillis:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xc

    const/16 v1, 0x11

    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Ljava/util/GregorianCalendar;->leastMaximums:[I

    return-void

    :array_0
    .array-data 0x1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
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
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xd2t 0xd2t 0x6bt 0x11t
        0xbt 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x6et 0x1t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0x0t 0xbt 0x1t 0x3t
        0x0t 0xddt 0x6dt 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x80t 0xe3t 0x35t 0xfdt
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfet 0xabt 0x6bt 0x11t
        0xbt 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x63t 0x1t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x17t 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0xe7t 0x3t 0x0t 0x0t
        0x0t 0xbt 0x1t 0x3t
        0x80t 0x4ft 0x12t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 5

    const-wide/16 v3, 0x0

    const/16 v2, 0xa

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    iput-wide v3, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    iput-wide v3, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIII)V
    .locals 5

    const-wide/16 v3, 0x0

    const/16 v2, 0xa

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    iput-wide v3, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    iput-wide v3, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    invoke-virtual/range {p0 .. p5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(IIIIII)V
    .locals 5

    const-wide/16 v3, 0x0

    const/16 v2, 0xa

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    iput-wide v3, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    iput-wide v3, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    invoke-virtual/range {p0 .. p6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;-><init>(Z)V

    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    iput-wide v3, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    iput-wide v3, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Z)V
    .locals 6

    const-wide/16 v4, 0x0

    const/16 v3, 0xa

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    iput-wide v4, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    iput-wide v4, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    iput v3, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private final cachedFieldsCheckAndGet(JJJII)V
    .locals 5

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/16 v2, 0x10

    aget v0, v1, v2

    iget-boolean v1, p0, Ljava/util/GregorianCalendar;->isCached:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    cmp-long v1, p3, v1

    if-gez v1, :cond_1

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    cmp-long v1, p3, v1

    if-lez v1, :cond_1

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    if-ne v1, p8, :cond_1

    if-nez v0, :cond_0

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    cmp-long v1, p5, v1

    if-gez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    cmp-long v1, p5, v1

    if-gtz v1, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2, p7, p8}, Ljava/util/GregorianCalendar;->fullFieldsCalc(JII)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/GregorianCalendar;->isCached:Z

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x1

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x2

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x5

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x7

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x0

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x3

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x4

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x6

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v4, 0x8

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/16 v2, 0x8

    iget-object v3, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    aput v3, v1, v2

    goto :goto_0
.end method

.method private computeYearAndDay(JJ)I
    .locals 6

    const/16 v3, 0x7b2

    move-wide v1, p1

    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v4, p3, v4

    if-gez v4, :cond_0

    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    sub-long/2addr v1, v4

    :cond_0
    :goto_0
    const-wide/16 v4, 0x16d

    div-long v4, v1, v4

    long-to-int v0, v4

    if-eqz v0, :cond_1

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v4

    sub-long v1, p1, v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-gez v4, :cond_2

    add-int/lit8 v3, v3, -0x1

    invoke-direct {p0, v3}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    :cond_2
    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    const/4 v5, 0x1

    aput v3, v4, v5

    long-to-int v4, v1

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private daysFromBaseYear(I)J
    .locals 10

    int-to-long v2, p1

    const-wide/16 v4, 0x7b2

    cmp-long v4, v2, v4

    if-ltz v4, :cond_3

    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b1

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long v0, v4, v6

    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    const-wide/16 v4, 0x76d

    sub-long v4, v2, v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    const-wide/16 v6, 0x641

    sub-long v6, v2, v6

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    sub-long/2addr v0, v4

    :goto_0
    return-wide v0

    :cond_0
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    iget v4, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    :cond_1
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit8 v4, v4, -0x1

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    iget v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    :cond_2
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_0

    :cond_3
    iget v4, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_4

    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b4

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    iget v6, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v6, v6

    add-long v0, v4, v6

    goto :goto_0

    :cond_4
    const-wide/16 v4, 0x7b2

    sub-long v4, v2, v4

    const-wide/16 v6, 0x16d

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x7b4

    sub-long v6, v2, v6

    const-wide/16 v8, 0x4

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x64

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x7d0

    sub-long v6, v2, v6

    const-wide/16 v8, 0x190

    div-long/2addr v6, v8

    add-long v0, v4, v6

    goto :goto_0
.end method

.method private daysInMonth()I
    .locals 3

    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v0

    return v0
.end method

.method private daysInMonth(ZI)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    goto :goto_0
.end method

.method private daysInYear(I)I
    .locals 2

    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x16e

    :goto_0
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    sub-int/2addr v0, v1

    :cond_0
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_1

    iget v1, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    sub-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method private daysInYear(ZI)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    goto :goto_0
.end method

.method private final fullFieldsCalc(JII)V
    .locals 20

    const-wide/32 v2, 0x5265c00

    div-long v10, p1, v2

    if-gez p3, :cond_0

    const v2, 0x5265c00

    add-int p3, p3, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v10, v2

    :cond_0
    add-int p3, p3, p4

    :goto_0
    if-gez p3, :cond_1

    const v2, 0x5265c00

    add-int p3, p3, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v10, v2

    goto :goto_0

    :cond_1
    :goto_1
    const v2, 0x5265c00

    move/from16 v0, p3

    if-lt v0, v2, :cond_2

    const v2, 0x5265c00

    sub-int p3, p3, v2

    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    goto :goto_1

    :cond_2
    move/from16 v0, p4

    int-to-long v2, v0

    add-long v2, v2, p1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v2, v3}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x6

    aput v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move/from16 v0, p4

    int-to-long v7, v0

    add-long v7, v7, p1

    cmp-long v2, v2, v7

    if-gtz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    add-int/2addr v9, v2

    :cond_3
    div-int/lit8 v5, v9, 0x20

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v2

    sub-int v6, v9, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v2

    if-le v6, v2, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v2

    sub-int/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x7

    const-wide/16 v7, 0x3

    sub-long v7, v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gtz v2, :cond_a

    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-lez v2, :cond_5

    sub-int v13, v13, p4

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0x10

    aput v13, v2, v3

    if-eqz v13, :cond_9

    move-wide v15, v10

    add-int p3, p3, v13

    if-gez p3, :cond_b

    const v2, 0x5265c00

    add-int p3, p3, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v10, v2

    :cond_6
    :goto_3
    cmp-long v2, v15, v10

    if-eqz v2, :cond_9

    move/from16 v0, p4

    int-to-long v2, v0

    sub-long v2, p1, v2

    int-to-long v7, v13

    add-long/2addr v2, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v2, v3}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x6

    aput v9, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v2, v3, :cond_7

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move/from16 v0, p4

    int-to-long v7, v0

    sub-long v7, p1, v7

    int-to-long v0, v13

    move-wide/from16 v18, v0

    add-long v7, v7, v18

    cmp-long v2, v2, v7

    if-gtz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    add-int/2addr v9, v2

    :cond_7
    div-int/lit8 v5, v9, 0x20

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v2

    sub-int v6, v9, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v2

    if-le v6, v2, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v5}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v2

    sub-int/2addr v6, v2

    add-int/lit8 v5, v5, 0x1

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x7

    const-wide/16 v7, 0x3

    sub-long v7, v10, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xe

    move/from16 v0, p3

    rem-int/lit16 v4, v0, 0x3e8

    aput v4, v2, v3

    move/from16 v0, p3

    div-int/lit16 v0, v0, 0x3e8

    move/from16 p3, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xd

    rem-int/lit8 v4, p3, 0x3c

    aput v4, v2, v3

    div-int/lit8 p3, p3, 0x3c

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xc

    rem-int/lit8 v4, p3, 0x3c

    aput v4, v2, v3

    div-int/lit8 p3, p3, 0x3c

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xb

    rem-int/lit8 v4, p3, 0x18

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v7, 0xb

    aget v2, v2, v7

    const/16 v7, 0xb

    if-le v2, v7, :cond_c

    const/4 v2, 0x1

    :goto_4
    aput v2, v3, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v7, 0xb

    aget v4, v4, v7

    rem-int/lit8 v4, v4, 0xc

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gtz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    neg-int v4, v4

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x2

    aput v5, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x5

    aput v6, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0x8

    add-int/lit8 v4, v6, -0x1

    div-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x4

    add-int/lit8 v4, v6, -0x1

    int-to-long v7, v6

    sub-long v7, v10, v7

    const-wide/16 v18, 0x2

    sub-long v7, v7, v18

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    sub-long v7, v7, v18

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v7

    add-int/2addr v4, v7

    div-int/lit8 v4, v4, 0x7

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    const-wide/16 v2, 0x3

    sub-long v2, v10, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/4 v7, 0x6

    aget v4, v4, v7

    add-int/lit8 v4, v4, -0x1

    int-to-long v7, v4

    sub-long/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-long v7, v4

    sub-long/2addr v2, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, v12

    div-int/lit8 v3, v2, 0x7

    rsub-int/lit8 v2, v12, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-lt v2, v4, :cond_e

    const/4 v2, 0x1

    :goto_6
    add-int v17, v3, v2

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v7, 0x1

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x2

    :goto_7
    sub-int v2, v12, v2

    int-to-long v7, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-lt v2, v7, :cond_10

    const/16 v2, 0x35

    :goto_8
    aput v2, v3, v4

    :goto_9
    return-void

    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/4 v7, 0x1

    aget v4, v4, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/Calendar;->fields:[I

    const/4 v8, 0x7

    aget v7, v7, v8

    move/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v13

    goto/16 :goto_2

    :cond_b
    const v2, 0x5265c00

    move/from16 v0, p3

    if-lt v0, v2, :cond_6

    const v2, 0x5265c00

    sub-int p3, p3, v2

    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    goto/16 :goto_3

    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v4, v2, v3

    goto/16 :goto_5

    :cond_e
    const/4 v2, 0x0

    goto :goto_6

    :cond_f
    const/4 v2, 0x1

    goto :goto_7

    :cond_10
    const/16 v2, 0x34

    goto :goto_8

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x6

    aget v4, v2, v3

    if-eqz v14, :cond_13

    const/16 v2, 0x16f

    move v3, v2

    :goto_a
    if-eqz v14, :cond_14

    const/4 v2, 0x2

    :goto_b
    add-int/2addr v2, v12

    int-to-long v7, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v2

    sub-int v2, v3, v2

    if-lt v4, v2, :cond_16

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/4 v4, 0x3

    if-eqz v14, :cond_15

    const/4 v2, 0x2

    :goto_c
    add-int/2addr v2, v12

    int-to-long v7, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v7

    if-lt v2, v7, :cond_12

    const/16 v17, 0x1

    :cond_12
    aput v17, v3, v4

    goto :goto_9

    :cond_13
    const/16 v2, 0x16e

    move v3, v2

    goto :goto_a

    :cond_14
    const/4 v2, 0x1

    goto :goto_b

    :cond_15
    const/4 v2, 0x1

    goto :goto_c

    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/4 v3, 0x3

    aput v17, v2, v3

    goto/16 :goto_9
.end method

.method private getOffset(J)I
    .locals 22

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    const-wide/32 v18, 0x5265c00

    div-long v11, p1, v18

    const-wide/32 v18, 0x5265c00

    rem-long v18, p1, v18

    move-wide/from16 v0, v18

    long-to-int v9, v0

    if-gez v9, :cond_0

    const v4, 0x5265c00

    add-int/2addr v9, v4

    const-wide/16 v18, 0x1

    sub-long v11, v11, v18

    :cond_0
    const/16 v5, 0x7b2

    move-wide v14, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v18, v0

    cmp-long v4, p1, v18

    if-gez v4, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v0, v4

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    :cond_1
    :goto_0
    const-wide/16 v18, 0x16d

    div-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v10, v0

    if-eqz v10, :cond_2

    add-int/2addr v5, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v18

    sub-long v14, v11, v18

    goto :goto_0

    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v4, v14, v18

    if-gez v4, :cond_3

    add-int/lit8 v5, v5, -0x1

    const-wide/16 v18, 0x16d

    add-long v18, v18, v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    :goto_1
    int-to-long v0, v4

    move-wide/from16 v20, v0

    add-long v14, v18, v20

    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v5, v4, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v18, v0

    cmp-long v4, p1, v18

    if-gez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v18, v0

    sub-long v14, v14, v18

    :cond_3
    if-gtz v5, :cond_5

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v17

    :goto_2
    return v17

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    long-to-int v4, v14

    add-int/lit8 v13, v4, 0x1

    div-int/lit8 v6, v13, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v4

    sub-int v7, v13, v4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    if-le v7, v4, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v6}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    sub-int/2addr v7, v4

    add-int/lit8 v6, v6, 0x1

    :cond_6
    const-wide/16 v18, 0x3

    sub-long v18, v11, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    add-int/lit8 v8, v4, 0x1

    const/4 v4, 0x1

    invoke-virtual/range {v3 .. v9}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v17

    goto :goto_2
.end method

.method private julianError()I
    .locals 2

    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit16 v1, v1, 0x190

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private mod(II)I
    .locals 1

    rem-int v0, p1, p2

    if-gez p1, :cond_0

    if-gez v0, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private mod7(J)I
    .locals 3

    const-wide/16 v1, 0x7

    rem-long v1, p1, v1

    long-to-int v0, v1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gez v1, :cond_0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    :cond_0
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public add(II)V
    .locals 17

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_2

    const/16 v11, 0xf

    move/from16 v0, p1

    if-lt v0, v11, :cond_3

    :cond_2
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    :cond_3
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ljava/util/GregorianCalendar;->isCached:Z

    if-nez p1, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    if-gez p2, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_0

    :cond_4
    if-lez p2, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    :cond_5
    const/4 v11, 0x1

    move/from16 v0, p1

    if-eq v0, v11, :cond_6

    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_a

    :cond_6
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    const/4 v11, 0x2

    move/from16 v0, p1

    if-ne v0, v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x2

    aget v11, v11, v12

    add-int v5, v11, p2

    if-gez v5, :cond_9

    add-int/lit8 v11, v5, -0xb

    div-int/lit8 p2, v11, 0xc

    rem-int/lit8 v11, v5, 0xc

    add-int/lit8 v5, v11, 0xc

    :goto_2
    const/4 v11, 0x2

    rem-int/lit8 v12, v5, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_7
    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/Calendar;->fields:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int v12, v12, p2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Ljava/util/GregorianCalendar;->set(II)V

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/Calendar;->fields:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v11, v0, Ljava/util/Calendar;->fields:[I

    const/4 v12, 0x5

    aget v11, v11, v12

    if-le v11, v1, :cond_8

    const/4 v11, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v1}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_0

    :cond_9
    div-int/lit8 p2, v5, 0xc

    goto :goto_2

    :cond_a
    const-wide/16 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    packed-switch p1, :pswitch_data_0

    :goto_3
    const-wide/16 v11, 0x0

    cmp-long v11, v6, v11

    if-nez v11, :cond_b

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_3

    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_3

    :pswitch_2
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide/32 v15, 0xea60

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_3

    :pswitch_3
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, p2

    int-to-long v13, v0

    const-wide/32 v15, 0x36ee80

    mul-long/2addr v13, v15

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    goto :goto_3

    :pswitch_4
    const-wide/32 v6, 0x2932e00

    goto :goto_3

    :pswitch_5
    const-wide/32 v6, 0x5265c00

    goto :goto_3

    :pswitch_6
    const-wide/32 v6, 0x240c8400

    goto :goto_3

    :cond_b
    move/from16 v0, p2

    int-to-long v11, v0

    mul-long v2, v11, v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v9

    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    add-long/2addr v11, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v8

    sub-int v4, v9, v8

    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    int-to-long v13, v10

    add-long/2addr v11, v13

    add-long/2addr v11, v2

    int-to-long v13, v4

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v11

    if-ne v11, v8, :cond_c

    int-to-long v11, v4

    add-long/2addr v2, v11

    :cond_c
    move-object/from16 v0, p0

    iget-wide v11, v0, Ljava/util/Calendar;->time:J

    add-long/2addr v11, v2

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    iget-object v1, p0, Ljava/util/GregorianCalendar;->cachedFields:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    return-object v0
.end method

.method protected computeFields()V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v17

    new-instance v2, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/Calendar;->time:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v12

    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0x10

    aput v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xf

    aput v10, v2, v3

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/Calendar;->time:J

    const-wide/32 v18, 0x5265c00

    rem-long v2, v2, v18

    long-to-int v15, v2

    move v9, v15

    add-int v16, v10, v12

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/Calendar;->time:J

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v5, v2, v18

    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/Calendar;->time:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-lez v2, :cond_6

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_6

    if-lez v16, :cond_6

    const-wide v5, 0x7fffffffffffffffL

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/util/GregorianCalendar;->isCached:Z

    if-eqz v2, :cond_b

    if-gez v15, :cond_1

    const v2, 0x5265c00

    add-int/2addr v15, v2

    :cond_1
    add-int/2addr v15, v10

    add-int/2addr v15, v12

    if-gez v15, :cond_7

    const v2, 0x5265c00

    add-int/2addr v15, v2

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xe

    rem-int/lit16 v4, v15, 0x3e8

    aput v4, v2, v3

    div-int/lit16 v15, v15, 0x3e8

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xd

    rem-int/lit8 v4, v15, 0x3c

    aput v4, v2, v3

    div-int/lit8 v15, v15, 0x3c

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xc

    rem-int/lit8 v4, v15, 0x3c

    aput v4, v2, v3

    div-int/lit8 v15, v15, 0x3c

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xb

    rem-int/lit8 v4, v15, 0x18

    aput v4, v2, v3

    div-int/lit8 v15, v15, 0x18

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    const/16 v4, 0x9

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0xb

    aget v2, v2, v18

    const/16 v18, 0xb

    move/from16 v0, v18

    if-le v2, v0, :cond_8

    const/4 v2, 0x1

    :goto_3
    aput v2, v3, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0xb

    aget v4, v4, v18

    rem-int/lit8 v4, v4, 0xc

    aput v4, v2, v3

    move-wide v7, v5

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v13

    if-nez v12, :cond_9

    int-to-long v2, v13

    :goto_4
    add-long/2addr v7, v2

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-lez v2, :cond_a

    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-gez v2, :cond_a

    if-nez v12, :cond_a

    const-wide v7, 0x7fffffffffffffffL

    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-wide v3, v0, Ljava/util/Calendar;->time:J

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Ljava/util/GregorianCalendar;->cachedFieldsCheckAndGet(JJJII)V

    :goto_6
    const/4 v14, 0x0

    :goto_7
    const/16 v2, 0x11

    if-ge v14, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->isSet:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/Calendar;->time:J

    const-wide/16 v18, 0x0

    cmp-long v2, v2, v18

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-lez v2, :cond_0

    if-gez v16, :cond_0

    const-wide/high16 v5, -0x8000

    goto/16 :goto_1

    :cond_7
    const v2, 0x5265c00

    if-lt v15, v2, :cond_2

    const v2, 0x5265c00

    sub-int/2addr v15, v2

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_3

    :cond_9
    neg-int v2, v13

    int-to-long v2, v2

    goto :goto_4

    :cond_a
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, v7, v2

    if-lez v2, :cond_4

    if-eqz v12, :cond_4

    const-wide/high16 v7, -0x8000

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-wide v2, v0, Ljava/util/Calendar;->time:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v9, v10}, Ljava/util/GregorianCalendar;->fullFieldsCalc(JII)V

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Ljava/util/GregorianCalendar;->isCached:Z

    if-nez v2, :cond_e

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v5, v2

    if-eqz v2, :cond_e

    const-wide/high16 v2, -0x8000

    cmp-long v2, v5, v2

    if-eqz v2, :cond_e

    invoke-virtual/range {v17 .. v17}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, v17

    instance-of v2, v0, Ljava/util/SimpleTimeZone;

    if-eqz v2, :cond_e

    :cond_d
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x1

    aget v4, v4, v18

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x2

    aget v4, v4, v18

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x5

    aget v4, v4, v18

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x7

    aget v4, v4, v18

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x4

    aput v10, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x0

    aget v4, v4, v18

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x3

    aget v4, v4, v18

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x4

    aget v4, v4, v18

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x6

    aget v4, v4, v18

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/GregorianCalendar;->cachedFields:[I

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/Calendar;->fields:[I

    const/16 v18, 0x8

    aget v4, v4, v18

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    rsub-int/lit8 v2, v2, 0x17

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    rsub-int/lit8 v2, v2, 0x3b

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    rsub-int/lit8 v2, v2, 0x3b

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    int-to-long v2, v11

    add-long/2addr v2, v5

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljava/util/GregorianCalendar;->nextMidnightMillis:J

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v11, v2, 0x3e8

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/util/Calendar;->fields:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v11, v2

    int-to-long v2, v11

    sub-long v2, v5, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Ljava/util/GregorianCalendar;->lastMidnightMillis:J

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Ljava/util/GregorianCalendar;->isCached:Z

    :cond_e
    return-void
.end method

.method protected computeTime()V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    if-ltz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    const/16 v21, 0x17

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    :cond_0
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    if-ltz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    if-ltz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_5

    :cond_4
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    if-ltz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    const/16 v21, 0x3b

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_7

    :cond_6
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    if-ltz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    const/16 v21, 0x3e7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    :cond_8
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    const/16 v21, 0x35

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_b

    :cond_a
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_d

    :cond_c
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_f

    :cond_e
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_11

    :cond_10
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    if-eqz v20, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_12

    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    if-ltz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_14

    :cond_13
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x116babfe

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_16

    :cond_15
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const v21, 0x116bd2d2

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_18

    :cond_17
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    if-ltz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    const/16 v21, 0xb

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1a

    :cond_19
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_1a
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastTimeFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xb

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v6, v0

    :cond_1b
    :goto_0
    const-wide/32 v20, 0x36ee80

    mul-long v11, v6, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xc

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0xea60

    mul-long v20, v20, v22

    add-long v11, v11, v20

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xd

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    add-long v11, v11, v20

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0xe

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v11, v11, v20

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v19, v20, v21

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_21

    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0xa

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x9

    aget v20, v20, v21

    mul-int/lit8 v20, v20, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget v21, v21, v22

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v6, v0

    goto/16 :goto_0

    :cond_20
    const/16 v19, 0x7b2

    goto :goto_1

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    if-nez v20, :cond_22

    rsub-int/lit8 v19, v19, 0x1

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-nez v20, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2c

    :cond_23
    const/16 v18, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v20, v20, v21

    if-nez v20, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-nez v20, :cond_24

    if-eqz v18, :cond_2d

    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2d

    const/16 v16, 0x1

    :goto_3
    if-eqz v16, :cond_26

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2e

    if-eqz v18, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_2e

    const/16 v16, 0x1

    :cond_26
    :goto_4
    if-eqz v16, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v9, v20, v21

    div-int/lit8 v20, v9, 0xc

    add-int v19, v19, v20

    rem-int/lit8 v9, v9, 0xc

    if-gez v9, :cond_27

    add-int/lit8 v19, v19, -0x1

    add-int/lit8 v9, v9, 0xc

    :cond_27
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v4, v20, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v15, v20, v21

    if-eqz v15, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2a

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_29

    if-nez v18, :cond_31

    :cond_29
    const/4 v15, 0x1

    :cond_2a
    :goto_5
    if-eqz v15, :cond_36

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_32

    :cond_2b
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_2c
    const/16 v18, 0x0

    goto/16 :goto_2

    :cond_2d
    const/16 v16, 0x0

    goto/16 :goto_3

    :cond_2e
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_30

    const/16 v16, 0x1

    :goto_6
    goto/16 :goto_4

    :cond_30
    const/16 v16, 0x0

    goto :goto_6

    :cond_31
    const/4 v15, 0x0

    goto :goto_5

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x5

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    :cond_33
    :goto_7
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/Calendar;->lastDateFieldSet:I

    const-wide/32 v20, 0x5265c00

    mul-long v20, v20, v4

    add-long v11, v11, v20

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x5265c00

    mul-long v22, v22, v24

    add-long v20, v20, v22

    cmp-long v20, v11, v20

    if-ltz v20, :cond_34

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/32 v22, 0x5265c00

    mul-long v20, v20, v22

    sub-long v11, v11, v20

    :cond_34
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v20, v11, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v13, v20, v22

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v11, v11, v20

    move-object/from16 v0, p0

    iput-wide v11, v0, Ljava/util/Calendar;->time:J

    cmp-long v20, v13, v11

    if-eqz v20, :cond_35

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->computeFields()V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/Calendar;->areFieldsSet:Z

    :cond_35
    return-void

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    add-int/lit8 v3, v20, -0x1

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_38

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_38

    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x4

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v20, v20, 0x7

    add-int v21, v10, v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3

    sub-long v23, v4, v23

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7

    :cond_37
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v20

    add-int/lit8 v3, v20, -0x1

    goto :goto_8

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x8

    aget v20, v20, v21

    if-ltz v20, :cond_39

    int-to-long v0, v3

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    add-int/lit8 v21, v21, -0x1

    mul-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7

    :cond_39
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v20

    int-to-long v0, v3

    move-wide/from16 v21, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v23, v23, v4

    const-wide/16 v25, 0x3

    sub-long v23, v23, v25

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0x7

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_33

    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    add-int v20, v10, v3

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7

    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3d

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/Calendar;->lastDateFieldSet:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3d

    const/16 v17, 0x1

    :goto_9
    if-eqz v17, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v17, v20, v21

    :cond_3c
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;->daysFromBaseYear(I)J

    move-result-wide v4

    if-eqz v17, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    add-int/lit8 v3, v20, -0x1

    :goto_a
    const-wide/16 v20, 0x3

    sub-long v20, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x3

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    mul-int/lit8 v20, v20, 0x7

    add-int v21, v10, v3

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    const-wide/16 v23, 0x3

    sub-long v23, v4, v23

    sub-long v21, v21, v23

    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    add-int v20, v20, v21

    sub-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    rsub-int/lit8 v20, v10, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_33

    const-wide/16 v20, 0x7

    add-long v4, v4, v20

    goto/16 :goto_7

    :cond_3d
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v20

    add-int/lit8 v3, v20, -0x1

    goto :goto_a

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_43

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v20

    if-nez v20, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_40

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v21, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v20

    if-eqz v20, :cond_41

    const/16 v20, 0x1

    :goto_b
    move/from16 v0, v20

    add-int/lit16 v0, v0, 0x16d

    move/from16 v20, v0

    move/from16 v0, v21

    move/from16 v1, v20

    if-le v0, v1, :cond_42

    :cond_40
    new-instance v20, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v20

    :cond_41
    const/16 v20, 0x0

    goto :goto_b

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x6

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7

    :cond_43
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->isSet:[Z

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget-boolean v20, v20, v21

    if-eqz v20, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/Calendar;->fields:[I

    move-object/from16 v20, v0

    const/16 v21, 0x7

    aget v20, v20, v21

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3

    sub-long v22, v4, v22

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v20

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    goto/16 :goto_7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/util/GregorianCalendar;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p1, p0, :cond_0

    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Ljava/util/GregorianCalendar;

    iget-wide v4, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getActualMaximum(I)I
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x5

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v5, Ljava/util/GregorianCalendar;->maximums:[I

    aget v4, v5, p1

    sget-object v5, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v5, v5, p1

    if-ne v4, v5, :cond_0

    :goto_0
    return v4

    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_1

    :cond_1
    :goto_2
    :pswitch_0
    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    move v4, v3

    goto :goto_0

    :pswitch_1
    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->isCached:Z

    goto :goto_1

    :pswitch_2
    const/16 v5, 0x1f

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v5, 0x2

    const/16 v6, 0xb

    invoke-virtual {p0, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    if-ne v3, v7, :cond_2

    const/16 v5, 0x18

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    :cond_2
    iput-boolean v8, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_2

    :pswitch_3
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v5

    invoke-virtual {p0, v9, v5}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput-boolean v8, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_2

    :pswitch_4
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v4

    goto :goto_0

    :pswitch_5
    iget-object v5, p0, Ljava/util/Calendar;->fields:[I

    aget v5, v5, v7

    invoke-direct {p0, v5}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v4

    goto :goto_0

    :pswitch_6
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v6

    invoke-virtual {p0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x7

    add-int v3, v5, v6

    goto :goto_2

    :pswitch_7
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    invoke-virtual {p0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v5, v7, :cond_3

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    :goto_3
    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    const-wide/high16 v5, -0x8000

    invoke-virtual {v0, v5, v6}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_3

    :pswitch_8
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 1

    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public getGreatestMinimum(I)I
    .locals 1

    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeastMaximum(I)I
    .locals 7

    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide v5, -0xb1d069b5400L

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_0

    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    iget-wide v3, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {p0, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    :goto_0
    return v0

    :cond_0
    sget-object v3, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v0, v3, p1

    goto :goto_0
.end method

.method public getMaximum(I)I
    .locals 1

    sget-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMinimum(I)I
    .locals 1

    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .locals 4

    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v1, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v3, 0x20

    ushr-long/2addr v1, v3

    long-to-int v1, v1

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    long-to-int v2, v2

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-le p1, v2, :cond_2

    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_1

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_0

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public roll(II)V
    .locals 12

    const/4 v9, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ltz p1, :cond_1

    const/16 v8, 0xf

    if-lt p1, v8, :cond_2

    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    :cond_2
    const/4 v8, 0x0

    iput-boolean v8, p0, Ljava/util/GregorianCalendar;->isCached:Z

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_1
    const/4 v8, -0x1

    if-eq v3, v8, :cond_4

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v3}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    :cond_4
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_0

    :pswitch_0
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v3, v8, p1

    goto :goto_1

    :pswitch_1
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v10

    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v2

    const/4 v1, 0x6

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v9

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v4, v8, 0x1

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    if-ne v6, v4, :cond_6

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    sub-int v8, v6, v8

    mul-int/lit8 v0, v8, 0x7

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    if-le v8, v0, :cond_5

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    add-int/2addr v8, v0

    if-le v8, v2, :cond_5

    invoke-virtual {p0, p1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_1

    :cond_6
    if-ne v6, v10, :cond_8

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v7, v8, 0x1

    if-le v7, v10, :cond_7

    invoke-virtual {p0, p1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :pswitch_2
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v2

    const/4 v1, 0x5

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v9

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    add-int/lit8 v8, v2, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v4, v8, 0x1

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    if-ne v6, v4, :cond_a

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, p1

    sub-int v9, v6, v9

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    if-le v8, v2, :cond_9

    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_9
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_a
    if-ne v6, v10, :cond_c

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/Calendar;->fields:[I

    aget v9, v9, v1

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v7, v8, 0x1

    if-le v7, v10, :cond_b

    invoke-virtual {p0, v1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_b
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_c
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v3

    goto/16 :goto_1

    :pswitch_4
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v10

    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v3

    goto/16 :goto_1

    :pswitch_5
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v3, v8, p1

    const/4 v8, 0x4

    iput v8, p0, Ljava/util/Calendar;->lastDateFieldSet:I

    goto/16 :goto_1

    :pswitch_6
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v11

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v9

    iget-object v10, p0, Ljava/util/Calendar;->fields:[I

    aget v10, v10, v11

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v3, v8, 0x1

    goto/16 :goto_1

    :pswitch_7
    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, p1

    add-int/2addr v8, p2

    sget-object v9, Ljava/util/GregorianCalendar;->maximums:[I

    aget v9, v9, p1

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    const/4 v8, 0x2

    if-ne p1, v8, :cond_d

    iget-object v8, p0, Ljava/util/Calendar;->fields:[I

    aget v8, v8, v11

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v9

    if-le v8, v9, :cond_d

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v8

    invoke-virtual {p0, v11, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_1

    :cond_d
    const/16 v8, 0x9

    if-ne p1, v8, :cond_3

    const/16 v8, 0xa

    iput v8, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public roll(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    invoke-super {p0, p1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    return-void
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    new-instance v0, Ljava/util/GregorianCalendar;

    sget-object v2, Ljava/util/TimeZone;->GMT:Ljava/util/TimeZone;

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    :cond_0
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v2, v2, -0x7d0

    div-int/lit16 v2, v2, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v3, v3, -0x7d0

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    iput-boolean v4, p0, Ljava/util/GregorianCalendar;->isCached:Z

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    :goto_0
    iput-boolean v4, p0, Ljava/util/GregorianCalendar;->isCached:Z

    return-void

    :cond_1
    iput v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    goto :goto_0
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 1

    invoke-super {p0, p1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/GregorianCalendar;->isCached:Z

    return-void
.end method
