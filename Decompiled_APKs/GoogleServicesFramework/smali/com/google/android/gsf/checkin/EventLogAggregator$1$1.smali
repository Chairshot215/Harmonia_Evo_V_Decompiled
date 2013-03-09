.class Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"

# interfaces
.implements Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/checkin/EventLogAggregator$1;->newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private count:I

.field final synthetic this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$1;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/checkin/EventLogAggregator$1;)V
    .locals 1
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;->this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;->count:I

    return-void
.end method


# virtual methods
.method public addValue(Landroid/util/EventLog$Event;Ljava/lang/Object;)V
    .locals 1
    .parameter "event"
    .parameter "data"

    .prologue
    .line 424
    iget v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;->count:I

    return-void
.end method

.method public finish(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 423
    iget v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;->count:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
