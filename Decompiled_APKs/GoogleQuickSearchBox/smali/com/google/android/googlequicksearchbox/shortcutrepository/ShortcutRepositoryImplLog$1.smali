.class Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$1;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->runTransactionAsync(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

.field final synthetic val$transaction:Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$1;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$1;->val$transaction:Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$1;->val$transaction:Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$1;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    #getter for: Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->access$000(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;->run(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 235
    return-void
.end method
