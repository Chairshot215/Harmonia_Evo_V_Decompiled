.class public Lcom/htc/util/calendar/vcalendar/VCalendarUtils;
.super Ljava/lang/Object;
.source "VCalendarUtils.java"

# interfaces
.implements Lcom/htc/util/calendar/vcalendar/HashItem;


# static fields
.field public static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field public static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field private static final RULE_SEPARATOR:Ljava/lang/String; = "\n"

.field private static final TAG:Ljava/lang/String; = "VCalendarUtils"

.field private static final VBEGIN:Ljava/lang/String; = "BEGIN:VCALENDAR"

.field private static final VEND:Ljava/lang/String; = "END:VCALENDAR"

.field private static final default_charset:Ljava/lang/String; = "UTF-8"

.field static final weekDayAry:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final weekDays:[Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field public final WKST:Ljava/lang/String;

.field private _id:Ljava/lang/String;

.field public alarm:J

.field public categories:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public dtEnd:Landroid/text/format/Time;

.field public dtStart:Landroid/text/format/Time;

.field public duration:Ljava/lang/String;

.field public exDate:Ljava/lang/String;

.field public exRule:Ljava/lang/String;

.field public hasAlarm:Z

.field public isAllDay:Z

.field public last_update_time:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field private mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public priority:Ljava/lang/String;

.field public rDate:Ljava/lang/String;

.field public rRule:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public strAlarm:Ljava/lang/String;

.field public strDTEnd:Ljava/lang/String;

.field public strDTStart:Ljava/lang/String;

.field public summary:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field private vCalendar:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    .line 102
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "SU"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "MO"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "TU"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "WE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "TH"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "FR"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "SA"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SU"

    aput-object v1, v0, v3

    const-string v1, "MO"

    aput-object v1, v0, v4

    const-string v1, "TU"

    aput-object v1, v0, v5

    const-string v1, "WE"

    aput-object v1, v0, v6

    const-string v1, "TH"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "FR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "SA"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDays:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1
    .parameter "c"
    .parameter "uniEventUri"

    .prologue
    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1
    .parameter "eventCur"
    .parameter "c"

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->init(Landroid/database/Cursor;Landroid/content/Context;)V

    .line 131
    return-void
.end method

.method private checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "dayOffset"
    .parameter "dbStartTime"
    .parameter "monthDay"

    .prologue
    const/4 v6, 0x4

    .line 1608
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1609
    .local v1, nDay:I
    invoke-virtual {p2, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    .line 1610
    .local v0, MAX_DAY:I
    add-int v2, v1, p1

    .line 1612
    .local v2, tempDay:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1613
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MAX_DAY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1614
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tempDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbStartTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1616
    sub-int v3, v2, v0

    if-lez v3, :cond_1

    .line 1618
    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v3, 0x1

    .line 1634
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">> nDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1635
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1619
    :cond_1
    if-nez v2, :cond_3

    .line 1621
    iget v3, p2, Landroid/text/format/Time;->month:I

    if-nez v3, :cond_2

    .line 1622
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    const/16 v4, 0xb

    iget v5, p2, Landroid/text/format/Time;->year:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p2, Landroid/text/format/Time;->year:I

    invoke-virtual {p2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    .line 1626
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1627
    invoke-virtual {p2, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    goto :goto_0

    .line 1624
    :cond_2
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    iget v4, p2, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p2, Landroid/text/format/Time;->month:I

    iget v5, p2, Landroid/text/format/Time;->year:I

    invoke-virtual {p2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    goto :goto_1

    .line 1628
    :cond_3
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v3, p1

    if-eq v1, v3, :cond_0

    .line 1632
    move v1, v2

    goto :goto_0
.end method

.method private checkMonthWithOffset(ILandroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "dayOffset"
    .parameter "dbStartTime"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 1639
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1640
    .local v2, nMonth:I
    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1642
    .local v1, nDay:I
    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    .line 1643
    .local v0, MAX_DAY:I
    add-int v3, v1, p1

    .line 1645
    .local v3, tempDay:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nMonth, nDay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1646
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAX_DAY: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1647
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tempDay: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1649
    sub-int v4, v3, v0

    if-lez v4, :cond_1

    .line 1651
    sub-int v4, v3, v0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v4, 0x1

    .line 1652
    add-int/lit8 v2, v2, 0x1

    .line 1654
    const/16 v4, 0xc

    if-le v2, v4, :cond_0

    .line 1655
    const/4 v2, 0x1

    .line 1665
    :cond_0
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">> nMonth: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1666
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1657
    :cond_1
    if-gtz v3, :cond_0

    .line 1659
    add-int/lit8 v2, v2, -0x1

    .line 1661
    if-gtz v2, :cond_0

    .line 1662
    const/16 v2, 0xc

    goto :goto_0
.end method

.method private checkTimeObj(Ljava/lang/String;)Z
    .locals 8
    .parameter "strTime"

    .prologue
    const/16 v7, 0x3b

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1670
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check time obj - Date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1672
    const/4 v0, 0x0

    .line 1673
    .local v0, bHaveZ:Z
    const/4 v1, 0x1

    .line 1675
    .local v1, bInUTC:Z
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 1676
    .local v2, t:Landroid/text/format/Time;
    invoke-virtual {v2, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v1

    .line 1678
    const-string v5, "Z"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1680
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bHaveZ:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bInUTC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1681
    if-nez v1, :cond_0

    if-nez v0, :cond_a

    .line 1682
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t year "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->year:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1684
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t month "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1686
    iget v5, v2, Landroid/text/format/Time;->month:I

    if-ltz v5, :cond_1

    iget v5, v2, Landroid/text/format/Time;->month:I

    const/16 v6, 0xb

    if-le v5, v6, :cond_2

    .line 1687
    :cond_1
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "month out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->month:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :goto_0
    return v3

    .line 1691
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t monthDay "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1693
    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    if-lt v5, v4, :cond_3

    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    const/16 v6, 0x1f

    if-le v5, v6, :cond_4

    .line 1694
    :cond_3
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "monthDay out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1698
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t hour "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1700
    iget v5, v2, Landroid/text/format/Time;->hour:I

    if-ltz v5, :cond_5

    iget v5, v2, Landroid/text/format/Time;->hour:I

    const/16 v6, 0x17

    if-le v5, v6, :cond_6

    .line 1701
    :cond_5
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hour out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1705
    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t minute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1707
    iget v5, v2, Landroid/text/format/Time;->minute:I

    if-ltz v5, :cond_7

    iget v5, v2, Landroid/text/format/Time;->minute:I

    if-le v5, v7, :cond_8

    .line 1708
    :cond_7
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "minute out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->minute:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1712
    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "t second "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1714
    iget v5, v2, Landroid/text/format/Time;->second:I

    if-ltz v5, :cond_9

    iget v5, v2, Landroid/text/format/Time;->second:I

    if-le v5, v7, :cond_b

    .line 1715
    :cond_9
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "second out of range ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/text/format/Time;->second:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1719
    :cond_a
    const-string v4, "VCalendarUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parse :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    move v3, v4

    .line 1722
    goto/16 :goto_0
.end method

.method private checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 2
    .parameter "strDTStart"
    .parameter "eventTime"

    .prologue
    .line 1745
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    .line 1746
    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/text/format/Time;->allDay:Z

    .line 1748
    :cond_0
    return-void
.end method

.method private checkTimeUTC(Ljava/lang/String;)Z
    .locals 3
    .parameter "strTime"

    .prologue
    .line 1834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check time UTC - Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 1835
    const/4 v0, 0x0

    .line 1836
    .local v0, bHaveZ:Z
    const-string v1, "Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1837
    return v0
.end method

.method private checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "dayOffset"
    .parameter "weekDay"

    .prologue
    .line 1589
    const/4 v1, 0x0

    .line 1591
    .local v1, nIdx:I
    :try_start_0
    sget-object v2, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1595
    :goto_0
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dayOffset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " weekDay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nIdx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    add-int/2addr v1, p1

    .line 1598
    if-gez v1, :cond_1

    .line 1599
    const/4 v1, 0x6

    .line 1603
    :cond_0
    :goto_1
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nIdx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    sget-object v2, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDays:[Ljava/lang/String;

    aget-object v2, v2, v1

    return-object v2

    .line 1592
    :catch_0
    move-exception v0

    .line 1593
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "VCalendarUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkWeekDayWithOffset : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1600
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    .line 1601
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 557
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 558
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 559
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    .line 560
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 561
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 562
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    .line 563
    iput-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 564
    iput-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 565
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 566
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 567
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 568
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 569
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 570
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 571
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 572
    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 573
    return-void
.end method

.method private static convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 1
    .parameter "time"

    .prologue
    .line 1457
    const-string v0, "%Y%m%dT%H%M00Z"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1727
    const-string v0, "VCalendarUtils"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    return-void
.end method

.method private static escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "unescaped"

    .prologue
    .line 1781
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1782
    const-string v4, ""

    .line 1826
    :goto_0
    return-object v4

    .line 1785
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1786
    .local v3, tmpBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1787
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1788
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1789
    .local v0, ch:C
    const v4, 0xff0d

    if-ne v0, v4, :cond_1

    .line 1790
    const/16 v0, 0x2d

    .line 1793
    :cond_1
    sparse-switch v0, :sswitch_data_0

    .line 1821
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1787
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1795
    :sswitch_0
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1796
    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1817
    :sswitch_1
    const-string v4, "\\\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1826
    .end local v0           #ch:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 1793
    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method private static extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;
    .locals 3
    .parameter "recurrence"

    .prologue
    .line 263
    if-nez p0, :cond_0

    .line 264
    const/4 v1, 0x0

    .line 270
    :goto_0
    return-object v1

    .line 266
    :cond_0
    const-string v1, "TZID"

    invoke-virtual {p0, v1}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 267
    .local v0, tzidParam:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-eqz v0, :cond_1

    .line 268
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

    .line 270
    :cond_1
    invoke-virtual {p0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static extractDurationMinutes(Landroid/text/format/Time;)J
    .locals 4
    .parameter "t"

    .prologue
    .line 373
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

    .line 322
    const/4 v4, 0x0

    .local v4, pos1:I
    const/4 v5, 0x0

    .line 323
    .local v5, pos2:I
    const/4 v3, 0x0

    .line 324
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

    .line 327
    .local v7, week:I
    const/16 v8, 0x2d

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    .line 328
    const/4 v3, 0x1

    .line 329
    :cond_0
    const/16 v8, 0x50

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 330
    if-ne v4, v9, :cond_2

    .line 369
    :cond_1
    :goto_0
    mul-int/lit8 v8, v1, 0x3c

    add-int/2addr v8, v2

    mul-int/lit8 v9, v0, 0x18

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v8, v9

    int-to-long v8, v8

    return-wide v8

    .line 334
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 336
    const/16 v8, 0x44

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 337
    if-eq v5, v9, :cond_3

    .line 338
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 341
    :cond_3
    const/16 v8, 0x54

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 342
    if-eq v5, v9, :cond_6

    .line 343
    add-int/lit8 v4, v5, 0x1

    .line 344
    const/16 v8, 0x48

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 345
    if-eq v5, v9, :cond_4

    .line 346
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 347
    add-int/lit8 v4, v5, 0x1

    .line 349
    :cond_4
    const/16 v8, 0x4d

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 350
    if-eq v5, v9, :cond_5

    .line 351
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 352
    add-int/lit8 v4, v5, 0x1

    .line 354
    :cond_5
    const/16 v8, 0x53

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 355
    if-eq v5, v9, :cond_6

    .line 356
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 357
    add-int/lit8 v4, v5, 0x1

    .line 361
    :cond_6
    const/16 v8, 0x57

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 362
    if-eq v5, v9, :cond_1

    .line 363
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 364
    mul-int/lit8 v0, v7, 0x7

    goto :goto_0
.end method

.method private static extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "component"
    .parameter "propertyName"

    .prologue
    .line 275
    invoke-static {p0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, val:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 286
    :goto_0
    return-object v1

    .line 280
    :cond_0
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    const-string v1, "\\\\"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 284
    const-string v1, "\\;"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 286
    goto :goto_0
.end method

.method private static extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "component"
    .parameter "propertyName"

    .prologue
    const/4 v5, 0x0

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    .line 292
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v3, :cond_0

    .line 294
    const-string v6, "ENCODING"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v2

    .line 295
    .local v2, enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    const-string v6, "CHARSET"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    .line 298
    .local v0, charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    if-nez v2, :cond_1

    .line 299
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 318
    .end local v0           #charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    .end local v2           #enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_0
    :goto_0
    return-object v5

    .line 301
    .restart local v0       #charSet:Lcom/android/calendarcommon/ICalendar$Parameter;
    .restart local v2       #enc:Lcom/android/calendarcommon/ICalendar$Parameter;
    :cond_1
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "QUOTED-PRINTABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 302
    new-instance v4, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-direct {v4}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>()V

    .line 304
    .local v4, qpdec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    if-nez v0, :cond_2

    .line 305
    :try_start_0
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0

    .line 313
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #qpdec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :cond_3
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "BASE64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
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
    .line 228
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v0

    .line 229
    .local v0, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 232
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "component"
    .parameter "name"

    .prologue
    .line 237
    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 238
    .local v2, properties:Ljava/util/List;,"Ljava/util/List<Lcom/android/calendarcommon/ICalendar$Property;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 239
    :cond_0
    const/4 v5, 0x0

    .line 259
    :goto_0
    return-object v5

    .line 242
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 243
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendarcommon/ICalendar$Property;

    invoke-virtual {v5}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 246
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 249
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

    .line 250
    .local v3, property:Lcom/android/calendarcommon/ICalendar$Property;
    if-eqz v0, :cond_3

    .line 251
    const/4 v0, 0x0

    .line 257
    :goto_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 255
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 259
    .end local v3           #property:Lcom/android/calendarcommon/ICalendar$Property;
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public static getDefaultCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1578
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    const-string v0, "Shift_JIS"

    .line 1581
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method private getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 3
    .parameter "t1"
    .parameter "t2"

    .prologue
    .line 1732
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "t2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1735
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-le v0, v1, :cond_0

    .line 1736
    const/4 v0, 0x1

    .line 1740
    :goto_0
    return v0

    .line 1737
    :cond_0
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ge v0, v1, :cond_1

    .line 1738
    const/4 v0, -0x1

    goto :goto_0

    .line 1740
    :cond_1
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iget v1, p2, Landroid/text/format/Time;->yearDay:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPriorityString(I)Ljava/lang/String;
    .locals 1
    .parameter "p"

    .prologue
    .line 593
    packed-switch p1, :pswitch_data_0

    .line 610
    const-string v0, "undefined priority"

    .line 612
    .local v0, result:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 598
    .end local v0           #result:Ljava/lang/String;
    :pswitch_0
    const-string v0, "HIGH"

    .line 599
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 601
    .end local v0           #result:Ljava/lang/String;
    :pswitch_1
    const-string v0, "MEDIUM"

    .line 602
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 607
    .end local v0           #result:Ljava/lang/String;
    :pswitch_2
    const-string v0, "LOW"

    .line 608
    .restart local v0       #result:Ljava/lang/String;
    goto :goto_0

    .line 593
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getTimeByYearDay(Landroid/text/format/Time;I)Landroid/text/format/Time;
    .locals 10
    .parameter "t"
    .parameter "yearDay"

    .prologue
    const/4 v9, 0x0

    .line 1751
    iget v5, p1, Landroid/text/format/Time;->year:I

    .line 1752
    .local v5, year:I
    const-string v6, "VCalendarUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeByYearDay inWhichYear:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " yearDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    const/4 v3, 0x0

    .line 1754
    .local v3, inWhichMonth:I
    const/4 v2, 0x0

    .line 1755
    .local v2, inWhichDay:I
    const/4 v0, 0x0

    .line 1757
    .local v0, dayCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v6, 0xc

    if-ge v1, v6, :cond_0

    .line 1758
    move v3, v1

    .line 1759
    const/4 v6, 0x1

    invoke-virtual {p1, v6, v1, v5}, Landroid/text/format/Time;->set(III)V

    .line 1760
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1761
    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    .line 1762
    .local v4, num:I
    add-int/2addr v0, v4

    .line 1763
    if-le v0, p2, :cond_1

    .line 1764
    sub-int v6, v0, v4

    sub-int v2, p2, v6

    .line 1774
    .end local v4           #num:I
    :cond_0
    :goto_1
    const-string v6, "VCalendarUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTimeByYearDay inWhichMonth:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " inWhichDay:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual {p1, v2, v3, v5}, Landroid/text/format/Time;->set(III)V

    .line 1776
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 1777
    return-object p1

    .line 1766
    .restart local v4       #num:I
    :cond_1
    if-ne v0, p2, :cond_2

    .line 1767
    move v2, v4

    .line 1768
    goto :goto_1

    .line 1757
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 29
    .parameter "cur"
    .parameter "c"

    .prologue
    .line 1015
    const-wide/16 v11, 0x0

    .line 1018
    .local v11, alldayStart:J
    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1019
    .local v14, colID:I
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 1020
    .local v20, id:J
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    .line 1023
    const-string v3, "iCalGUID"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1024
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 1027
    const-string v3, "calendar_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1028
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 1031
    .local v13, calID:Ljava/lang/String;
    const-string v3, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1032
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 1034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1035
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 1039
    :cond_0
    const-string v3, "allDay"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1040
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 1043
    const-string v3, "dtstart"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1044
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 1045
    .local v23, start:J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    .line 1046
    .local v9, __timezone:Ljava/util/TimeZone;
    new-instance v26, Landroid/text/format/Time;

    invoke-direct/range {v26 .. v26}, Landroid/text/format/Time;-><init>()V

    .line 1047
    .local v26, t:Landroid/text/format/Time;
    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1048
    const-string v3, "UTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1049
    const/4 v15, 0x0

    .line 1050
    .local v15, daylightOffset:I
    new-instance v16, Ljava/util/Date;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 1051
    .local v16, dt:Ljava/util/Date;
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1052
    invoke-virtual {v9}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v15

    .line 1054
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_3

    .line 1055
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1056
    if-eqz v15, :cond_2

    .line 1057
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    int-to-long v0, v15

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1058
    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    .line 1060
    :cond_3
    invoke-static/range {v26 .. v26}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 1072
    const-string v3, "dtend"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1073
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1074
    .local v18, end:J
    const-wide/16 v7, 0x0

    cmp-long v3, v18, v7

    if-nez v3, :cond_4

    .line 1075
    const-string v3, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1076
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 1078
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    .line 1079
    .local v25, subDur:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isInteger(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1080
    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    const-wide/16 v27, 0x3e8

    mul-long v7, v7, v27

    add-long v18, v23, v7

    .line 1085
    .end local v25           #subDur:Ljava/lang/String;
    :cond_4
    :goto_1
    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1086
    const-string v3, "UTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_5

    .line 1088
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1089
    if-eqz v15, :cond_5

    .line 1090
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    int-to-long v0, v15

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1092
    :cond_5
    invoke-static/range {v26 .. v26}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 1109
    const-string v3, "hasAlarm"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1110
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 1111
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    if-eqz v3, :cond_8

    .line 1112
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 1113
    .local v4, uri:Landroid/net/Uri;
    const-string v3, "event_id=%d AND (method=1 OR method=0)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1114
    .local v6, where:Ljava/lang/String;
    const/16 v22, 0x0

    .line 1116
    .local v22, reminderCursor:Landroid/database/Cursor;
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 1117
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1118
    const-string v3, "minutes"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1119
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_e

    .line 1120
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v5, 0xea60

    mul-int/2addr v3, v5

    int-to-long v7, v3

    sub-long v7, v11, v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    .line 1123
    :goto_3
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 1124
    .local v10, alarmTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    invoke-virtual {v10, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1125
    const-string v3, "UTC"

    invoke-virtual {v10, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1126
    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1129
    .end local v10           #alarmTime:Landroid/text/format/Time;
    :cond_6
    if-eqz v22, :cond_8

    .line 1130
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1131
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1133
    :cond_7
    const/16 v22, 0x0

    .line 1139
    .end local v4           #uri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v22           #reminderCursor:Landroid/database/Cursor;
    :cond_8
    const-string v3, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1140
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1141
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 1142
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1147
    :cond_9
    const-string v3, "eventLocation"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1148
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1149
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 1150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    const-string v5, "\r"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v7, "\r\n"

    invoke-virtual {v3, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 1155
    :cond_a
    const-string v3, "eventTimezone"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1156
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    .line 1159
    const-string v3, "rrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1160
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->RRule_ICalToVCal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 1164
    const-string v3, "rdate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1165
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 1168
    const-string v3, "exrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1169
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 1172
    const-string v3, "exdate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1173
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 1176
    const-string v3, "last_update_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 1177
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    .line 1178
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1179
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v5, "T"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v5, "Z"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_b

    .line 1180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, " "

    const-string v8, "T"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "Z"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    .line 1183
    :cond_b
    return-void

    .line 1040
    .end local v9           #__timezone:Ljava/util/TimeZone;
    .end local v15           #daylightOffset:I
    .end local v16           #dt:Ljava/util/Date;
    .end local v18           #end:J
    .end local v23           #start:J
    .end local v26           #t:Landroid/text/format/Time;
    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1081
    .restart local v9       #__timezone:Ljava/util/TimeZone;
    .restart local v15       #daylightOffset:I
    .restart local v16       #dt:Ljava/util/Date;
    .restart local v18       #end:J
    .restart local v23       #start:J
    .restart local v26       #t:Landroid/text/format/Time;
    :catch_0
    move-exception v17

    .line 1082
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1110
    .end local v17           #e:Ljava/lang/Exception;
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1122
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v22       #reminderCursor:Landroid/database/Cursor;
    :cond_e
    :try_start_2
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v5, 0xea60

    mul-int/2addr v3, v5

    int-to-long v7, v3

    sub-long v7, v23, v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 1129
    :catchall_0
    move-exception v3

    if-eqz v22, :cond_10

    .line 1130
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1131
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 1133
    :cond_f
    const/16 v22, 0x0

    :cond_10
    throw v3
.end method

.method private init(Ljava/lang/String;)Z
    .locals 13
    .parameter "vCalRawData"

    .prologue
    const/4 v12, -0x1

    .line 173
    move-object v6, p1

    .line 174
    .local v6, rawData:Ljava/lang/String;
    const/4 v4, 0x0

    .line 175
    .local v4, nestCount:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v9, vCalList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    const-string v10, "BEGIN:VCALENDAR"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 178
    .local v2, nBegin:I
    const-string v10, "END:VCALENDAR"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 179
    .local v3, nEnd:I
    if-eq v12, v2, :cond_0

    if-ne v12, v3, :cond_1

    .line 193
    :cond_0
    const/4 v7, 0x0

    .line 194
    .local v7, results:Z
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 195
    .local v8, s:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->initLocked(Ljava/lang/String;)Z

    move-result v5

    .line 196
    .local v5, oneResult:Z
    const-string v10, "VCalendarUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMPORT-->"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 182
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v5           #oneResult:Z
    .end local v7           #results:Z
    .end local v8           #s:Ljava/lang/String;
    :cond_1
    const/4 v10, 0x0

    const-string v11, "END:VCALENDAR"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, body:Ljava/lang/String;
    const-string v10, "END:VCALENDAR"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 189
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    add-int/lit8 v4, v4, 0x1

    .line 191
    goto :goto_0

    .line 199
    .end local v0           #body:Ljava/lang/String;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v7       #results:Z
    :cond_2
    const/4 v10, 0x1

    return v10
.end method

.method private initLocked(Ljava/lang/String;)Z
    .locals 7
    .parameter "vCalRawData"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 204
    const-string v5, "BEGIN:VCALENDAR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 205
    .local v2, nBegin:I
    const-string v5, "END:VCALENDAR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 206
    .local v3, nEnd:I
    if-eq v6, v2, :cond_0

    if-ne v6, v3, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v4

    .line 209
    :cond_1
    const-string v5, "END:VCALENDAR"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    .line 214
    :try_start_0
    iget-object v5, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/calendarcommon/ICalendar;->parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    .local v0, cal:Lcom/android/calendarcommon/ICalendar$Component;
    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 223
    invoke-direct {p0, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setEventValues(Lcom/android/calendarcommon/ICalendar$Component;)Z

    move-result v4

    goto :goto_0

    .line 215
    .end local v0           #cal:Lcom/android/calendarcommon/ICalendar$Component;
    :catch_0
    move-exception v1

    .line 216
    .local v1, fe:Lcom/android/calendarcommon/ICalendar$FormatException;
    goto :goto_0
.end method

.method private isInteger(Ljava/lang/String;)Z
    .locals 3
    .parameter "s"

    .prologue
    .line 1002
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1003
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1005
    .local v0, ch:C
    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    .line 1006
    :cond_0
    const/4 v2, 0x0

    .line 1010
    .end local v0           #ch:C
    :goto_1
    return v2

    .line 1002
    .restart local v0       #ch:C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1010
    .end local v0           #ch:C
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isNullContentValues(Landroid/content/ContentValues;)Z
    .locals 3
    .parameter "cv"

    .prologue
    const/4 v1, 0x1

    .line 157
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v0, nullCv:Landroid/content/ContentValues;
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 160
    if-nez p1, :cond_1

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSBM()Z
    .locals 2

    .prologue
    .line 1830
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static qpEncoded(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    .line 1560
    const/4 v2, 0x0

    .line 1562
    .local v2, result:Ljava/lang/String;
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1563
    invoke-static {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1567
    :cond_0
    new-instance v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    .line 1569
    .local v1, qpcodec:Lorg/apache/commons/codec/net/QuotedPrintableCodec;
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1574
    :goto_0
    return-object v2

    .line 1570
    :catch_0
    move-exception v0

    .line 1571
    .local v0, e:Lorg/apache/commons/codec/EncoderException;
    invoke-virtual {v0}, Lorg/apache/commons/codec/EncoderException;->printStackTrace()V

    goto :goto_0
.end method

.method private setDtStart(Ljava/lang/String;)Z
    .locals 3
    .parameter "val"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    .line 378
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    .line 380
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 387
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 383
    :cond_0
    const-string v0, "VCalendarUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "strDTStart: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEventValues(Lcom/android/calendarcommon/ICalendar$Component;)Z
    .locals 15
    .parameter "cal"

    .prologue
    .line 393
    const/4 v5, 0x0

    .line 395
    .local v5, isEvent:Z
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Component;

    .line 396
    .local v1, component:Lcom/android/calendarcommon/ICalendar$Component;
    invoke-direct {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->clear()V

    .line 397
    const-string v10, "VEVENT"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "VTODO"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 399
    :cond_1
    const-string v10, "VEVENT"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 401
    const-string v10, "UID"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    .line 402
    const-string v10, "DTSTART"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 404
    .local v8, val:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 406
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setDtStart(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 419
    :cond_2
    const-string v10, "DTEND"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 421
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 422
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    .line 423
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 425
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 426
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 441
    :cond_3
    :goto_1
    const-string v10, "AALARM"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 442
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 443
    const-string v10, ";"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 444
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    .line 445
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 447
    .local v0, alarmTime:Landroid/text/format/Time;
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v9

    .line 448
    .local v9, validAlarmTime:Z
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "validAlarmTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->debug(Ljava/lang/String;)V

    .line 449
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 451
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    const/4 v12, 0x0

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0xea60

    div-long/2addr v10, v12

    iput-wide v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    .line 453
    iget-wide v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_b

    if-eqz v9, :cond_b

    .line 454
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    .line 463
    .end local v0           #alarmTime:Landroid/text/format/Time;
    .end local v9           #validAlarmTime:Z
    :goto_2
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-nez v10, :cond_d

    .line 464
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    .line 478
    :goto_3
    iget-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v10, :cond_11

    .line 480
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    const/16 v11, 0xb

    if-le v10, v11, :cond_10

    .line 481
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    rsub-int/lit8 v13, v13, 0x18

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 482
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    rsub-int/lit8 v13, v13, 0x18

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    add-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 487
    :goto_4
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 488
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 489
    const-string v10, "UTC"

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    .line 494
    :goto_5
    const-string v10, "DURATION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 495
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 496
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    .line 504
    :goto_6
    const-string v10, "LOCATION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    .line 505
    const-string v10, "SUMMARY"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    .line 506
    const-string v10, "DESCRIPTION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 508
    const-string v10, "CATEGORIES"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 509
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 510
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    .line 512
    :cond_4
    const-string v10, "CLASS"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 513
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 514
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->type:Ljava/lang/String;

    .line 516
    :cond_5
    const-string v10, "STATUS"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 517
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 518
    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    .line 519
    :cond_6
    const-string v10, "PRIORITY"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 520
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 521
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getPriorityString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    .line 523
    :cond_7
    const-string v10, "RRULE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 524
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->RRule_VCalToICal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    .line 526
    const-string v10, "RDATE"

    invoke-virtual {v1, v10}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    .line 527
    const-string v10, "EXRULE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    .line 528
    const-string v10, "EXDATE"

    invoke-virtual {v1, v10}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 532
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getEventCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 534
    .local v2, cv:Landroid/content/ContentValues;
    invoke-direct {p0, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isNullContentValues(Landroid/content/ContentValues;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 535
    if-eqz v5, :cond_13

    .line 536
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 538
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 550
    .end local v1           #component:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #val:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 551
    .local v3, e:Ljava/lang/Exception;
    const-string v10, "VCalendarUtils"

    const-string v11, "Error when set event values."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 552
    const/4 v10, 0x0

    .line 554
    .end local v3           #e:Ljava/lang/Exception;
    :goto_7
    return v10

    .line 410
    .restart local v1       #component:Lcom/android/calendarcommon/ICalendar$Component;
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v8       #val:Ljava/lang/String;
    :cond_8
    if-nez v5, :cond_2

    .line 411
    :try_start_1
    const-string v10, "DUE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 412
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 414
    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setDtStart(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_0

    .line 428
    :cond_9
    const-string v10, "VCalendarUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "strDTEnd: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " error"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 435
    :cond_a
    if-nez v5, :cond_3

    .line 436
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    .line 437
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1

    .line 456
    .restart local v0       #alarmTime:Landroid/text/format/Time;
    .restart local v9       #validAlarmTime:Z
    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    goto/16 :goto_2

    .line 459
    .end local v0           #alarmTime:Landroid/text/format/Time;
    .end local v9           #validAlarmTime:Z
    :cond_c
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    goto/16 :goto_2

    .line 465
    :cond_d
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->minute:I

    if-nez v10, :cond_e

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->second:I

    if-nez v10, :cond_e

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v10

    if-nez v10, :cond_e

    .line 470
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 471
    :cond_e
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    cmp-long v10, v10, v12

    if-nez v10, :cond_f

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v10

    if-nez v10, :cond_f

    if-eqz v5, :cond_f

    .line 473
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 475
    :cond_f
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    .line 484
    :cond_10
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    .line 485
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    iget-object v13, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget v13, v13, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit8 v13, v13, 0x3c

    mul-int/lit16 v13, v13, 0x3e8

    int-to-long v13, v13

    sub-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_4

    .line 491
    :cond_11
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    goto/16 :goto_5

    .line 498
    :cond_12
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iget-object v12, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 500
    .local v6, mDur:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    goto/16 :goto_6

    .line 540
    .end local v6           #mDur:J
    .restart local v2       #cv:Landroid/content/ContentValues;
    :cond_13
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV()Landroid/content/ContentValues;

    move-result-object v2

    .line 542
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 554
    .end local v1           #component:Lcom/android/calendarcommon/ICalendar$Component;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v8           #val:Ljava/lang/String;
    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_7
.end method


# virtual methods
.method MatchMonth(Ljava/lang/String;)Z
    .locals 5
    .parameter "month"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 924
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0xc

    if-gt v3, v4, :cond_0

    .line 929
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 927
    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 929
    goto :goto_0
.end method

.method MatchMonthDay(Ljava/lang/String;)Z
    .locals 5
    .parameter "monthday"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 913
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 918
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 916
    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 918
    goto :goto_0
.end method

.method MatchWeekDay(Ljava/lang/String;)Z
    .locals 2
    .parameter "weekday"

    .prologue
    const/4 v0, 0x1

    .line 893
    const-string v1, "MO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 908
    :cond_0
    :goto_0
    return v0

    .line 895
    :cond_1
    const-string v1, "TU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 897
    const-string v1, "WE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 899
    const-string v1, "TH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 901
    const-string v1, "FR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 903
    const-string v1, "SA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 905
    const-string v1, "SU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 908
    const/4 v0, 0x0

    goto :goto_0
.end method

.method MatchYearDay(Ljava/lang/String;)Z
    .locals 5
    .parameter "yearDay"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 935
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v1, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/16 v4, 0x16e

    if-gt v3, v4, :cond_0

    .line 940
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 938
    goto :goto_0

    .line 939
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v1, v2

    .line 940
    goto :goto_0
.end method

.method RRule_ICalToVCal(Ljava/lang/String;)Ljava/lang/String;
    .locals 36
    .parameter "rrule"

    .prologue
    .line 1186
    if-nez p1, :cond_0

    .line 1187
    const/16 v26, 0x0

    .line 1453
    :goto_0
    return-object v26

    .line 1189
    :cond_0
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "RRule_ICalToVCal: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    .line 1191
    .local v25, result:Ljava/lang/StringBuffer;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v5, v0, [Ljava/lang/String;

    .line 1192
    .local v5, array:[Ljava/lang/String;
    const/16 v31, 0x0

    .line 1193
    .local v31, tempstr:Ljava/lang/String;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    .line 1194
    .local v30, temparr:[Ljava/lang/String;
    const/16 v17, 0x0

    .line 1195
    .local v17, freq:Ljava/lang/String;
    const/16 v20, 0x0

    .line 1196
    .local v20, interval:Ljava/lang/String;
    const/16 v32, 0x0

    .line 1197
    .local v32, until:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1198
    .local v13, count:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1199
    .local v8, byday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1200
    .local v10, bymonthday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1201
    .local v9, bymonth:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .local v11, bysetpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v33, "FREQ"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-gez v33, :cond_1

    .line 1204
    const/16 v26, 0x0

    goto :goto_0

    .line 1206
    :cond_1
    const-string v33, ";"

    const/16 v34, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 1208
    const/4 v7, 0x0

    .line 1210
    .local v7, bYDMode:Z
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    array-length v0, v5

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1a

    .line 1212
    aget-object v33, v5, v18

    const-string v34, "FREQ"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_8

    .line 1213
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1216
    const-string v33, "YEARLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_3

    const-string v33, "BYMONTH"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    const-string v33, "BYMONTHDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 1218
    const-string v17, "YD"

    .line 1219
    const/4 v7, 0x1

    .line 1210
    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1221
    :cond_3
    const-string v33, "YEARLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4

    .line 1222
    const-string v17, "YM"

    goto :goto_2

    .line 1224
    :cond_4
    const-string v33, "MONTHLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    .line 1225
    const-string v33, "BYDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_5

    .line 1226
    const-string v17, "MP"

    goto :goto_2

    .line 1228
    :cond_5
    const-string v33, "BYMONTHDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_2

    .line 1229
    const-string v17, "MD"

    goto :goto_2

    .line 1232
    :cond_6
    const-string v33, "WEEKLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    .line 1233
    const-string v17, "W"

    goto :goto_2

    .line 1235
    :cond_7
    const-string v33, "DAILY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    .line 1236
    const-string v17, "D"

    goto :goto_2

    .line 1239
    :cond_8
    aget-object v33, v5, v18

    const-string v34, "INTERVAL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_9

    .line 1240
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    goto :goto_2

    .line 1242
    :cond_9
    aget-object v33, v5, v18

    const-string v34, "UNTIL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_a

    .line 1243
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_2

    .line 1245
    :cond_a
    aget-object v33, v5, v18

    const-string v34, "COUNT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_b

    .line 1246
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    .line 1248
    :cond_b
    aget-object v33, v5, v18

    const-string v34, "BYDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_11

    .line 1249
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1252
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1253
    .local v15, eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1256
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1259
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1260
    .local v16, eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1262
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1263
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1264
    .local v14, dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/4 v12, 0x0

    .line 1267
    .local v12, ch:C
    const-string v27, ""

    .line 1268
    .local v27, setpostemp:Ljava/lang/String;
    const/16 v21, 0x0

    .local v21, j:I
    :goto_3
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    .line 1269
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 1270
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "  ch:"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const/16 v33, 0x30

    move/from16 v0, v33

    if-lt v12, v0, :cond_c

    const/16 v33, 0x39

    move/from16 v0, v33

    if-le v12, v0, :cond_d

    :cond_c
    const/16 v33, 0x2d

    move/from16 v0, v33

    if-ne v12, v0, :cond_e

    .line 1273
    :cond_d
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1268
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 1278
    :cond_e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_10

    .line 1279
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "BYDAY setpostemp: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1281
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1293
    :cond_f
    const/16 v31, 0x0

    .line 1294
    const/16 v30, 0x0

    .line 1296
    goto/16 :goto_2

    .line 1284
    :cond_10
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "BYDAY setpostemp len<0  "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1286
    const-string v4, ""

    .line 1287
    .local v4, alreadyFixOffset:Ljava/lang/String;
    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    .line 1288
    aget-object v33, v30, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1290
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1287
    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    .line 1296
    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v12           #ch:C
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v21           #j:I
    .end local v27           #setpostemp:Ljava/lang/String;
    :cond_11
    aget-object v33, v5, v18

    const-string v34, "BYMONTHDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_13

    .line 1297
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1300
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1301
    .restart local v15       #eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1304
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1307
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1308
    .restart local v16       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1310
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1312
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1313
    .restart local v14       #dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1316
    const-string v3, ""

    .line 1317
    .local v3, alreadyFixMonthDay:Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_5
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_12

    .line 1318
    aget-object v33, v30, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1320
    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1317
    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    .line 1322
    :cond_12
    const/16 v31, 0x0

    .line 1323
    const/16 v30, 0x0

    .line 1325
    goto/16 :goto_2

    .end local v3           #alreadyFixMonthDay:Ljava/lang/String;
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v21           #j:I
    :cond_13
    aget-object v33, v5, v18

    const-string v34, "BYMONTH"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_18

    .line 1328
    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1329
    .restart local v15       #eventTimeDB:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1332
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 1335
    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1336
    .restart local v16       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 1338
    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1339
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

    .line 1340
    .restart local v14       #dayOffset:I
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "dayOffset: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v6, 0x0

    .line 1343
    .local v6, bFindByMonthDay:Z
    const/16 v28, 0x0

    .line 1344
    .local v28, tempByMonthDay:Ljava/lang/String;
    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    .line 1345
    .local v29, tempByMonthDayAry:[Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, idx:I
    :goto_6
    array-length v0, v5

    move/from16 v33, v0

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_14

    .line 1346
    aget-object v33, v5, v19

    const-string v34, "BYMONTHDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_15

    .line 1347
    aget-object v33, v5, v19

    aget-object v34, v5, v19

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v19

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 1348
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    .line 1349
    const/4 v6, 0x1

    .line 1354
    :cond_14
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1355
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1356
    const-string v4, ""

    .line 1357
    .restart local v4       #alreadyFixOffset:Ljava/lang/String;
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_7
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_17

    .line 1358
    if-eqz v6, :cond_16

    .line 1359
    aget-object v33, v30, v21

    aget-object v34, v29, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthWithOffset(ILandroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1360
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 1345
    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v21           #j:I
    :cond_15
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    .line 1362
    .restart local v4       #alreadyFixOffset:Ljava/lang/String;
    .restart local v21       #j:I
    :cond_16
    aget-object v33, v30, v21

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1365
    :cond_17
    const/16 v31, 0x0

    .line 1366
    const/16 v30, 0x0

    .line 1368
    goto/16 :goto_2

    .end local v4           #alreadyFixOffset:Ljava/lang/String;
    .end local v6           #bFindByMonthDay:Z
    .end local v14           #dayOffset:I
    .end local v15           #eventTimeDB:Landroid/text/format/Time;
    .end local v16           #eventTimeUTC:Landroid/text/format/Time;
    .end local v19           #idx:I
    .end local v21           #j:I
    .end local v28           #tempByMonthDay:Ljava/lang/String;
    .end local v29           #tempByMonthDayAry:[Ljava/lang/String;
    :cond_18
    aget-object v33, v5, v18

    const-string v34, "BYSETPOS"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_2

    .line 1369
    aget-object v33, v5, v18

    aget-object v34, v5, v18

    const-string v35, "="

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v34

    add-int/lit8 v34, v34, 0x1

    aget-object v35, v5, v18

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v35

    invoke-virtual/range {v33 .. v35}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    .line 1370
    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    .line 1371
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_9
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    .line 1372
    aget-object v33, v30, v21

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    .line 1373
    :cond_19
    const/16 v31, 0x0

    .line 1374
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1379
    .end local v21           #j:I
    :cond_1a
    if-nez v20, :cond_1b

    .line 1380
    const-string v20, "1"

    .line 1382
    :cond_1b
    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1384
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_1e

    .line 1385
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

    .line 1387
    :try_start_0
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    if-ltz v33, :cond_1c

    .line 1388
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "+"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1385
    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

    .line 1390
    :cond_1c
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    const/16 v34, 0x1

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, "-"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    .line 1391
    :catch_0
    move-exception v33

    goto :goto_b

    .line 1395
    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1397
    .end local v21           #j:I
    :cond_1e
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "bYDMode: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    if-eqz v7, :cond_23

    .line 1400
    const/16 v22, 0x1

    .line 1401
    .local v22, month:I
    const/16 v23, 0x1

    .line 1403
    .local v23, monthDay:I
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_1f

    .line 1404
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 1405
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1408
    :cond_1f
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_20

    .line 1409
    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 1410
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 1412
    :cond_20
    add-int/lit8 v22, v22, -0x1

    .line 1414
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "strDTStart: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    new-instance v24, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1417
    .local v24, origTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1418
    move/from16 v0, v22

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 1419
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1420
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1421
    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1423
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "origTime: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    move-object/from16 v0, v24

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->yearDay:I

    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1445
    .end local v22           #month:I
    .end local v23           #monthDay:I
    .end local v24           #origTime:Landroid/text/format/Time;
    :cond_21
    :goto_c
    if-eqz v32, :cond_29

    if-nez v13, :cond_29

    .line 1446
    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1451
    :cond_22
    :goto_d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    .line 1452
    .local v26, sOut:Ljava/lang/String;
    const-string v33, "VCalendarUtils"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "result: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1426
    .end local v26           #sOut:Ljava/lang/String;
    :cond_23
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_25

    .line 1427
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

    .line 1428
    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1427
    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    .line 1429
    :cond_24
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 1432
    .end local v21           #j:I
    :cond_25
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_27

    .line 1433
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_26

    .line 1434
    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1433
    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    .line 1435
    :cond_26
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1438
    .end local v21           #j:I
    :cond_27
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_21

    .line 1439
    const/16 v21, 0x0

    .restart local v21       #j:I
    :goto_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

    .line 1440
    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    const-string v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1439
    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    .line 1441
    :cond_28
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_c

    .line 1447
    .end local v21           #j:I
    :cond_29
    if-nez v32, :cond_2a

    if-eqz v13, :cond_2a

    .line 1448
    const-string v33, "#"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d

    .line 1449
    :cond_2a
    if-nez v32, :cond_22

    if-nez v13, :cond_22

    .line 1450
    const-string v33, "#0"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d
.end method

.method RRule_VCalToICal(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .parameter "rrule"

    .prologue
    .line 618
    if-nez p1, :cond_1

    .line 619
    const/16 p1, 0x0

    .line 889
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 621
    .restart local p1
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "FREQ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_0

    .line 626
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RRule_VCalToICal: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v5, v0, [Ljava/lang/String;

    .line 629
    .local v5, array:[Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuffer;

    const-string v24, "FREQ="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 630
    .local v17, result:Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    .line 631
    .local v12, interval:Ljava/lang/String;
    const/16 v21, 0x0

    .line 632
    .local v21, until:Ljava/lang/String;
    const/4 v7, 0x0

    .line 634
    .local v7, count:Ljava/lang/String;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 635
    .local v22, weekday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 636
    .local v15, monthday:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .local v14, month:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v18, setpos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v24, " "

    const/16 v25, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 641
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "YM"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_9

    .line 642
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 643
    const-string v24, "YEARLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 644
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 646
    const/4 v11, 0x1

    .local v11, i:I
    :goto_1
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_5

    .line 647
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchMonth(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 648
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_2
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_3

    .line 651
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 652
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

    .line 653
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 656
    :cond_3
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_4

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_4

    .line 657
    aget-object v21, v5, v11

    .line 658
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 646
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 662
    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 663
    const-string v24, "BYMONTH="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_6

    .line 665
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 664
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 667
    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 668
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 885
    .end local v11           #i:I
    :cond_7
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    if-lez v24, :cond_8

    .line 886
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 888
    :cond_8
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "result: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 671
    :cond_9
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "YD"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_10

    .line 672
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 673
    const-string v24, "YEARLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 674
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_4
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_d

    .line 678
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchYearDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 679
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 682
    :cond_a
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_b

    .line 683
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 684
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

    .line 685
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 688
    :cond_b
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_c

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_c

    .line 689
    aget-object v21, v5, v11

    .line 690
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 676
    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 694
    :cond_d
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 695
    .local v19, t:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 696
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 697
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 698
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "eventStar Time: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "YD event.yearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    new-instance v20, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 702
    .local v20, tUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 703
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 704
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "tUTC: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 706
    .local v8, dayOffset:I
    const/16 v24, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v13

    .line 708
    .local v13, maxYearDay:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 709
    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    .line 710
    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 711
    .local v23, ydYearDay:Ljava/lang/String;
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ydYearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " maxYearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 713
    .local v16, nYearDay:I
    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v24

    if-eqz v24, :cond_e

    .line 715
    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    add-int/lit8 v16, v24, 0x1

    .line 718
    :cond_e
    add-int/lit8 v24, v16, -0x1

    move/from16 v0, v24

    if-le v0, v13, :cond_f

    .line 720
    const-string p1, ""

    goto/16 :goto_0

    .line 723
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getTimeByYearDay(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v6

    .line 724
    .local v6, correctTime:Landroid/text/format/Time;
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "correctly yearDay:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v6, Landroid/text/format/Time;->yearDay:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " correctTime:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    const-string v24, "BYMONTH="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    iget v0, v6, Landroid/text/format/Time;->month:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    iput v0, v6, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 728
    const-string v24, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    const-string v24, "BYMONTHDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 731
    const-string v24, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 736
    .end local v6           #correctTime:Landroid/text/format/Time;
    .end local v8           #dayOffset:I
    .end local v11           #i:I
    .end local v13           #maxYearDay:I
    .end local v16           #nYearDay:I
    .end local v19           #t:Landroid/text/format/Time;
    .end local v20           #tUTC:Landroid/text/format/Time;
    .end local v23           #ydYearDay:Ljava/lang/String;
    :cond_10
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "MP"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_11

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "MD"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_1e

    .line 737
    :cond_11
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 738
    const-string v24, "MONTHLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 739
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 742
    new-instance v9, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 743
    .local v9, eventTimeLocal:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeUTC(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 746
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 748
    :cond_12
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 751
    new-instance v10, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 752
    .local v10, eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 754
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 755
    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 756
    .restart local v8       #dayOffset:I
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_6
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_19

    .line 759
    aget-object v24, v5, v11

    const-string v25, "+"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_14

    .line 760
    aget-object v24, v5, v11

    const/16 v25, 0x0

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    :cond_13
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 762
    :cond_14
    aget-object v24, v5, v11

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_15

    .line 763
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    aget-object v25, v5, v11

    const/16 v26, 0x0

    aget-object v27, v5, v11

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v27, v27, -0x1

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 765
    :cond_15
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_16

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_16

    .line 766
    aget-object v21, v5, v11

    .line 767
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 769
    :cond_16
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_17

    .line 770
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 771
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_13

    .line 772
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_7

    .line 774
    :cond_17
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchWeekDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    .line 775
    aget-object v24, v5, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 777
    :cond_18
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchMonthDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 778
    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 791
    :cond_19
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1c

    .line 792
    const-string v24, "BYDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 793
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1a

    .line 794
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    :cond_1a
    const/4 v11, 0x0

    :goto_8
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_1b

    .line 797
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 796
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 799
    :cond_1b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 800
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 803
    :cond_1c
    const-string v4, ""

    .line 804
    .local v4, alreadyFixMonthDayOffset:Ljava/lang/String;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 805
    const-string v24, "BYMONTHDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_1d

    .line 807
    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v10, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 809
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 812
    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 813
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 816
    .end local v4           #alreadyFixMonthDayOffset:Ljava/lang/String;
    .end local v8           #dayOffset:I
    .end local v9           #eventTimeLocal:Landroid/text/format/Time;
    .end local v10           #eventTimeUTC:Landroid/text/format/Time;
    .end local v11           #i:I
    :cond_1e
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "W"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_25

    .line 817
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 818
    const-string v24, "WEEKLY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 822
    new-instance v9, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 823
    .restart local v9       #eventTimeLocal:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeUTC(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1f

    .line 826
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 828
    :cond_1f
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 831
    new-instance v10, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 832
    .restart local v10       #eventTimeUTC:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    .line 834
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 835
    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 836
    .restart local v8       #dayOffset:I
    const-string v24, "VCalendarUtils"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "dayOffset: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const-string v3, ""

    .line 839
    .local v3, alreadyFixDayOffset:Ljava/lang/String;
    const/4 v11, 0x1

    .restart local v11       #i:I
    :goto_a
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_23

    .line 840
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchWeekDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    .line 841
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 842
    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    :cond_20
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_21

    .line 846
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 847
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_21

    .line 848
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 851
    :cond_21
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_22

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_22

    .line 852
    aget-object v21, v5, v11

    .line 853
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 839
    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    .line 857
    :cond_23
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    .line 858
    const-string v24, "BYDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 859
    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_24

    .line 860
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 859
    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 862
    :cond_24
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 863
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    .line 866
    .end local v3           #alreadyFixDayOffset:Ljava/lang/String;
    .end local v8           #dayOffset:I
    .end local v9           #eventTimeLocal:Landroid/text/format/Time;
    .end local v10           #eventTimeUTC:Landroid/text/format/Time;
    .end local v11           #i:I
    :cond_25
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "D"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_7

    .line 867
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 868
    const-string v24, "DAILY;"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "INTERVAL="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 869
    const-string v24, "WKST="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, "SU"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 871
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_c
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    .line 872
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_26

    .line 873
    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 874
    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_26

    .line 875
    const-string v24, "COUNT="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 878
    :cond_26
    aget-object v24, v5, v11

    const-string v25, "T"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_27

    aget-object v24, v5, v11

    const-string v25, "Z"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_27

    .line 879
    aget-object v21, v5, v11

    .line 880
    const-string v24, "UNTIL="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ";"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 871
    :cond_27
    add-int/lit8 v11, v11, 0x1

    goto :goto_c
.end method

.method public getAlarmCV()Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 1545
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV(J)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getAlarmCV(J)Landroid/content/ContentValues;
    .locals 4
    .parameter "eventId"

    .prologue
    .line 1549
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1550
    .local v0, cv:Landroid/content/ContentValues;
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 1551
    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1553
    :cond_0
    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1554
    const-string v1, "minutes"

    iget-wide v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1556
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 5

    .prologue
    .line 949
    new-instance v0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/CalendarStruct;-><init>()V

    .line 951
    .local v0, calStruct:Lcom/htc/util/calendar/vcalendar/CalendarStruct;
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    iput-object v4, v0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    .line 953
    new-instance v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {v3}, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;-><init>()V

    .line 955
    .local v3, evtStruct:Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    .line 956
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    .line 957
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    .line 958
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    .line 959
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    .line 960
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    .line 961
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    .line 962
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    .line 963
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rdate:Ljava/lang/String;

    .line 964
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exrule:Ljava/lang/String;

    .line 965
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    .line 966
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    .line 967
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->alarm:Ljava/lang/String;

    .line 968
    iget-boolean v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    iput-boolean v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->isAllday:Z

    .line 969
    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->last_update_time:Ljava/lang/String;

    .line 971
    invoke-virtual {v0, v3}, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->addEventList(Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;)V

    .line 974
    :try_start_0
    new-instance v1, Lcom/htc/util/calendar/vcalendar/VCalComposer;

    invoke-direct {v1}, Lcom/htc/util/calendar/vcalendar/VCalComposer;-><init>()V

    .line 976
    .local v1, composer:Lcom/htc/util/calendar/vcalendar/VCalComposer;
    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->createVCal(Lcom/htc/util/calendar/vcalendar/CalendarStruct;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 980
    .end local v1           #composer:Lcom/htc/util/calendar/vcalendar/VCalComposer;
    :goto_0
    return-object v4

    .line 979
    :catch_0
    move-exception v2

    .line 980
    .local v2, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getEventCV()Landroid/content/ContentValues;
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1468
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1474
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "iCalGUID"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    const-string v1, "title"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    const-string v1, "dtstart"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1480
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    if-eqz v1, :cond_0

    .line 1481
    const-string v1, "dtend"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1484
    :cond_0
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1485
    const-string v1, "duration"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    :cond_1
    const-string v1, "eventLocation"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1491
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1493
    :cond_2
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\ncategories: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1496
    :cond_3
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\npriority: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1499
    :cond_4
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\nstatus: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1502
    :cond_5
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    const-string v4, ""

    if-ne v1, v4, :cond_6

    .line 1503
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    .line 1505
    :cond_6
    const-string v1, "description"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    const-string v4, "allDay"

    iget-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-ne v1, v2, :cond_c

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1509
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1510
    const-string v1, "eventTimezone"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    :cond_7
    iget-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    if-eqz v1, :cond_d

    .line 1514
    const-string v1, "hasAlarm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1519
    :goto_1
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 1520
    const-string v1, "rrule"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    :cond_8
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 1523
    const-string v1, "rdate"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    :cond_9
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 1526
    const-string v1, "exrule"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    :cond_a
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1529
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    const-string v2, ";"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    .line 1530
    const-string v1, "exdate"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    :cond_b
    return-object v0

    :cond_c
    move v1, v3

    .line 1507
    goto :goto_0

    .line 1516
    :cond_d
    const-string v1, "hasAlarm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public getHash()J
    .locals 3

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    .line 991
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 993
    .local v0, crc:Ljava/util/zip/CRC32;
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 994
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    .line 997
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMultiEventAlarmsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1537
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiEventsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1461
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiToDoAlarmsCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1541
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMultiToDoCV()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public gethasAlarm()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    return v0
.end method

.method public parseVCalendar(Ljava/lang/String;)Z
    .locals 1
    .parameter "vcalendar"

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->init(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    .line 143
    return-void
.end method
