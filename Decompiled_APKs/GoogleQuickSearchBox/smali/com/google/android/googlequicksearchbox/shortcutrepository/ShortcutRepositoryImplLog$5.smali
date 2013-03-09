.class Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$5;
.super Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->clearHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$5;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method public performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 2
    .parameter "db"

    .prologue
    const/4 v1, 0x0

    .line 294
    const-string v0, "clicklog"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    const-string v0, "shortcuts"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    const-string v0, "sourcetotals"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 297
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$5;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->notifyChange()V

    .line 298
    const/4 v0, 0x1

    return v0
.end method
