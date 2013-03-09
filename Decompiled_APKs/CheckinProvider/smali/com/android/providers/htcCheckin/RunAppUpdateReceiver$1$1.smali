.class Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;
.super Ljava/lang/Object;
.source "RunAppUpdateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;->this$1:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;

    iput-object p2, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 184
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$300()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 185
    :try_start_0
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$400()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 186
    const-string v11, "FOTA.AppUpdate.Run"

    const-string v13, "Another thread is running for Run AppUpdate Receiver."

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    monitor-exit v12

    .line 234
    :goto_0
    return-void

    .line 189
    :cond_0
    const/4 v11, 0x1

    invoke-static {v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$402(Z)Z

    .line 191
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->removeAllAppRecord()V
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$500()V

    .line 196
    const-string v11, "FOTA.AppUpdate.Run"

    const-string v12, "RunUpdateReceiver receives intent!"

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v11, Ljava/util/TreeMap;

    invoke-direct {v11}, Ljava/util/TreeMap;-><init>()V

    invoke-static {v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$602(Ljava/util/TreeMap;)Ljava/util/TreeMap;

    .line 200
    :try_start_1
    iget-object v11, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;->val$intent:Landroid/content/Intent;

    const-string v12, "notifyTitle"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 201
    iget-object v11, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;->val$intent:Landroid/content/Intent;

    const-string v12, "downloadRestriction"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 202
    .local v7, strDLRestriction:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;->val$intent:Landroid/content/Intent;

    const-string v12, "Detail"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, strApkDetail:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;->val$intent:Landroid/content/Intent;

    const-string v12, "ApStatus"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 205
    .local v1, aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, -0x1

    .line 206
    .local v5, nIdx:I
    const/4 v10, 0x0

    .local v10, temp:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, strPkgName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 207
    .local v9, strUpdateType:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v3, v11, :cond_1

    .line 208
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10           #temp:Ljava/lang/String;
    check-cast v10, Ljava/lang/String;

    .line 209
    .restart local v10       #temp:Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 210
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 211
    add-int/lit8 v11, v5, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 212
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$600()Ljava/util/TreeMap;

    move-result-object v11

    invoke-virtual {v11, v8, v9}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 191
    .end local v1           #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v5           #nIdx:I
    .end local v6           #strApkDetail:Ljava/lang/String;
    .end local v7           #strDLRestriction:Ljava/lang/String;
    .end local v8           #strPkgName:Ljava/lang/String;
    .end local v9           #strUpdateType:Ljava/lang/String;
    .end local v10           #temp:Ljava/lang/String;
    :catchall_0
    move-exception v11

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v11

    .line 215
    .restart local v1       #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3       #i:I
    .restart local v5       #nIdx:I
    .restart local v6       #strApkDetail:Ljava/lang/String;
    .restart local v7       #strDLRestriction:Ljava/lang/String;
    .restart local v8       #strPkgName:Ljava/lang/String;
    .restart local v9       #strUpdateType:Ljava/lang/String;
    .restart local v10       #temp:Ljava/lang/String;
    :cond_1
    :try_start_3
    const-string v11, "FOTA.AppUpdate.Run"

    const-string v12, "ArrayList in RunAppUpdateReceiver."

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->d(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$000(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v11, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;->this$1:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;

    iget-object v11, v11, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;->this$0:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->DumpArrayList(Ljava/util/ArrayList;)V
    invoke-static {v11, v1}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$800(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;Ljava/util/ArrayList;)V

    .line 219
    const-string v11, "wifi"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$902(Z)Z

    .line 220
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 222
    .local v4, jsonApkInfo:Lorg/json/JSONObject;
    iget-object v11, p0, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1$1;->this$1:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;

    iget-object v11, v11, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$1;->this$0:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->extractInstallableApkInfo(Lorg/json/JSONObject;)I
    invoke-static {v11, v4}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1100(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;Lorg/json/JSONObject;)I

    move-result v11

    invoke-static {v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1002(I)I

    .line 223
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->findNextProperAPK()Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1200()Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;

    move-result-object v0

    .line 224
    .local v0, DLInfo:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;
    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->downloadApk(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)V
    invoke-static {v0}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$1300(Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 229
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$300()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 230
    const/4 v11, 0x0

    :try_start_4
    invoke-static {v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$402(Z)Z

    .line 231
    const-string v11, "FOTA.AppUpdate.Run"

    const-string v13, "== Run AppUpdate Receiver Finished =="

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v12

    goto/16 :goto_0

    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v11

    .line 226
    .end local v0           #DLInfo:Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$DownloadInfo;
    .end local v1           #aList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #i:I
    .end local v4           #jsonApkInfo:Lorg/json/JSONObject;
    .end local v5           #nIdx:I
    .end local v6           #strApkDetail:Ljava/lang/String;
    .end local v7           #strDLRestriction:Ljava/lang/String;
    .end local v8           #strPkgName:Ljava/lang/String;
    .end local v9           #strUpdateType:Ljava/lang/String;
    .end local v10           #temp:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 227
    .local v2, e:Ljava/lang/Exception;
    :try_start_5
    const-string v11, "FOTA.AppUpdate.Run"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Err in mRunUpdateReceiver.onReceive(). Err:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    #calls: Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->e(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver$FLOG;->access$1400(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 229
    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$300()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 230
    const/4 v11, 0x0

    :try_start_6
    invoke-static {v11}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$402(Z)Z

    .line 231
    const-string v11, "FOTA.AppUpdate.Run"

    const-string v13, "== Run AppUpdate Receiver Finished =="

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v12

    goto/16 :goto_0

    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v11

    .line 229
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_3
    move-exception v11

    invoke-static {}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$300()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 230
    const/4 v13, 0x0

    :try_start_7
    invoke-static {v13}, Lcom/android/providers/htcCheckin/RunAppUpdateReceiver;->access$402(Z)Z

    .line 231
    const-string v13, "FOTA.AppUpdate.Run"

    const-string v14, "== Run AppUpdate Receiver Finished =="

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v11

    :catchall_4
    move-exception v11

    :try_start_8
    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v11
.end method
