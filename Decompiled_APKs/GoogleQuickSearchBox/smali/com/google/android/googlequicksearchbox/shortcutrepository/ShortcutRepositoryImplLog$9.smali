.class Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$9;
.super Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->reportClickAtTime(Lcom/google/android/googlequicksearchbox/Suggestion;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

.field final synthetic val$click:Landroid/content/ContentValues;

.field final synthetic val$shortcut:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$9;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$9;->val$shortcut:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$9;->val$click:Landroid/content/ContentValues;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 3
    .parameter "db"

    .prologue
    const/4 v2, 0x0

    .line 788
    const-string v0, "shortcuts"

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$9;->val$shortcut:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 789
    const-string v0, "clicklog"

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$9;->val$click:Landroid/content/ContentValues;

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 790
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$9;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    invoke-virtual {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->notifyChange()V

    .line 791
    const/4 v0, 0x1

    return v0
.end method
