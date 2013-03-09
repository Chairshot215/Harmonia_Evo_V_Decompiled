.class public Lcom/htc/android/mail/DateParser;
.super Ljava/lang/Object;
.source "DateParser.java"


# static fields
.field private static final DATE:I = 0x2

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final HOURS:I = 0x5

.field private static final MINUTES:I = 0x6

.field private static final MONTH:I = 0x3

.field private static final SECONDS:I = 0x7

.field private static final TZ:I = 0x8

.field private static final YEAR:I = 0x4

.field private static final sMonths:[Ljava/lang/String;

.field private static final sPattern:Ljava/util/regex/Pattern;

.field private static final sPattern2:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Jan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Feb"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Mar"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Apr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "May"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/DateParser;->sMonths:[Ljava/lang/String;

    .line 23
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/DateParser;->DEBUG:Z

    .line 39
    const-string v0, "(?:(Mon|Tue|Wed|Thu|Fri|Sat|Sun),\\s*)?(\\d{1,2})\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*(\\d{2}|\\d{4})\\s*(\\d{1,2}):(\\d{2})(?::(\\d{2}))?\\s*(UT|GMT|EST|EDT|CST|CDT|MST|MDT|PST|PDT|[A-IK-Z]|(?:(\\+|\\-)(\\d{4}))).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/DateParser;->sPattern:Ljava/util/regex/Pattern;

    .line 54
    const-string v0, "(\\d{1,2})-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-(\\d{2}|\\d{4})\\s*(\\d{1,2}):(\\d{2})(?::(\\d{2}))?\\s*(UT|GMT|EST|EDT|CST|CDT|MST|MDT|PST|PDT|[A-IK-Z]|(?:(\\+|\\-)(\\d{4})))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/DateParser;->sPattern2:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .parameter "date"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 66
    if-nez p0, :cond_1

    .line 67
    sget-boolean v4, Lcom/htc/android/mail/DateParser;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DateParser"

    const-string v5, "### date is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    .line 70
    :cond_1
    const/4 v0, 0x0

    .line 72
    .local v0, c:Ljava/util/Calendar;
    sget-object v4, Lcom/htc/android/mail/DateParser;->sPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 76
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_3

    .line 77
    sget-boolean v4, Lcom/htc/android/mail/DateParser;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "DateParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### none match (parse) date is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_2
    invoke-static {p0}, Lcom/htc/android/mail/DateParser;->parseInternalDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 79
    goto :goto_0

    .line 83
    :cond_3
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, value:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 86
    .local v1, first:C
    const/16 v4, 0x2b

    if-eq v1, v4, :cond_4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_5

    .line 87
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GMT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    :cond_5
    invoke-static {v3}, Lcom/htc/android/mail/DateParser;->translateToGMT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 93
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_6

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "19"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    :cond_6
    const/4 v4, 0x1

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 101
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-static {v0, v3}, Lcom/htc/android/mail/DateParser;->setMonth(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-static {v0, v7, v3}, Lcom/htc/android/mail/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 107
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    const/16 v4, 0xb

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 110
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    const/16 v4, 0xc

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 113
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    const/16 v4, 0xd

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static parseDateWithTimeClass(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .parameter "date"

    .prologue
    const/4 v6, 0x0

    .line 120
    const/4 v3, 0x0

    .line 121
    .local v3, result:Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, c:Ljava/util/Calendar;
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 124
    .local v4, time:Landroid/text/format/Time;
    :try_start_0
    invoke-virtual {v4, p0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 132
    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    :goto_0
    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 138
    :goto_1
    return-object v0

    .line 125
    :catch_0
    move-exception v1

    .line 127
    .local v1, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v4, p0}, Landroid/text/format/Time;->parse3339(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 132
    :goto_2
    if-eqz v3, :cond_1

    .line 133
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    goto :goto_0

    .line 128
    :catch_1
    move-exception v2

    .line 129
    .local v2, e3339:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_2

    .line 135
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #e3339:Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_3
    throw v5

    .line 135
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 132
    :catchall_0
    move-exception v5

    if-eqz v3, :cond_0

    .line 133
    invoke-virtual {v4, v6}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_3
.end method

.method public static parseInternalDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 10
    .parameter "date"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 142
    if-nez p0, :cond_1

    .line 143
    sget-boolean v4, Lcom/htc/android/mail/DateParser;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DateParser"

    const-string v5, "### internal date is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    .line 146
    :cond_1
    sget-object v4, Lcom/htc/android/mail/DateParser;->sPattern2:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 150
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_3

    .line 151
    sget-boolean v4, Lcom/htc/android/mail/DateParser;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "DateParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### none match date (parseInternalDate) is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_2
    invoke-static {p0}, Lcom/htc/android/mail/DateParser;->parseDateWithTimeClass(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 156
    :cond_3
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, value:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 159
    .local v1, first:C
    const/16 v4, 0x2b

    if-eq v1, v4, :cond_4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_5

    .line 160
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GMT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    :cond_5
    sget-boolean v4, Lcom/htc/android/mail/DateParser;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "ROY"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "************ parseInternalDate match date is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", gmt value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/htc/android/mail/DateParser;->translateToGMT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_6
    invoke-static {v3}, Lcom/htc/android/mail/DateParser;->translateToGMT(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 168
    .local v0, c:Ljava/util/Calendar;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_7

    .line 171
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "19"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    :cond_7
    invoke-static {v0, v7, v3}, Lcom/htc/android/mail/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 176
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 177
    invoke-static {v0, v3}, Lcom/htc/android/mail/DateParser;->setMonth(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v0, v9, v3}, Lcom/htc/android/mail/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 182
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 183
    const/16 v4, 0xb

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 185
    invoke-virtual {v2, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 186
    const/16 v4, 0xc

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 188
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 189
    const/16 v4, 0xd

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static final setField(Ljava/util/Calendar;ILjava/lang/String;)V
    .locals 3
    .parameter "c"
    .parameter "field"
    .parameter "s"

    .prologue
    .line 195
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    .line 196
    .local v1, min:I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    .line 199
    .local v0, max:I
    if-nez p2, :cond_2

    .line 200
    const/4 v2, 0x0

    .line 205
    .local v2, value:I
    :goto_0
    if-lt v2, v1, :cond_0

    if-le v2, v0, :cond_1

    .line 206
    :cond_0
    move v2, v1

    .line 209
    :cond_1
    invoke-virtual {p0, p1, v2}, Ljava/util/Calendar;->set(II)V

    .line 210
    return-void

    .line 202
    .end local v2           #value:I
    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .restart local v2       #value:I
    goto :goto_0
.end method

.method private static final setMonth(Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 3
    .parameter "c"
    .parameter "value"

    .prologue
    .line 215
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/android/mail/DateParser;->sMonths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 216
    sget-object v1, Lcom/htc/android/mail/DateParser;->sMonths:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    const/4 v1, 0x2

    add-int/lit8 v2, v0, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 225
    return-void

    .line 215
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static translateToGMT(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "tz"

    .prologue
    .line 228
    if-nez p0, :cond_1

    .line 250
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 231
    .restart local p0
    :cond_1
    const-string v0, "UT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    const-string p0, "GMT+0000"

    goto :goto_0

    .line 233
    :cond_2
    const-string v0, "EST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    const-string p0, "GMT-0500"

    goto :goto_0

    .line 235
    :cond_3
    const-string v0, "EDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    const-string p0, "GMT-0400"

    goto :goto_0

    .line 237
    :cond_4
    const-string v0, "CST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    const-string p0, "GMT-0600"

    goto :goto_0

    .line 239
    :cond_5
    const-string v0, "CDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 240
    const-string p0, "GMT-0500"

    goto :goto_0

    .line 241
    :cond_6
    const-string v0, "MST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    const-string p0, "GMT-0700"

    goto :goto_0

    .line 243
    :cond_7
    const-string v0, "MDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    const-string p0, "GMT-0600"

    goto :goto_0

    .line 245
    :cond_8
    const-string v0, "PST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 246
    const-string p0, "GMT-0800"

    goto :goto_0

    .line 247
    :cond_9
    const-string v0, "PDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    const-string p0, "GMT-0700"

    goto :goto_0
.end method
