.class public Lcom/android/commands/monkey/MonkeyEventQueue;
.super Ljava/util/LinkedList;
.source "MonkeyEventQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList",
        "<",
        "Lcom/android/commands/monkey/MonkeyEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private mRandom:Ljava/util/Random;

.field private mRandomizeThrottle:Z

.field private mThrottle:J


# direct methods
.method public constructor <init>(Ljava/util/Random;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandom:Ljava/util/Random;

    iput-wide p2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    iput-boolean p4, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandomizeThrottle:Z

    return-void
.end method


# virtual methods
.method public addLast(Lcom/android/commands/monkey/MonkeyEvent;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/commands/monkey/MonkeyEvent;->isThrottlable()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v0, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    iget-boolean v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandomizeThrottle:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    neg-long v0, v0

    :cond_0
    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeyEventQueue;->mThrottle:J

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    :cond_1
    new-instance v2, Lcom/android/commands/monkey/MonkeyThrottleEvent;

    invoke-direct {v2, v0, v1}, Lcom/android/commands/monkey/MonkeyThrottleEvent;-><init>(J)V

    invoke-super {p0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public bridge synthetic addLast(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/commands/monkey/MonkeyEvent;

    invoke-virtual {p0, p1}, Lcom/android/commands/monkey/MonkeyEventQueue;->addLast(Lcom/android/commands/monkey/MonkeyEvent;)V

    return-void
.end method
