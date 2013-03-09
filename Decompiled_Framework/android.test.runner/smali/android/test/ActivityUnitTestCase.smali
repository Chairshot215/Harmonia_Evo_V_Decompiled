.class public abstract Landroid/test/ActivityUnitTestCase;
.super Landroid/test/ActivityTestCase;
.source "ActivityUnitTestCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/ActivityUnitTestCase$1;,
        Landroid/test/ActivityUnitTestCase$MockParent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation


# instance fields
.field private mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mActivityContext:Landroid/content/Context;

.field private mApplication:Landroid/app/Application;

.field private mAttached:Z

.field private mCreated:Z

.field private mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;


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

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

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

.method public getFinishedActivityRequest()I
    .locals 1

    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRequestedOrientation()I
    .locals 1

    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartedActivityIntent()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget-object v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStartedActivityRequest()I
    .locals 1

    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinishCalled()Z
    .locals 1

    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    iget-boolean v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActivityContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .locals 0

    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

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

    invoke-virtual {p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    return-void
.end method

.method protected startActivity(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    const-string v1, "Activity already created"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    invoke-static {v1, v2}, Landroid/test/ActivityUnitTestCase;->assertFalse(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-static {v1}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    const/4 v14, 0x0

    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    if-nez v1, :cond_0

    new-instance v1, Landroid/test/mock/MockApplication;

    invoke-direct {v1}, Landroid/test/mock/MockApplication;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/test/ActivityUnitTestCase;->setApplication(Landroid/app/Application;)V

    :cond_0
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v7, Landroid/content/pm/ActivityInfo;

    invoke-direct {v7}, Landroid/content/pm/ActivityInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Landroid/test/ActivityUnitTestCase$MockParent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/test/ActivityUnitTestCase$MockParent;-><init>(Landroid/test/ActivityUnitTestCase$1;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    move-object/from16 v6, p1

    move-object/from16 v11, p3

    invoke-virtual/range {v1 .. v11}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    :goto_0
    invoke-static {v14}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    :cond_2
    return-object v15

    :catch_0
    move-exception v13

    invoke-static {v14}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    const-class v0, Landroid/test/ActivityInstrumentationTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ActivityUnitTestCase;->scrubClass(Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    return-void
.end method
