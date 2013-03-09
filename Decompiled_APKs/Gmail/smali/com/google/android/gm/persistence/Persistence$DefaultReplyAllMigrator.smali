.class Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;
.super Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;
.source "Persistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/persistence/Persistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultReplyAllMigrator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/persistence/Persistence;


# direct methods
.method constructor <init>(Lcom/google/android/gm/persistence/Persistence;)V
    .locals 1
    .parameter

    .prologue
    .line 428
    iput-object p1, p0, Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;-><init>(Lcom/google/android/gm/persistence/Persistence;Lcom/google/android/gm/persistence/Persistence$1;)V

    return-void
.end method


# virtual methods
.method migrateFromMultipleAccounts(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Boolean;
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 442
    .local p2, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 444
    .local v2, oldDefaultValue:Z
    const/4 v3, 0x1

    .line 445
    .local v3, result:Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 446
    .local v0, account:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    const-string v5, "action-strip-action-reply-all"

    const/4 v6, 0x0

    #calls: Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v4, p1, v0, v5, v6}, Lcom/google/android/gm/persistence/Persistence;->access$100(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    and-int/2addr v3, v4

    goto :goto_0

    .line 449
    .end local v0           #account:Ljava/lang/String;
    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method

.method bridge synthetic migrateFromMultipleAccounts(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;->migrateFromMultipleAccounts(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    const-string v1, "action-strip-action-reply-all"

    const/4 v2, 0x0

    #calls: Lcom/google/android/gm/persistence/Persistence;->getBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->access$100(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 428
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence$DefaultReplyAllMigrator;->migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
