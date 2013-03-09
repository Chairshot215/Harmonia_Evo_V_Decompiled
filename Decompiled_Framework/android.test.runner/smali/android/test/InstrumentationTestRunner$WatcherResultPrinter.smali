.class Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;
.super Ljava/lang/Object;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;
.implements Landroid/os/PerformanceCollector$PerformanceResultsWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WatcherResultPrinter"
.end annotation


# instance fields
.field mIncludeDetailedStats:Z

.field mIsTimedTest:Z

.field mPerfCollector:Landroid/os/PerformanceCollector;

.field private final mResultTemplate:Landroid/os/Bundle;

.field mTestClass:Ljava/lang/String;

.field mTestNum:I

.field mTestResult:Landroid/os/Bundle;

.field mTestResultCode:I

.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;I)V
    .locals 3

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    iput v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    new-instance v0, Landroid/os/PerformanceCollector;

    invoke-direct {v0}, Landroid/os/PerformanceCollector;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    iput-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    iput-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "id"

    const-string v2, "InstrumentationTestRunner"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    const-string v1, "numtests"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 6

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nError in %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Ljunit/framework/TestCase;

    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 6

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stack"

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x2

    iput v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v1, "stream"

    const-string v2, "\nFailure in %s:\n%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast p1, Ljunit/framework/TestCase;

    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 4

    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    invoke-virtual {v2}, Landroid/os/PerformanceCollector;->endSnapshot()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    :goto_0
    iget v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v2, "stream"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    iget v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iget-object v3, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    :try_start_0
    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #getter for: Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    invoke-static {v1}, Landroid/test/InstrumentationTestRunner;->access$000(Landroid/test/InstrumentationTestRunner;)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_2
    iget-boolean v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/os/PerformanceCollector;->stopTiming(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->writeStopTiming(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v5, p1

    check-cast v5, Ljunit/framework/TestCase;

    invoke-virtual {v5}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/os/Bundle;

    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mResultTemplate:Landroid/os/Bundle;

    invoke-direct {v5, v6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "class"

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "test"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "current"

    iget v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_4

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "stream"

    const-string v7, "\n%s:"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestClass:Ljava/lang/String;

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const-class v5, Landroid/test/RepetitiveTest;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v5, Landroid/test/RepetitiveTest;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/test/RepetitiveTest;

    invoke-interface {v5}, Landroid/test/RepetitiveTest;->numIterations()I

    move-result v1

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "numiterations"

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_1
    :try_start_1
    iget v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestNum:I

    if-ne v5, v10, :cond_1

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #getter for: Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    invoke-static {v5}, Landroid/test/InstrumentationTestRunner;->access$000(Landroid/test/InstrumentationTestRunner;)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    iget-object v6, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v6}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    iput v9, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResultCode:I

    iput-boolean v9, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    iput-boolean v9, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    if-eqz v3, :cond_5

    :try_start_2
    const-class v5, Landroid/test/TimedTest;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    const-class v5, Landroid/test/TimedTest;

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/test/TimedTest;

    invoke-interface {v5}, Landroid/test/TimedTest;->includeDetailedStats()Z

    move-result v5

    iput-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    :goto_2
    iget-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/os/PerformanceCollector;->beginSnapshot(Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v6, "stream"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_5
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/test/TimedTest;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/test/TimedTest;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Landroid/test/TimedTest;

    invoke-interface {v5}, Landroid/test/TimedTest;->includeDetailedStats()Z

    move-result v5

    iput-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIncludeDetailedStats:Z
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    goto :goto_2

    :cond_6
    iget-boolean v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mIsTimedTest:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mPerfCollector:Landroid/os/PerformanceCollector;

    const-string v6, ""

    invoke-virtual {v5, v6}, Landroid/os/PerformanceCollector;->startTiming(Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method public writeBeginSnapshot(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public writeEndSnapshot(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    #getter for: Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/test/InstrumentationTestRunner;->access$100(Landroid/test/InstrumentationTestRunner;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;F)V
    .locals 1

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public writeMeasurement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeStartTiming(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public writeStopTiming(Landroid/os/Bundle;)V
    .locals 9

    const/4 v0, 0x0

    const-string v5, "iterations"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    move-object v3, v4

    check-cast v3, Landroid/os/Bundle;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iteration"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "label"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "label"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "cpu_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cpu_time"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v5, p0, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;->mTestResult:Landroid/os/Bundle;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "execution_time"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "execution_time"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method
