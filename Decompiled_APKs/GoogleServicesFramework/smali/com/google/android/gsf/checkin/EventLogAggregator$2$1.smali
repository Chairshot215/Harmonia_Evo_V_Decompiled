.class Lcom/google/android/gsf/checkin/EventLogAggregator$2$1;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"

# interfaces
.implements Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/checkin/EventLogAggregator$2;->newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sum:J

.field final synthetic this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$2;

.field final synthetic val$param:I


# direct methods
.method constructor <init>(Lcom/google/android/gsf/checkin/EventLogAggregator$2;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 432
    iput-object p1, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$2$1;->this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$2;

    iput p2, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$2$1;->val$param:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$2$1;->sum:J

    return-void
.end method


# virtual methods
.method public addValue(Landroid/util/EventLog$Event;Ljava/lang/Object;)V
    .locals 4
    .parameter "event"
    .parameter "data"

    .prologue
    .line 436
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$2$1;->sum:J

    iget v2, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$2$1;->val$param:I

    #calls: Lcom/google/android/gsf/checkin/EventLogAggregator;->getParam(Ljava/lang/Object;I)Ljava/lang/Object;
    invoke-static {p2, v2}, Lcom/google/android/gsf/checkin/EventLogAggregator;->access$100(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    #calls: Lcom/google/android/gsf/checkin/EventLogAggregator;->getLong(Ljava/lang/Object;)J
    invoke-static {v2}, Lcom/google/android/gsf/checkin/EventLogAggregator;->access$200(Ljava/lang/Object;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$2$1;->sum:J

    .line 437
    return-void
.end method

.method public finish(Ljava/lang/StringBuilder;)V
    .locals 2
    .parameter "f"

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$2$1;->sum:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    return-void
.end method
