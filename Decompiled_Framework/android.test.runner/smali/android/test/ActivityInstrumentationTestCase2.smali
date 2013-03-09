.class public abstract Landroid/test/ActivityInstrumentationTestCase2;
.super Landroid/test/ActivityTestCase;
.source "ActivityInstrumentationTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
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

.field mActivityIntent:Landroid/content/Intent;

.field mInitialTouchMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    iput-object p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p2}, Landroid/test/ActivityInstrumentationTestCase2;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    iget-boolean v3, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/test/ActivityInstrumentationTestCase2;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase2;->setActivity(Landroid/app/Activity;)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v2, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityClass:Ljava/lang/Class;

    iget-object v3, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2, v3}, Landroid/test/ActivityInstrumentationTestCase2;->launchActivityWithIntent(Ljava/lang/String;Ljava/lang/Class;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method protected runTest()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-class v1, Landroid/test/UiThreadTest;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase2;->getActivity()Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/test/ActivityTestCase;->runTest()V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setActivityInitialTouchMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    return-void
.end method

.method public setActivityIntent(Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mInitialTouchMode:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ActivityInstrumentationTestCase2;->mActivityIntent:Landroid/content/Intent;

    return-void
.end method

.method protected tearDown()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase2;->setActivity(Landroid/app/Activity;)V

    :cond_0
    const-class v1, Landroid/test/ActivityInstrumentationTestCase2;

    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase2;->scrubClass(Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    return-void
.end method
