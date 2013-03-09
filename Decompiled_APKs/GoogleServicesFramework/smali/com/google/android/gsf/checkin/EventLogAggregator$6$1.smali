.class Lcom/google/android/gsf/checkin/EventLogAggregator$6$1;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"

# interfaces
.implements Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/checkin/EventLogAggregator$6;->newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$6;

.field final synthetic val$param:I

.field private value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/checkin/EventLogAggregator$6;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 491
    iput-object p1, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$6$1;->this$0:Lcom/google/android/gsf/checkin/EventLogAggregator$6;

    iput p2, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$6$1;->val$param:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 492
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$6$1;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addValue(Landroid/util/EventLog$Event;Ljava/lang/Object;)V
    .locals 1
    .parameter "event"
    .parameter "data"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$6$1;->value:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$6$1;->val$param:I

    #calls: Lcom/google/android/gsf/checkin/EventLogAggregator;->getParam(Ljava/lang/Object;I)Ljava/lang/Object;
    invoke-static {p2, v0}, Lcom/google/android/gsf/checkin/EventLogAggregator;->access$100(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$6$1;->value:Ljava/lang/Object;

    .line 502
    :cond_0
    return-void
.end method

.method public finish(Ljava/lang/StringBuilder;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gsf/checkin/EventLogAggregator$6$1;->value:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/common/Csv;->writeValue(Ljava/lang/String;Ljava/lang/Appendable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/io/IOException;
    const-string v1, "EventLogAggregator"

    const-string v2, "IOException writing StringBuilder"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
