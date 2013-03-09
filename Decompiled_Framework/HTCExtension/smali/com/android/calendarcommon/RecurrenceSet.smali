.class public Lcom/android/calendarcommon/RecurrenceSet;
.super Ljava/lang/Object;
.source "RecurrenceSet.java"


# static fields
.field private static final FOLDING_SEPARATOR:Ljava/lang/String; = "\n "

.field private static final FOLD_RE:Ljava/util/regex/Pattern; = null

.field private static final IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern; = null

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "RecurrenceSet"


# instance fields
.field public exdates:[J

.field public exrules:[Lcom/android/calendarcommon/EventRecurrence;

.field public rdates:[J

.field public rrules:[Lcom/android/calendarcommon/EventRecurrence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:\\r\\n?|\\n)[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    const-string v0, ".{75}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/calendarcommon/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    iput-object v4, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    iput-object v4, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    iput-object v4, p0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    const-string v4, "rrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "exrule"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "exdate"

    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/calendarcommon/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    iput-object v8, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    iput-object v8, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    iput-object v8, p0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    const-string v8, "rrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v8, "rdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v8, "exrule"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v8, "exdate"

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v7, v5, v3, v1}, Lcom/android/calendarcommon/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    iput-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/calendarcommon/RecurrenceSet;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addPropertiesForRuleStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/android/calendarcommon/RecurrenceSet;->getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    new-instance v3, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-direct {v3, p1}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static addPropertyForDateStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-direct {v0, p1}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v3, ";"

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lcom/android/calendarcommon/ICalendar$Parameter;

    const-string v4, "TZID"

    invoke-direct {v3, v4, v1}, Lcom/android/calendarcommon/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/calendarcommon/ICalendar$Property;->addParameter(Lcom/android/calendarcommon/ICalendar$Parameter;)V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    goto :goto_0
.end method

.method private static computeDuration(Landroid/text/format/Time;Lcom/android/calendarcommon/ICalendar$Component;)Ljava/lang/String;
    .locals 13

    const-string v9, "DURATION"

    invoke-virtual {p1, v9}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    const-string v9, "DTEND"

    invoke-virtual {p1, v9}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v9, "+P0S"

    goto :goto_0

    :cond_1
    const-string v9, "TZID"

    invoke-virtual {v0, v9}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v8

    if-nez v8, :cond_2

    iget-object v7, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :goto_1
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v7}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    sub-long v1, v9, v11

    const-wide/16 v9, 0x3e8

    div-long v4, v1, v9

    iget-boolean v9, p0, Landroid/text/format/Time;->allDay:Z

    if-eqz v9, :cond_3

    const-wide/32 v9, 0x15180

    rem-long v9, v4, v9

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-wide/32 v10, 0x15180

    div-long v10, v4, v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    :cond_2
    iget-object v7, v8, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    goto :goto_1

    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "P"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "S"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method private static extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendarcommon/ICalendar$Property;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static fold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/calendarcommon/RecurrenceSet;->FOLD_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "$0\r\n "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getRuleStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_1

    const/4 v4, 0x0

    new-array v2, v4, [Ljava/lang/String;

    :cond_0
    return-object v2

    :cond_1
    invoke-static {p0}, Lcom/android/calendarcommon/RecurrenceSet;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v0, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/android/calendarcommon/RecurrenceSet;->fold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [Lcom/android/calendarcommon/EventRecurrence;

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x0

    :goto_0
    array-length v5, v4

    if-ge v2, v5, :cond_1

    new-instance v3, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v3}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    aget-object v5, v4, v2

    invoke-virtual {v3, v5}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {p2}, Lcom/android/calendarcommon/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "\n"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    new-array v5, v5, [Lcom/android/calendarcommon/EventRecurrence;

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    const/4 v2, 0x0

    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    invoke-virtual {v0, p3}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->exrules:[Lcom/android/calendarcommon/EventRecurrence;

    aput-object v0, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {p4}, Lcom/android/calendarcommon/RecurrenceSet;->parseRecurrenceDates(Ljava/lang/String;)[J

    move-result-object v5

    iput-object v5, p0, Lcom/android/calendarcommon/RecurrenceSet;->exdates:[J

    :cond_4
    return-void
.end method

.method public static parseRecurrenceDates(Ljava/lang/String;)[J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;
        }
    .end annotation

    const/4 v10, 0x0

    const-string v6, "UTC"

    const-string v8, ";"

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    invoke-virtual {p0, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v3, v4

    new-array v0, v3, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    :try_start_0
    aget-object v8, v4, v2

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/util/TimeFormatException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    aput-wide v8, v0, v2

    iput-object v6, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v8, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "TimeFormatException thrown when parsing time "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v4, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in recurrence "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/calendarcommon/EventRecurrence$InvalidFormatException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    return-object v0
.end method

.method public static populateComponent(Landroid/content/ContentValues;Lcom/android/calendarcommon/ICalendar$Component;)Z
    .locals 17

    const-wide/16 v3, -0x1

    const-string v14, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "dtstart"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    :cond_0
    const-string v14, "duration"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "eventTimezone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "rrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v14, "rdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v14, "exrule"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v14, "exdate"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v14, "allDay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    const/4 v1, 0x1

    :goto_0
    const-wide/16 v14, -0x1

    cmp-long v14, v3, v14

    if-eqz v14, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_1
    const/4 v14, 0x0

    :goto_1
    return v14

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    new-instance v5, Lcom/android/calendarcommon/ICalendar$Property;

    const-string v14, "DTSTART"

    invoke-direct {v5, v14}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    if-nez v1, :cond_5

    new-instance v14, Lcom/android/calendarcommon/ICalendar$Parameter;

    const-string v15, "TZID"

    invoke-direct {v14, v15, v13}, Lcom/android/calendarcommon/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon/ICalendar$Property;->addParameter(Lcom/android/calendarcommon/ICalendar$Parameter;)V

    :cond_5
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6, v13}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v6, v3, v4}, Landroid/text/format/Time;->set(J)V

    if-eqz v1, :cond_6

    new-instance v14, Lcom/android/calendarcommon/ICalendar$Parameter;

    const-string v15, "VALUE"

    const-string v16, "DATE"

    invoke-direct/range {v14 .. v16}, Lcom/android/calendarcommon/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon/ICalendar$Property;->addParameter(Lcom/android/calendarcommon/ICalendar$Parameter;)V

    const/4 v14, 0x1

    iput-boolean v14, v6, Landroid/text/format/Time;->allDay:Z

    const/4 v14, 0x0

    iput v14, v6, Landroid/text/format/Time;->hour:I

    const/4 v14, 0x0

    iput v14, v6, Landroid/text/format/Time;->minute:I

    const/4 v14, 0x0

    iput v14, v6, Landroid/text/format/Time;->second:I

    :cond_6
    invoke-virtual {v6}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    new-instance v8, Lcom/android/calendarcommon/ICalendar$Property;

    const-string v14, "DURATION"

    invoke-direct {v8, v14}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    const-string v14, "RRULE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v12}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "RDATE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v11}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "EXRULE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v10}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "EXDATE"

    move-object/from16 v0, p1

    invoke-static {v0, v14, v9}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    goto :goto_1

    :cond_7
    new-instance v6, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v6, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static populateComponent(Landroid/database/Cursor;Lcom/android/calendarcommon/ICalendar$Component;)Z
    .locals 26

    const-string v23, "dtstart"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v23, "duration"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v23, "eventTimezone"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    const-string v23, "rrule"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    const-string v23, "rdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    const-string v23, "exrule"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v23, "exdate"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v23, "allDay"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v23

    if-nez v23, :cond_0

    move-object/from16 v0, p0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    :cond_0
    move-object/from16 v0, p0

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    :goto_0
    const-wide/16 v23, -0x1

    cmp-long v23, v5, v23

    if-eqz v23, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    :cond_1
    const/16 v23, 0x0

    :goto_1
    return v23

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    new-instance v8, Lcom/android/calendarcommon/ICalendar$Property;

    const-string v23, "DTSTART"

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    const/4 v9, 0x0

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_6

    if-nez v3, :cond_4

    new-instance v23, Lcom/android/calendarcommon/ICalendar$Parameter;

    const-string v24, "TZID"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/calendarcommon/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/calendarcommon/ICalendar$Property;->addParameter(Lcom/android/calendarcommon/ICalendar$Parameter;)V

    :cond_4
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v9, v5, v6}, Landroid/text/format/Time;->set(J)V

    if-eqz v3, :cond_5

    new-instance v23, Lcom/android/calendarcommon/ICalendar$Parameter;

    const-string v24, "VALUE"

    const-string v25, "DATE"

    invoke-direct/range {v23 .. v25}, Lcom/android/calendarcommon/ICalendar$Parameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/calendarcommon/ICalendar$Property;->addParameter(Lcom/android/calendarcommon/ICalendar$Parameter;)V

    const/16 v23, 0x1

    move/from16 v0, v23

    iput-boolean v0, v9, Landroid/text/format/Time;->allDay:Z

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v9, Landroid/text/format/Time;->hour:I

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v9, Landroid/text/format/Time;->minute:I

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v9, Landroid/text/format/Time;->second:I

    :cond_5
    invoke-virtual {v9}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    new-instance v12, Lcom/android/calendarcommon/ICalendar$Property;

    const-string v23, "DURATION"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Lcom/android/calendarcommon/ICalendar$Property;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Lcom/android/calendarcommon/ICalendar$Property;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/android/calendarcommon/ICalendar$Component;->addProperty(Lcom/android/calendarcommon/ICalendar$Property;)V

    const-string v23, "RRULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "RDATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "EXRULE"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertiesForRuleStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "EXDATE"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1, v14}, Lcom/android/calendarcommon/RecurrenceSet;->addPropertyForDateStr(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v23, 0x1

    goto/16 :goto_1

    :cond_6
    new-instance v9, Landroid/text/format/Time;

    const-string v23, "UTC"

    move-object/from16 v0, v23

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static populateContentValues(Lcom/android/calendarcommon/ICalendar$Component;Landroid/content/ContentValues;)Z
    .locals 19

    const-string v17, "DTSTART"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v17, "TZID"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v16

    if-nez v16, :cond_3

    const/4 v15, 0x0

    :goto_0
    new-instance v14, Landroid/text/format/Time;

    if-nez v16, :cond_4

    const-string v17, "UTC"

    :goto_1
    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v9

    iget-boolean v3, v14, Landroid/text/format/Time;->allDay:Z

    if-nez v9, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    const-string v15, "UTC"

    :cond_1
    move-object/from16 v0, p0

    invoke-static {v14, v0}, Lcom/android/calendarcommon/RecurrenceSet;->computeDuration(Landroid/text/format/Time;Lcom/android/calendarcommon/ICalendar$Component;)Ljava/lang/String;

    move-result-object v6

    const-string v17, "RRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/calendarcommon/RecurrenceSet;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v17, "RDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/calendarcommon/RecurrenceSet;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v12

    const-string v17, "EXRULE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/calendarcommon/RecurrenceSet;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v17, "EXDATE"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/calendarcommon/RecurrenceSet;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    :cond_2
    const/16 v17, 0x0

    :goto_2
    return v17

    :cond_3
    move-object/from16 v0, v16

    iget-object v15, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object/from16 v17, v15

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    const-string v17, "UTC"

    move-object/from16 v0, v17

    iput-object v0, v14, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const-string v17, "dtstart"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v17, -0x1

    cmp-long v17, v10, v17

    if-nez v17, :cond_7

    const/16 v17, 0x0

    goto :goto_2

    :cond_7
    const-string v17, "rrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "rdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "exrule"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "exdate"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "eventTimezone"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v17, "duration"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v18, "allDay"

    if-eqz v3, :cond_8

    const/16 v17, 0x1

    :goto_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/16 v17, 0x1

    goto :goto_2

    :cond_8
    const/16 v17, 0x0

    goto :goto_3
.end method

.method public static unfold(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/calendarcommon/RecurrenceSet;->IGNORABLE_ICAL_WHITESPACE_RE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasRecurrence()Z
    .locals 1

    iget-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rrules:[Lcom/android/calendarcommon/EventRecurrence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/calendarcommon/RecurrenceSet;->rdates:[J

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
