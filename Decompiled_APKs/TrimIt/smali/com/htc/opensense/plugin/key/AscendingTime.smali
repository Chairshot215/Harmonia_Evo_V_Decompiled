.class public Lcom/htc/opensense/plugin/key/AscendingTime;
.super Lcom/htc/opensense/plugin/key/Time;
.source "AscendingTime.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AscendingTime"


# direct methods
.method public constructor <init>(J)V
    .locals 0
    .parameter "time"

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/plugin/key/Time;-><init>(J)V

    .line 15
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/opensense/plugin/key/Time;)I
    .locals 4
    .parameter "another"

    .prologue
    .line 21
    instance-of v0, p1, Lcom/htc/opensense/plugin/key/AscendingTime;

    if-eqz v0, :cond_0

    .line 22
    iget-wide v0, p0, Lcom/htc/opensense/plugin/key/AscendingTime;->mTime:J

    iget-wide v2, p1, Lcom/htc/opensense/plugin/key/Time;->mTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 25
    :goto_0
    return v0

    .line 24
    :cond_0
    const-string v0, "AscendingTime"

    const-string v1, "Comparing AscendingTime with a wrong type!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    check-cast p1, Lcom/htc/opensense/plugin/key/Time;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/key/AscendingTime;->compareTo(Lcom/htc/opensense/plugin/key/Time;)I

    move-result v0

    return v0
.end method
