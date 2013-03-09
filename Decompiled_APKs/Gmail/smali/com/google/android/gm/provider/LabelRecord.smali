.class Lcom/google/android/gm/provider/LabelRecord;
.super Ljava/lang/Object;
.source "LabelRecord.java"


# instance fields
.field public dateReceived:J

.field public isZombie:Z

.field public sortMessageId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide v0, p0, Lcom/google/android/gm/provider/LabelRecord;->sortMessageId:J

    .line 10
    iput-wide v0, p0, Lcom/google/android/gm/provider/LabelRecord;->dateReceived:J

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/LabelRecord;->isZombie:Z

    .line 18
    return-void
.end method

.method public constructor <init>(JJZ)V
    .locals 2
    .parameter "sortMessageId"
    .parameter "dateReceived"
    .parameter "isZombie"

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide v0, p0, Lcom/google/android/gm/provider/LabelRecord;->sortMessageId:J

    .line 10
    iput-wide v0, p0, Lcom/google/android/gm/provider/LabelRecord;->dateReceived:J

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gm/provider/LabelRecord;->isZombie:Z

    .line 21
    iput-wide p1, p0, Lcom/google/android/gm/provider/LabelRecord;->sortMessageId:J

    .line 22
    iput-wide p3, p0, Lcom/google/android/gm/provider/LabelRecord;->dateReceived:J

    .line 23
    iput-boolean p5, p0, Lcom/google/android/gm/provider/LabelRecord;->isZombie:Z

    .line 24
    return-void
.end method
