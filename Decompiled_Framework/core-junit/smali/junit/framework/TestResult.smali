.class public Ljunit/framework/TestResult;
.super Ljava/lang/Object;
.source "TestResult.java"


# instance fields
.field protected fErrors:Ljava/util/Vector;

.field protected fFailures:Ljava/util/Vector;

.field protected fListeners:Ljava/util/Vector;

.field protected fRunTests:I

.field private fStop:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    iput v1, p0, Ljunit/framework/TestResult;->fRunTests:I

    iput-boolean v1, p0, Ljunit/framework/TestResult;->fStop:Z

    return-void
.end method

.method private declared-synchronized cloneListeners()Ljava/util/Vector;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    new-instance v2, Ljunit/framework/TestFailure;

    invoke-direct {v2, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    invoke-interface {v1, p1, p2}, Ljunit/framework/TestListener;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    new-instance v2, Ljunit/framework/TestFailure;

    invoke-direct {v2, p1, p2}, Ljunit/framework/TestFailure;-><init>(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    invoke-interface {v1, p1, p2}, Ljunit/framework/TestListener;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized addListener(Ljunit/framework/TestListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 2

    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestListener;

    invoke-interface {v1, p1}, Ljunit/framework/TestListener;->endTest(Ljunit/framework/Test;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized errorCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized errors()Ljava/util/Enumeration;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fErrors:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized failureCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized failures()Ljava/util/Enumeration;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fFailures:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeListener(Ljunit/framework/TestListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljunit/framework/TestResult;->fListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected run(Ljunit/framework/TestCase;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->startTest(Ljunit/framework/Test;)V

    new-instance v0, Ljunit/framework/TestResult$1;

    invoke-direct {v0, p0, p1}, Ljunit/framework/TestResult$1;-><init>(Ljunit/framework/TestResult;Ljunit/framework/TestCase;)V

    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V

    invoke-virtual {p0, p1}, Ljunit/framework/TestResult;->endTest(Ljunit/framework/Test;)V

    return-void
.end method

.method public declared-synchronized runCount()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljunit/framework/TestResult;->fRunTests:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runProtected(Ljunit/framework/Test;Ljunit/framework/Protectable;)V
    .locals 1

    :try_start_0
    invoke-interface {p2}, Ljunit/framework/Protectable;->protect()V
    :try_end_0
    .catch Ljunit/framework/AssertionFailedError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V

    goto :goto_0

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    invoke-virtual {p0, p1, v0}, Ljunit/framework/TestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public declared-synchronized shouldStop()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 3

    invoke-interface {p1}, Ljunit/framework/Test;->countTestCases()I

    move-result v0

    monitor-enter p0

    :try_start_0
    iget v2, p0, Ljunit/framework/TestResult;->fRunTests:I

    add-int/2addr v2, v0

    iput v2, p0, Ljunit/framework/TestResult;->fRunTests:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Ljunit/framework/TestResult;->cloneListeners()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljunit/framework/TestListener;

    invoke-interface {v2, p1}, Ljunit/framework/TestListener;->startTest(Ljunit/framework/Test;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljunit/framework/TestResult;->fStop:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized wasSuccessful()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljunit/framework/TestResult;->failureCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljunit/framework/TestResult;->errorCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
