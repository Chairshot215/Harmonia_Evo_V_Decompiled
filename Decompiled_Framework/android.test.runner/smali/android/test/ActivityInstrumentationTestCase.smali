.class public abstract Landroid/test/ActivityInstrumentationTestCase;
.super Landroid/test/ActivityTestCase;
.source "ActivityInstrumentationTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mInitialTouchMode:Z

.field mPackage:Ljava/lang/String;


# direct methods
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

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/test/ActivityInstrumentationTestCase;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase;->mInitialTouchMode:Z

    iput-object p2, p0, Landroid/test/ActivityInstrumentationTestCase;->mActivityClass:Ljava/lang/Class;

    iput-boolean p3, p0, Landroid/test/ActivityInstrumentationTestCase;->mInitialTouchMode:Z

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

    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    iget-boolean v2, p0, Landroid/test/ActivityInstrumentationTestCase;->mInitialTouchMode:Z

    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/test/ActivityInstrumentationTestCase;->mActivityClass:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/test/ActivityInstrumentationTestCase;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase;->setActivity(Landroid/app/Activity;)V

    const-class v0, Landroid/test/ActivityInstrumentationTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase;->scrubClass(Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

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

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/test/ActivityInstrumentationTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
