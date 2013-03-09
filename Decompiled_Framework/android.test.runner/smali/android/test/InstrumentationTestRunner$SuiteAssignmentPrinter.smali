.class Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;
.super Ljava/lang/Object;
.source "InstrumentationTestRunner.java"

# interfaces
.implements Ljunit/framework/TestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/InstrumentationTestRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuiteAssignmentPrinter"
.end annotation


# instance fields
.field private mEndTime:J

.field private mStartTime:J

.field private mTestResult:Landroid/os/Bundle;

.field private mTimingValid:Z

.field final synthetic this$0:Landroid/test/InstrumentationTestRunner;


# direct methods
.method public constructor <init>(Landroid/test/InstrumentationTestRunner;)V
    .locals 0

    iput-object p1, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    return-void
.end method

.method public addFailure(Ljunit/framework/Test;Ljunit/framework/AssertionFailedError;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    return-void
.end method

.method public endTest(Ljunit/framework/Test;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mEndTime:J

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    iget-boolean v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    if-eqz v2, :cond_0

    iget-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    const-string v0, "NA"

    const/high16 v1, -0x4080

    :goto_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "stream"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    check-cast p1, Ljunit/framework/TestCase;

    invoke-virtual {p1}, Ljunit/framework/TestCase;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nin "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " suite\nrunTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "runtime"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    const-string v3, "suiteassignment"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->this$0:Landroid/test/InstrumentationTestRunner;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTestResult:Landroid/os/Bundle;

    invoke-virtual {v2, v3, v4}, Landroid/test/InstrumentationTestRunner;->sendStatus(ILandroid/os/Bundle;)V

    return-void

    :cond_1
    iget-wide v2, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mEndTime:J

    iget-wide v4, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    const/high16 v2, 0x42c8

    cmpg-float v2, v1, v2

    if-gez v2, :cond_2

    const-class v2, Landroid/test/InstrumentationTestCase;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v0, "small"

    goto :goto_0

    :cond_2
    const/high16 v2, 0x447a

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    const-string v0, "medium"

    goto/16 :goto_0

    :cond_3
    const-string v0, "large"

    goto/16 :goto_0
.end method

.method public startTest(Ljunit/framework/Test;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mTimingValid:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/test/InstrumentationTestRunner$SuiteAssignmentPrinter;->mStartTime:J

    return-void
.end method
