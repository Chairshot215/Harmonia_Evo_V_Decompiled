.class Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$5;
.super Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$LocalHistoryTask;
.source "WebHistoryRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->runTransactionOnExecutor(Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

.field final synthetic val$transaction:Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$5;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$5;->val$transaction:Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$LocalHistoryTask;-><init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$1;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$5;->val$transaction:Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$5;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDbOpenHelper:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;
    invoke-static {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->access$500(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DbOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;->run(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 358
    return-void
.end method
