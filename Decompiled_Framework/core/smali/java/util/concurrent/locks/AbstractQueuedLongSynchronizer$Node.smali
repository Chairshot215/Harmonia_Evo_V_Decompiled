.class final Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
.super Ljava/lang/Object;
.source "AbstractQueuedLongSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Node"
.end annotation


# static fields
.field static final CANCELLED:I = 0x1

.field static final CONDITION:I = -0x2

.field static final EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node; = null

.field static final PROPAGATE:I = -0x3

.field static final SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node; = null

.field static final SIGNAL:I = -0x1


# instance fields
.field volatile next:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field volatile prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

.field volatile thread:Ljava/lang/Thread;

.field volatile waitStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    invoke-direct {v0}, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;-><init>()V

    sput-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    const/4 v0, 0x0

    sput-object v0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->EXCLUSIVE:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;I)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->waitStatus:I

    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    return-void
.end method

.method constructor <init>(Ljava/lang/Thread;Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    iput-object p1, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->thread:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method final isShared()Z
    .locals 2

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->nextWaiter:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    sget-object v1, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->SHARED:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final predecessor()Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iget-object v0, p0, Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;->prev:Ljava/util/concurrent/locks/AbstractQueuedLongSynchronizer$Node;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    return-object v0
.end method
