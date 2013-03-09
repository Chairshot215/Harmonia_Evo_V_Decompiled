.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final PATTERN_CHARS:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZLc"

.field private static final RFC_822_TIMEZONE_FIELD:I = 0x12

.field private static final STAND_ALONE_DAY_OF_WEEK_FIELD:I = 0x14

.field private static final STAND_ALONE_MONTH_FIELD:I = 0x13

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField; = null

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient creationYear:I

.field private defaultCenturyStart:Ljava/util/Date;

.field private formatData:Ljava/text/DateFormatSymbols;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "defaultCenturyStart"

    const-class v4, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formatData"

    const-class v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/SimpleDateFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    invoke-static {}, Ljava/text/SimpleDateFormat;->defaultPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    iget-object v0, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;CI)V"
        }
    .end annotation

    const/4 v2, -0x1

    const-string v7, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v7, p4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown pattern character \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v4, :pswitch_data_0

    :goto_0
    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    :cond_1
    if-eqz p3, :cond_6

    new-instance p2, Ljava/text/FieldPosition;

    invoke-direct {p2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    sget-object v1, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne p5, v7, :cond_3

    const/4 v7, 0x2

    rem-int/lit8 v8, v6, 0x64

    invoke-direct {p0, p1, v7, v8}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    :pswitch_2
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    const/4 v2, 0x5

    goto :goto_0

    :pswitch_5
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_4

    const/16 v3, 0x18

    :cond_4
    invoke-direct {p0, p1, p5, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_0

    :pswitch_6
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    const/16 v2, 0xb

    goto/16 :goto_0

    :pswitch_7
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    const/16 v2, 0xc

    goto/16 :goto_0

    :pswitch_8
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    const/16 v2, 0xd

    goto/16 :goto_0

    :pswitch_9
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct {p0, p1, p5, v5}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    :pswitch_a
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v8, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-direct {p0, p1, p5, v7, v8}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    const/4 v2, 0x6

    goto/16 :goto_0

    :pswitch_d
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    const/16 v2, 0x8

    goto/16 :goto_0

    :pswitch_e
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    const/4 v2, 0x3

    goto/16 :goto_0

    :pswitch_f
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    const/4 v2, 0x4

    goto/16 :goto_0

    :pswitch_10
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    iget-object v7, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v7, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v8, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v9, 0x9

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {p1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :pswitch_11
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    iget-object v7, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0xc

    :cond_5
    invoke-direct {p0, p1, p5, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_0

    :pswitch_12
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    const/16 v2, 0xa

    goto/16 :goto_0

    :pswitch_13
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/4 v7, 0x1

    invoke-direct {p0, p1, p5, v7}, Ljava/text/SimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_0

    :pswitch_14
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    const/4 v7, 0x0

    invoke-direct {p0, p1, v7}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-eq v7, v1, :cond_7

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v7

    if-nez v7, :cond_2

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getField()I

    move-result v7

    if-ne v7, v4, :cond_2

    :cond_7
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    invoke-virtual {p2, v7}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private appendDayOfWeek(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x3

    if-le p2, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    move-object v0, p3

    :goto_1
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p4

    goto :goto_1
.end method

.method private appendMonth(Ljava/lang/StringBuffer;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-gt p2, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x3

    if-le p2, v3, :cond_1

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    move-object v2, p3

    :goto_2
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move-object v2, p4

    goto :goto_2
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .locals 5

    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v0

    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v1, v2, p1, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V
    .locals 7

    const v6, 0x36ee80

    const/4 v5, 0x2

    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int v0, v2, v3

    const/16 v1, 0x2b

    if-gez v0, :cond_0

    const/16 v1, 0x2d

    neg-int v0, v0

    :cond_0
    if-eqz p2, :cond_1

    const-string v2, "GMT"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    div-int v2, v0, v6

    invoke-direct {p0, p1, v5, v2}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    if-eqz p2, :cond_2

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    rem-int v2, v0, v6

    const v3, 0xea60

    div-int/2addr v2, v3

    invoke-direct {p0, p1, v5, v2}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    return-void
.end method

.method private appendTimeZone(Ljava/lang/StringBuffer;IZ)V
    .locals 7

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_3

    iget-object v5, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    iget-object v5, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eqz v5, :cond_0

    move v1, v4

    :goto_0
    const/4 v5, 0x4

    if-ge p2, v5, :cond_1

    :goto_1
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-boolean v4, v4, Ljava/text/DateFormatSymbols;->customZoneStrings:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v1, v2, v4}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    return-void

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1, v2}, Llibcore/icu/TimeZones;->getDisplayName([[Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1, p3}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;Z)V

    goto :goto_2
.end method

.method private static convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    if-nez p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 v5, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x27

    if-ne v3, v6, :cond_1

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :cond_1
    :goto_2
    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_3

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    if-eqz p3, :cond_6

    if-nez v5, :cond_6

    const/16 v6, 0x61

    if-lt v3, v6, :cond_4

    const/16 v6, 0x7a

    if-le v3, v6, :cond_5

    :cond_4
    const/16 v6, 0x41

    if-lt v3, v6, :cond_6

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_6

    :cond_5
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid pattern character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_6
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    if-eqz v5, :cond_8

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method

.method private static defaultPattern()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;
    .locals 1

    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x0

    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/text/FieldPosition;->clear()V

    :cond_0
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v9, :cond_b

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v0, 0x27

    if-ne v8, v0, :cond_4

    if-lez v5, :cond_1

    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    const/4 v5, 0x0

    :cond_1
    if-ne v7, v8, :cond_2

    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v7, -0x1

    :goto_1
    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v7, v8

    goto :goto_1

    :cond_3
    const/4 v10, 0x0

    goto :goto_2

    :cond_4
    if-nez v10, :cond_9

    if-eq v7, v8, :cond_6

    const/16 v0, 0x61

    if-lt v8, v0, :cond_5

    const/16 v0, 0x7a

    if-le v8, v0, :cond_6

    :cond_5
    const/16 v0, 0x41

    if-lt v8, v0, :cond_9

    const/16 v0, 0x5a

    if-gt v8, v0, :cond_9

    :cond_6
    if-ne v7, v8, :cond_7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    if-lez v5, :cond_8

    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    :cond_8
    move v7, v8

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    if-lez v5, :cond_a

    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    const/4 v5, 0x0

    :cond_a
    const/4 v7, -0x1

    int-to-char v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_b
    if-lez v5, :cond_c

    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    :cond_c
    return-object p2
.end method

.method private formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;
    .locals 8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, v6, v3}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/FieldPosition;

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v0, v1, v1, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    return-object v6
.end method

.method private parse(Ljava/lang/String;ICI)I
    .locals 17

    const-string v3, "GyMdkHmsSEDFwWahKzZLc"

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    const/4 v3, -0x1

    if-ne v13, v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/4 v10, -0x1

    const/4 v7, 0x0

    if-gez p4, :cond_1

    move/from16 v0, p4

    neg-int v0, v0

    move/from16 p4, v0

    move/from16 v7, p4

    :cond_1
    packed-switch v13, :pswitch_data_0

    :goto_0
    const/4 v3, -0x1

    if-eq v10, v3, :cond_2

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v6 .. v11}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result p2

    :cond_2
    :goto_1
    return p2

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto :goto_1

    :pswitch_1
    const/4 v3, 0x3

    move/from16 v0, p4

    if-lt v0, v3, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    if-nez v15, :cond_4

    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v16

    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int v3, v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    if-ltz v16, :cond_5

    move-object/from16 v0, p0

    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0x64

    add-int v16, v16, v3

    move-object/from16 v0, p0

    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    add-int/lit8 v16, v16, 0x64

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v3, Ljava/text/DateFormatSymbols;->longStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v9, v3, Ljava/text/DateFormatSymbols;->shortStandAloneMonths:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v8, v3, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v9, v3, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v9}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_1

    :pswitch_4
    const/4 v10, 0x5

    goto/16 :goto_0

    :pswitch_5
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    if-nez v15, :cond_6

    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/16 v3, 0x18

    if-ne v12, v3, :cond_7

    const/4 v12, 0x0

    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_1

    :pswitch_6
    const/16 v10, 0xb

    goto/16 :goto_0

    :pswitch_7
    const/16 v10, 0xc

    goto/16 :goto_0

    :pswitch_8
    const/16 v10, 0xd

    goto/16 :goto_0

    :pswitch_9
    const/16 v10, 0xe

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->longStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->shortStandAloneWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_1

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v4, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    goto/16 :goto_1

    :pswitch_c
    const/4 v10, 0x6

    goto/16 :goto_0

    :pswitch_d
    const/16 v10, 0x8

    goto/16 :goto_0

    :pswitch_e
    const/4 v10, 0x3

    goto/16 :goto_0

    :pswitch_f
    const/4 v10, 0x4

    goto/16 :goto_0

    :pswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    :pswitch_11
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    if-nez v15, :cond_8

    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    const/16 v3, 0xc

    if-ne v12, v3, :cond_9

    const/4 v12, 0x0

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_1

    :pswitch_12
    const/16 v10, 0xa

    goto/16 :goto_0

    :pswitch_13
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    :pswitch_14
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_2
        :pswitch_a
    .end packed-switch
.end method

.method private parseDayOfWeek(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x7

    invoke-direct {p0, p1, p2, p3, v1}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-direct {p0, p1, p2, p4, v1}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method private parseMonth(Ljava/lang/String;III[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 7

    const/4 v4, 0x2

    if-gt p3, v4, :cond_1

    const/4 v5, -0x1

    move-object v0, p0

    move v1, p4

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v6

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-direct {p0, p1, p2, p5, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    if-gez v6, :cond_0

    invoke-direct {p0, p1, p2, p6, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    goto :goto_0
.end method

.method private parseNumber(ILjava/lang/String;III)I
    .locals 4

    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v2, p4, v3}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    goto :goto_0
.end method

.method private parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    if-lez p1, :cond_0

    sub-int v4, v2, v1

    if-ge p1, v4, :cond_0

    add-int v2, v1, p1

    :cond_0
    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    iget-object v4, p0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v4, p2, p3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_3
    :goto_2
    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-ne v1, v4, :cond_5

    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1
.end method

.method private parseText(Ljava/lang/String;I[Ljava/lang/String;I)I
    .locals 9

    const/4 v8, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    :goto_0
    array-length v0, p3

    if-ge v7, v0, :cond_3

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    aget-object v3, p3, v7

    const/4 v4, 0x0

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eq v6, v8, :cond_2

    aget-object v0, p3, v7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aget-object v1, p3, v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    :cond_2
    move v6, v7

    goto :goto_1

    :cond_3
    if-eq v6, v8, :cond_4

    iget-object v0, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p4, v6}, Ljava/util/Calendar;->set(II)V

    aget-object v0, p3, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, p2

    :goto_2
    return v0

    :cond_4
    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method private parseTimeZone(Ljava/lang/String;I)I
    .locals 23

    const-string v2, "GMT"

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 p2, p2, 0x3

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, p2

    if-ge v0, v2, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v20

    const/16 v2, 0x2b

    move/from16 v0, v20

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2d

    move/from16 v0, v20

    if-ne v0, v2, :cond_7

    :cond_1
    new-instance v17, Ljava/text/ParsePosition;

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    if-nez v19, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    :goto_0
    return p2

    :cond_2
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v11

    const v2, 0x36ee80

    mul-int v18, v11, v2

    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v13, v2, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_6

    add-int/lit8 v2, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    if-nez v19, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v16

    const v2, 0xea60

    mul-int v2, v2, v16

    add-int v18, v18, v2

    :cond_4
    :goto_1
    const/16 v2, 0x2d

    move/from16 v0, v20

    if-ne v0, v2, :cond_5

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_0

    :cond_6
    const/16 v2, 0x18

    if-lt v11, v2, :cond_4

    div-int/lit8 v2, v11, 0x64

    const v3, 0x36ee80

    mul-int/2addr v2, v3

    rem-int/lit8 v3, v11, 0x64

    const v4, 0xea60

    mul-int/2addr v3, v4

    add-int v18, v2, v3

    goto :goto_1

    :cond_7
    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v8, v22

    array-length v15, v8

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v15, :cond_e

    aget-object v9, v8, v12

    const/4 v14, 0x1

    :goto_3
    const/4 v2, 0x5

    if-ge v14, v2, :cond_d

    const/4 v3, 0x1

    aget-object v5, v9, v14

    const/4 v6, 0x0

    aget-object v2, v9, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    aget-object v2, v9, v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v21

    if-nez v21, :cond_9

    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    const/4 v2, 0x3

    if-eq v14, v2, :cond_a

    const/4 v2, 0x4

    if-ne v14, v2, :cond_b

    :cond_a
    const v2, 0x36ee80

    add-int v18, v18, v2

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    aget-object v2, v9, v14

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int p2, p2, v2

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_e
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const-string v3, "defaultCenturyStart"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    const-string v3, "formatData"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormatSymbols;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    const-string v3, "pattern"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0
.end method

.method private validateFormat(C)V
    .locals 4

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method private validatePattern(Ljava/lang/String;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_a

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v6, 0x27

    if-ne v3, v6, :cond_3

    if-lez v0, :cond_0

    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    const/4 v0, 0x0

    :cond_0
    if-ne v2, v3, :cond_1

    const/4 v2, -0x1

    :goto_1
    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    if-nez v5, :cond_8

    if-eq v2, v3, :cond_5

    const/16 v6, 0x61

    if-lt v3, v6, :cond_4

    const/16 v6, 0x7a

    if-le v3, v6, :cond_5

    :cond_4
    const/16 v6, 0x41

    if-lt v3, v6, :cond_8

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_8

    :cond_5
    if-ne v2, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    if-lez v0, :cond_7

    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    :cond_7
    move v2, v3

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    if-lez v0, :cond_9

    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    const/4 v0, 0x0

    :cond_9
    const/4 v2, -0x1

    goto :goto_2

    :cond_a
    if-lez v0, :cond_b

    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validateFormat(C)V

    :cond_b
    if-eqz v5, :cond_c

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_c
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    const-string v1, "defaultCenturyStart"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "formatData"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "pattern"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    return-object v0
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
    instance-of v3, p1, Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v3, v4}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Date;

    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .locals 1

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 13

    const/4 v9, 0x0

    const/4 v4, -0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v8, :cond_10

    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v11, 0x27

    if-ne v6, v11, :cond_6

    if-lez v0, :cond_1

    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_0

    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    if-ne v4, v6, :cond_4

    if-ge v7, v5, :cond_2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x27

    if-eq v11, v12, :cond_3

    :cond_2
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    const/4 v4, -0x1

    :goto_2
    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v4, v6

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    :cond_6
    if-nez v9, :cond_b

    if-eq v4, v6, :cond_8

    const/16 v11, 0x61

    if-lt v6, v11, :cond_7

    const/16 v11, 0x7a

    if-le v6, v11, :cond_8

    :cond_7
    const/16 v11, 0x41

    if-lt v6, v11, :cond_b

    const/16 v11, 0x5a

    if-gt v6, v11, :cond_b

    :cond_8
    if-ne v4, v6, :cond_9

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_9
    if-lez v0, :cond_a

    int-to-char v11, v4

    neg-int v12, v0

    invoke-direct {p0, p1, v7, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_a

    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    :cond_a
    move v4, v6

    const/4 v0, 0x1

    goto :goto_3

    :cond_b
    if-lez v0, :cond_d

    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_c

    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    :cond_d
    const/4 v4, -0x1

    if-ge v7, v5, :cond_e

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v6, :cond_f

    :cond_e
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_1

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_10
    if-lez v0, :cond_11

    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_11

    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto/16 :goto_1

    :cond_11
    :try_start_0
    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    iget-object v11, p0, Ljava/text/DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto/16 :goto_1
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iput v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .locals 1

    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
