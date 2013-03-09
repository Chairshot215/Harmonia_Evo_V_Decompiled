.class public Lcom/htc/opensense/plugin/key/DescendingTime;
.super Lcom/htc/opensense/plugin/key/Time;
.source "DescendingTime.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DescendingTime"


# direct methods
.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/htc/opensense/plugin/key/Time;-><init>(J)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/htc/opensense/plugin/key/Time;)I
    .locals 4

    instance-of v0, p1, Lcom/htc/opensense/plugin/key/DescendingTime;

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/htc/opensense/plugin/key/Time;->mTime:J

    iget-wide v2, p0, Lcom/htc/opensense/plugin/key/Time;->mTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "DescendingTime"

    const-string v1, "Comparing DescendingTime with a wrong type!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/htc/opensense/plugin/key/Time;

    invoke-virtual {p0, p1}, Lcom/htc/opensense/plugin/key/DescendingTime;->compareTo(Lcom/htc/opensense/plugin/key/Time;)I

    move-result v0

    return v0
.end method
