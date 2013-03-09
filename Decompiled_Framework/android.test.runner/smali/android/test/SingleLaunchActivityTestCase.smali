.class public abstract Landroid/test/SingleLaunchActivityTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "SingleLaunchActivityTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/InstrumentationTestCase;"
    }
.end annotation


# static fields
.field private static sActivity:Landroid/app/Activity;

.field private static sActivityLaunchedFlag:Z

.field private static sTestCaseCounter:I


# instance fields
.field mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    sput-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    iput-object p1, p0, Landroid/test/SingleLaunchActivityTestCase;->mPackage:Ljava/lang/String;

    iput-object p2, p0, Landroid/test/SingleLaunchActivityTestCase;->mActivityClass:Ljava/lang/Class;

    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    sget-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    sget-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/test/SingleLaunchActivityTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    iget-object v0, p0, Landroid/test/SingleLaunchActivityTestCase;->mPackage:Ljava/lang/String;

    iget-object v1, p0, Landroid/test/SingleLaunchActivityTestCase;->mActivityClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/test/SingleLaunchActivityTestCase;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    :cond_0
    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->tearDown()V

    return-void
.end method

.method public testActivityTestCaseSetUpProperly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "activity should be launched successfully"

    sget-object v1, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Landroid/test/SingleLaunchActivityTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
