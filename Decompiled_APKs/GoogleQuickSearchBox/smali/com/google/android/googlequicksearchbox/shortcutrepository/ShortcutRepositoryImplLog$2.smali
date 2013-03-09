.class Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$2;
.super Ljava/lang/Object;
.source "ShortcutRepositoryImplLog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->runQueryAsync(Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

.field final synthetic val$query:Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$2;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$2;->val$query:Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$2;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$2;->val$query:Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$2;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    #getter for: Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->mOpenHelper:Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->access$000(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$2;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    .line 243
    return-void
.end method
