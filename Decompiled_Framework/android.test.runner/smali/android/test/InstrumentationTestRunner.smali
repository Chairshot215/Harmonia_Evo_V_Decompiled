.class public Landroid/test/InstrumentationTestRunner;
.super Landroid/app/Instrumentation;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Landroid/test/TestSuiteProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;,
        Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;,
        Landroid/test/InstrumentationTestRunner$StringResultPrinter;
    }
.end annotation


# static fields
.field static final ARGUMENT_ANNOTATION:Ljava/lang/String; = "annotation"

.field public static final ARGUMENT_DELAY_MSEC:Ljava/lang/String; = "delay_msec"

.field private static final ARGUMENT_LOG_ONLY:Ljava/lang/String; = "log"

.field static final ARGUMENT_NOT_ANNOTATION:Ljava/lang/String; = "notAnnotation"

.field public static final ARGUMENT_TEST_CLASS:Ljava/lang/String; = "class"

.field public static final ARGUMENT_TEST_PACKAGE:Ljava/lang/String; = "package"

.field public static final ARGUMENT_TEST_SIZE_PREDICATE:Ljava/lang/String; = "size"

.field private static final DEFAULT_COVERAGE_FILE_NAME:Ljava/lang/String; = "coverage.ec"

.field private static final LARGE_SUITE:Ljava/lang/String; = "large"

.field private static final LOG_TAG:Ljava/lang/String; = "InstrumentationTestRunner"

.field private static final MEDIUM_SUITE:Ljava/lang/String; = "medium"

.field private static final MEDIUM_SUITE_MAX_RUNTIME:F = 1000.0f

.field private static final REPORT_KEY_COVERAGE_PATH:Ljava/lang/String; = "coverageFilePath"

.field public static final REPORT_KEY_NAME_CLASS:Ljava/lang/String; = "class"

.field public static final REPORT_KEY_NAME_TEST:Ljava/lang/String; = "test"

.field public static final REPORT_KEY_NUM_CURRENT:Ljava/lang/String; = "current"

.field private static final REPORT_KEY_NUM_ITERATIONS:Ljava/lang/String; = "numiterations"

.field public static final REPORT_KEY_NUM_TOTAL:Ljava/lang/String; = "numtests"

.field private static final REPORT_KEY_RUN_TIME:Ljava/lang/String; = "runtime"

.field public static final REPORT_KEY_STACK:Ljava/lang/String; = "stack"

.field private static final REPORT_KEY_SUITE_ASSIGNMENT:Ljava/lang/String; = "suiteassignment"

.field public static final REPORT_VALUE_ID:Ljava/lang/String; = "InstrumentationTestRunner"

.field public static final REPORT_VALUE_RESULT_ERROR:I = -0x1

.field public static final REPORT_VALUE_RESULT_FAILURE:I = -0x2

.field public static final REPORT_VALUE_RESULT_OK:I = 0x0

.field public static final REPORT_VALUE_RESULT_START:I = 0x1

.field private static final SMALL_SUITE:Ljava/lang/String; = "small"

.field private static final SMALL_SUITE_MAX_RUNTIME:F = 100.0f


# instance fields
.field private mArguments:Landroid/os/Bundle;

.field private mCoverage:Z

.field private mCoverageFilePath:Ljava/lang/String;

.field private mDebug:Z

.field private mDelayMsec:I

.field private mJustCount:Z

.field private mPackageOfTests:Ljava/lang/String;

.field private final mResults:Landroid/os/Bundle;

.field private mSuiteAssignmentMode:Z

.field private mTestCount:I

.field private mTestRunner:Landroid/test/AndroidTestRunner;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Instrumentation;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Landroid/test/InstrumentationTestRunner;)I
    .locals 1

    iget v0, p0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I

    return v0
.end method

.method static synthetic access$100(Landroid/test/InstrumentationTestRunner;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    return-object v0
.end method

.method private generateCoverageReport()V
    .locals 11

    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->getCoverageFilePath()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v6, "com.vladium.emma.rt.RT"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "dumpCoverageData"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "coverageFilePath"

    invoke-virtual {v6, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "stream"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v6, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v7, "stream"

    const-string v8, "%s\nGenerated code coverage data to %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    return-void

    :catch_0
    move-exception v4

    const-string v6, "Is emma jar on classpath?"

    invoke-direct {p0, v6, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception v4

    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception v4

    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_4
    move-exception v4

    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_5
    move-exception v4

    invoke-direct {p0, v4}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "InstrumentationTestRunner"

    const-string v4, "Provided annotation value %s is not an Annotation"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "InstrumentationTestRunner"

    const-string v4, "Could not find class for specified annotation %s"

    new-array v5, v8, [Ljava/lang/Object;

    aput-object p1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/test/suitebuilder/annotation/HasAnnotation;

    invoke-direct {v1, v0}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getCoverageFilePath()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "coverage.ec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method private getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/test/InstrumentationTestRunner;->getAnnotationClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/test/suitebuilder/annotation/HasAnnotation;

    invoke-direct {v1, v0}, Landroid/test/suitebuilder/annotation/HasAnnotation;-><init>(Ljava/lang/Class;)V

    invoke-static {v1}, Lcom/android/internal/util/Predicates;->not(Lcom/android/internal/util/Predicate;)Lcom/android/internal/util/Predicate;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;"
        }
    .end annotation

    const-string v0, "small"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_SMALL:Lcom/android/internal/util/Predicate;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "medium"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_MEDIUM:Lcom/android/internal/util/Predicate;

    goto :goto_0

    :cond_1
    const-string v0, "large"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/test/suitebuilder/TestPredicates;->SELECT_LARGE:Lcom/android/internal/util/Predicate;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .locals 3

    const/16 v2, 0x23

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p2, p1, v1, v2}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestClassByName(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/test/suitebuilder/TestSuiteBuilder;

    return-void
.end method

.method private parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V
    .locals 6

    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    invoke-direct {p0, v3, p2}, Landroid/test/InstrumentationTestRunner;->parseTestClass(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reportEmmaError(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Landroid/test/InstrumentationTestRunner;->reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private reportEmmaError(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to generate emma coverage. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstrumentationTestRunner"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v2, "stream"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nError: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAllTests()Ljunit/framework/TestSuite;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getAndroidTestRunner()Landroid/test/AndroidTestRunner;
    .locals 1

    new-instance v0, Landroid/test/AndroidTestRunner;

    invoke-direct {v0}, Landroid/test/AndroidTestRunner;-><init>()V

    return-object v0
.end method

.method getBuilderRequirements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/test/suitebuilder/TestMethod;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/test/InstrumentationTestRunner;->mArguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLoader()Ljava/lang/ClassLoader;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTestSuite()Ljunit/framework/TestSuite;
    .locals 1

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->getAllTests()Ljunit/framework/TestSuite;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Landroid/app/Instrumentation;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/test/InstrumentationTestRunner;->mArguments:Landroid/os/Bundle;

    const/4 v13, 0x2

    new-array v2, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v13

    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v13

    invoke-static {v2}, Landroid/test/ClassPathPackageInfoSource;->setApkPaths([Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const-string v13, "class"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v13, "debug"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    const-string v13, "count"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    const-string v13, "suiteAssignment"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    const-string v13, "package"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    const-string v13, "size"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getSizePredicateFromArg(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v10

    const-string v13, "annotation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v7

    const-string v13, "notAnnotation"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/test/InstrumentationTestRunner;->getNotAnnotationPredicate(Ljava/lang/String;)Lcom/android/internal/util/Predicate;

    move-result-object v9

    const-string v13, "log"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v5

    const-string v13, "coverage"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Landroid/test/InstrumentationTestRunner;->getBooleanArgument(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    const-string v13, "coverageFile"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mCoverageFilePath:Ljava/lang/String;

    :try_start_0
    const-string v13, "delay_msec"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/test/InstrumentationTestRunner;->mDelayMsec:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v12, Landroid/test/suitebuilder/TestSuiteBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Landroid/test/suitebuilder/TestSuiteBuilder;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    if-eqz v10, :cond_1

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    :cond_1
    if-eqz v7, :cond_2

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    :cond_2
    if-eqz v9, :cond_3

    const/4 v13, 0x1

    new-array v13, v13, [Lcom/android/internal/util/Predicate;

    const/4 v14, 0x0

    aput-object v9, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements([Lcom/android/internal/util/Predicate;)Landroid/test/suitebuilder/TestSuiteBuilder;

    :cond_3
    if-nez v8, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/test/InstrumentationTestRunner;->mPackageOfTests:Ljava/lang/String;

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getBuilderRequirements()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->addRequirements(Ljava/util/List;)Landroid/test/suitebuilder/TestSuiteBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getAndroidTestRunner()Landroid/test/AndroidTestRunner;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTargetContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->setContext(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/test/AndroidTestRunner;->setInstrumentation(Landroid/app/Instrumentation;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13, v5}, Landroid/test/AndroidTestRunner;->setSkipExecution(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v12}, Landroid/test/suitebuilder/TestSuiteBuilder;->build()Ljunit/framework/TestSuite;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->setTest(Ljunit/framework/Test;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestCases()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/test/InstrumentationTestRunner;->mSuiteAssignmentMode:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v14, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;-><init>(Landroid/test/InstrumentationTestRunner;)V

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->start()V

    return-void

    :catch_0
    move-exception v4

    const-string v13, "InstrumentationTestRunner"

    const-string v14, "Invalid delay_msec parameter"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/test/InstrumentationTestRunner;->getTestSuite()Ljunit/framework/TestSuite;

    move-result-object v11

    if-eqz v11, :cond_5

    invoke-virtual {v12, v11}, Landroid/test/suitebuilder/TestSuiteBuilder;->addTestSuite(Ljunit/framework/TestSuite;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_1

    :cond_5
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, ""

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Landroid/test/suitebuilder/TestSuiteBuilder;->includePackages([Ljava/lang/String;)Landroid/test/suitebuilder/TestSuiteBuilder;

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v12}, Landroid/test/InstrumentationTestRunner;->parseTestClasses(Ljava/lang/String;Landroid/test/suitebuilder/TestSuiteBuilder;)V

    goto/16 :goto_1

    :cond_7
    new-instance v6, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    move-object/from16 v0, p0

    invoke-direct {v6, v0, v13}, Landroid/test/InstrumentationTestRunner$WatcherResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    new-instance v14, Landroid/test/TestPrinter;

    const-string v15, "TestRunner"

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Landroid/test/TestPrinter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v13, v14}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13, v6}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13, v6}, Landroid/test/AndroidTestRunner;->setPerformanceResultsWriter(Landroid/os/PerformanceCollector$PerformanceResultsWriter;)V

    goto :goto_2
.end method

.method public onStart()V
    .locals 15

    invoke-virtual {p0}, Landroid/test/InstrumentationTestRunner;->prepareLooper()V

    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mJustCount:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "id"

    const-string v10, "InstrumentationTestRunner"

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "numtests"

    iget v10, p0, Landroid/test/InstrumentationTestRunner;->mTestCount:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mDebug:Z

    if-eqz v8, :cond_1

    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v7, Ljava/io/PrintStream;

    invoke-direct {v7, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    new-instance v1, Landroid/test/InstrumentationTestRunner$StringResultPrinter;

    invoke-direct {v1, p0, v7}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;-><init>(Landroid/test/InstrumentationTestRunner;Ljava/io/PrintStream;)V

    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8, v1}, Landroid/test/AndroidTestRunner;->addTestListener(Ljunit/framework/TestListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8}, Landroid/test/AndroidTestRunner;->runTest()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v4

    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v8}, Landroid/test/AndroidTestRunner;->getTestResult()Ljunit/framework/TestResult;

    move-result-object v8

    invoke-virtual {v1, v8, v2, v3}, Landroid/test/InstrumentationTestRunner$StringResultPrinter;->print(Ljunit/framework/TestResult;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "stream"

    const-string v10, "\nTest results for %s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v8, :cond_2

    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    :cond_2
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_1
    const-string v8, "Test run aborted due to unexpected exception: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v8, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v9, "stream"

    const-string v10, "\nTest results for %s=%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v13}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v8, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v8, :cond_3

    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    :cond_3
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    const/4 v8, -0x1

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v8

    iget-object v9, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    const-string v10, "stream"

    const-string v11, "\nTest results for %s=%s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Landroid/test/InstrumentationTestRunner;->mTestRunner:Landroid/test/AndroidTestRunner;

    invoke-virtual {v14}, Landroid/test/AndroidTestRunner;->getTestClassName()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v9, p0, Landroid/test/InstrumentationTestRunner;->mCoverage:Z

    if-eqz v9, :cond_4

    invoke-direct {p0}, Landroid/test/InstrumentationTestRunner;->generateCoverageReport()V

    :cond_4
    invoke-virtual {v7}, Ljava/io/PrintStream;->close()V

    const/4 v9, -0x1

    iget-object v10, p0, Landroid/test/InstrumentationTestRunner;->mResults:Landroid/os/Bundle;

    invoke-virtual {p0, v9, v10}, Landroid/test/InstrumentationTestRunner;->finish(ILandroid/os/Bundle;)V

    throw v8
.end method

.method prepareLooper()V
    .locals 0

    invoke-static {}, Landroid/os/Looper;->prepare()V

    return-void
.end method
