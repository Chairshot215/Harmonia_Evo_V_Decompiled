.class Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;
.super Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;
.source "Persistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/persistence/Persistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfirmActionsAccountToGlobalMigrator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator",
        "<",
        "Ljava/lang/String;",
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
    .line 1103
    iput-object p1, p0, Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;-><init>(Lcom/google/android/gm/persistence/Persistence;Lcom/google/android/gm/persistence/Persistence$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic migrateFromMultipleAccounts(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1103
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;->migrateFromMultipleAccounts(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public migrateFromMultipleAccounts(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 8
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
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1117
    .local p2, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1122
    .local v4, result:Ljava/lang/String;
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1123
    .local v1, accountResults:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1124
    .local v0, account:Ljava/lang/String;
    iget-object v5, p0, Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    const-string v6, "confirm-actions"

    const/4 v7, 0x0

    #calls: Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, p1, v0, v6, v7}, Lcom/google/android/gm/persistence/Persistence;->access$200(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1126
    .local v2, accountSetting:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1127
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1130
    .end local v0           #account:Ljava/lang/String;
    .end local v2           #accountSetting:Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1131
    const-string v5, ","

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    .line 1133
    :cond_2
    return-object v4
.end method

.method public bridge synthetic migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1103
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;->migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1112
    iget-object v0, p0, Lcom/google/android/gm/persistence/Persistence$ConfirmActionsAccountToGlobalMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    const-string v1, "confirm-actions"

    const/4 v2, 0x0

    #calls: Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->access$200(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
