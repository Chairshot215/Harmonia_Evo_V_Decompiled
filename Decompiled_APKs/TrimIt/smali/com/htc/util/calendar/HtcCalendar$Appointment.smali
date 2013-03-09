.class public Lcom/htc/util/calendar/HtcCalendar$Appointment;
.super Ljava/lang/Object;
.source "HtcCalendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/calendar/HtcCalendar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Appointment"
.end annotation


# instance fields
.field public allday_:Z

.field public begin_:J

.field public category_:Lcom/htc/util/calendar/HtcCalendar$EventCategory;

.field public color_:I

.field public crossday_:Z

.field public ehour_:J

.field public eminutes_:J

.field public end_:J

.field public endday_:J

.field public facebook_avatar_large_:Ljava/lang/String;

.field public facebook_avatar_small_:Ljava/lang/String;

.field public facebook_source_id_:Ljava/lang/String;

.field public facebook_type_:Ljava/lang/String;

.field public hour_:J

.field public id_:I

.field public location_:Ljava/lang/String;

.field public minutes_:J

.field public period_:J

.field public regular_:Z

.field public startday_:J

.field public title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object v0, p0, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_source_id_:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_type_:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_avatar_large_:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Lcom/htc/util/calendar/HtcCalendar$Appointment;->facebook_avatar_small_:Ljava/lang/String;

    return-void
.end method
