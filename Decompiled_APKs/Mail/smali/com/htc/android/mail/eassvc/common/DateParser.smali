.class public Lcom/htc/android/mail/eassvc/common/DateParser;
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
    .line 37
    sget-boolean v0, Lcom/htc/android/mail/Mail;->EAS_DEBUG:Z

    sput-boolean v0, Lcom/htc/android/mail/eassvc/common/DateParser;->DEBUG:Z

    .line 39
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

    sput-object v0, Lcom/htc/android/mail/eassvc/common/DateParser;->sMonths:[Ljava/lang/String;

    .line 58
    const-string v0, "(?:(Mon|Tue|Wed|Thu|Fri|Sat|Sun),\\s*)?(\\d{1,2})\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*(\\d{2}|\\d{4})\\s*(\\d{1,2}):(\\d{2})(?::(\\d{2}))?\\s*(UT|GMT|EST|EDT|CST|CDT|MST|MDT|PST|PDT|[A-IK-Z]|(?:(\\+|\\-)(\\d{4}))).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/DateParser;->sPattern:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "(\\d{1,2})-(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)-(\\d{2}|\\d{4})\\s*(\\d{1,2}):(\\d{2})(?::(\\d{2}))?\\s*(UT|GMT|EST|EDT|CST|CDT|MST|MDT|PST|PDT|[A-IK-Z]|(?:(\\+|\\-)(\\d{4})))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/htc/android/mail/eassvc/common/DateParser;->sPattern2:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 8
    .parameter "date"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    .line 85
    if-nez p0, :cond_1

    .line 86
    sget-boolean v4, Lcom/htc/android/mail/eassvc/common/DateParser;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DateParser"

    const-string v5, "### date is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    .line 89
    :cond_1
    const/4 v0, 0x0

    .line 91
    .local v0, c:Ljava/util/Calendar;
    sget-object v4, Lcom/htc/android/mail/eassvc/common/DateParser;->sPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 95
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_2

    .line 97
    invoke-static {p0}, Lcom/htc/android/mail/eassvc/common/DateParser;->parseInternalDate(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 98
    goto :goto_0

    .line 102
    :cond_2
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, value:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 105
    .local v1, first:C
    const/16 v4, 0x2b

    if-eq v1, v4, :cond_3

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_4

    .line 106
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GMT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 109
    :cond_4
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 112
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_5

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "19"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 118
    :cond_5
    const/4 v4, 0x1

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 120
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v0, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setMonth(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v0, v7, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 126
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 127
    const/16 v4, 0xb

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 129
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 130
    const/16 v4, 0xc

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 132
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 133
    const/16 v4, 0xd

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static parseInternalDate(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 9
    .parameter "date"

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 139
    if-nez p0, :cond_1

    .line 140
    sget-boolean v4, Lcom/htc/android/mail/eassvc/common/DateParser;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "DateParser"

    const-string v5, "### internal date is null"

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 187
    :goto_0
    return-object v0

    .line 143
    :cond_1
    sget-object v4, Lcom/htc/android/mail/eassvc/common/DateParser;->sPattern2:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 147
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_3

    .line 148
    sget-boolean v4, Lcom/htc/android/mail/eassvc/common/DateParser;->DEBUG:Z

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

    invoke-static {v4, v5}, Lcom/htc/android/mail/eassvc/util/EASLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_3
    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, value:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 155
    .local v1, first:C
    const/16 v4, 0x2b

    if-eq v1, v4, :cond_4

    const/16 v4, 0x2d

    if-ne v1, v4, :cond_5

    .line 156
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

    .line 161
    :cond_5
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, c:Ljava/util/Calendar;
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v7, :cond_6

    .line 167
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "19"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    :cond_6
    invoke-static {v0, v6, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 172
    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {v0, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setMonth(Ljava/util/Calendar;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v0, v8, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 178
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    const/16 v4, 0xb

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 181
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    const/16 v4, 0xc

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    .line 184
    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 185
    const/16 v4, 0xd

    invoke-static {v0, v4, v3}, Lcom/htc/android/mail/eassvc/common/DateParser;->setField(Ljava/util/Calendar;ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static final setField(Ljava/util/Calendar;ILjava/lang/String;)V
    .locals 3
    .parameter "c"
    .parameter "field"
    .parameter "s"

    .prologue
    .line 191
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    .line 192
    .local v1, min:I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    .line 195
    .local v0, max:I
    if-nez p2, :cond_2

    .line 196
    const/4 v2, 0x0

    .line 201
    .local v2, value:I
    :goto_0
    if-lt v2, v1, :cond_0

    if-le v2, v0, :cond_1

    .line 202
    :cond_0
    move v2, v1

    .line 205
    :cond_1
    invoke-virtual {p0, p1, v2}, Ljava/util/Calendar;->set(II)V

    .line 206
    return-void

    .line 198
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
    .line 211
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/htc/android/mail/eassvc/common/DateParser;->sMonths:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 212
    sget-object v1, Lcom/htc/android/mail/eassvc/common/DateParser;->sMonths:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    :cond_0
    const/4 v1, 0x2

    add-int/lit8 v2, v0, 0x0

    invoke-virtual {p0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 221
    return-void

    .line 211
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
