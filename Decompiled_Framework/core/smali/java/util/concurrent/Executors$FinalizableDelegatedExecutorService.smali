.class Ljava/util/concurrent/Executors$FinalizableDelegatedExecutorService;
.super Ljava/util/concurrent/Executors$DelegatedExecutorService;
.source "Executors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/Executors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FinalizableDelegatedExecutorService"
.end annotation


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/Executors$DelegatedExecutorService;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/util/concurrent/Executors$DelegatedExecutorService;->shutdown()V

    return-void
.end method
