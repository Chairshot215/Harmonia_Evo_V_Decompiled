.class public Ljunit/textui/TestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "TestRunner.java"


# static fields
.field public static final EXCEPTION_EXIT:I = 0x2

.field public static final FAILURE_EXIT:I = 0x1

.field public static final SUCCESS_EXIT:I


# instance fields
.field private fPrinter:Ljunit/textui/ResultPrinter;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 1

    new-instance v0, Ljunit/textui/ResultPrinter;

    invoke-direct {v0, p1}, Ljunit/textui/ResultPrinter;-><init>(Ljava/io/PrintStream;)V

    invoke-direct {p0, v0}, Ljunit/textui/TestRunner;-><init>(Ljunit/textui/ResultPrinter;)V

    return-void
.end method

.method public constructor <init>(Ljunit/textui/ResultPrinter;)V
    .locals 0

    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    iput-object p1, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->start([Ljava/lang/String;)Ljunit/framework/TestResult;

    move-result-object v2

    invoke-virtual {v2}, Ljunit/framework/TestResult;->wasSuccessful()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method public static run(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    .locals 2

    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    invoke-virtual {v0, p0}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    move-result-object v1

    return-object v1
.end method

.method public static run(Ljava/lang/Class;)V
    .locals 1

    new-instance v0, Ljunit/framework/TestSuite;

    invoke-direct {v0, p0}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    invoke-static {v0}, Ljunit/textui/TestRunner;->run(Ljunit/framework/Test;)Ljunit/framework/TestResult;

    return-void
.end method

.method public static runAndWait(Ljunit/framework/Test;)V
    .locals 2

    new-instance v0, Ljunit/textui/TestRunner;

    invoke-direct {v0}, Ljunit/textui/TestRunner;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    return-void
.end method


# virtual methods
.method protected createTestResult()Ljunit/framework/TestResult;
    .locals 1

    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    return-object v0
.end method

.method public doRun(Ljunit/framework/Test;)Ljunit/framework/TestResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;

    move-result-object v0

    return-object v0
.end method

.method public doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;
    .locals 8

    invoke-virtual {p0}, Ljunit/textui/TestRunner;->createTestResult()Ljunit/framework/TestResult;

    move-result-object v2

    iget-object v7, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    invoke-virtual {v2, v7}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-interface {p1, v2}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v3, v0, v5

    iget-object v7, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    invoke-virtual {v7, v2, v3, v4}, Ljunit/textui/ResultPrinter;->print(Ljunit/framework/TestResult;J)V

    invoke-virtual {p0, p2}, Ljunit/textui/TestRunner;->pause(Z)V

    return-object v2
.end method

.method public getLoader()Ljunit/runner/TestSuiteLoader;
    .locals 1

    new-instance v0, Ljunit/runner/StandardTestSuiteLoader;

    invoke-direct {v0}, Ljunit/runner/StandardTestSuiteLoader;-><init>()V

    return-object v0
.end method

.method protected pause(Z)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    invoke-virtual {v0}, Ljunit/textui/ResultPrinter;->printWaitPrompt()V

    :try_start_0
    sget-object v0, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected runFailed(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public setPrinter(Ljunit/textui/ResultPrinter;)V
    .locals 0

    iput-object p1, p0, Ljunit/textui/TestRunner;->fPrinter:Ljunit/textui/ResultPrinter;

    return-void
.end method

.method protected start([Ljava/lang/String;)Ljunit/framework/TestResult;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_3

    aget-object v5, p1, v1

    const-string v6, "-wait"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v5, p1, v1

    const-string v6, "-c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v1, 0x1

    aget-object v5, p1, v1

    invoke-virtual {p0, v5}, Ljunit/textui/TestRunner;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    aget-object v5, p1, v1

    const-string v6, "-v"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JUnit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljunit/runner/Version;->id()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " by Kent Beck and Erich Gamma"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    aget-object v3, p1, v1

    goto :goto_1

    :cond_3
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "Usage: TestRunner [-wait] testCaseName, where name is the name of the TestCase class"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    :try_start_0
    invoke-virtual {p0, v3}, Ljunit/textui/TestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v2

    invoke-virtual {p0, v2, v4}, Ljunit/textui/TestRunner;->doRun(Ljunit/framework/Test;Z)Ljunit/framework/TestResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v0

    new-instance v5, Ljava/lang/Exception;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not create and run test suite: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public testEnded(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public testStarted(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
