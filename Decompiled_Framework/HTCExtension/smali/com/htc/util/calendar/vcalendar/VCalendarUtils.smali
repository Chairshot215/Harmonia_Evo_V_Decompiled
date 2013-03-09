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

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    const-string v1, "method"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->REMINDERS_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "SU"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "MO"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "TU"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "WE"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "TH"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "FR"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDayAry:Ljava/util/HashMap;

    const-string v1, "SA"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SU"

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->WKST:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->DEBUG:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->init(Landroid/database/Cursor;Landroid/content/Context;)V

    return-void
.end method

.method private checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x4

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    add-int v2, v1, p1

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

    sub-int v3, v2, v0

    if-lez v3, :cond_1

    sub-int v3, v2, v0

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v3, 0x1

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

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    if-nez v2, :cond_3

    iget v3, p2, Landroid/text/format/Time;->month:I

    if-nez v3, :cond_2

    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    const/16 v4, 0xb

    iget v5, p2, Landroid/text/format/Time;->year:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p2, Landroid/text/format/Time;->year:I

    invoke-virtual {p2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/text/format/Time;->normalize(Z)J

    invoke-virtual {p2, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    goto :goto_0

    :cond_2
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    iget v4, p2, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p2, Landroid/text/format/Time;->month:I

    iget v5, p2, Landroid/text/format/Time;->year:I

    invoke-virtual {p2, v3, v4, v5}, Landroid/text/format/Time;->set(III)V

    goto :goto_1

    :cond_3
    iget v3, p2, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v3, p1

    if-eq v1, v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private checkMonthWithOffset(ILandroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x4

    invoke-virtual {p2, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v0

    add-int v3, v1, p1

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

    sub-int v4, v3, v0

    if-lez v4, :cond_1

    sub-int v4, v3, v0

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v1, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    const/16 v4, 0xc

    if-le v2, v4, :cond_0

    const/4 v2, 0x1

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

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_1
    if-gtz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_0
.end method

.method private checkTimeObj(Ljava/lang/String;)Z
    .locals 8

    const/16 v7, 0x3b

    const/4 v4, 0x1

    const/4 v3, 0x0

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

    const/4 v0, 0x0

    const/4 v1, 0x1

    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-result v1

    const-string v5, "Z"

    invoke-virtual {p1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

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

    if-nez v1, :cond_0

    if-nez v0, :cond_a

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

    iget v5, v2, Landroid/text/format/Time;->month:I

    if-ltz v5, :cond_1

    iget v5, v2, Landroid/text/format/Time;->month:I

    const/16 v6, 0xb

    if-le v5, v6, :cond_2

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

    :goto_0
    return v3

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

    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    if-lt v5, v4, :cond_3

    iget v5, v2, Landroid/text/format/Time;->monthDay:I

    const/16 v6, 0x1f

    if-le v5, v6, :cond_4

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

    iget v5, v2, Landroid/text/format/Time;->hour:I

    if-ltz v5, :cond_5

    iget v5, v2, Landroid/text/format/Time;->hour:I

    const/16 v6, 0x17

    if-le v5, v6, :cond_6

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

    iget v5, v2, Landroid/text/format/Time;->minute:I

    if-ltz v5, :cond_7

    iget v5, v2, Landroid/text/format/Time;->minute:I

    if-le v5, v7, :cond_8

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

    iget v5, v2, Landroid/text/format/Time;->second:I

    if-ltz v5, :cond_9

    iget v5, v2, Landroid/text/format/Time;->second:I

    if-le v5, v7, :cond_b

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

    goto/16 :goto_0
.end method

.method private checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p2, Landroid/text/format/Time;->allDay:Z

    :cond_0
    return-void
.end method

.method private checkTimeUTC(Ljava/lang/String;)Z
    .locals 3

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

    const/4 v0, 0x0

    const-string v1, "Z"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

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

    add-int/2addr v1, p1

    if-gez v1, :cond_1

    const/4 v1, 0x6

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

    sget-object v2, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->weekDays:[Ljava/lang/String;

    aget-object v2, v2, v1

    return-object v2

    :catch_0
    move-exception v0

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

    :cond_1
    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method private clear()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    iput-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    return-void
.end method

.method private static convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;
    .locals 1

    const-string v0, "%Y%m%dT%H%M00Z"

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private static escapeCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const v4, 0xff0d

    if-ne v0, v4, :cond_1

    const/16 v0, 0x2d

    :cond_1
    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :sswitch_0
    const/16 v4, 0x5c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    const-string v4, "\\\\"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3b -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
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

.method private static extractDurationMinutes(Landroid/text/format/Time;)J
    .locals 4

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

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x2d

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    const/4 v3, 0x1

    :cond_0
    const/16 v8, 0x50

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ne v4, v9, :cond_2

    :cond_1
    :goto_0
    mul-int/lit8 v8, v1, 0x3c

    add-int/2addr v8, v2

    mul-int/lit8 v9, v0, 0x18

    mul-int/lit8 v9, v9, 0x3c

    add-int/2addr v8, v9

    int-to-long v8, v8

    return-wide v8

    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/16 v8, 0x44

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-eq v5, v9, :cond_3

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_3
    const/16 v8, 0x54

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v9, :cond_6

    add-int/lit8 v4, v5, 0x1

    const/16 v8, 0x48

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-eq v5, v9, :cond_4

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v4, v5, 0x1

    :cond_4
    const/16 v8, 0x4d

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-eq v5, v9, :cond_5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v4, v5, 0x1

    :cond_5
    const/16 v8, 0x53

    invoke-virtual {p0, v8, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-eq v5, v9, :cond_6

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v4, v5, 0x1

    :cond_6
    const/16 v8, 0x57

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-eq v5, v9, :cond_1

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v0, v7, 0x7

    goto :goto_0
.end method

.method private static extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\r\n"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\\\\"

    const-string v2, "\\"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\;"

    const-string v2, ";"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private static extractString_Impl(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v6, "ENCODING"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v2

    const-string v6, "CHARSET"

    invoke-virtual {v3, v6}, Lcom/android/calendarcommon/ICalendar$Property;->getFirstParameter(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Parameter;

    move-result-object v0

    if-nez v2, :cond_1

    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v5

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "QUOTED-PRINTABLE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v4, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-direct {v4}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>()V

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    iget-object v6, v2, Lcom/android/calendarcommon/ICalendar$Parameter;->value:Ljava/lang/String;

    const-string v7, "BASE64"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

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

    invoke-virtual {p0, p1}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Property;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

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

.method public static getDefaultCharSet()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Shift_JIS"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    goto :goto_0
.end method

.method private getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I
    .locals 3

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

    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ge v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/text/format/Time;->yearDay:I

    iget v1, p2, Landroid/text/format/Time;->yearDay:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPriorityString(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "undefined priority"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "HIGH"

    goto :goto_0

    :pswitch_1
    const-string v0, "MEDIUM"

    goto :goto_0

    :pswitch_2
    const-string v0, "LOW"

    goto :goto_0

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

    const/4 v9, 0x0

    iget v5, p1, Landroid/text/format/Time;->year:I

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

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v6, 0xc

    if-ge v1, v6, :cond_0

    move v3, v1

    const/4 v6, 0x1

    invoke-virtual {p1, v6, v1, v5}, Landroid/text/format/Time;->set(III)V

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->normalize(Z)J

    const/4 v6, 0x4

    invoke-virtual {p1, v6}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    add-int/2addr v0, v4

    if-le v0, p2, :cond_1

    sub-int v6, v0, v4

    sub-int v2, p2, v6

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

    invoke-virtual {p1, v2, v3, v5}, Landroid/text/format/Time;->set(III)V

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->normalize(Z)J

    return-object p1

    :cond_1
    if-ne v0, p2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private init(Landroid/database/Cursor;Landroid/content/Context;)V
    .locals 29

    const-wide/16 v11, 0x0

    const-string v3, "_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    const-string v3, "iCalGUID"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    const-string v3, "calendar_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v3, "title"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    if-eqz v3, :cond_0

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

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    :cond_0
    const-string v3, "allDay"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    const-string v3, "dtstart"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v9

    new-instance v26, Landroid/text/format/Time;

    invoke-direct/range {v26 .. v26}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, v26

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const-string v3, "UTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    const/4 v15, 0x0

    new-instance v16, Ljava/util/Date;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    move-object/from16 v0, v16

    invoke-direct {v0, v7, v8}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v9}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v15

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_3

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

    if-eqz v15, :cond_2

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    int-to-long v0, v15

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    :cond_3
    invoke-static/range {v26 .. v26}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    const-string v3, "dtend"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const-wide/16 v7, 0x0

    cmp-long v3, v18, v7

    if-nez v3, :cond_4

    const-string v3, "duration"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

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

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isInteger(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static/range {v25 .. v25}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    const-wide/16 v27, 0x3e8

    mul-long v7, v7, v27

    add-long v18, v23, v7

    :cond_4
    :goto_1
    move-object/from16 v0, v26

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    const-string v3, "UTC"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_5

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

    if-eqz v15, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    int-to-long v0, v15

    move-wide/from16 v27, v0

    sub-long v7, v7, v27

    move-object/from16 v0, v26

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    :cond_5
    invoke-static/range {v26 .. v26}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    const-string v3, "hasAlarm"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    if-eqz v3, :cond_8

    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

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

    const/16 v22, 0x0

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "minutes"

    move-object/from16 v0, v22

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v3, :cond_e

    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const v5, 0xea60

    mul-int/2addr v3, v5

    int-to-long v7, v3

    sub-long v7, v11, v7

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    :goto_3
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    invoke-virtual {v10, v7, v8}, Landroid/text/format/Time;->set(J)V

    const-string v3, "UTC"

    invoke-virtual {v10, v3}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->convertLongToRFC2445DateTime(Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    if-eqz v22, :cond_8

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_7
    const/16 v22, 0x0

    :cond_8
    const-string v3, "description"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    if-eqz v3, :cond_9

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

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    :cond_9
    const-string v3, "eventLocation"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    if-eqz v3, :cond_a

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

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->qpEncoded(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    :cond_a
    const-string v3, "eventTimezone"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    const-string v3, "rrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->RRule_ICalToVCal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    const-string v3, "rdate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    const-string v3, "exrule"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    const-string v3, "exdate"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    const-string v3, "last_update_time"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

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

    :cond_b
    return-void

    :cond_c
    const/4 v3, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_2

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

    :catchall_0
    move-exception v3

    if-eqz v22, :cond_10

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    :cond_f
    const/16 v22, 0x0

    :cond_10
    throw v3
.end method

.method private init(Ljava/lang/String;)Z
    .locals 13

    const/4 v12, -0x1

    move-object v6, p1

    const/4 v4, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    const-string v10, "BEGIN:VCALENDAR"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v10, "END:VCALENDAR"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v12, v2, :cond_0

    if-ne v12, v3, :cond_1

    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->initLocked(Ljava/lang/String;)Z

    move-result v5

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

    const-string v10, "END:VCALENDAR"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v3

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v10, 0x1

    return v10
.end method

.method private initLocked(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, -0x1

    const/4 v4, 0x0

    const-string v5, "BEGIN:VCALENDAR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v5, "END:VCALENDAR"

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v6, v2, :cond_0

    if-ne v6, v3, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    const-string v5, "END:VCALENDAR"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    :try_start_0
    iget-object v5, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/calendarcommon/ICalendar;->parseCalendar(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Component;
    :try_end_0
    .catch Lcom/android/calendarcommon/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setEventValues(Lcom/android/calendarcommon/ICalendar$Component;)Z

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isInteger(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x30

    if-lt v0, v2, :cond_0

    const/16 v2, 0x39

    if-le v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isNullContentValues(Landroid/content/ContentValues;)Z
    .locals 3

    const/4 v1, 0x1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/content/ContentValues;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSBM()Z
    .locals 2

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

    const/4 v2, 0x0

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->escapeCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v1, Lorg/apache/commons/codec/net/QuotedPrintableCodec;

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getDefaultCharSet()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, p0}, Lorg/apache/commons/codec/net/QuotedPrintableCodec;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/apache/commons/codec/EncoderException;->printStackTrace()V

    goto :goto_0
.end method

.method private setDtStart(Ljava/lang/String;)Z
    .locals 3

    iput-object p1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

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

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setEventValues(Lcom/android/calendarcommon/ICalendar$Component;)Z
    .locals 15

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/calendarcommon/ICalendar$Component;->getComponents()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendarcommon/ICalendar$Component;

    invoke-direct {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->clear()V

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

    :cond_1
    const-string v10, "VEVENT"

    invoke-virtual {v1}, Lcom/android/calendarcommon/ICalendar$Component;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v10, "UID"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    const-string v10, "DTSTART"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setDtStart(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    :cond_2
    const-string v10, "DTEND"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    :cond_3
    :goto_1
    const-string v10, "AALARM"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    const-string v10, ";"

    const-string v11, ""

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeObj(Ljava/lang/String;)Z

    move-result v9

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

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

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

    iget-wide v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_b

    if-eqz v9, :cond_b

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

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

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    :goto_3
    iget-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->hour:I

    const/16 v11, 0xb

    if-le v10, v11, :cond_10

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

    :goto_4
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    const-string v11, "UTC"

    iput-object v11, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-string v10, "UTC"

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    :goto_5
    const-string v10, "DURATION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    :goto_6
    const-string v10, "LOCATION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    const-string v10, "SUMMARY"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    const-string v10, "DESCRIPTION"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractString(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    const-string v10, "CATEGORIES"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    :cond_4
    const-string v10, "CLASS"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->type:Ljava/lang/String;

    :cond_5
    const-string v10, "STATUS"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iput-object v8, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    :cond_6
    const-string v10, "PRIORITY"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getPriorityString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    :cond_7
    const-string v10, "RRULE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->RRule_VCalToICal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    const-string v10, "RDATE"

    invoke-virtual {v1, v10}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    const-string v10, "EXRULE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->flattenProperties(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    const-string v10, "EXDATE"

    invoke-virtual {v1, v10}, Lcom/android/calendarcommon/ICalendar$Component;->getFirstProperty(Ljava/lang/String;)Lcom/android/calendarcommon/ICalendar$Property;

    move-result-object v10

    invoke-static {v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractDates(Lcom/android/calendarcommon/ICalendar$Property;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getEventCV()Landroid/content/ContentValues;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isNullContentValues(Landroid/content/ContentValues;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz v5, :cond_13

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_Event_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV()Landroid/content/ContentValues;

    move-result-object v2

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_EventAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string v10, "VCalendarUtils"

    const-string v11, "Error when set event values."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    :goto_7
    return v10

    :cond_8
    if-nez v5, :cond_2

    :try_start_1
    const-string v10, "DUE"

    invoke-static {v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->extractValue(Lcom/android/calendarcommon/ICalendar$Component;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0, v8}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->setDtStart(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    goto/16 :goto_0

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

    :cond_a
    if-nez v5, :cond_3

    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    iget-object v11, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1

    :cond_b
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    goto/16 :goto_2

    :cond_c
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    goto/16 :goto_2

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

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

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

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

    :cond_f
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    goto/16 :goto_3

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

    :cond_11
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    goto/16 :goto_5

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

    :cond_13
    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV()Landroid/content/ContentValues;

    move-result-object v2

    iget-object v10, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDoAlarm_ContentValue:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_7
.end method


# virtual methods
.method MatchMonth(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

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

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method MatchMonthDay(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

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

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method MatchWeekDay(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "MO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "TU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "TH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "FR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SU"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method MatchYearDay(Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

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

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v2

    goto :goto_0
.end method

.method RRule_ICalToVCal(Ljava/lang/String;)Ljava/lang/String;
    .locals 36

    if-nez p1, :cond_0

    const/16 v26, 0x0

    :goto_0
    return-object v26

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

    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v5, v0, [Ljava/lang/String;

    const/16 v31, 0x0

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v32, 0x0

    const/4 v13, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v33, "FREQ"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-gez v33, :cond_1

    const/16 v26, 0x0

    goto :goto_0

    :cond_1
    const-string v33, ";"

    const/16 v34, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v18, 0x0

    :goto_1
    array-length v0, v5

    move/from16 v33, v0

    move/from16 v0, v18

    move/from16 v1, v33

    if-ge v0, v1, :cond_1a

    aget-object v33, v5, v18

    const-string v34, "FREQ"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_8

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

    const-string v17, "YD"

    const/4 v7, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    :cond_3
    const-string v33, "YEARLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_4

    const-string v17, "YM"

    goto :goto_2

    :cond_4
    const-string v33, "MONTHLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_6

    const-string v33, "BYDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_5

    const-string v17, "MP"

    goto :goto_2

    :cond_5
    const-string v33, "BYMONTHDAY"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_2

    const-string v17, "MD"

    goto :goto_2

    :cond_6
    const-string v33, "WEEKLY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_7

    const-string v17, "W"

    goto :goto_2

    :cond_7
    const-string v33, "DAILY"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2

    const-string v17, "D"

    goto :goto_2

    :cond_8
    aget-object v33, v5, v18

    const-string v34, "INTERVAL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_9

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

    :cond_9
    aget-object v33, v5, v18

    const-string v34, "UNTIL"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_a

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

    :cond_a
    aget-object v33, v5, v18

    const-string v34, "COUNT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_b

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

    :cond_b
    aget-object v33, v5, v18

    const-string v34, "BYDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_11

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

    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

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

    const/4 v12, 0x0

    const-string v27, ""

    const/16 v21, 0x0

    :goto_3
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_e

    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

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

    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :cond_e
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v33

    if-lez v33, :cond_10

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

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const/16 v31, 0x0

    const/16 v30, 0x0

    goto/16 :goto_2

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

    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    const-string v4, ""

    const/16 v21, 0x0

    :goto_4
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_f

    aget-object v33, v30, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_4

    :cond_11
    aget-object v33, v5, v18

    const-string v34, "BYMONTHDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_13

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

    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

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

    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    const-string v3, ""

    const/16 v21, 0x0

    :goto_5
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_12

    aget-object v33, v30, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v15, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_5

    :cond_12
    const/16 v31, 0x0

    const/16 v30, 0x0

    goto/16 :goto_2

    :cond_13
    aget-object v33, v5, v18

    const-string v34, "BYMONTH"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_18

    new-instance v15, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v15, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->normalize(Z)J

    new-instance v16, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    const/16 v33, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v15}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getMonthDayOffset(Landroid/text/format/Time;Landroid/text/format/Time;)I

    move-result v14

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

    const/4 v6, 0x0

    const/16 v28, 0x0

    const/16 v33, 0x0

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const/16 v19, 0x0

    :goto_6
    array-length v0, v5

    move/from16 v33, v0

    move/from16 v0, v19

    move/from16 v1, v33

    if-ge v0, v1, :cond_14

    aget-object v33, v5, v19

    const-string v34, "BYMONTHDAY"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_15

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

    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v29

    const/4 v6, 0x1

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

    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    const-string v4, ""

    const/16 v21, 0x0

    :goto_7
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_17

    if-eqz v6, :cond_16

    aget-object v33, v30, v21

    aget-object v34, v29, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthWithOffset(ILandroid/text/format/Time;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    :cond_15
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_6

    :cond_16
    aget-object v33, v30, v21

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_17
    const/16 v31, 0x0

    const/16 v30, 0x0

    goto/16 :goto_2

    :cond_18
    aget-object v33, v5, v18

    const-string v34, "BYSETPOS"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v33

    if-ltz v33, :cond_2

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

    const-string v33, ","

    const/16 v34, -0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v30

    const/16 v21, 0x0

    :goto_9
    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_19

    aget-object v33, v30, v21

    move-object/from16 v0, v33

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    :cond_19
    const/16 v31, 0x0

    const/16 v30, 0x0

    goto/16 :goto_2

    :cond_1a
    if-nez v20, :cond_1b

    const-string v20, "1"

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

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_1e

    const/16 v21, 0x0

    :goto_a
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_1d

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

    :goto_b
    add-int/lit8 v21, v21, 0x1

    goto :goto_a

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

    :catch_0
    move-exception v33

    goto :goto_b

    :cond_1d
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

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

    if-eqz v7, :cond_23

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_1f

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_1f
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_20

    const/16 v33, 0x0

    move/from16 v0, v33

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    :cond_20
    add-int/lit8 v22, v22, -0x1

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

    new-instance v24, Landroid/text/format/Time;

    const-string v33, "UTC"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move/from16 v0, v22

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->month:I

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    const/16 v33, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

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

    :cond_21
    :goto_c
    if-eqz v32, :cond_29

    if-nez v13, :cond_29

    move-object/from16 v0, v25

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_22
    :goto_d
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v26

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

    :cond_23
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_25

    const/16 v21, 0x0

    :goto_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_24

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

    add-int/lit8 v21, v21, 0x1

    goto :goto_e

    :cond_24
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :cond_25
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_27

    const/16 v21, 0x0

    :goto_f
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_26

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

    add-int/lit8 v21, v21, 0x1

    goto :goto_f

    :cond_26
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    :cond_27
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v33

    if-nez v33, :cond_21

    const/16 v21, 0x0

    :goto_10
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v33

    move/from16 v0, v21

    move/from16 v1, v33

    if-ge v0, v1, :cond_28

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

    add-int/lit8 v21, v21, 0x1

    goto :goto_10

    :cond_28
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_c

    :cond_29
    if-nez v32, :cond_2a

    if-eqz v13, :cond_2a

    const-string v33, "#"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d

    :cond_2a
    if-nez v32, :cond_22

    if-nez v13, :cond_22

    const-string v33, "#0"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_d
.end method

.method RRule_VCalToICal(Ljava/lang/String;)Ljava/lang/String;
    .locals 28

    if-nez p1, :cond_1

    const/16 p1, 0x0

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v24

    const-string v25, "FREQ="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-gez v24, :cond_0

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

    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v5, v0, [Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuffer;

    const-string v24, "FREQ="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    const/16 v21, 0x0

    const/4 v7, 0x0

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const-string v24, " "

    const/16 v25, -0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "YM"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_9

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

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

    const/4 v11, 0x1

    :goto_1
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_5

    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchMonth(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_3

    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_3

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

    aget-object v21, v5, v11

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

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    const-string v24, "BYMONTH="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_6

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    :cond_7
    :goto_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    if-lez v24, :cond_8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

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

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_9
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "YD"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_10

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x2

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

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

    const/4 v11, 0x1

    :goto_4
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_d

    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchYearDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_a

    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_b

    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_b

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

    aget-object v21, v5, v11

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

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_d
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

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

    new-instance v20, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

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

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    const/16 v24, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v13

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    const/4 v11, 0x0

    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

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

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static {}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isSBM()Z

    move-result v24

    if-eqz v24, :cond_e

    move-object/from16 v0, v19

    iget v0, v0, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    add-int/lit8 v16, v24, 0x1

    :cond_e
    add-int/lit8 v24, v16, -0x1

    move/from16 v0, v24

    if-le v0, v13, :cond_f

    const-string p1, ""

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getTimeByYearDay(Landroid/text/format/Time;I)Landroid/text/format/Time;

    move-result-object v6

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

    const-string v24, "BYMONTH="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, v6, Landroid/text/format/Time;->month:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    iput v0, v6, Landroid/text/format/Time;->month:I

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v24, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v24, "BYMONTHDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, v6, Landroid/text/format/Time;->monthDay:I

    move/from16 v24, v0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v24, ";"

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

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

    new-instance v9, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeUTC(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_12

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    :cond_12
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    new-instance v10, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

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

    const/4 v11, 0x1

    :goto_6
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_19

    aget-object v24, v5, v11

    const-string v25, "+"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_14

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

    :cond_13
    :goto_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_14
    aget-object v24, v5, v11

    const-string v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_15

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

    aget-object v21, v5, v11

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

    :cond_16
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_17

    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_13

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

    :cond_17
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchWeekDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_18

    aget-object v24, v5, v11

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_18
    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchMonthDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_13

    aget-object v24, v5, v11

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_19
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1c

    const-string v24, "BYDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_1a

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1a
    const/4 v11, 0x0

    :goto_8
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_1b

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

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_1b
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    :cond_1c
    const-string v4, ""

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    const-string v24, "BYMONTHDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v11, 0x0

    :goto_9
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_1d

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v10, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkMonthDayWithOffset(ILandroid/text/format/Time;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_1d
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    :cond_1e
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "W"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_25

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

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

    new-instance v9, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v9}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeUTC(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1f

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    :cond_1f
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    new-instance v10, Landroid/text/format/Time;

    const-string v24, "UTC"

    move-object/from16 v0, v24

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v10}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkTimeStringInAllDay(Ljava/lang/String;Landroid/text/format/Time;)V

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v24, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v25, v0

    sub-int v8, v24, v25

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

    const-string v3, ""

    const/4 v11, 0x1

    :goto_a
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_23

    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->MatchWeekDay(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_20

    aget-object v24, v5, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v8, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->checkWeekDayWithOffset(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_21

    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_21

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

    aget-object v21, v5, v11

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

    :cond_22
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    :cond_23
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-lez v24, :cond_7

    const-string v24, "BYDAY="

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v11, 0x0

    :goto_b
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    move/from16 v0, v24

    if-ge v11, v0, :cond_24

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

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    :cond_24
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x3b

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_3

    :cond_25
    const/16 v24, 0x0

    aget-object v24, v5, v24

    const-string v25, "D"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_7

    const/16 v24, 0x0

    aget-object v24, v5, v24

    const/16 v25, 0x1

    const/16 v26, 0x0

    aget-object v26, v5, v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

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

    const/4 v11, 0x0

    :goto_c
    array-length v0, v5

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_7

    aget-object v24, v5, v11

    const-string v25, "#"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v24

    if-ltz v24, :cond_26

    aget-object v24, v5, v11

    const/16 v25, 0x1

    aget-object v26, v5, v11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v26

    invoke-virtual/range {v24 .. v26}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v24, "0"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_26

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

    aget-object v21, v5, v11

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

    :cond_27
    add-int/lit8 v11, v11, 0x1

    goto :goto_c
.end method

.method public getAlarmCV()Landroid/content/ContentValues;
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getAlarmCV(J)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public getAlarmCV(J)Landroid/content/ContentValues;
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const-string v1, "event_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    const-string v1, "method"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "minutes"

    iget-wide v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->alarm:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 5

    new-instance v0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;

    invoke-direct {v0}, Lcom/htc/util/calendar/vcalendar/CalendarStruct;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    iput-object v4, v0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->timezone:Ljava/lang/String;

    new-instance v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;

    invoke-direct {v3}, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;-><init>()V

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->title:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->description:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTStart:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtstart:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strDTEnd:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->dtend:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->duration:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->event_location:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rrule:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->rdate:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exrule:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->exdate:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->status:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->strAlarm:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->alarm:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    iput-boolean v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->isAllday:Z

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->last_update_time:Ljava/lang/String;

    iput-object v4, v3, Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;->last_update_time:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->addEventList(Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;)V

    :try_start_0
    new-instance v1, Lcom/htc/util/calendar/vcalendar/VCalComposer;

    invoke-direct {v1}, Lcom/htc/util/calendar/vcalendar/VCalComposer;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v4}, Lcom/htc/util/calendar/vcalendar/VCalComposer;->createVCal(Lcom/htc/util/calendar/vcalendar/CalendarStruct;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getEventCV()Landroid/content/ContentValues;
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "iCalGUID"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->summary:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dtstart"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtStart:Landroid/text/format/Time;

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    if-eqz v1, :cond_0

    const-string v1, "dtend"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->dtEnd:Landroid/text/format/Time;

    invoke-virtual {v4, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "duration"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "eventLocation"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->location:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, ""

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->categories:Ljava/lang/String;

    if-eqz v1, :cond_3

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

    :cond_3
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->priority:Ljava/lang/String;

    if-eqz v1, :cond_4

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

    :cond_4
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->status:Ljava/lang/String;

    if-eqz v1, :cond_5

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

    :cond_5
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    const-string v4, ""

    if-ne v1, v4, :cond_6

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    :cond_6
    const-string v1, "description"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->description:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "allDay"

    iget-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->isAllDay:Z

    if-ne v1, v2, :cond_c

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    if-eqz v1, :cond_7

    const-string v1, "eventTimezone"

    iget-object v4, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    iget-boolean v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    if-eqz v1, :cond_d

    const-string v1, "hasAlarm"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    if-eqz v1, :cond_8

    const-string v1, "rrule"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rRule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    if-eqz v1, :cond_9

    const-string v1, "rdate"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->rDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v1, "exrule"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exRule:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    const-string v2, ";"

    const-string v3, ","

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    const-string v1, "exdate"

    iget-object v2, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->exDate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    return-object v0

    :cond_c
    move v1, v3

    goto :goto_0

    :cond_d
    const-string v1, "hasAlarm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method public getHash()J
    .locals 3

    invoke-virtual {p0}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->getContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->vCalendar:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    return-wide v1
.end method

.method public getId()I
    .locals 1

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

    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->mMultiVCal_ToDo_ContentValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public gethasAlarm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->hasAlarm:Z

    return v0
.end method

.method public parseVCalendar(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->init(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/util/calendar/vcalendar/VCalendarUtils;->_id:Ljava/lang/String;

    return-void
.end method
