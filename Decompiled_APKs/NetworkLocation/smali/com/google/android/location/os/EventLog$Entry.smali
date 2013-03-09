.class Lcom/google/android/location/os/EventLog$Entry;
.super Ljava/lang/Object;
.source "EventLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/os/EventLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Entry"
.end annotation


# instance fields
.field final event:Lcom/google/android/location/os/Event;

.field final timestamp:J


# direct methods
.method public constructor <init>(Lcom/google/android/location/os/Event;J)V
    .locals 0
    .parameter "event"
    .parameter "timestamp"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    .line 45
    iput-wide p2, p0, Lcom/google/android/location/os/EventLog$Entry;->timestamp:J

    .line 46
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .parameter "out"

    .prologue
    const/16 v2, 0x20

    .line 49
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 50
    iget-wide v0, p0, Lcom/google/android/location/os/EventLog$Entry;->timestamp:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 51
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 52
    iget-object v0, p0, Lcom/google/android/location/os/EventLog$Entry;->event:Lcom/google/android/location/os/Event;

    invoke-virtual {v0}, Lcom/google/android/location/os/Event;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/location/os/EventLog$Entry;->dumpExtras(Ljava/io/PrintWriter;)V

    .line 55
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 56
    return-void
.end method

.method public dump(Ljava/text/Format;Ljava/util/Date;Ljava/io/PrintWriter;)V
    .locals 4
    .parameter "format"
    .parameter "date"
    .parameter "out"

    .prologue
    .line 64
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/location/os/EventLog$Entry;->timestamp:J

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 65
    invoke-virtual {p1, p2}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 66
    const/16 v0, 0x20

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 67
    invoke-virtual {p0, p3}, Lcom/google/android/location/os/EventLog$Entry;->dump(Ljava/io/PrintWriter;)V

    .line 68
    return-void
.end method

.method protected dumpExtras(Ljava/io/PrintWriter;)V
    .locals 0
    .parameter "out"

    .prologue
    .line 71
    return-void
.end method
