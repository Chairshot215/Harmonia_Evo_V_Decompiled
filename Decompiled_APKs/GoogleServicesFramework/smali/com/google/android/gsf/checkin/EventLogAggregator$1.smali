.class final Lcom/google/android/gsf/checkin/EventLogAggregator$1;
.super Ljava/lang/Object;
.source "EventLogAggregator.java"

# interfaces
.implements Lcom/google/android/gsf/checkin/EventLogAggregator$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/checkin/EventLogAggregator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newState(I)Lcom/google/android/gsf/checkin/EventLogAggregator$OperationState;
    .locals 2
    .parameter "param"

    .prologue
    .line 420
    if-ltz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count: unexpected param"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 421
    :cond_0
    new-instance v0, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gsf/checkin/EventLogAggregator$1$1;-><init>(Lcom/google/android/gsf/checkin/EventLogAggregator$1;)V

    return-object v0
.end method
