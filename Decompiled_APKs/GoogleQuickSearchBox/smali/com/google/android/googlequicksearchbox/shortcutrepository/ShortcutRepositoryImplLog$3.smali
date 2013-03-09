.class Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$3;
.super Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->hasHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$3;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 1
    .parameter "db"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$3;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    #calls: Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->hasHistory(Landroid/database/sqlite/SQLiteDatabase;)Z
    invoke-static {v0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->access$100(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$3;->performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
