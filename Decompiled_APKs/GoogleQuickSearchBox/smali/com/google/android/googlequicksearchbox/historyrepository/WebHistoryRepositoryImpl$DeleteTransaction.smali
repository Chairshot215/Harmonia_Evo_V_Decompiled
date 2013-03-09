.class final Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;
.super Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;
.source "WebHistoryRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeleteTransaction"
.end annotation


# instance fields
.field private final mLowerCaseQuery:Ljava/lang/String;

.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "query"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    .line 211
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;-><init>()V

    .line 212
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;->mLowerCaseQuery:Ljava/lang/String;

    .line 213
    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 8
    .parameter "db"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 217
    const-string v4, "history"

    invoke-static {}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->access$600()Ljava/lang/String;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;->mLowerCaseQuery:Ljava/lang/String;

    aput-object v7, v6, v3

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    int-to-long v0, v4

    .line 219
    .local v0, returnVal:J
    const-wide/16 v4, 0x1

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 220
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$DeleteTransaction;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDataSetObservable:Landroid/database/DataSetObservable;
    invoke-static {v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->access$300(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)Landroid/database/DataSetObservable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 225
    :goto_0
    return v2

    .line 224
    :cond_0
    const-string v2, "QSB.HistoryRepositoryImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB Transaction (delete) unsuccessful, Return value :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 225
    goto :goto_0
.end method
