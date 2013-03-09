.class public abstract Landroid/test/ProviderTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "ProviderTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/ContentProvider;",
        ">",
        "Landroid/test/InstrumentationTestCase;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mProvider:Landroid/content/ContentProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mProviderAuthority:Ljava/lang/String;

.field mProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/test/IsolatedContext;

.field private mResolver:Landroid/test/mock/MockContentResolver;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    iput-object p1, p0, Landroid/test/ProviderTestCase;->mProviderClass:Ljava/lang/Class;

    iput-object p2, p0, Landroid/test/ProviderTestCase;->mProviderAuthority:Ljava/lang/String;

    return-void
.end method

.method public static newResolverWithContentProviderFromSql(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentResolver;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ContentResolver;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    const-string v1, "test."

    new-instance v3, Landroid/test/mock/MockContentResolver;

    invoke-direct {v3}, Landroid/test/mock/MockContentResolver;-><init>()V

    new-instance v4, Landroid/test/RenamingDelegatingContext;

    new-instance v5, Landroid/test/mock/MockContext;

    invoke-direct {v5}, Landroid/test/mock/MockContext;-><init>()V

    const-string v6, "test."

    invoke-direct {v4, v5, p0, v6}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/test/IsolatedContext;

    invoke-direct {v0, v3, v4}, Landroid/test/IsolatedContext;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    invoke-static {v0, p3, p4, p5}, Landroid/database/DatabaseUtils;->createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProvider;

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    invoke-virtual {v3, p2, v2}, Landroid/test/mock/MockContentResolver;->addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V

    return-object v3
.end method


# virtual methods
.method public getMockContentResolver()Landroid/test/mock/MockContentResolver;
    .locals 1

    iget-object v0, p0, Landroid/test/ProviderTestCase;->mResolver:Landroid/test/mock/MockContentResolver;

    return-object v0
.end method

.method public getMockContext()Landroid/test/IsolatedContext;
    .locals 1

    iget-object v0, p0, Landroid/test/ProviderTestCase;->mProviderContext:Landroid/test/IsolatedContext;

    return-object v0
.end method

.method public getProvider()Landroid/content/ContentProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/test/ProviderTestCase;->mProvider:Landroid/content/ContentProvider;

    return-object v0
.end method

.method protected setUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    new-instance v2, Landroid/test/mock/MockContentResolver;

    invoke-direct {v2}, Landroid/test/mock/MockContentResolver;-><init>()V

    iput-object v2, p0, Landroid/test/ProviderTestCase;->mResolver:Landroid/test/mock/MockContentResolver;

    const-string v0, "test."

    new-instance v1, Landroid/test/RenamingDelegatingContext;

    new-instance v2, Landroid/test/mock/MockContext;

    invoke-direct {v2}, Landroid/test/mock/MockContext;-><init>()V

    invoke-virtual {p0}, Landroid/test/ProviderTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "test."

    invoke-direct {v1, v2, v3, v4}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Landroid/test/IsolatedContext;

    iget-object v3, p0, Landroid/test/ProviderTestCase;->mResolver:Landroid/test/mock/MockContentResolver;

    invoke-direct {v2, v3, v1}, Landroid/test/IsolatedContext;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/test/ProviderTestCase;->mProviderContext:Landroid/test/IsolatedContext;

    iget-object v2, p0, Landroid/test/ProviderTestCase;->mProviderClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProvider;

    iput-object v2, p0, Landroid/test/ProviderTestCase;->mProvider:Landroid/content/ContentProvider;

    iget-object v2, p0, Landroid/test/ProviderTestCase;->mProvider:Landroid/content/ContentProvider;

    iget-object v3, p0, Landroid/test/ProviderTestCase;->mProviderContext:Landroid/test/IsolatedContext;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    iget-object v2, p0, Landroid/test/ProviderTestCase;->mProvider:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/test/ProviderTestCase;->assertNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/test/ProviderTestCase;->mResolver:Landroid/test/mock/MockContentResolver;

    iget-object v3, p0, Landroid/test/ProviderTestCase;->mProviderAuthority:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/test/ProviderTestCase;->getProvider()Landroid/content/ContentProvider;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/test/mock/MockContentResolver;->addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V

    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Landroid/test/ProviderTestCase;->mProvider:Landroid/content/ContentProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->shutdown()V

    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->tearDown()V

    return-void
.end method
