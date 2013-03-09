.class Lcom/google/android/gm/provider/MailEngine$3;
.super Ljava/lang/Object;
.source "MailEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/provider/MailEngine;->enqueueFinalInitializationTask(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/provider/MailEngine;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 925
    iput-object p1, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iput-object p2, p0, Lcom/google/android/gm/provider/MailEngine$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 929
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mTransactionListener:Landroid/database/sqlite/SQLiteTransactionListener;
    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$400(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/sqlite/SQLiteTransactionListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionWithListenerNonExclusive(Landroid/database/sqlite/SQLiteTransactionListener;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->mMailCore:Lcom/google/android/gm/provider/MailCore;

    invoke-virtual {v2}, Lcom/google/android/gm/provider/MailCore;->onLabelsChanged()V

    .line 932
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #calls: Lcom/google/android/gm/provider/MailEngine;->onLabelsPossiblyLoaded()V
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$500(Lcom/google/android/gm/provider/MailEngine;)V

    .line 933
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    :try_start_2
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 945
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->val$context:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 946
    .local v1, pm:Landroid/os/PowerManager;
    if-eqz v1, :cond_0

    .line 947
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    const/4 v3, 0x1

    const-string v4, "GmailProviderProviderChangedBroadcastWakeLock"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gm/provider/MailEngine;->mProviderChangedBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 949
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v2, v2, Lcom/google/android/gm/provider/MailEngine;->mProviderChangedBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 954
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #calls: Lcom/google/android/gm/provider/MailEngine;->calculateUnknownSyncRationalesAndPurgeInBackground()V
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$600(Lcom/google/android/gm/provider/MailEngine;)V

    .line 956
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #calls: Lcom/google/android/gm/provider/MailEngine;->getCursorForCustomLabelColors()Landroid/database/Cursor;
    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$700(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gm/utils/LabelColorUtils;->instantiateCustomLabelColors(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 958
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #calls: Lcom/google/android/gm/provider/MailEngine;->getCursorForCustomFrom()Landroid/database/Cursor;
    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$800(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gm/utils/CustomFromUtils;->instantiateCustomFrom(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 959
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #getter for: Lcom/google/android/gm/provider/MailEngine;->mAccount:Landroid/accounts/Account;
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$100(Lcom/google/android/gm/provider/MailEngine;)Landroid/accounts/Account;

    move-result-object v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #calls: Lcom/google/android/gm/provider/MailEngine;->getCursorForReplyFromDefaultAddress()Landroid/database/Cursor;
    invoke-static {v3}, Lcom/google/android/gm/provider/MailEngine;->access$900(Lcom/google/android/gm/provider/MailEngine;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gm/utils/CustomFromUtils;->instantiateReplyFromDefaultAddress(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 962
    iget-object v2, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    #calls: Lcom/google/android/gm/provider/MailEngine;->notifyInitializationComplete()V
    invoke-static {v2}, Lcom/google/android/gm/provider/MailEngine;->access$1000(Lcom/google/android/gm/provider/MailEngine;)V

    .line 963
    const-string v2, "ME.constructor"

    invoke-static {v2}, Lcom/google/android/gm/perf/Timer;->stopTiming(Ljava/lang/String;)V

    .line 964
    return-void

    .line 935
    .end local v1           #pm:Landroid/os/PowerManager;
    :catchall_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/google/android/gm/provider/MailEngine$3;->this$0:Lcom/google/android/gm/provider/MailEngine;

    iget-object v3, v3, Lcom/google/android/gm/provider/MailEngine;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0

    .line 937
    :catch_0
    move-exception v0

    .line 938
    .local v0, e:Landroid/database/SQLException;
    throw v0
.end method
