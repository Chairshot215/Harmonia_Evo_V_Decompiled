.class Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$3;
.super Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;
.source "WebHistoryRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->deleteAllLocalHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 165
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$3;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 5
    .parameter "db"

    .prologue
    .line 171
    const-string v2, "history"

    const-string v3, "1"

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    .line 172
    .local v0, returnVal:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 173
    iget-object v2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$3;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDataSetObservable:Landroid/database/DataSetObservable;
    invoke-static {v2}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->access$300(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)Landroid/database/DataSetObservable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 176
    :cond_0
    const/4 v2, 0x1

    return v2
.end method
