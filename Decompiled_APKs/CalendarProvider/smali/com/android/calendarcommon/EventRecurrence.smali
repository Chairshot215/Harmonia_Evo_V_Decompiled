.class public Lcom/android/calendarcommon/EventRecurrence;
.super Ljava/lang/Object;
.source "EventRecurrence.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendarcommon/EventRecurrence$1;,
        Lcom/android/calendarcommon/EventRecurrence$ParseWkst;,
        Lcom/android/calendarcommon/EventRecurrence$ParseBySetPos;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByMonth;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByWeekNo;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByYearDay;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByMonthDay;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByDay;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByHour;,
        Lcom/android/calendarcommon/EventRecurrence$ParseByMinute;,
        Lcom/android/calendarcommon/EventRecurrence$ParseBySecond;,
        Lcom/android/calendarcommon/EventRecurrence$ParseInterval;,
        Lcom/android/calendarcommon/EventRecurrence$ParseCount;,
        Lcom/android/calendarcommon/EventRecurrence$ParseUntil;,
        Lcom/android/calendarcommon/EventRecurrence$ParseFreq;,
        Lcom/android/calendarcommon/EventRecurrence$PartParser;,
        Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
    }
.end annotation


# static fields
.field private static final ALLOW_LOWER_CASE:Z = false

.field public static final DAILY:I = 0x4

.field public static final FR:I = 0x200000

.field public static final HOURLY:I = 0x3

.field public static final MINUTELY:I = 0x2

.field public static final MO:I = 0x20000

.field public static final MONTHLY:I = 0x6

.field private static final ONLY_ONE_UNTIL_COUNT:Z = false

.field private static final PARSED_BYDAY:I = 0x80

.field private static final PARSED_BYHOUR:I = 0x40

.field private static final PARSED_BYMINUTE:I = 0x20

.field private static final PARSED_BYMONTH:I = 0x800

.field private static final PARSED_BYMONTHDAY:I = 0x100

.field private static final PARSED_BYSECOND:I = 0x10

.field private static final PARSED_BYSETPOS:I = 0x1000

.field private static final PARSED_BYWEEKNO:I = 0x400

.field private static final PARSED_BYYEARDAY:I = 0x200

.field private static final PARSED_COUNT:I = 0x4

.field private static final PARSED_FREQ:I = 0x1

.field private static final PARSED_INTERVAL:I = 0x8

.field private static final PARSED_UNTIL:I = 0x2

.field private static final PARSED_WKST:I = 0x2000

.field public static final SA:I = 0x400000

.field public static final SECONDLY:I = 0x1

.field public static final SU:I = 0x10000

.field private static TAG:Ljava/lang/String; = null

.field public static final TH:I = 0x100000

.field public static final TU:I = 0x40000

.field private static final VALIDATE_UNTIL:Z = false

.field public static final WE:I = 0x80000

.field public static final WEEKLY:I = 0x5

.field public static final YEARLY:I = 0x7

.field private static final sParseFreqMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sParsePartMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/calendarcommon/EventRecurrence$PartParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final sParseWeekdayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public byday:[I

.field public bydayCount:I

.field public bydayNum:[I

.field public byhour:[I

.field public byhourCount:I

.field public byminute:[I

.field public byminuteCount:I

.field public bymonth:[I

.field public bymonthCount:I

.field public bymonthday:[I

.field public bymonthdayCount:I

.field public bysecond:[I

.field public bysecondCount:I

.field public bysetpos:[I

.field public bysetposCount:I

.field public byweekno:[I

.field public byweeknoCount:I

.field public byyearday:[I

.field public byyeardayCount:I

.field public count:I

.field public freq:I

.field public interval:I

.field public startDate:Landroid/text/format/Time;

.field public until:Ljava/lang/String;

.field public wkst:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 31
    const-string v0, "EventRecur"

    sput-object v0, Lcom/android/calendarcommon/EventRecurrence;->TAG:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    .line 82
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "FREQ"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseFreq;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseFreq;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "UNTIL"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseUntil;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseUntil;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "COUNT"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseCount;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseCount;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "INTERVAL"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseInterval;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseInterval;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYSECOND"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseBySecond;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseBySecond;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMINUTE"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByMinute;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByMinute;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYHOUR"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByHour;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByHour;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYDAY"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByDay;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMONTHDAY"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByMonthDay;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByMonthDay;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYYEARDAY"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByYearDay;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByYearDay;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYWEEKNO"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByWeekNo;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByWeekNo;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYMONTH"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseByMonth;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseByMonth;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "BYSETPOS"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseBySetPos;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseBySetPos;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    const-string v1, "WKST"

    new-instance v2, Lcom/android/calendarcommon/EventRecurrence$ParseWkst;

    invoke-direct {v2, v3}, Lcom/android/calendarcommon/EventRecurrence$ParseWkst;-><init>(Lcom/android/calendarcommon/EventRecurrence$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    .line 117
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "SECONDLY"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "MINUTELY"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "HOURLY"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "DAILY"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "WEEKLY"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "MONTHLY"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    const-string v1, "YEARLY"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    .line 129
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "SU"

    const/high16 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "MO"

    const/high16 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "TU"

    const/high16 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "WE"

    const/high16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "TH"

    const/high16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "FR"

    const/high16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    const-string v1, "SA"

    const/high16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    return-void
.end method

.method static synthetic access$1400()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseFreqMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/calendarcommon/EventRecurrence;->sParseWeekdayMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private appendByDay(Ljava/lang/StringBuilder;I)V
    .locals 3
    .parameter "s"
    .parameter "i"

    .prologue
    .line 311
    iget-object v2, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    aget v0, v2, p2

    .line 312
    .local v0, n:I
    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    aget v2, v2, p2

    invoke-static {v2}, Lcom/android/calendarcommon/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, str:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    return-void
.end method

.method private static appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V
    .locals 2
    .parameter "s"
    .parameter "label"
    .parameter "count"
    .parameter "values"

    .prologue
    .line 298
    if-lez p2, :cond_1

    .line 299
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 p2, p2, -0x1

    .line 301
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 302
    aget v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    aget v1, p3, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 307
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private static arraysEqual([II[II)Z
    .locals 4
    .parameter "array1"
    .parameter "count1"
    .parameter "array2"
    .parameter "count2"

    .prologue
    const/4 v1, 0x0

    .line 456
    if-eq p1, p3, :cond_1

    .line 465
    :cond_0
    :goto_0
    return v1

    .line 460
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 461
    aget v2, p0, v0

    aget v3, p2, v0

    if-ne v2, v3, :cond_0

    .line 460
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 465
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static calendarDay2Day(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 170
    packed-switch p0, :pswitch_data_0

    .line 187
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :pswitch_0
    const/high16 v0, 0x1

    .line 185
    :goto_0
    return v0

    .line 175
    :pswitch_1
    const/high16 v0, 0x2

    goto :goto_0

    .line 177
    :pswitch_2
    const/high16 v0, 0x4

    goto :goto_0

    .line 179
    :pswitch_3
    const/high16 v0, 0x8

    goto :goto_0

    .line 181
    :pswitch_4
    const/high16 v0, 0x10

    goto :goto_0

    .line 183
    :pswitch_5
    const/high16 v0, 0x20

    goto :goto_0

    .line 185
    :pswitch_6
    const/high16 v0, 0x40

    goto :goto_0

    .line 170
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static day2CalendarDay(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 243
    sparse-switch p0, :sswitch_data_0

    .line 260
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :sswitch_0
    const/4 v0, 0x1

    .line 258
    :goto_0
    return v0

    .line 248
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 250
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 252
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 254
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 256
    :sswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 258
    :sswitch_6
    const/4 v0, 0x7

    goto :goto_0

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method private static day2String(I)Ljava/lang/String;
    .locals 3
    .parameter "day"

    .prologue
    .line 275
    sparse-switch p0, :sswitch_data_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day argument: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :sswitch_0
    const-string v0, "SU"

    .line 289
    :goto_0
    return-object v0

    .line 279
    :sswitch_1
    const-string v0, "MO"

    goto :goto_0

    .line 281
    :sswitch_2
    const-string v0, "TU"

    goto :goto_0

    .line 283
    :sswitch_3
    const-string v0, "WE"

    goto :goto_0

    .line 285
    :sswitch_4
    const-string v0, "TH"

    goto :goto_0

    .line 287
    :sswitch_5
    const-string v0, "FR"

    goto :goto_0

    .line 289
    :sswitch_6
    const-string v0, "SA"

    goto :goto_0

    .line 275
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method public static day2TimeDay(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 215
    sparse-switch p0, :sswitch_data_0

    .line 232
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :sswitch_0
    const/4 v0, 0x0

    .line 230
    :goto_0
    return v0

    .line 220
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 222
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 224
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 226
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 228
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 230
    :sswitch_6
    const/4 v0, 0x6

    goto :goto_0

    .line 215
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x80000 -> :sswitch_3
        0x100000 -> :sswitch_4
        0x200000 -> :sswitch_5
        0x400000 -> :sswitch_6
    .end sparse-switch
.end method

.method private resetFields()V
    .locals 1

    .prologue
    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 515
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    iput v0, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 518
    return-void
.end method

.method public static timeDay2Day(I)I
    .locals 3
    .parameter "day"

    .prologue
    .line 193
    packed-switch p0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad day of week: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :pswitch_0
    const/high16 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 198
    :pswitch_1
    const/high16 v0, 0x2

    goto :goto_0

    .line 200
    :pswitch_2
    const/high16 v0, 0x4

    goto :goto_0

    .line 202
    :pswitch_3
    const/high16 v0, 0x8

    goto :goto_0

    .line 204
    :pswitch_4
    const/high16 v0, 0x10

    goto :goto_0

    .line 206
    :pswitch_5
    const/high16 v0, 0x20

    goto :goto_0

    .line 208
    :pswitch_6
    const/high16 v0, 0x40

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 470
    if-ne p0, p1, :cond_1

    .line 478
    :cond_0
    :goto_0
    return v1

    .line 473
    :cond_1
    instance-of v3, p1, Lcom/android/calendarcommon/EventRecurrence;

    if-nez v3, :cond_2

    move v1, v2

    .line 474
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 477
    check-cast v0, Lcom/android/calendarcommon/EventRecurrence;

    .line 478
    .local v0, er:Lcom/android/calendarcommon/EventRecurrence;
    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    if-nez v3, :cond_3

    :goto_1
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    iget v4, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_2
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    iget v4, v0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    iget v4, v0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    iget v4, v0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    iget-object v5, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    iget v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/calendarcommon/EventRecurrence;->arraysEqual([II[II)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    iget-object v4, v0, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    invoke-static {v3, v4}, Landroid/text/format/Time;->compare(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 14
    .parameter "recur"

    .prologue
    .line 591
    invoke-direct {p0}, Lcom/android/calendarcommon/EventRecurrence;->resetFields()V

    .line 593
    const/4 v6, 0x0

    .line 598
    .local v6, parseFlags:I
    const-string v11, ";"

    invoke-virtual {p1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 600
    .local v9, parts:[Ljava/lang/String;
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_5

    aget-object v8, v0, v3

    .line 601
    .local v8, part:Ljava/lang/String;
    const/16 v11, 0x3d

    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 602
    .local v1, equalIndex:I
    if-gtz v1, :cond_0

    .line 604
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing LHS in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 607
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v8, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, lhs:Ljava/lang/String;
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v8, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 609
    .local v10, rhs:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 610
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Missing RHS in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 617
    :cond_1
    sget-object v11, Lcom/android/calendarcommon/EventRecurrence;->sParsePartMap:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/calendarcommon/EventRecurrence$PartParser;

    .line 618
    .local v7, parser:Lcom/android/calendarcommon/EventRecurrence$PartParser;
    if-nez v7, :cond_3

    .line 619
    const-string v11, "X-"

    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 600
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 623
    :cond_2
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Couldn\'t find parser for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 625
    :cond_3
    invoke-virtual {v7, v10, p0}, Lcom/android/calendarcommon/EventRecurrence$PartParser;->parsePart(Ljava/lang/String;Lcom/android/calendarcommon/EventRecurrence;)I

    move-result v2

    .line 626
    .local v2, flag:I
    and-int v11, v6, v2

    if-eqz v11, :cond_4

    .line 627
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Part "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " was specified twice"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 629
    :cond_4
    or-int/2addr v6, v2

    goto :goto_1

    .line 634
    .end local v1           #equalIndex:I
    .end local v2           #flag:I
    .end local v5           #lhs:Ljava/lang/String;
    .end local v7           #parser:Lcom/android/calendarcommon/EventRecurrence$PartParser;
    .end local v8           #part:Ljava/lang/String;
    .end local v10           #rhs:Ljava/lang/String;
    :cond_5
    and-int/lit16 v11, v6, 0x2000

    if-nez v11, :cond_6

    .line 635
    const/high16 v11, 0x2

    iput v11, p0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    .line 639
    :cond_6
    and-int/lit8 v11, v6, 0x1

    if-nez v11, :cond_7

    .line 640
    new-instance v11, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    const-string v12, "Must specify a FREQ value"

    invoke-direct {v11, v12}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 644
    :cond_7
    and-int/lit8 v11, v6, 0x6

    const/4 v12, 0x6

    if-ne v11, v12, :cond_8

    .line 648
    sget-object v11, Lcom/android/calendarcommon/EventRecurrence;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Warning: rrule has both UNTIL and COUNT: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_8
    return-void
.end method

.method public repeatsMonthlyOnDayCount()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 430
    iget v2, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 434
    :cond_1
    iget v2, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-nez v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    aget v2, v2, v0

    if-lez v2, :cond_0

    move v0, v1

    .line 442
    goto :goto_0
.end method

.method public repeatsOnEveryWeekDay()Z
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x0

    .line 397
    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-eq v4, v5, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v3

    .line 401
    :cond_1
    iget v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 402
    .local v0, count:I
    if-ne v0, v5, :cond_0

    .line 406
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 407
    iget-object v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    aget v1, v4, v2

    .line 408
    .local v1, day:I
    const/high16 v4, 0x1

    if-eq v1, v4, :cond_0

    const/high16 v4, 0x40

    if-eq v1, v4, :cond_0

    .line 406
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    .end local v1           #day:I
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public setStartDate(Landroid/text/format/Time;)V
    .locals 0
    .parameter "date"

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/calendarcommon/EventRecurrence;->startDate:Landroid/text/format/Time;

    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    .local v2, s:Ljava/lang/StringBuilder;
    const-string v3, "FREQ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v3, :pswitch_data_0

    .line 351
    :goto_0
    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 352
    const-string v3, ";UNTIL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v3, p0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    :cond_0
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    if-eqz v3, :cond_1

    .line 357
    const-string v3, ";COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    :cond_1
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-eqz v3, :cond_2

    .line 362
    const-string v3, ";INTERVAL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    :cond_2
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    if-eqz v3, :cond_3

    .line 367
    const-string v3, ";WKST="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget v3, p0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    invoke-static {v3}, Lcom/android/calendarcommon/EventRecurrence;->day2String(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_3
    const-string v3, ";BYSECOND="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecondCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->bysecond:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 372
    const-string v3, ";BYMINUTE="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byminuteCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->byminute:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 373
    const-string v3, ";BYSECOND="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byhourCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->byhour:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 376
    iget v0, p0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 377
    .local v0, count:I
    if-lez v0, :cond_5

    .line 378
    const-string v3, ";BYDAY="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    add-int/lit8 v0, v0, -0x1

    .line 380
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 381
    invoke-direct {p0, v2, v1}, Lcom/android/calendarcommon/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 382
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 329
    .end local v0           #count:I
    .end local v1           #i:I
    :pswitch_0
    const-string v3, "SECONDLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :pswitch_1
    const-string v3, "MINUTELY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 335
    :pswitch_2
    const-string v3, "HOURLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 338
    :pswitch_3
    const-string v3, "DAILY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 341
    :pswitch_4
    const-string v3, "WEEKLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 344
    :pswitch_5
    const-string v3, "MONTHLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 347
    :pswitch_6
    const-string v3, "YEARLY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 384
    .restart local v0       #count:I
    .restart local v1       #i:I
    :cond_4
    invoke-direct {p0, v2, v0}, Lcom/android/calendarcommon/EventRecurrence;->appendByDay(Ljava/lang/StringBuilder;I)V

    .line 387
    .end local v1           #i:I
    :cond_5
    const-string v3, ";BYMONTHDAY="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 388
    const-string v3, ";BYYEARDAY="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byyeardayCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->byyearday:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 389
    const-string v3, ";BYWEEKNO="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->byweeknoCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->byweekno:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 390
    const-string v3, ";BYMONTH="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 391
    const-string v3, ";BYSETPOS="

    iget v4, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetposCount:I

    iget-object v5, p0, Lcom/android/calendarcommon/EventRecurrence;->bysetpos:[I

    invoke-static {v2, v3, v4, v5}, Lcom/android/calendarcommon/EventRecurrence;->appendNumbers(Ljava/lang/StringBuilder;Ljava/lang/String;I[I)V

    .line 393
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
