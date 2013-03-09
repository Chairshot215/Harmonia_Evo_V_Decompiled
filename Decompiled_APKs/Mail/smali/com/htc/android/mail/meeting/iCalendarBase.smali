.class public Lcom/htc/android/mail/meeting/iCalendarBase;
.super Ljava/lang/Object;
.source "iCalendarBase.java"


# static fields
.field public static final ACCEPT:Ljava/lang/String; = "ACCEPTED"

.field public static final ACTION:Ljava/lang/String; = "ACTION"

.field public static final ATTENDEE:Ljava/lang/String; = "ATTENDEE"

.field public static final BEGINT:Ljava/lang/String; = "BEGIN"

.field private static final CALENDAR_ATTENDEE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT"

.field public static final CALENDAR_ATTENDEE_ACCEPT:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=ACCEPTED"

.field public static final CALENDAR_ATTENDEE_CANCEL:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT"

.field public static final CALENDAR_ATTENDEE_DECLINE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=DECLINED"

.field public static final CALENDAR_ATTENDEE_INVITE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=NEEDS-ACTION;RSVP=TRUE"

.field public static final CALENDAR_ATTENDEE_TENTATIVE:Ljava/lang/String; = "ATTENDEE;ROLE=REQ-PARTICIPANT;PARTSTAT=TENTATIVE"

.field public static final CHAR_MAX_BYTES_IN_UTF8:I = 0x4

.field public static final CLASS:Ljava/lang/String; = "CLASS"

.field public static final CRLF:Ljava/lang/String; = "\r\n"

.field public static final DECLINE:Ljava/lang/String; = "DECLINED"

.field public static final DESCRIPTION:Ljava/lang/String; = "DESCRIPTION"

.field public static final DTEND:Ljava/lang/String; = "DTEND"

.field public static final DTSTAMP:Ljava/lang/String; = "DTSTAMP"

.field public static final DTSTART:Ljava/lang/String; = "DTSTART"

.field public static final END:Ljava/lang/String; = "END"

.field public static final LOCATION:Ljava/lang/String; = "LOCATION"

.field public static final MAILTO:Ljava/lang/String; = "MAILTO"

.field public static final MAX_LINE_LENGTH:I = 0x4b

.field public static final METHOD:Ljava/lang/String; = "METHOD"

.field public static final MS_ALL_DAY:Ljava/lang/String; = "X-MICROSOFT-CDO-ALLDAYEVENT"

.field public static final MS_IMPORTANCE:Ljava/lang/String; = "X-MICROSOFT-CDO-IMPORTANCE"

.field public static final MS_OLK_ORIGINALEND:Ljava/lang/String; = "X-MS-OLK-ORIGINALEND"

.field public static final MS_OLK_ORIGINALSTART:Ljava/lang/String; = "X-MS-OLK-ORIGINALSTART"

.field public static final ORGANIZER:Ljava/lang/String; = "ORGANIZER"

.field public static final PRIORITY:Ljava/lang/String; = "PRIORITY"

.field public static final PRIORITY_HIGH:I = 0x2

.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1

.field public static final PRODID:Ljava/lang/String; = "PRODID"

.field public static final RECURRENCE_ID:Ljava/lang/String; = "RECURRENCE-ID"

.field public static final RRULE:Ljava/lang/String; = "RRULE"

.field public static final SEQUENCE:Ljava/lang/String; = "SEQUENCE"

.field public static final STATUS:Ljava/lang/String; = "STATUS"

.field public static final SUMMARY:Ljava/lang/String; = "SUMMARY"

.field public static final TENTATICE:Ljava/lang/String; = "TENTATIVE"

.field public static final TRANSP:Ljava/lang/String; = "TRANSP"

.field public static final TRIGGER:Ljava/lang/String; = "TRIGGER"

.field public static final UID:Ljava/lang/String; = "UID"

.field public static final VERSION:Ljava/lang/String; = "VERSION"

.field public static final value_ACTION_AUDIO:Ljava/lang/String; = "AUDIO"

.field public static final value_ACTION_DISPLAY:Ljava/lang/String; = "DISPLAY"

.field public static final value_ACTION_EMAIL:Ljava/lang/String; = "EMAIL"

.field public static final value_ACTION_PROCEDURE:Ljava/lang/String; = "PROCEDURE"

.field public static final value_CLASS_CONFIDENTIAL:Ljava/lang/String; = "CONFIDENTIAL"

.field public static final value_CLASS_PRIVATE:Ljava/lang/String; = "PRIVATE"

.field public static final value_CLASS_PUBLIC:Ljava/lang/String; = "PUBLIC"

.field public static final value_METHOD_COUNTER:Ljava/lang/String; = "COUNTER"

.field public static final value_METHOD_REPLY:Ljava/lang/String; = "REPLY"

.field public static final value_METHOD_REQUEST:Ljava/lang/String; = "REQUEST"

.field public static final value_PRIORITY_NORMAL:Ljava/lang/String; = "5"

.field public static final value_PRODID:Ljava/lang/String; = "-//HTC Corporation//Email 1.0 MIMEDIR//EN"

.field public static final value_SEQUENCE:Ljava/lang/String; = "0"

.field public static final value_STATUS_CANCELLED:Ljava/lang/String; = "CANCELLED"

.field public static final value_STATUS_CONFIRMED:Ljava/lang/String; = "CONFIRMED"

.field public static final value_STATUS_TENTATIVE:Ljava/lang/String; = "TENTATIVE"

.field public static final value_TRANSP_OPAQUE:Ljava/lang/String; = "OPAQUE"

.field public static final value_TRANSP_TRANSPARENT:Ljava/lang/String; = "TRANSPARENT"

.field public static final value_VALARM:Ljava/lang/String; = "VALARM"

.field public static final value_VCALENDAR:Ljava/lang/String; = "VCALENDAR"

.field public static final value_VERSION:Ljava/lang/String; = "2.0"

.field public static final value_VEVENT:Ljava/lang/String; = "VEVENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static escapeTextValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x5c

    .line 177
    if-nez p0, :cond_0

    .line 178
    const/4 v3, 0x0

    .line 194
    :goto_0
    return-object v3

    .line 180
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 181
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 182
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 183
    .local v0, ch:C
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 184
    const-string v3, "\\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 185
    :cond_2
    const/16 v3, 0xd

    if-eq v0, v3, :cond_1

    .line 187
    const/16 v3, 0x2c

    if-eq v0, v3, :cond_3

    const/16 v3, 0x3b

    if-eq v0, v3, :cond_3

    if-ne v0, v4, :cond_4

    .line 188
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 191
    :cond_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 194
    .end local v0           #ch:C
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getCalendarAttendeeStatus(I)I
    .locals 1
    .parameter "cmd"

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, ret:I
    packed-switch p0, :pswitch_data_0

    .line 141
    :goto_0
    :pswitch_0
    return v0

    .line 129
    :pswitch_1
    const/4 v0, 0x3

    .line 130
    goto :goto_0

    .line 132
    :pswitch_2
    const/4 v0, 0x1

    .line 133
    goto :goto_0

    .line 135
    :pswitch_3
    const/4 v0, 0x2

    .line 136
    goto :goto_0

    .line 138
    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getMethod(I)Ljava/lang/String;
    .locals 1
    .parameter "cmd"

    .prologue
    .line 89
    const-string v0, "REQUEST"

    .line 91
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 100
    const-string v0, "REPLY"

    .line 104
    :goto_0
    return-object v0

    .line 94
    :pswitch_0
    const-string v0, "REQUEST"

    .line 95
    goto :goto_0

    .line 97
    :pswitch_1
    const-string v0, "COUNTER"

    .line 98
    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getResponseString(I)Ljava/lang/String;
    .locals 1
    .parameter "cmd"

    .prologue
    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, ret:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    return-object v0

    .line 111
    :pswitch_1
    const-string v0, "ACCEPTED"

    .line 112
    goto :goto_0

    .line 114
    :pswitch_2
    const-string v0, "DECLINED"

    .line 115
    goto :goto_0

    .line 118
    :pswitch_3
    const-string v0, "TENTATIVE"

    goto :goto_0

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static isNeedEscape(Ljava/lang/String;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 145
    const-string v0, "CALSCALE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "METHOD"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PRODID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VERSION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CATEGORIES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CLASS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "COMMENT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DESCRIPTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LOCATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RESOURCES"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "STATUS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "SUMMARY"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TRANSP"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TZID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TZNAME"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CONTACT"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RELATED-TO"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UID"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ACTION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "REQUEST-STATUS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X-LIC-LOCATION"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    const/4 v0, 0x1

    .line 169
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static quoteParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "paramValue"

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 209
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\'"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
