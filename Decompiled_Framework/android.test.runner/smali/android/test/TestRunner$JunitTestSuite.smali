.class public Landroid/test/TestRunner$JunitTestSuite;
.super Ljunit/framework/TestSuite;
.source "TestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/TestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JunitTestSuite"
.end annotation


# instance fields
.field mError:Z

.field final synthetic this$0:Landroid/test/TestRunner;


# direct methods
.method public constructor <init>(Landroid/test/TestRunner;)V
    .locals 1

    iput-object p1, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    invoke-direct {p0}, Ljunit/framework/TestSuite;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/TestRunner$JunitTestSuite;->mError:Z

    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/TestRunner$JunitTestSuite;->mError:Z

    iget-object v0, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/TestRunner$JunitTestSuite;->mError:Z

    iget-object v0, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/test/TestRunner;->failed(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 2

    iget-object v0, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/test/TestRunner;->finished(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/test/TestRunner;->access$100(Landroid/test/TestRunner;Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/test/TestRunner$JunitTestSuite;->mError:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/test/TestRunner;->passed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public run(Ljunit/framework/TestResult;)V
    .locals 0

    invoke-virtual {p1, p0}, Ljunit/framework/TestResult;->addListener(Ljunit/framework/TestListener;)V

    invoke-super {p0, p1}, Ljunit/framework/TestSuite;->run(Ljunit/framework/TestResult;)V

    invoke-virtual {p1, p0}, Ljunit/framework/TestResult;->removeListener(Ljunit/framework/TestListener;)V

    return-void
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 2

    iget-object v0, p0, Landroid/test/TestRunner$JunitTestSuite;->this$0:Landroid/test/TestRunner;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/test/TestRunner;->started(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/test/TestRunner;->access$000(Landroid/test/TestRunner;Ljava/lang/String;)V

    return-void
.end method
