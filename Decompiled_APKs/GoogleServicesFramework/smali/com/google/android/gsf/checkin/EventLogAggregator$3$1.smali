.class Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"

# interfaces
.implements Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/checkin/EventLogAggregator$3;->newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field private sum:D

.field final synthetic this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$3;

.field final synthetic val$param:I


# direct methods
.method constructor <init>(Lcom/google/android/gsf/checkin/EventLogAggregator$3;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 445
    iput-object p1, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$3;

    iput p2, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->val$param:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->sum:D

    .line 447
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->count:I

    return-void
.end method


# virtual methods
.method public addValue(Landroid/util/EventLog$Event;Ljava/lang/Object;)V
    .locals 4
    .parameter "event"
    .parameter "data"

    .prologue
    .line 450
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->sum:D

    iget v2, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->val$param:I

    #calls: Lcom/google/android/gsf/checkin/EventLogAggregator;->getParam(Ljava/lang/Object;I)Ljava/lang/Object;
    invoke-static {p2, v2}, Lcom/google/android/gsf/checkin/EventLogAggregator;->access$100(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    #calls: Lcom/google/android/gsf/checkin/EventLogAggregator;->getLong(Ljava/lang/Object;)J
    invoke-static {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator;->access$200(Ljava/lang/Object;)J

    move-result-wide v2

    long-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->sum:D

    .line 451
    iget v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->count:I

    .line 452
    return-void
.end method

.method public finish(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "f"

    .prologue
    .line 448
    iget v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->count:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->sum:D

    iget v2, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$3$1;->count:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
