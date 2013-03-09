.class public Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/pim/vcalendar/CalendarStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventStruct"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;
    }
.end annotation


# instance fields
.field public alarm:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public dtend:Ljava/lang/String;

.field public dtstart:Ljava/lang/String;

.field public duration:Ljava/lang/String;

.field public event_location:Ljava/lang/String;

.field public exdate:Ljava/lang/String;

.field public exrule:Ljava/lang/String;

.field public has_alarm:Z

.field public isAllday:Z

.field public last_date:Ljava/lang/String;

.field public last_update_time:Ljava/lang/String;

.field public rdate:Ljava/lang/String;

.field public reminderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;",
            ">;"
        }
    .end annotation
.end field

.field public rrule:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public setReminders(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct$reminderInfo;>;"
    iget-object v1, p0, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    .line 59
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/htc/android/mail/pim/vcalendar/CalendarStruct$EventStruct;->reminderList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method
