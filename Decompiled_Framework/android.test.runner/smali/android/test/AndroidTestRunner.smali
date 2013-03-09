.class public Landroid/test/AndroidTestRunner;
.super Ljunit/runner/BaseTestRunner;
.source "AndroidTestRunner.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInstrumentation:Landroid/app/Instrumentation;

.field private mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

.field private mSkipExecution:Z

.field private mTestCases:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation
.end field

.field private mTestClassName:Ljava/lang/String;

.field private mTestListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTestResult:Ljunit/framework/TestResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljunit/runner/BaseTestRunner;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    return-void
.end method

.method private buildSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    invoke-virtual {v1, p2}, Ljunit/framework/TestCase;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not access test class. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate test class. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getTest(Ljava/lang/Class;)Ljunit/framework/Test;
    .locals 4

    const-class v2, Landroid/test/TestSuiteProvider;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/test/TestSuiteProvider;

    invoke-interface {v1}, Landroid/test/TestSuiteProvider;->getTestSuite()Ljunit/framework/TestSuite;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not instantiate test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->getTest(Ljava/lang/String;)Ljunit/framework/Test;

    move-result-object v2

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal access of test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invocation exception test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_1

    :catch_3
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such method on test suite provider. Class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private loadTestClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find test class. Class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/AndroidTestRunner;->runFailed(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setContextIfAndroidTestCase(Ljunit/framework/Test;Landroid/content/Context;Landroid/content/Context;)V
    .locals 2

    const-class v0, Landroid/test/AndroidTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/test/AndroidTestCase;

    invoke-virtual {v0, p2}, Landroid/test/AndroidTestCase;->setContext(Landroid/content/Context;)V

    check-cast p1, Landroid/test/AndroidTestCase;

    invoke-virtual {p1, p3}, Landroid/test/AndroidTestCase;->setTestContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private setInstrumentationIfInstrumentationTestCase(Ljunit/framework/Test;Landroid/app/Instrumentation;)V
    .locals 2

    const-class v0, Landroid/test/InstrumentationTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/test/InstrumentationTestCase;

    invoke-virtual {p1, p2}, Landroid/test/InstrumentationTestCase;->injectInstrumentation(Landroid/app/Instrumentation;)V

    :cond_0
    return-void
.end method

.method private setPerformanceWriterIfPerformanceCollectorTestCase(Ljunit/framework/Test;Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 2

    const-class v0, Landroid/test/PerformanceCollectorTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/test/PerformanceCollectorTestCase;

    invoke-interface {p1, p2}, Landroid/test/PerformanceCollectorTestCase;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    :cond_0
    return-void
.end method

.method private setTest(Ljunit/framework/Test;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljunit/framework/Test;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/test/TestCaseUtil;->getTests(Ljunit/framework/Test;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    const-class v0, Ljunit/framework/TestSuite;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/test/TestCaseUtil;->getTestName(Ljunit/framework/Test;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    goto :goto_0
.end method

.method private shouldRunSingleTestMethod(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljunit/framework/Test;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-class v0, Ljunit/framework/TestCase;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addTestListener(Ljunit/framework/TestListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearTestListeners()V
    .locals 1

    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected createTestResult()Ljunit/framework/TestResult;
    .locals 1

    iget-boolean v0, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/test/NoExecTestResult;

    invoke-direct {v0}, Landroid/test/NoExecTestResult;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljunit/framework/TestResult;

    invoke-direct {v0}, Ljunit/framework/TestResult;-><init>()V

    goto :goto_0
.end method

.method public getTestCases()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljunit/framework/TestCase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    return-object v0
.end method

.method public getTestClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTestResult()Ljunit/framework/TestResult;
    .locals 1

    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    return-object v0
.end method

.method protected loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected runFailed(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public runTest()V
    .locals 1

    invoke-virtual {p0}, Landroid/test/AndroidTestRunner;->createTestResult()Ljunit/framework/TestResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/test/AndroidTestRunner;->runTest(Ljunit/framework/TestResult;)V

    return-void
.end method

.method public runTest(Ljunit/framework/TestResult;)V
    .locals 5

    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljunit/framework/TestListener;

    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v4, v3}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    if-nez v4, :cond_1

    iget-object v2, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    :goto_1
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljunit/framework/TestCase;

    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v4, v2}, Landroid/test/AndroidTestRunner;->setContextIfAndroidTestCase(Ljunit/framework/Test;Landroid/content/Context;Landroid/content/Context;)V

    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-direct {p0, v1, v4}, Landroid/test/AndroidTestRunner;->setInstrumentationIfInstrumentationTestCase(Ljunit/framework/Test;Landroid/app/Instrumentation;)V

    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    invoke-direct {p0, v1, v4}, Landroid/test/AndroidTestRunner;->setPerformanceWriterIfPerformanceCollectorTestCase(Ljunit/framework/Test;Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mTestResult:Ljunit/framework/TestResult;

    invoke-virtual {v1, v4}, Ljunit/framework/TestCase;->run(Ljunit/framework/TestResult;)V

    goto :goto_2

    :cond_1
    iget-object v4, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    invoke-virtual {v4}, Landroid/app/Instrumentation;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setInstrumentaiton(Landroid/app/Instrumentation;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    return-void
.end method

.method public setInstrumentation(Landroid/app/Instrumentation;)V
    .locals 0

    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mInstrumentation:Landroid/app/Instrumentation;

    return-void
.end method

.method public setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V
    .locals 0

    iput-object p1, p0, Landroid/test/AndroidTestRunner;->mPerfWriter:Landroid/os/PerformanceCollector$PerformanceResultsWriter;

    return-void
.end method

.method setSkipExecution(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/test/AndroidTestRunner;->mSkipExecution:Z

    return-void
.end method

.method public setTest(Ljunit/framework/Test;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;Ljava/lang/Class;)V

    return-void
.end method

.method public setTestClassName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/test/AndroidTestRunner;->loadTestClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p2, v1}, Landroid/test/AndroidTestRunner;->shouldRunSingleTestMethod(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, p2}, Landroid/test/AndroidTestRunner;->buildSingleTestMethod(Ljava/lang/Class;Ljava/lang/String;)Ljunit/framework/TestCase;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljunit/framework/TestCase;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/test/AndroidTestRunner;->mTestCases:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/test/AndroidTestRunner;->mTestClassName:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Landroid/test/AndroidTestRunner;->getTest(Ljava/lang/Class;)Ljunit/framework/Test;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;Ljava/lang/Class;)V

    goto :goto_0
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
