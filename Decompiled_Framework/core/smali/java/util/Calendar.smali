.class public abstract Ljava/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALL_STYLES:I = 0x0

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field public static final DATE:I = 0x5

.field public static final DAY_OF_MONTH:I = 0x5

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field public static final DAY_OF_YEAR:I = 0x6

.field public static final DECEMBER:I = 0xb

.field public static final DST_OFFSET:I = 0x10

.field public static final ERA:I = 0x0

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x11

.field private static final FIELD_NAMES:[Ljava/lang/String; = null

.field public static final FRIDAY:I = 0x6

.field public static final HOUR:I = 0xa

.field public static final HOUR_OF_DAY:I = 0xb

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LONG:I = 0x2

.field public static final MARCH:I = 0x2

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field public static final MINUTE:I = 0xc

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field public static final PM:I = 0x1

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field public static final SEPTEMBER:I = 0x8

.field public static final SHORT:I = 0x1

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEK_OF_MONTH:I = 0x4

.field public static final WEEK_OF_YEAR:I = 0x3

.field public static final YEAR:I = 0x1

.field public static final ZONE_OFFSET:I = 0xf

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = -0x1915b2e13723a472L


# instance fields
.field protected areFieldsSet:Z

.field protected fields:[I

.field private firstDayOfWeek:I

.field protected isSet:[Z

.field protected isTimeSet:Z

.field transient lastDateFieldSet:I

.field transient lastTimeFieldSet:I

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field protected time:J

.field private zone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ERA"

    aput-object v1, v0, v4

    const-string v1, "YEAR"

    aput-object v1, v0, v5

    const-string v1, "MONTH"

    aput-object v1, v0, v6

    const-string v1, "WEEK_OF_YEAR"

    aput-object v1, v0, v7

    const-string v1, "WEEK_OF_MONTH"

    aput-object v1, v0, v8

    const/4 v1, 0x5

    const-string v2, "DAY_OF_MONTH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DAY_OF_YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DAY_OF_WEEK"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DAY_OF_WEEK_IN_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AM_PM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HOUR_OF_DAY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MILLISECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ZONE_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DST_OFFSET"

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "areFieldsSet"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "fields"

    const-class v3, [I

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v5

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "firstDayOfWeek"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "isSet"

    const-class v3, [Z

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v7

    new-instance v1, Ljava/io/ObjectStreamField;

    const-string v2, "isTimeSet"

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "lenient"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "minimalDaysInFirstWeek"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "nextStamp"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "time"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "zone"

    const-class v4, Ljava/util/TimeZone;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Calendar;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;)V
    .locals 2

    const/16 v1, 0x11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Ljava/util/Calendar;->fields:[I

    new-array v0, v1, [Z

    iput-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    invoke-static {p2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v1, v0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    iget-object v1, v0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    return-void
.end method

.method private static checkStyle(I)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCalendarLocales()[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;
    .locals 4

    const/4 v2, 0x2

    if-ltz p1, :cond_0

    const/16 v1, 0x11

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {p2}, Ljava/util/Calendar;->checkStyle(I)V

    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :sswitch_0
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    if-ne p2, v2, :cond_2

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_3
    if-ne p2, v2, :cond_3

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_3
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance()Ljava/util/Calendar;
    .locals 2

    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2

    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    const-class v1, Ljava/util/Calendar;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string v1, "areFieldsSet"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    const-string v1, "fields"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, p0, Ljava/util/Calendar;->fields:[I

    const-string v1, "firstDayOfWeek"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    const-string v1, "isSet"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    check-cast v1, [Z

    iput-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    const-string v1, "isTimeSet"

    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    const-string v1, "lenient"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljava/util/Calendar;->lenient:Z

    const-string v1, "minimalDaysInFirstWeek"

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    const-string v1, "zone"

    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string v1, "areFieldsSet"

    iget-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "fields"

    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "firstDayOfWeek"

    iget v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "isSet"

    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "isTimeSet"

    iget-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "lenient"

    iget-boolean v2, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    const-string v1, "minimalDaysInFirstWeek"

    iget v2, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "nextStamp"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    const-string v1, "time"

    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    const-string v1, "zone"

    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public abstract add(II)V
.end method

.method public after(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Calendar;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Calendar;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final clear()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    aput v2, v1, v0

    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    return-void
.end method

.method public final clear(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v0, p1

    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v0, p1

    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, v0, Ljava/util/Calendar;->fields:[I

    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    invoke-virtual {v2}, [Z->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Z

    iput-object v2, v0, Ljava/util/Calendar;->isSet:[Z

    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;

    iput-object v2, v0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Calendar;)I
    .locals 5

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    cmp-long v4, v2, v0

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method protected complete()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    :cond_0
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    :cond_1
    return-void
.end method

.method protected abstract computeFields()V
.end method

.method protected abstract computeTime()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/util/Calendar;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->isLenient()Z

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->isLenient()Z

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public get(I)I
    .locals 1

    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getActualMaximum(I)I
    .locals 5

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    if-ne v4, v0, :cond_0

    move v3, v0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    :cond_1
    move v3, v0

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->roll(IZ)V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-gt v0, v3, :cond_1

    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    const/4 v4, 0x0

    iput-boolean v4, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_0
.end method

.method public getActualMinimum(I)I
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v4

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    if-ne v4, v0, :cond_0

    move v3, v0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    iget-wide v1, p0, Ljava/util/Calendar;->time:J

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    :cond_1
    move v3, v0

    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->roll(IZ)V

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-lt v0, v3, :cond_1

    iput-wide v1, p0, Ljava/util/Calendar;->time:J

    iput-boolean v5, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_0
.end method

.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .locals 3

    if-nez p2, :cond_0

    const/4 p2, 0x1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eqz v0, :cond_1

    aget-object v2, v0, v1

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/util/Calendar;->checkStyle(I)V

    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eq p2, v1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    invoke-direct {p0, p1, v1, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    :cond_1
    if-eq p2, v2, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-direct {p0, p1, v2, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Calendar;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public abstract getGreatestMinimum(I)I
.end method

.method public abstract getLeastMaximum(I)I
.end method

.method public abstract getMaximum(I)I
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public abstract getMinimum(I)I
.end method

.method public final getTime()Ljava/util/Date;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    :cond_0
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Ljava/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4d5

    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/16 v0, 0x4cf

    goto :goto_0
.end method

.method protected final internalGet(I)I
    .locals 1

    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public isLenient()Z
    .locals 1

    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    return v0
.end method

.method public final isSet(I)Z
    .locals 1

    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public roll(II)V
    .locals 3

    if-ltz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    move v0, p2

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, p1, v2}, Ljava/util/Calendar;->roll(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    neg-int v0, p2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public abstract roll(IZ)V
.end method

.method public set(II)V
    .locals 4

    const/16 v3, 0xa

    const/16 v2, 0x9

    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput p2, v0, p1

    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    if-ge p1, v2, :cond_0

    iput p1, p0, Ljava/util/Calendar;->lastDateFieldSet:I

    :cond_0
    if-eq p1, v3, :cond_1

    const/16 v0, 0xb

    if-ne p1, v0, :cond_2

    :cond_1
    iput p1, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    :cond_2
    if-ne p1, v2, :cond_3

    iput v3, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    :cond_3
    return-void
.end method

.method public final set(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public final set(IIIII)V
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public final set(IIIIII)V
    .locals 1

    invoke-virtual/range {p0 .. p5}, Ljava/util/Calendar;->set(IIIII)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0

    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    return-void
.end method

.method public setLenient(Z)V
    .locals 0

    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 0

    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 2

    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    :cond_1
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1

    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v2, :cond_0

    iget-wide v4, p0, Ljava/util/Calendar;->time:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",areFieldsSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",lenient="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",zone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",firstDayOfWeek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",minimalDaysInFirstWeek="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x11

    if-ge v0, v2, :cond_2

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const-string v2, "?"

    goto :goto_0

    :cond_1
    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
