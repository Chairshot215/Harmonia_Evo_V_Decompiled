.class Landroid/test/NoExecTestResult;
.super Ljunit/framework/TestResult;
.source "NoExecTestResult.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljunit/framework/TestResult;-><init>()V

    return-void
.end method


# virtual methods
.method protected run(Ljunit/framework/TestCase;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/test/NoExecTestResult;->startTest(Ljunit/framework/Test;)V

    invoke-virtual {p0, p1}, Landroid/test/NoExecTestResult;->endTest(Ljunit/framework/Test;)V

    return-void
.end method
