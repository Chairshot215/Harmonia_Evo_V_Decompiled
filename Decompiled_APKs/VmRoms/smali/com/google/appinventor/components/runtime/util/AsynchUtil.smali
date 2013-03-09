.class public Lcom/google/appinventor/components/runtime/util/AsynchUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static runAsynchronously(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 2

    new-instance v0, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/appinventor/components/runtime/util/AsynchUtil$1;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/os/Handler;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static runAsynchronously(Ljava/lang/Runnable;)V
    .locals 1

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
