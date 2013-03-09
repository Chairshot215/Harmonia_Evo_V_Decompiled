.class public Lcom/android/htccontacts/util/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final DATE_FORMATS:[Ljava/text/SimpleDateFormat;

.field private static final FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

.field private static final FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

.field public static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final UTC_TIMEZONE:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 32
    const-string v4, "UTC"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    sput-object v4, Lcom/android/htccontacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    .line 35
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "--MM-dd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/htccontacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 37
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/htccontacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 39
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v4, Lcom/android/htccontacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 44
    const/4 v4, 0x7

    new-array v4, v4, [Ljava/text/SimpleDateFormat;

    const/4 v5, 0x0

    sget-object v6, Lcom/android/htccontacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v6, v4, v5

    sget-object v5, Lcom/android/htccontacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    aput-object v5, v4, v9

    const/4 v5, 0x2

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmssSSS\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmmss\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    const/4 v5, 0x6

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd\'T\'HHmm\'Z\'"

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v6, v4, v5

    sput-object v4, Lcom/android/htccontacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .line 54
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MMMM dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/htccontacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    .line 57
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "dd MMMM"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/android/htccontacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

    .line 61
    sget-object v0, Lcom/android/htccontacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    .local v0, arr$:[Ljava/text/SimpleDateFormat;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 62
    .local v1, format:Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v9}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 63
    sget-object v4, Lcom/android/htccontacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    .end local v1           #format:Ljava/text/SimpleDateFormat;
    :cond_0
    sget-object v4, Lcom/android/htccontacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v5, Lcom/android/htccontacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 66
    sget-object v4, Lcom/android/htccontacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    sget-object v5, Lcom/android/htccontacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 67
    sget-object v4, Lcom/android/htccontacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

    sget-object v5, Lcom/android/htccontacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "string"

    .prologue
    const/4 v6, 0x0

    .line 95
    if-nez p1, :cond_0

    .line 96
    const/4 v5, 0x0

    .line 133
    :goto_0
    return-object v5

    .line 99
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move-object v5, p1

    .line 101
    goto :goto_0

    .line 104
    :cond_1
    new-instance v4, Ljava/text/ParsePosition;

    invoke-direct {v4, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 108
    .local v4, parsePosition:Ljava/text/ParsePosition;
    sget-object v6, Lcom/android/htccontacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v6

    .line 109
    :try_start_0
    sget-object v5, Lcom/android/htccontacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, p1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 110
    .local v0, date:Ljava/util/Date;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 113
    invoke-static {p0}, Lcom/android/htccontacts/util/DateUtils;->isMonthBeforeDate(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v3, Lcom/android/htccontacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_MONTH_FIRST:Ljava/text/DateFormat;

    .line 116
    .local v3, outFormat:Ljava/text/DateFormat;
    :goto_1
    monitor-enter v3

    .line 117
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    monitor-exit v3

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 110
    .end local v0           #date:Ljava/util/Date;
    .end local v3           #outFormat:Ljava/text/DateFormat;
    :catchall_1
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    .line 113
    .restart local v0       #date:Ljava/util/Date;
    :cond_2
    sget-object v3, Lcom/android/htccontacts/util/DateUtils;->FORMAT_WITHOUT_YEAR_DATE_FIRST:Ljava/text/DateFormat;

    goto :goto_1

    .line 121
    :cond_3
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    sget-object v5, Lcom/android/htccontacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 122
    sget-object v5, Lcom/android/htccontacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v1, v5, v2

    .line 123
    .local v1, f:Ljava/text/SimpleDateFormat;
    monitor-enter v1

    .line 124
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 125
    invoke-virtual {v1, p1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 126
    invoke-virtual {v4}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_4

    .line 127
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    .line 128
    .restart local v3       #outFormat:Ljava/text/DateFormat;
    sget-object v5, Lcom/android/htccontacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v3, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 129
    invoke-virtual {v3, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    monitor-exit v1

    goto :goto_0

    .line 131
    .end local v3           #outFormat:Ljava/text/DateFormat;
    :catchall_2
    move-exception v5

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v5

    :cond_4
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 121
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1           #f:Ljava/text/SimpleDateFormat;
    :cond_5
    move-object v5, p1

    .line 133
    goto :goto_0
.end method

.method private static isMonthBeforeDate(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    .line 138
    .local v0, dateFormatOrder:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 139
    aget-char v3, v0, v1

    const/16 v4, 0x64

    if-ne v3, v4, :cond_1

    .line 146
    :cond_0
    :goto_1
    return v2

    .line 142
    :cond_1
    aget-char v3, v0, v1

    const/16 v4, 0x4d

    if-ne v3, v4, :cond_2

    .line 143
    const/4 v2, 0x1

    goto :goto_1

    .line 138
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 6
    .parameter "string"

    .prologue
    const/4 v4, 0x0

    .line 75
    new-instance v3, Ljava/text/ParsePosition;

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 76
    .local v3, parsePosition:Ljava/text/ParsePosition;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v4, Lcom/android/htccontacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 77
    sget-object v4, Lcom/android/htccontacts/util/DateUtils;->DATE_FORMATS:[Ljava/text/SimpleDateFormat;

    aget-object v1, v4, v2

    .line 78
    .local v1, f:Ljava/text/SimpleDateFormat;
    monitor-enter v1

    .line 79
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 80
    invoke-virtual {v1, p0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    .line 81
    .local v0, date:Ljava/util/Date;
    invoke-virtual {v3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 82
    monitor-exit v1

    .line 86
    .end local v0           #date:Ljava/util/Date;
    .end local v1           #f:Ljava/text/SimpleDateFormat;
    :goto_1
    return-object v0

    .line 84
    .restart local v0       #date:Ljava/util/Date;
    .restart local v1       #f:Ljava/text/SimpleDateFormat;
    :cond_0
    monitor-exit v1

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 84
    .end local v0           #date:Ljava/util/Date;
    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 86
    .end local v1           #f:Ljava/text/SimpleDateFormat;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
