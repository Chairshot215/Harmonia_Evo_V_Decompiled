.class public final Ljava/lang/ref/FinalizerReference;
.super Ljava/lang/ref/Reference;
.source "FinalizerReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ref/FinalizerReference$1;,
        Ljava/lang/ref/FinalizerReference$Sentinel;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static head:Ljava/lang/ref/FinalizerReference;

.field public static final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private next:Ljava/lang/ref/FinalizerReference;

.field private prev:Ljava/lang/ref/FinalizerReference;

.field private zombie:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v0, 0x0

    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/ref/Reference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-void
.end method

.method static add(Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/ref/FinalizerReference;

    sget-object v1, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, v1}, Ljava/lang/ref/FinalizerReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    const-class v2, Ljava/lang/ref/FinalizerReference;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    if-eqz v1, :cond_0

    sget-object v1, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    iput-object v0, v1, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    :cond_0
    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static finalizeAllEnqueued()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/ref/FinalizerReference$Sentinel;

    invoke-direct {v1, v3}, Ljava/lang/ref/FinalizerReference$Sentinel;-><init>(Ljava/lang/ref/FinalizerReference$1;)V

    new-instance v0, Ljava/lang/ref/FinalizerReference;

    sget-object v2, Ljava/lang/ref/FinalizerReference;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, v3, v2}, Ljava/lang/ref/FinalizerReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/ref/FinalizerReference;->enqueueInternal()Z

    invoke-virtual {v1}, Ljava/lang/ref/FinalizerReference$Sentinel;->awaitFinalization()V

    return-void
.end method

.method public static remove(Ljava/lang/ref/FinalizerReference;)V
    .locals 4

    const-class v3, Ljava/lang/ref/FinalizerReference;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    iget-object v1, p0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    const/4 v2, 0x0

    iput-object v2, p0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    if-eqz v1, :cond_1

    iput-object v0, v1, Ljava/lang/ref/FinalizerReference;->next:Ljava/lang/ref/FinalizerReference;

    :goto_0
    if-eqz v0, :cond_0

    iput-object v1, v0, Ljava/lang/ref/FinalizerReference;->prev:Ljava/lang/ref/FinalizerReference;

    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    sput-object v0, Ljava/lang/ref/FinalizerReference;->head:Ljava/lang/ref/FinalizerReference;

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/ref/FinalizerReference;->zombie:Ljava/lang/Object;

    return-object v0
.end method
