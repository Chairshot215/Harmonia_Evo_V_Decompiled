.class public Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;
.super Ljava/lang/Object;
.source "TimeStringCompare.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public isImage:Z

.field public name:Ljava/lang/String;

.field public time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "name"
    .parameter "time"
    .parameter "isImage"

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->name:Ljava/lang/String;

    .line 13
    if-eqz p2, :cond_0

    .line 14
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->time:J

    .line 17
    :goto_0
    iput-boolean p3, p0, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->isImage:Z

    .line 18
    return-void

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->time:J

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 4
    .parameter "o"

    .prologue
    .line 21
    check-cast p1, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;

    .end local p1
    iget-wide v0, p1, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->time:J

    .line 22
    .local v0, u:J
    iget-wide v2, p0, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->time:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    iget-wide v2, p0, Lcom/htc/ml/PhotoLockScreen/TimeStringCompare;->time:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
