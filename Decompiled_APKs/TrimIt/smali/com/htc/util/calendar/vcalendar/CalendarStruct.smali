.class public Lcom/htc/util/calendar/vcalendar/CalendarStruct;
.super Ljava/lang/Object;
.source "CalendarStruct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;
    }
.end annotation


# instance fields
.field public eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;",
            ">;"
        }
    .end annotation
.end field

.field public timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public addEventList(Lcom/htc/util/calendar/vcalendar/CalendarStruct$EventStruct;)V
    .locals 1
    .parameter "stru"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/htc/util/calendar/vcalendar/CalendarStruct;->eventList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method
