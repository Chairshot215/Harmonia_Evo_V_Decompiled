.class Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;
.super Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->refreshShortcut(Lcom/google/android/googlequicksearchbox/Source;Ljava/lang/String;Lcom/google/android/googlequicksearchbox/Suggestion;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

.field final synthetic val$shortcut:Landroid/content/ContentValues;

.field final synthetic val$shortcutId:Ljava/lang/String;

.field final synthetic val$whereArgs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 427
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;->val$shortcut:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;->val$shortcutId:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;->val$whereArgs:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 6
    .parameter "db"

    .prologue
    .line 430
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;->val$shortcut:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 432
    const-string v0, "shortcuts"

    invoke-static {}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->access$400()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;->val$whereArgs:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 438
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 435
    :cond_0
    const-string v1, "shortcuts"

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;->val$shortcut:Landroid/content/ContentValues;

    invoke-static {}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->access$400()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$8;->val$whereArgs:[Ljava/lang/String;

    const/4 v5, 0x5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    goto :goto_0
.end method
