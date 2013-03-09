.class public Lcom/htc/android/mail/pim/vcalendar/VCalComposer;
.super Ljava/lang/Object;
.source "VCalComposer.java"


# static fields
.field private static final AND_ICAL_SYNC_PROD_ID:Ljava/lang/String; = "-//HTC//AND PIM Sync Client//"

.field public static final VERSION_VCAL10_INT:I = 0x1

.field public static final VERSION_VCAL20_INT:I = 0x2

.field public static final VERSION_VCALENDAR10:Ljava/lang/String; = "vcalendar1.0"

.field public static final VERSION_VCALENDAR20:Ljava/lang/String; = "vcalendar2.0"

.field private static mNewLine:Ljava/lang/String;


# instance fields
.field private mVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "\r\n"

    sput-object v0, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private buildEventStr(Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;)Ljava/lang/String;
    .locals 10
    .parameter "stru"

    .prologue
    .line 90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .local v4, strbuf:Ljava/lang/StringBuilder;
    :try_start_0
    const-string v6, "BEGIN:VEVENT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-boolean v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->isAllday:Z

    if-nez v6, :cond_f

    .line 96
    const-string v6, "X-OBJECTTYPE:APPOINTMENT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :goto_0
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->last_update_time:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 102
    const-string v6, "LAST-MODIFIED:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->last_update_time:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_0
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 105
    const-string v6, "UID:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_1
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 108
    const-string v6, "DESCRIPTION;CHARSET=UTF-8:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_2
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 112
    const-string v6, "DTEND:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_3
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 115
    const-string v6, "DTSTART:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    :cond_4
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->alarm:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 118
    const-string v6, "AALARM:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->alarm:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_5
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 121
    const-string v6, "DURATION:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    :cond_6
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 124
    const-string v6, "LOCATION;CHARSET=UTF-8:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_7
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 128
    const-string v6, "COMPLETED:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->last_date:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    :cond_8
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 131
    const-string v6, "RRULE:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_9
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->rdate:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 134
    const-string v6, "RDATE:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->rdate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_a
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->exrule:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 137
    const-string v6, "EXRULE:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->exrule:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_b
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 140
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    const-string v7, ","

    const-string v8, ";"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    .line 141
    const-string v6, "EXDATE:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_c
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 145
    const-string v6, "SUMMARY;CHARSET=UTF-8:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    iget-object v8, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "UTF-8"

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->foldingString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_d
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 148
    const-string v3, "TENTATIVE"

    .line 149
    .local v3, stat:Ljava/lang/String;
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 160
    :goto_1
    const-string v6, "STATUS:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .end local v3           #stat:Ljava/lang/String;
    :cond_e
    iget-boolean v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->has_alarm:Z

    if-eqz v6, :cond_11

    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    if-eqz v6, :cond_11

    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_11

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_11

    .line 167
    iget-object v6, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;

    .line 168
    .local v2, r:Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    iget-object v6, p0, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    const-string v7, "vcalendar1.0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 169
    const-string v1, ""

    .line 170
    .local v1, prefix:Ljava/lang/String;
    iget v6, v2, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;->method:I

    packed-switch v6, :pswitch_data_1

    .line 182
    const-string v6, "DALARM"

    .line 166
    .end local v1           #prefix:Ljava/lang/String;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 98
    .end local v0           #i:I
    .end local v2           #r:Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    :cond_f
    const-string v6, "X-OBJECTTYPE:EVENT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 199
    :catch_0
    move-exception v5

    .line 200
    .local v5, uee:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v5}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 203
    .end local v5           #uee:Ljava/io/UnsupportedEncodingException;
    :goto_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 151
    .restart local v3       #stat:Ljava/lang/String;
    :pswitch_0
    :try_start_1
    const-string v3, "TENTATIVE"

    .line 152
    goto :goto_1

    .line 154
    :pswitch_1
    const-string v3, "CONFIRMED"

    .line 155
    goto :goto_1

    .line 157
    :pswitch_2
    const-string v3, "CANCELLED"

    goto :goto_1

    .line 172
    .end local v3           #stat:Ljava/lang/String;
    .restart local v0       #i:I
    .restart local v1       #prefix:Ljava/lang/String;
    .restart local v2       #r:Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    :pswitch_3
    const-string v1, "DALARM"

    .line 173
    goto :goto_3

    .line 175
    :pswitch_4
    const-string v1, "AALARM"

    .line 176
    goto :goto_3

    .line 178
    :pswitch_5
    const-string v1, "MALARM"

    .line 179
    goto :goto_3

    .line 189
    .end local v1           #prefix:Ljava/lang/String;
    :cond_10
    const-string v6, "BEGIN:VALARM"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ACTION:DISPLAY"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "DESCRIPTION:ReminderMSG"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "TRIGGER:PT"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v2, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;->minutes:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "M"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "END:VALARM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 198
    .end local v0           #i:I
    .end local v2           #r:Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    :cond_11
    const-string v6, "END:VEVENT"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private foldingString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 224
    .end local p1
    :goto_0
    return-object p1

    .line 211
    .restart local p1
    :cond_0
    move-object v0, p1

    .line 214
    .local v0, val:Ljava/lang/String;
    const-string v1, "\\"

    const-string v2, "\\\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 215
    const-string v1, ";"

    const-string v2, "\\;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 216
    const-string v1, ","

    const-string v2, "\\,"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 224
    goto :goto_0
.end method

.method private isNull(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    .line 229
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    :cond_0
    const/4 v0, 0x1

    .line 231
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public createVCal(Lcom/htc/android/mail/pim/vcalendar/CalendarStruct;I)Ljava/lang/String;
    .locals 5
    .parameter "struct"
    .parameter "vcalversion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/android/mail/pim/vcalendar/VCalException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .local v1, returnStr:Ljava/lang/StringBuilder;
    if-eq p2, v4, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    .line 56
    new-instance v3, Lcom/htc/android/mail/pim/vcalendar/VCalException;

    const-string v4, "version not match 1.0 or 2.0."

    invoke-direct {v3, v4}, Lcom/htc/android/mail/pim/vcalendar/VCalException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_0
    if-ne p2, v4, :cond_1

    .line 58
    const-string v3, "vcalendar1.0"

    iput-object v3, p0, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    .line 63
    :goto_0
    const-string v3, "BEGIN:VCALENDAR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 76
    iget-object v3, p1, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {p0, v3}, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->buildEventStr(Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 60
    .end local v0           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_1
    const-string v3, "vcalendar2.0"

    iput-object v3, p0, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mVersion:Ljava/lang/String;

    goto :goto_0

    .line 83
    .restart local v0       #i:I
    :cond_2
    const-string v3, "END:VCALENDAR"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/android/mail/pim/vcalendar/VCalComposer;->mNewLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
