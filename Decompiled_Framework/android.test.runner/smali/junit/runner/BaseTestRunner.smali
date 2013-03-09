.class public abstract Ljunit/runner/BaseTestRunner;
.super Ljava/lang/Object;
.source "BaseTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# static fields
.field public static final SUITE_METHODNAME:Ljava/lang/String; = "suite"

.field private static fPreferences:Ljava/util/Properties;

.field static fgFilterStack:Z

.field static fgMaxMessageLength:I


# instance fields
.field fLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x1f4

    sput v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    const/4 v0, 0x1

    sput-boolean v0, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    const-string v0, "maxmessage"

    sget v1, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    invoke-static {v0, v1}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;I)I

    move-result v0

    sput v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    return-void
.end method

.method static filterLine(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x8

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "junit.framework.TestCase"

    aput-object v4, v1, v3

    const-string v4, "junit.framework.TestResult"

    aput-object v4, v1, v2

    const/4 v4, 0x2

    const-string v5, "junit.framework.TestSuite"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "junit.framework.Assert."

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "junit.swingui.TestRunner"

    aput-object v5, v1, v4

    const/4 v4, 0x5

    const-string v5, "junit.awtui.TestRunner"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "junit.textui.TestRunner"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "java.lang.reflect.Method.invoke("

    aput-object v5, v1, v4

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    aget-object v4, v1, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public static getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljunit/runner/BaseTestRunner;->showStackRaw()Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v5, Ljava/io/StringWriter;

    invoke-direct {v5}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    const/16 v6, 0x3e8

    invoke-direct {v1, v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :cond_1
    :goto_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljunit/runner/BaseTestRunner;->filterLine(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static getFilteredTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljunit/runner/BaseTestRunner;->getFilteredTrace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getPreference(Ljava/lang/String;I)I
    .locals 4

    invoke-static {p0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v0, p1

    if-nez v2, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static getPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static getPreferences()Ljava/util/Properties;
    .locals 3

    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    const-string v1, "loading"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    const-string v1, "filterstack"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->readPreferences()V

    :cond_0
    sget-object v0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    return-object v0
.end method

.method private static getPreferencesFile()Ljava/io/File;
    .locals 3

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "junit.properties"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static inVAJava()Z
    .locals 2

    :try_start_0
    const-string v1, "com.ibm.uvm.tools.DebugSupport"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static readPreferences()V
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferencesFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/util/Properties;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    invoke-static {v3}, Ljunit/runner/BaseTestRunner;->setPreferences(Ljava/util/Properties;)V

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method public static savePreferences()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferencesFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1
.end method

.method protected static setPreferences(Ljava/util/Properties;)V
    .locals 0

    sput-object p0, Ljunit/runner/BaseTestRunner;->fPreferences:Ljava/util/Properties;

    return-void
.end method

.method protected static showStackRaw()Z
    .locals 2

    const-string v0, "filterstack"

    invoke-static {v0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static truncate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget v0, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    sget v2, Ljunit/runner/BaseTestRunner;->fgMaxMessageLength:I

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public declared-synchronized addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Ljunit/runner/BaseTestRunner;->testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p0, v0, p1, p2}, Ljunit/runner/BaseTestRunner;->testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clearStatus()V
    .locals 0

    return-void
.end method

.method public elapsedTimeAsString(J)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    long-to-double v1, p1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized endTest(Ljunit/framework/Test;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->testEnded(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public extractClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Default package for"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public getLoader()Ljunit/runner/TestSuiteLoader;
    .locals 1

    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->useReloadingTestSuiteLoader()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljunit/runner/ReloadingTestSuiteLoader;

    invoke-direct {v0}, Ljunit/runner/ReloadingTestSuiteLoader;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljunit/runner/StandardTestSuiteLoader;

    invoke-direct {v0}, Ljunit/runner/StandardTestSuiteLoader;-><init>()V

    goto :goto_0
.end method

.method public getTest(Ljava/lang/String;)Ljunit/framework/Test;
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    move-object v3, v5

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Ljunit/runner/BaseTestRunner;->loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    const/4 v2, 0x0

    :try_start_1
    const-string v6, "suite"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "Suite() method must be static"

    invoke-virtual {p0, v6}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, p1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Class not found \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    new-instance v3, Ljunit/framework/TestSuite;

    invoke-direct {v3, v4}, Ljunit/framework/TestSuite;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_2
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljunit/framework/Test;
    :try_end_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->clearStatus()V

    goto :goto_0

    :catch_3
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to invoke suite():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    move-object v3, v5

    goto/16 :goto_0

    :catch_4
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to invoke suite():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljunit/runner/BaseTestRunner;->runFailed(Ljava/lang/String;)V

    move-object v3, v5

    goto/16 :goto_0
.end method

.method protected loadSuiteClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Ljunit/runner/BaseTestRunner;->getLoader()Ljunit/runner/TestSuiteLoader;

    move-result-object v0

    invoke-interface {v0, p1}, Ljunit/runner/TestSuiteLoader;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected processArguments([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_4

    aget-object v2, p1, v0

    const-string v3, "-noloading"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Ljunit/runner/BaseTestRunner;->setLoading(Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v2, p1, v0

    const-string v3, "-nofilterstack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v4, Ljunit/runner/BaseTestRunner;->fgFilterStack:Z

    goto :goto_1

    :cond_1
    aget-object v2, p1, v0

    const-string v3, "-c"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    array-length v2, p1

    add-int/lit8 v3, v0, 0x1

    if-le v2, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-virtual {p0, v2}, Ljunit/runner/BaseTestRunner;->extractClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Missing Test class name"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    aget-object v1, p1, v0

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method protected abstract runFailed(Ljava/lang/String;)V
.end method

.method public setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    return-void
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Ljunit/runner/BaseTestRunner;->getPreferences()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized startTest(Ljunit/framework/Test;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljunit/runner/BaseTestRunner;->testStarted(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract testEnded(Ljava/lang/String;)V
.end method

.method public abstract testFailed(ILjunit/framework/Test;Ljava/lang/Throwable;)V
.end method

.method public abstract testStarted(Ljava/lang/String;)V
.end method

.method protected useReloadingTestSuiteLoader()Z
    .locals 2

    const-string v0, "loading"

    invoke-static {v0}, Ljunit/runner/BaseTestRunner;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljunit/runner/BaseTestRunner;->inVAJava()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ljunit/runner/BaseTestRunner;->fLoading:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
