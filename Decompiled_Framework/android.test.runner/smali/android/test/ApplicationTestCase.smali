.class public abstract Landroid/test/ApplicationTestCase;
.super Landroid/test/AndroidTestCase;
.source "ApplicationTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Application;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mApplicationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mAttached:Z

.field private mCreated:Z

.field private mSystemContext:Landroid/content/Context;


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

    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    iput-object p1, p0, Landroid/test/ApplicationTestCase;->mApplicationClass:Ljava/lang/Class;

    return-void
.end method

.method private setupApplication()V
    .locals 3

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    :try_start_0
    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplicationClass:Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected final createApplication()V
    .locals 1

    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    invoke-static {v0}, Landroid/test/ApplicationTestCase;->assertFalse(Z)V

    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/test/ApplicationTestCase;->setupApplication()V

    :cond_0
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getSystemContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mSystemContext:Landroid/content/Context;

    return-object v0
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mSystemContext:Landroid/content/Context;

    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->terminateApplication()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    const-class v0, Landroid/test/ApplicationTestCase;

    invoke-virtual {p0, v0}, Landroid/test/ApplicationTestCase;->scrubClass(Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    return-void
.end method

.method protected final terminateApplication()V
    .locals 1

    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    :cond_0
    return-void
.end method

.method public final testApplicationTestCaseSetUpProperly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Landroid/test/ApplicationTestCase;->setupApplication()V

    const-string v0, "Application class could not be instantiated successfully"

    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    invoke-static {v0, v1}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
