.class Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;
.super Ljava/util/concurrent/SynchronousQueue$WaitQueue;
.source "SynchronousQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FifoWaitQueue"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3247e27356cbc166L


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;-><init>()V

    return-void
.end method
