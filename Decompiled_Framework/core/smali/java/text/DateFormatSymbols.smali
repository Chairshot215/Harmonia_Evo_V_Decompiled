.class public Ljava/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field ampms:[Ljava/lang/String;

.field transient customZoneStrings:Z

.field eras:[Ljava/lang/String;

.field private localPatternChars:Ljava/lang/String;

.field final transient locale:Ljava/util/Locale;

.field transient longStandAloneMonths:[Ljava/lang/String;

.field transient longStandAloneWeekdays:[Ljava/lang/String;

.field months:[Ljava/lang/String;

.field shortMonths:[Ljava/lang/String;

.field transient shortStandAloneMonths:[Ljava/lang/String;

.field transient shortStandAloneWeekdays:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field weekdays:[Ljava/lang/String;

.field zoneStrings:[[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v1, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    iget-object v1, v0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v1, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    return-void
.end method

.method private static clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3

    array-length v2, p0

    new-array v1, v2, [[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    invoke-static {}, Llibcore/icu/ICU;->getAvailableDateFormatSymbolsLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance()Ljava/text/DateFormatSymbols;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;
    .locals 1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    return-void
.end method

.method private static timeZoneStringsEqual(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)Z
    .locals 2

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    iget-object v1, p1, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Ljava/text/DateFormatSymbols;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/text/DateFormatSymbols;

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v4, v0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0, v0}, Ljava/text/DateFormatSymbols;->timeZoneStringsEqual(Ljava/text/DateFormatSymbols;Ljava/text/DateFormatSymbols;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object v0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/text/DateFormatSymbols;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v2

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_2

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v5, :cond_4

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v5, v0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v5, :cond_5

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    move-object v0, v6

    array-length v5, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v5, :cond_8

    aget-object v1, v0, v3

    const/4 v4, 0x0

    :goto_7
    array-length v7, v1

    if-ge v4, v7, :cond_7

    aget-object v7, v1, v4

    if-eqz v7, :cond_6

    aget-object v7, v1, v4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    add-int/2addr v2, v7

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    return v2
.end method

.method declared-synchronized internalZoneStrings()[[Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/TimeZones;->getZoneStrings(Ljava/util/Locale;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    return-void
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    return-void
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v4

    :cond_0
    move-object v0, p1

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    array-length v4, v3

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".length < 5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Ljava/text/DateFormatSymbols;->clone2dStringArray([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    const/4 v4, 0x1

    iput-boolean v4, p0, Ljava/text/DateFormatSymbols;->customZoneStrings:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[amPmStrings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",customZoneStrings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/text/DateFormatSymbols;->customZoneStrings:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",eras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",localPatternChars="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",months="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shortMonths="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shortWeekdays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",weekdays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",zoneStrings=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "...]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
