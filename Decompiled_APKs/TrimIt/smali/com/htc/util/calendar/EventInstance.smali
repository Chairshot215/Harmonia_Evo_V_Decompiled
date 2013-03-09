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
    .parameter "id"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-wide p1, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    .line 15
    iput-wide p3, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    .line 16
    iput-wide p5, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    .line 17
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JJ)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    .line 21
    iput-object p3, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    .line 22
    iput-wide p4, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    .line 23
    iput-wide p6, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    .line 24
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0
    .parameter "id"
    .parameter "title"
    .parameter "location"
    .parameter "description"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    .line 28
    iput-object p3, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/htc/util/calendar/EventInstance;->location:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/htc/util/calendar/EventInstance;->description:Ljava/lang/String;

    .line 31
    iput-wide p6, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    .line 32
    iput-wide p8, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    .line 33
    return-void
.end method


# virtual methods
.method public getBegin()J
    .locals 2

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/htc/util/calendar/EventInstance;->begin:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/htc/util/calendar/EventInstance;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/htc/util/calendar/EventInstance;->end:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/htc/util/calendar/EventInstance;->id:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/htc/util/calendar/EventInstance;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/htc/util/calendar/EventInstance;->title:Ljava/lang/String;

    return-object v0
.end method
