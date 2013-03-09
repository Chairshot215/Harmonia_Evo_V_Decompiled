.class public Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;
.super Lcom/google/android/gm/persistence/Persistence$AccountToGlobalPreferenceMigrator;
.source "Persistence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/persistence/Persistence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageTextSizeAccountToGlobalMigrator"
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
.method public constructor <init>(Lcom/google/android/gm/persistence/Persistence;)V
    .locals 1
    .parameter

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

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
    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;->migrateFromMultipleAccounts(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public migrateFromMultipleAccounts(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .locals 9
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
    .line 1050
    .local p2, accounts:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 1053
    .local v4, result:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1054
    .local v2, bestTextSize:F
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1055
    .local v0, account:Ljava/lang/String;
    iget-object v6, p0, Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    const-string v7, "message-text"

    const/4 v8, 0x0

    #calls: Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v6, p1, v0, v7, v8}, Lcom/google/android/gm/persistence/Persistence;->access$200(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1057
    .local v1, accountSetting:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1059
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1060
    .local v5, textSize:F
    cmpl-float v6, v5, v2

    if-lez v6, :cond_0

    .line 1061
    move v2, v5

    .line 1062
    move-object v4, v1

    goto :goto_0

    .line 1064
    .end local v5           #textSize:F
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1069
    .end local v0           #account:Ljava/lang/String;
    .end local v1           #accountSetting:Ljava/lang/String;
    :cond_1
    return-object v4
.end method

.method public bridge synthetic migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1037
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;->migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public migrateFromSingleAccount(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "account"

    .prologue
    .line 1045
    iget-object v0, p0, Lcom/google/android/gm/persistence/Persistence$MessageTextSizeAccountToGlobalMigrator;->this$0:Lcom/google/android/gm/persistence/Persistence;

    const-string v1, "message-text"

    const/4 v2, 0x0

    #calls: Lcom/google/android/gm/persistence/Persistence;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/android/gm/persistence/Persistence;->access$200(Lcom/google/android/gm/persistence/Persistence;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
