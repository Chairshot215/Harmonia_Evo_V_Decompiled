.class Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$2;
.super Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;
.source "WebHistoryRepositoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->insertLocalHistory(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

.field final synthetic val$insertTime:J

.field final synthetic val$query:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 150
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    iput-object p2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$2;->val$query:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$2;->val$insertTime:J

    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/util/SQLiteTransaction;-><init>()V

    return-void
.end method


# virtual methods
.method protected performTransaction(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 4
    .parameter "db"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    iget-object v1, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$2;->val$query:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$2;->val$insertTime:J

    #calls: Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->insertQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z
    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->access$200(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl$2;->this$0:Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;

    #getter for: Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->mDataSetObservable:Landroid/database/DataSetObservable;
    invoke-static {v0}, Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;->access$300(Lcom/google/android/googlequicksearchbox/historyrepository/WebHistoryRepositoryImpl;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 155
    const/4 v0, 0x1

    .line 157
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
