.class Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;
.super Ljava/lang/Object;
.source "EventLoader.java"

# interfaces
.implements Lcom/htc/htccalendarwidgets/EventLoader$LoadRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/htccalendarwidgets/EventLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadEventsRequest"
.end annotation


# instance fields
.field public cancelCallback:Ljava/lang/Runnable;

.field public events:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public numDays:I

.field public startMillis:J

.field public successCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "id"
    .parameter "startMillis"
    .parameter "numDays"
    .parameter
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJI",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/htccalendarwidgets/Event;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p5, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/htccalendarwidgets/Event;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->id:I

    .line 134
    iput-wide p2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->startMillis:J

    .line 135
    iput p4, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->numDays:I

    .line 136
    iput-object p5, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    .line 137
    iput-object p6, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    .line 138
    iput-object p7, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    .line 139
    return-void
.end method


# virtual methods
.method public processRequest(Lcom/htc/htccalendarwidgets/EventLoader;)V
    .locals 7
    .parameter "eventLoader"

    .prologue
    .line 142
    #getter for: Lcom/htc/htccalendarwidgets/EventLoader;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/htc/htccalendarwidgets/EventLoader;->access$200(Lcom/htc/htccalendarwidgets/EventLoader;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->events:Ljava/util/ArrayList;

    iget-wide v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->startMillis:J

    iget v4, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->numDays:I

    iget v5, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->id:I

    #getter for: Lcom/htc/htccalendarwidgets/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/htc/htccalendarwidgets/EventLoader;->access$300(Lcom/htc/htccalendarwidgets/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/htc/htccalendarwidgets/Event;->loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;)V

    .line 146
    iget v0, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->id:I

    #getter for: Lcom/htc/htccalendarwidgets/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/htc/htccalendarwidgets/EventLoader;->access$300(Lcom/htc/htccalendarwidgets/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 147
    const-string v0, "EventLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRequest, id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eventLoader.mSequenceNumber.get() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/htc/htccalendarwidgets/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/htc/htccalendarwidgets/EventLoader;->access$300(Lcom/htc/htccalendarwidgets/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", post success callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    #getter for: Lcom/htc/htccalendarwidgets/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/htccalendarwidgets/EventLoader;->access$000(Lcom/htc/htccalendarwidgets/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->successCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    const-string v0, "EventLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processRequest, id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eventLoader.mSequenceNumber.get() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/htc/htccalendarwidgets/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {p1}, Lcom/htc/htccalendarwidgets/EventLoader;->access$300(Lcom/htc/htccalendarwidgets/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", post cancel callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    #getter for: Lcom/htc/htccalendarwidgets/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/htccalendarwidgets/EventLoader;->access$000(Lcom/htc/htccalendarwidgets/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public skipRequest(Lcom/htc/htccalendarwidgets/EventLoader;)V
    .locals 2
    .parameter "eventLoader"

    .prologue
    .line 156
    #getter for: Lcom/htc/htccalendarwidgets/EventLoader;->mHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/htc/htccalendarwidgets/EventLoader;->access$000(Lcom/htc/htccalendarwidgets/EventLoader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/htccalendarwidgets/EventLoader$LoadEventsRequest;->cancelCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method
