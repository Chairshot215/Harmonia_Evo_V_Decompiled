.class public Lcom/htc/htccalendarwidgets/AgendaEvent;
.super Ljava/lang/Object;
.source "AgendaEvent.java"


# instance fields
.field public allDay_:Z

.field public avatarLargeURL_:Ljava/lang/String;

.field public avatarSmallURL_:Ljava/lang/String;

.field public begin_:J

.field public birthday_:Z

.field public bitmap_:Landroid/graphics/Bitmap;

.field public color_:I

.field public contactId_:J

.field public date_:Ljava/lang/String;

.field public endDay_:J

.field public end_:J

.field public eventId_:J

.field public fType_:Ljava/lang/String;

.field public photoId_:J

.field public photoView_:Landroid/widget/ImageView;

.field public photo_:Landroid/graphics/drawable/Drawable;

.field public sourceId_:Ljava/lang/String;

.field public startDay_:J

.field public title_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide v4, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->eventId_:J

    .line 9
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->color_:I

    .line 10
    iput-wide v4, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->contactId_:J

    .line 11
    iput-wide v4, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->photoId_:J

    .line 12
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->sourceId_:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->fType_:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->avatarSmallURL_:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->avatarLargeURL_:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->title_:Ljava/lang/String;

    .line 17
    iput-wide v2, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->begin_:J

    .line 18
    iput-wide v2, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->end_:J

    .line 19
    iput-boolean v6, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->allDay_:Z

    .line 20
    iput-wide v2, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->startDay_:J

    .line 21
    iput-wide v2, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->endDay_:J

    .line 22
    iput-object v1, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->photo_:Landroid/graphics/drawable/Drawable;

    .line 23
    iput-boolean v6, p0, Lcom/htc/htccalendarwidgets/AgendaEvent;->birthday_:Z

    return-void
.end method
