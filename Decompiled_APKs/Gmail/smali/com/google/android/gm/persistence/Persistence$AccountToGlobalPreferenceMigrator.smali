.class abstract Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;
.super Ljava/lang/Object;
.source "Persistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/persistence/Persistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AccountToGlobalPreferenceMigrator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/persistence/Persistence;


# direct methods
.method private constructor <init>(Lcom/google/android/gm/persistence/Persistence;)V
    .locals 0
    .parameter

    .prologue
    .line 1452
    .local p0, this:Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;,"Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator<TT;>;"
    iput-object p1, p0, Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gm/persistence/Persistence;Lcom/google/android/gm/persistence/Persistence$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1452
    .local p0, this:Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;,"Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;-><init>(Lcom/google/android/gm/persistence/Persistence;)V

    return-void
.end method


# virtual methods
.method public migrate(Landroid/content/Context;)Ljava/lang/Object;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;,"Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator<TT;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1467
    iget-object v2, p0, Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    invoke-virtual {v2, p1, v3}, Lcom/google/android/gm/persistence/Persistence;->getCachedConfiguredGoogleAccounts(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 1469
    .local v1, cachedAccounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    .line 1470
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1471
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;->migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1483
    :goto_0
    return-object v2

    .line 1472
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_1

    .line 1473
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;->migrateFromMultipleAccounts(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1479
    :cond_1
    iget-object v2, p0, Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    invoke-virtual {v2, p1}, Lcom/google/android/gm/persistence/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1480
    .local v0, activeAccount:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1481
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;->migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1483
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method abstract migrateFromMultipleAccounts(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation
.end method

.method abstract migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
