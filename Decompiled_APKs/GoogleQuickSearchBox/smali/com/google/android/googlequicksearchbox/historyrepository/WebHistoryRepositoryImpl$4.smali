.class Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$4;
.super Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$LocalHistoryTask;
.source "WebHistoryRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->hasLocalHistory(Lcom/google/android/googlequicksearchbox/util/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

.field final synthetic val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Lcom/google/android/googlequicksearchbox/util/Consumer;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 183
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$4;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$4;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$LocalHistoryTask;-><init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 188
    .local v0, results:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$4;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->access$500(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$4;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mHasHistoryQueryString:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->access$400(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 190
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$4;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$4;->val$consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method
