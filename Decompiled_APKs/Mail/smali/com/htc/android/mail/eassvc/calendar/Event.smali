.class public Lcom/htc/android/mail/eassvc/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    }
.end annotation


# static fields
.field private static final REMINDERS_INDEX_METHOD:I = 0x2

.field private static final REMINDERS_INDEX_MINUTES:I = 0x1

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"


# instance fields
.field public _id:Ljava/lang/String;

.field public _sync_id:Ljava/lang/String;

.field public attendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field public bodyFormat:Ljava/lang/String;

.field public calendarId:J

.field public categories:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public dtEnd:Landroid/text/format/Time;

.field public dtStart:Landroid/text/format/Time;

.field public duration:Ljava/lang/String;

.field public exDate:Ljava/lang/String;

.field public exRule:Ljava/lang/String;

.field public freeBusyStatus:I

.field public hasAlarm:Z

.field public isAllDay:Z

.field public location:Ljava/lang/String;

.field public mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

.field public meetingStatus:I

.field public parentID:I

.field public rDate:Ljava/lang/String;

.field public rRule:Ljava/lang/String;

.field private reminderCursor:Landroid/database/Cursor;

.field public reminders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public selfAttendeeStatus:I

.field public strDTEnd:Ljava/lang/String;

.field public strDTStart:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "method"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/android/mail/eassvc/calendar/Event;->REMINDERS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;J)V
    .locals 0
    .parameter "account"
    .parameter "calendarId"

    .prologue
    .line 82
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->mAccount:Lcom/htc/android/mail/eassvc/pim/ExchangeAccount;

    .line 84
    iput-wide p2, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->calendarId:J

    .line 85
    return-void
.end method

.method private static extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;
    .locals 3
    .parameter "recurrence"

    .prologue
    .line 187
    if-nez p0, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 194
    :goto_0
    return-object v1

    .line 190
    :cond_0
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 191
    .local v0, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v0, :cond_1

    .line 192
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

    .line 194
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractDurationMinutes(Landroid/text/format/Time;)J
    .locals 4
    .parameter "t"

    .prologue
    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static extractDurationMinutes(Ljava/lang/String;)J
    .locals 10
    .parameter "t"

    .prologue
    const/4 v9, -0x1

    .line 248
    const/4 v4, 0x0

    .local v4, pos1:I
    const/4 v5, 0x0

    .line 249
    .local v5, pos2:I
    const/4 v3, 0x0

    .line 250
    .local v3, negative:Z
    const/4 v0, 0x0

    .local v0, day:I
    const/4 v1, 0x0

    .local v1, hour:I
    const/4 v2, 0x0

    .local v2, minute:I
    const/4 v6, 0x0

    .local v6, second:I
    const/4 v7, 0x0

    .line 253
    .local v7, week:I
    const/16 v8, 0x2d

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 254
    const/4 v3, 0x1

    .line 255
    :cond_0
    const/16 v8, 0x50

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 256
    if-ne v4, v9, :cond_2

    .line 295
    :cond_1
    :goto_0
    mul-int/lit8 v8, v1, 0x3c

    add-int/2addr v8, v2

    mul-int/lit8 v9, v0, 0x18

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v8, v9

    int-to-long v8, v8

    return-wide v8

    .line 260
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 262
    const/16 v8, 0x44

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 263
    if-eq v5, v9, :cond_3

    .line 264
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 267
    :cond_3
    const/16 v8, 0x54

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 268
    if-eq v5, v9, :cond_6

    .line 269
    add-int/lit8 v4, v5, 0x1

    .line 270
    const/16 v8, 0x48

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 271
    if-eq v5, v9, :cond_4

    .line 272
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 273
    add-int/lit8 v4, v5, 0x1

    .line 275
    :cond_4
    const/16 v8, 0x4d

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 276
    if-eq v5, v9, :cond_5

    .line 277
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 278
    add-int/lit8 v4, v5, 0x1

    .line 280
    :cond_5
    const/16 v8, 0x53

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 281
    if-eq v5, v9, :cond_6

    .line 282
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 283
    add-int/lit8 v4, v5, 0x1

    .line 287
    :cond_6
    const/16 v8, 0x57

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 288
    if-eq v5, v9, :cond_1

    .line 289
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 290
    mul-int/lit8 v0, v7, 0x7

    goto :goto_0
.end method

.method private static extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 200
    invoke-static {p0, p1}, Lcom/htc/android/mail/eassvc/calendar/Event;->extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v0

    .line 217
    .end local v0           #val:Ljava/lang/String;
    .local v1, val:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 206
    .end local v1           #val:Ljava/lang/String;
    .restart local v0       #val:Ljava/lang/String;
    :cond_0
    const-string v2, "\\r\\n"

    const-string v3, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v2, "\\t"

    const-string v3, "    "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v2, "\\\\"

    const-string v3, "\\"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v2, "\\;"

    const-string v3, ";"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 214
    const-string v2, "\\,"

    const-string v3, ","

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v2, "\\\""

    const-string v3, "\""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 217
    .end local v0           #val:Ljava/lang/String;
    .restart local v1       #val:Ljava/lang/String;
    goto :goto_0
.end method

.method private static extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "component"
    .parameter "propertyName"

    .prologue
    const/4 v5, 0x0

    .line 222
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    .line 223
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v3, :cond_1

    .line 225
    const-string v6, "ENCODING"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v2

    .line 226
    .local v2, enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    const-string v6, "CHARSET"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 228
    .local v0, charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v2, :cond_0

    if-nez v0, :cond_2

    .line 229
    :cond_0
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 244
    .end local v0           #charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    .end local v2           #enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_1
    :goto_0
    return-object v5

    .line 231
    .restart local v0       #charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    .restart local v2       #enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_2
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "QUOTED-PRINTABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 232
    new-instance v4, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-direct {v4}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>()V

    .line 234
    .local v4, qpdec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :try_start_0
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 235
    :catch_0
    move-exception v1

    .line 236
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 239
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #qpdec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :cond_3
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "BASE64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 240
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private static extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v0

    .line 153
    .local v0, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 156
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private fixAllDayOffset(Landroid/text/format/Time;J)F
    .locals 11
    .parameter "time"
    .parameter "offset"

    .prologue
    const-wide/32 v9, 0x36ee80

    const/4 v8, 0x0

    .line 314
    const-string v4, "EAS_CALMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fixAllDayOffset time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    div-long v6, p2, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const v0, 0x36ee80

    .line 316
    .local v0, MILLIS:I
    iget v4, p1, Landroid/text/format/Time;->hour:I

    int-to-float v1, v4

    .line 317
    .local v1, hour:F
    div-long v4, p2, v9

    long-to-float v3, v4

    .line 319
    .local v3, offsetHour:F
    const-string v4, "EAS_CALMGR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fixAllDayOffset hour:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " offsetHour:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 v2, 0x0

    .line 321
    .local v2, needFixHour:F
    add-float v4, v1, v3

    cmpg-float v4, v4, v8

    if-gez v4, :cond_0

    .line 322
    add-float v4, v1, v3

    sub-float v2, v8, v4

    .line 325
    :cond_0
    const v4, 0x4a5bba00

    mul-float/2addr v4, v2

    return v4
.end method

.method private static flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "component"
    .parameter "name"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 162
    .local v2, properties:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendarcommon/ICalendar$Property;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 163
    :cond_0
    const/4 v5, 0x0

    .line 183
    :goto_0
    return-object v5

    .line 166
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 167
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 170
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 173
    .local v0, first:Z
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendarcommon/ICalendar$Property;

    .line 174
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_3

    .line 175
    const/4 v0, 0x0

    .line 181
    :goto_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 179
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 183
    .end local v3           #property:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public addReminder(JI)V
    .locals 2
    .parameter "minute"
    .parameter "method"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    new-instance v1, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;-><init>(JI)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 386
    return-void
.end method

.method public getAlarmCV()[Landroid/content/ContentValues;
    .locals 7

    .prologue
    .line 498
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 499
    :cond_0
    const/4 v1, 0x0

    .line 507
    :cond_1
    return-object v1

    .line 500
    :cond_2
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v1, v3, [Landroid/content/ContentValues;

    .line 501
    .local v1, cvs:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 502
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 503
    .local v0, cv:Landroid/content/ContentValues;
    const-string v4, "method"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;

    iget v3, v3, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;->method:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 504
    const-string v4, "minutes"

    iget-object v3, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;

    iget-wide v5, v3, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;->minutes:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 505
    aput-object v0, v1, v2

    .line 501
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getAttendeeCV()[Landroid/content/ContentValues;
    .locals 7

    .prologue
    .line 511
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 512
    :cond_0
    const/4 v1, 0x0

    .line 556
    :cond_1
    return-object v1

    .line 513
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v1, v5, [Landroid/content/ContentValues;

    .line 514
    .local v1, cvs:[Landroid/content/ContentValues;
    const/4 v4, 0x0

    .line 515
    .local v4, type:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 516
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 517
    .local v0, cv:Landroid/content/ContentValues;
    const-string v6, "attendeeName"

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Name:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v6, "attendeeEmail"

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    iget-object v5, v5, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->EMail:Ljava/lang/String;

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    iget v5, v5, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Status:I

    packed-switch v5, :pswitch_data_0

    .line 530
    const/4 v3, 0x0

    .line 533
    .local v3, status:I
    :goto_1
    const-string v5, "attendeeStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 535
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    iget v5, v5, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->Type:I

    packed-switch v5, :pswitch_data_1

    .line 544
    const/4 v4, 0x0

    .line 547
    :goto_2
    const-string v5, "attendeeType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    iget-boolean v5, v5, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->isOrganizer:Z

    if-eqz v5, :cond_3

    .line 550
    const-string v5, "attendeeRelationship"

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    :goto_3
    aput-object v0, v1, v2

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v3           #status:I
    :pswitch_0
    const/4 v3, 0x1

    .line 522
    .restart local v3       #status:I
    goto :goto_1

    .line 524
    .end local v3           #status:I
    :pswitch_1
    const/4 v3, 0x2

    .line 525
    .restart local v3       #status:I
    goto :goto_1

    .line 537
    :pswitch_2
    const/4 v4, 0x1

    .line 538
    goto :goto_2

    .line 540
    :pswitch_3
    const/4 v4, 0x2

    .line 541
    goto :goto_2

    .line 552
    :cond_3
    const-string v5, "attendeeRelationship"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 535
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDataString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 88
    new-instance v3, Ljava/lang/StringBuffer;

    const/16 v4, 0x200

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 89
    .local v3, sb:Ljava/lang/StringBuffer;
    const-string v4, " ::_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v4, ", ::uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->uid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v4, ", ::categories="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->categories:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v4, ", ::type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const-string v4, ", ::strDTEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v4, ", ::strDTStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTStart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const-string v4, ", ::dtEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 96
    const-string v4, ", ::dtStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 97
    const-string v4, ", ::timezone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->timezone:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const-string v4, ", ::description="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->description:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 99
    const-string v4, ", ::bodyFormat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->bodyFormat:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    const-string v4, ", ::summary="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v4, ", ::location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->location:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    const-string v4, ", ::duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->duration:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    const-string v4, ", ::rRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->rRule:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    const-string v4, ", ::rDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->rDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    const-string v4, ", ::exRule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->exRule:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v4, ", ::exDate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->exDate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    const-string v4, ", ::isAllDay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->isAllDay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 108
    const-string v4, ", ::hasAlarm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-boolean v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->hasAlarm:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 109
    const-string v4, ", ::freeBusyStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    const-string v4, ", ::selfAttendeeStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->selfAttendeeStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 111
    const-string v4, ", ::parentID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->parentID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 112
    const-string v4, ", ::meetingStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->meetingStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 113
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 114
    const-string v4, ", ::reminders=[[["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;

    .line 116
    .local v2, reminder:Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v2}, Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 118
    .end local v2           #reminder:Lcom/htc/android/mail/eassvc/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    :cond_0
    const-string v4, "]]]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_1
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 123
    const-string v4, ", ::attendees=[[["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    .line 125
    .local v0, attendee:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 120
    .end local v0           #attendee:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v4, ", ::reminders="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    const-string v4, "null"

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v4, "0"

    goto :goto_3

    .line 127
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    const-string v4, "]]]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_4
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 129
    :cond_4
    const-string v4, ", ::attendees="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    if-nez v4, :cond_5

    const-string v4, "null"

    :goto_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    const-string v4, "0"

    goto :goto_5
.end method

.method public getEventCV()Landroid/content/ContentValues;
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 404
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 408
    .local v2, cv:Landroid/content/ContentValues;
    const-string v5, "_sync_id"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->_sync_id:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v5, "calendar_id"

    iget-wide v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->calendarId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 412
    const-string v5, "iCalGUID"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->uid:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->parentID:I

    if-lez v5, :cond_0

    .line 415
    const-string v5, "parentID"

    iget v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->parentID:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 418
    :cond_0
    const-string v5, "availability"

    iget v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->freeBusyStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string v5, "selfAttendeeStatus"

    iget v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->selfAttendeeStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 423
    const-string v5, "title"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->summary:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    if-eqz v5, :cond_1

    .line 426
    const-string v5, "dtstart"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    invoke-virtual {v8, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 427
    :cond_1
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    if-eqz v5, :cond_2

    .line 428
    const-string v5, "dtend"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    invoke-virtual {v8, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 430
    :cond_2
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->duration:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 431
    const-string v5, "duration"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->duration:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_3
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->location:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 435
    const-string v5, "eventLocation"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->location:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    :cond_4
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->description:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 438
    const-string v5, "description"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->description:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_5
    const-string v8, "allDay"

    iget-boolean v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->isAllDay:Z

    if-ne v5, v6, :cond_a

    move v5, v6

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 452
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->timezone:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 453
    const-string v5, "eventTimezone"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->timezone:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    :cond_6
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->reminders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_b

    .line 457
    const-string v5, "hasAlarm"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 462
    :goto_1
    const-string v5, "rrule"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->rRule:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    const-string v5, "rdate"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->rDate:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v5, "exrule"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->exRule:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v5, "exdate"

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->exDate:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    .line 471
    const/4 v4, 0x0

    .line 472
    .local v4, organizerFlag:Z
    const/4 v1, 0x0

    .line 473
    .local v1, attendeeFlag:Z
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->attendees:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;

    .line 474
    .local v0, attendee:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    iget-boolean v5, v0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->isOrganizer:Z

    if-eqz v5, :cond_c

    .line 475
    const/4 v4, 0x1

    .line 476
    const-string v5, "organizer"

    iget-object v8, v0, Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;->EMail:Ljava/lang/String;

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_8
    :goto_2
    if-eqz v4, :cond_7

    if-eqz v1, :cond_7

    .line 486
    .end local v0           #attendee:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    .end local v1           #attendeeFlag:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #organizerFlag:Z
    :cond_9
    const-string v5, "MeetingStatus"

    iget v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->meetingStatus:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->bodyFormat:Ljava/lang/String;

    if-eqz v5, :cond_d

    const/4 v5, 0x2

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->bodyFormat:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v5, v8, :cond_d

    .line 489
    const-string v5, "desc_mime_type"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 494
    :goto_3
    return-object v2

    :cond_a
    move v5, v7

    .line 440
    goto/16 :goto_0

    .line 459
    :cond_b
    const-string v5, "hasAlarm"

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 477
    .restart local v0       #attendee:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    .restart local v1       #attendeeFlag:Z
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #organizerFlag:Z
    :cond_c
    if-nez v1, :cond_8

    .line 478
    const/4 v1, 0x1

    .line 479
    const-string v5, "hasAttendeeData"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 491
    .end local v0           #attendee:Lcom/htc/android/mail/eassvc/calendar/Event$Attendee;
    .end local v1           #attendeeFlag:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #organizerFlag:Z
    :cond_d
    const-string v5, "desc_mime_type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->_id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 146
    const/4 v0, -0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 5
    .parameter "end"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTEnd:Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTEnd:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 346
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    .line 347
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 348
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->isAllDay:Z

    if-eqz v0, :cond_0

    .line 349
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d%02d%02dT000000Z"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTEnd:Ljava/lang/String;

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    goto :goto_0
.end method

.method public setEndTime(Ljava/lang/String;J)V
    .locals 9
    .parameter "end"
    .parameter "offset"

    .prologue
    const/4 v8, 0x0

    .line 363
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTEnd:Ljava/lang/String;

    .line 365
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTEnd:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 366
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    .line 367
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 368
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    invoke-virtual {v4, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 369
    .local v2, millis:J
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    invoke-direct {p0, v4, p2, p3}, Lcom/htc/android/mail/eassvc/calendar/Event;->fixAllDayOffset(Landroid/text/format/Time;J)F

    move-result v4

    float-to-long v0, v4

    .line 370
    .local v0, fixInMillis:J
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    add-long v5, v2, p2

    add-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 371
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    invoke-virtual {v4, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 372
    iget-boolean v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->isAllDay:Z

    if-eqz v4, :cond_0

    .line 373
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d%02d%02dT000000Z"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->monthDay:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTEnd:Ljava/lang/String;

    .line 379
    .end local v0           #fixInMillis:J
    .end local v2           #millis:J
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtEnd:Landroid/text/format/Time;

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->_id:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 5
    .parameter "start"

    .prologue
    .line 303
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTStart:Ljava/lang/String;

    .line 304
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    .line 305
    iget-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 307
    iget-boolean v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->isAllDay:Z

    if-eqz v0, :cond_0

    .line 308
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d%02d%02dT000000Z"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTStart:Ljava/lang/String;

    .line 311
    :cond_0
    return-void
.end method

.method public setStartTime(Ljava/lang/String;J)V
    .locals 9
    .parameter "start"
    .parameter "offset"

    .prologue
    const/4 v8, 0x0

    .line 329
    iput-object p1, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTStart:Ljava/lang/String;

    .line 330
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    .line 331
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTStart:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 332
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    invoke-virtual {v4, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 333
    .local v2, millis:J
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    invoke-direct {p0, v4, p2, p3}, Lcom/htc/android/mail/eassvc/calendar/Event;->fixAllDayOffset(Landroid/text/format/Time;J)F

    move-result v4

    float-to-long v0, v4

    .line 334
    .local v0, fixOffsetInMillis:J
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    add-long v5, v2, p2

    add-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 335
    iget-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    invoke-virtual {v4, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 336
    iget-boolean v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->isAllDay:Z

    if-eqz v4, :cond_0

    .line 337
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d%02d%02dT000000Z"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->month:I

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget-object v8, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->dtStart:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->monthDay:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/android/mail/eassvc/calendar/Event;->strDTStart:Ljava/lang/String;

    .line 340
    :cond_0
    return-void
.end method
