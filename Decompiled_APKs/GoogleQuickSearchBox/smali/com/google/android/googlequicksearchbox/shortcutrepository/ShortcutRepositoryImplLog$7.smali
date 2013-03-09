.class Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$7;
.super Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;
.source "ShortcutRepositoryImplLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getSourceScores(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery",
        "<",
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$7;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SQLiteAsyncQuery;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 334
    invoke-virtual {p0, p1}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$7;->performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected performQuery(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/Map;
    .locals 1
    .parameter "db"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog$7;->this$0:Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;

    #calls: Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->getSourceScores()Ljava/util/Map;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;->access$300(Lcom/google/android/googlequicksearchbox/shortcutrepository/ShortcutRepositoryImplLog;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
