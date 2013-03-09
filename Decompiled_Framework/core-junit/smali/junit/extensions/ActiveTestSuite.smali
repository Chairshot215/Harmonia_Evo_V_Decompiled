.class public Ljunit/extensions/ActiveTestSuite;
.super Ljunit/framework/TestSuite;
.source "ActiveTestSuite.java"


# instance fields
.field private volatile fActiveTestDeathCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run(Ljunit/framework/TestResult;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    invoke-super {p0, p1}, Ljunit/framework/TestSuite;->run(Ljunit/framework/TestResult;)V

    invoke-virtual {p0}, Ljunit/extensions/ActiveTestSuite;->waitUntilFinished()V

    return-void
.end method

.method public declared-synchronized runFinished(Ljunit/framework/Test;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 1

    new-instance v0, Ljunit/extensions/ActiveTestSuite$1;

    invoke-direct {v0, p0, p1, p2}, Ljunit/extensions/ActiveTestSuite$1;-><init>(Ljunit/extensions/ActiveTestSuite;Ljunit/framework/Test;Ljunit/framework/TestResult;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method declared-synchronized waitUntilFinished()V
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget v1, p0, Ljunit/extensions/ActiveTestSuite;->fActiveTestDeathCount:I

    invoke-virtual {p0}, Ljunit/extensions/ActiveTestSuite;->testCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v1, v2, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
