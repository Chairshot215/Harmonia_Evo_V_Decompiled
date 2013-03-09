.class public final Llibcore/icu/LocaleData;
.super Ljava/lang/Object;
.source "LocaleData.java"


# static fields
.field private static final localeDataCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Llibcore/icu/LocaleData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public NaN:Ljava/lang/String;

.field public amPm:[Ljava/lang/String;

.field public currencyPattern:Ljava/lang/String;

.field public currencySymbol:Ljava/lang/String;

.field public decimalSeparator:C

.field public eras:[Ljava/lang/String;

.field public exponentSeparator:Ljava/lang/String;

.field public firstDayOfWeek:Ljava/lang/Integer;

.field public fullDateFormat:Ljava/lang/String;

.field public fullTimeFormat:Ljava/lang/String;

.field public groupingSeparator:C

.field public infinity:Ljava/lang/String;

.field public integerPattern:Ljava/lang/String;

.field public internationalCurrencySymbol:Ljava/lang/String;

.field public longDateFormat:Ljava/lang/String;

.field public longMonthNames:[Ljava/lang/String;

.field public longStandAloneMonthNames:[Ljava/lang/String;

.field public longStandAloneWeekdayNames:[Ljava/lang/String;

.field public longTimeFormat:Ljava/lang/String;

.field public longWeekdayNames:[Ljava/lang/String;

.field public mediumDateFormat:Ljava/lang/String;

.field public mediumTimeFormat:Ljava/lang/String;

.field public minimalDaysInFirstWeek:Ljava/lang/Integer;

.field public minusSign:C

.field public monetarySeparator:C

.field public numberPattern:Ljava/lang/String;

.field public patternSeparator:C

.field public perMill:C

.field public percent:C

.field public percentPattern:Ljava/lang/String;

.field public shortDateFormat:Ljava/lang/String;

.field public shortMonthNames:[Ljava/lang/String;

.field public shortStandAloneMonthNames:[Ljava/lang/String;

.field public shortStandAloneWeekdayNames:[Ljava/lang/String;

.field public shortTimeFormat:Ljava/lang/String;

.field public shortWeekdayNames:[Ljava/lang/String;

.field public zeroDigit:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .locals 5

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/icu/LocaleData;

    if-eqz v0, :cond_1

    monitor-exit v4

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {p0}, Llibcore/icu/LocaleData;->makeLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    sget-object v4, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_1
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llibcore/icu/LocaleData;

    if-eqz v0, :cond_2

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_2
    :try_start_3
    sget-object v3, Llibcore/icu/LocaleData;->localeDataCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v2

    goto :goto_0
.end method

.method private static initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .locals 4

    new-instance v0, Llibcore/icu/LocaleData;

    invoke-direct {v0}, Llibcore/icu/LocaleData;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Llibcore/icu/ICU;->initLocaleDataImpl(Ljava/lang/String;Llibcore/icu/LocaleData;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t initialize LocaleData for locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    const/16 v2, 0x76

    const/16 v3, 0x7a

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    :cond_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, v0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    const-string v2, "\\.[#,]*"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method private static makeLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;
    .locals 7

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Llibcore/icu/LocaleData;

    invoke-direct {v2}, Llibcore/icu/LocaleData;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    invoke-direct {v4, v1, v0, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    :cond_0
    :goto_0
    invoke-static {p0}, Llibcore/icu/LocaleData;->initLocaleData(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    return-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/util/Locale;

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v4, v1, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v4

    invoke-direct {v2, v4}, Llibcore/icu/LocaleData;->overrideWithDataFrom(Llibcore/icu/LocaleData;)V

    goto :goto_0
.end method

.method private overrideWithDataFrom(Llibcore/icu/LocaleData;)V
    .locals 1

    iget-object v0, p1, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p1, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    iput-object v0, p0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    :cond_0
    iget-object v0, p1, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p1, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    iput-object v0, p0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    :cond_1
    iget-object v0, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    :cond_2
    iget-object v0, p1, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    :cond_3
    iget-object v0, p1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    :cond_4
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    :cond_5
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    :cond_6
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    :cond_7
    iget-object v0, p1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    :cond_8
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    :cond_9
    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    :cond_a
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    :cond_b
    iget-object v0, p1, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    :cond_c
    iget-object v0, p1, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p1, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    :cond_d
    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    :cond_e
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p1, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    :cond_f
    iget-object v0, p1, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p1, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    :cond_10
    iget-object v0, p1, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p1, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    :cond_11
    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p1, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    :cond_12
    iget-object v0, p1, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p1, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    :cond_13
    iget-char v0, p1, Llibcore/icu/LocaleData;->zeroDigit:C

    if-eqz v0, :cond_14

    iget-char v0, p1, Llibcore/icu/LocaleData;->zeroDigit:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->zeroDigit:C

    :cond_14
    iget-char v0, p1, Llibcore/icu/LocaleData;->decimalSeparator:C

    if-eqz v0, :cond_15

    iget-char v0, p1, Llibcore/icu/LocaleData;->decimalSeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->decimalSeparator:C

    :cond_15
    iget-char v0, p1, Llibcore/icu/LocaleData;->groupingSeparator:C

    if-eqz v0, :cond_16

    iget-char v0, p1, Llibcore/icu/LocaleData;->groupingSeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->groupingSeparator:C

    :cond_16
    iget-char v0, p1, Llibcore/icu/LocaleData;->patternSeparator:C

    if-eqz v0, :cond_17

    iget-char v0, p1, Llibcore/icu/LocaleData;->patternSeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->patternSeparator:C

    :cond_17
    iget-char v0, p1, Llibcore/icu/LocaleData;->percent:C

    if-eqz v0, :cond_18

    iget-char v0, p1, Llibcore/icu/LocaleData;->percent:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->percent:C

    :cond_18
    iget-char v0, p1, Llibcore/icu/LocaleData;->perMill:C

    if-eqz v0, :cond_19

    iget-char v0, p1, Llibcore/icu/LocaleData;->perMill:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->perMill:C

    :cond_19
    iget-char v0, p1, Llibcore/icu/LocaleData;->monetarySeparator:C

    if-eqz v0, :cond_1a

    iget-char v0, p1, Llibcore/icu/LocaleData;->monetarySeparator:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->monetarySeparator:C

    :cond_1a
    iget-char v0, p1, Llibcore/icu/LocaleData;->minusSign:C

    if-eqz v0, :cond_1b

    iget-char v0, p1, Llibcore/icu/LocaleData;->minusSign:C

    iput-char v0, p0, Llibcore/icu/LocaleData;->minusSign:C

    :cond_1b
    iget-object v0, p1, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    :cond_1c
    iget-object v0, p1, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p1, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    :cond_1d
    iget-object v0, p1, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p1, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    :cond_1e
    iget-object v0, p1, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p1, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    :cond_1f
    iget-object v0, p1, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p1, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    :cond_20
    iget-object v0, p1, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p1, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    :cond_21
    iget-object v0, p1, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p1, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    :cond_22
    iget-object v0, p1, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    if-eqz v0, :cond_23

    iget-object v0, p1, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    :cond_23
    iget-object v0, p1, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p1, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    iput-object v0, p0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    :cond_24
    return-void
.end method


# virtual methods
.method public getDateFormat(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getTimeFormat(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocaleData[firstDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "minimalDaysInFirstWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "amPm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "eras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->eras:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longStandAloneMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortStandAloneMonthNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longStandAloneWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortStandAloneWeekdayNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fullTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->fullTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mediumTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->mediumTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortTimeFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "fullDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->fullDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "longDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->longDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mediumDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->mediumDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shortDateFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->shortDateFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zeroDigit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->zeroDigit:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "decimalSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->decimalSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "groupingSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->groupingSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "patternSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->patternSeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->percent:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "perMill="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->perMill:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "monetarySeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->monetarySeparator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "minusSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Llibcore/icu/LocaleData;->minusSign:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "exponentSeparator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->exponentSeparator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "infinity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->infinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "NaN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->NaN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "currencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->currencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "internationalCurrencySymbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->internationalCurrencySymbol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "numberPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->numberPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "integerPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->integerPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "currencyPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->currencyPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "percentPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Llibcore/icu/LocaleData;->percentPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
