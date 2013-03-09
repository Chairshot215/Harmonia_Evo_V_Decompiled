.class public Lcom/htc/util/calendar/EventInstance;
.super Ljava/lang/Object;
.source "EventInstance.java"


# instance fields
.field private begin:J

.field private description:Ljava/lang/String;

.field private end:J

.field private id:J

.field private location:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJJ)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    iput-wide p3, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    iput-wide p5, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    iput-object p3, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    iput-wide p4, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    iput-wide p6, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    iput-object p3, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    iput-object p4, p0, Lcom/htc/util/calendar/EventInstance;->location:Ljava/lang/String;

    iput-object p5, p0, Lcom/htc/util/calendar/EventInstance;->description:Ljava/lang/String;

    iput-wide p6, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    iput-wide p8, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    return-void
.end method


# virtual methods
.method public getBegin()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/calendar/EventInstance;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/calendar/EventInstance;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    return-object v0
.end method
