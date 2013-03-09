.class public Ljunit/runner/ReloadingTestSuiteLoader;
.super Ljava/lang/Object;
.source "ReloadingTestSuiteLoader.java"

# interfaces
.implements Ljunit/runner/TestSuiteLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createLoader()Ljunit/runner/TestCaseClassLoader;
    .locals 1

    new-instance v0, Ljunit/runner/TestCaseClassLoader;

    invoke-direct {v0}, Ljunit/runner/TestCaseClassLoader;-><init>()V

    return-object v0
.end method

.method public load(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Ljunit/runner/ReloadingTestSuiteLoader;->createLoader()Ljunit/runner/TestCaseClassLoader;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Ljunit/runner/TestCaseClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public reload(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Ljunit/runner/ReloadingTestSuiteLoader;->createLoader()Ljunit/runner/TestCaseClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljunit/runner/TestCaseClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
