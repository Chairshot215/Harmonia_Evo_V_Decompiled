.class Lcom/android/providers/htcCheckin/htcCheckinService$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "htcCheckinService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/htcCheckin/htcCheckinService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/htcCheckin/htcCheckinService;


# direct methods
.method private constructor <init>(Lcom/android/providers/htcCheckin/htcCheckinService;)V
    .locals 0
    .parameter

    .prologue
    .line 2762
    iput-object p1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$BootCompleteReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "c"
    .parameter "intent"

    .prologue
    .line 2767
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2768
    :try_start_0
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2000()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2770
    monitor-exit v2

    .line 2826
    :goto_0
    return-void

    .line 2772
    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2774
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2776
    iget-object v1, p0, Lcom/android/providers/htcCheckin/htcCheckinService$BootCompleteReceiver;->this$0:Lcom/android/providers/htcCheckin/htcCheckinService;

    invoke-virtual {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2777
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 2779
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-static {p1}, Lcom/android/providers/htcCheckin/UpdateReceiver;->loadUpdateInfo(Landroid/content/Context;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 2780
    .local v9, pkgInfo:Landroid/content/Intent;
    if-nez v9, :cond_2

    .line 2818
    if-eqz v6, :cond_1

    .line 2819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2820
    const/4 v6, 0x0

    .line 2822
    :cond_1
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2823
    const/4 v1, 0x0

    :try_start_2
    invoke-static {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2824
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2774
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v9           #pkgInfo:Landroid/content/Intent;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 2783
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v9       #pkgInfo:Landroid/content/Intent;
    :cond_2
    :try_start_4
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2785
    .local v7, downloadUrl:Ljava/lang/String;
    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2600()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "entity=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2787
    :cond_3
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2788
    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 2789
    .local v10, status:I
    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2791
    .local v11, update:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 2794
    invoke-static {v10}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2795
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    .line 2796
    const-string v1, "/sdcard/"

    invoke-virtual {v11, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2798
    const-string v1, "cb_action"

    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2799
    const-string v1, "checkFile"

    invoke-virtual {v9, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2800
    const-string v1, "com.android.updater.CHECKINAGENT"

    invoke-virtual {v9, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2809
    :cond_4
    invoke-virtual {p1, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2818
    if-eqz v6, :cond_5

    .line 2819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2820
    const/4 v6, 0x0

    .line 2822
    :cond_5
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2823
    const/4 v1, 0x0

    :try_start_5
    invoke-static {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2824
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 2802
    :cond_6
    :try_start_6
    const-string v1, "htcCheckinService"

    const-string v2, "Download is miss, skip in BootComplete handle"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 2818
    if-eqz v6, :cond_7

    .line 2819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2820
    const/4 v6, 0x0

    .line 2822
    :cond_7
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2823
    const/4 v1, 0x0

    :try_start_7
    invoke-static {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2824
    monitor-exit v2

    goto/16 :goto_0

    :catchall_3
    move-exception v1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    .line 2818
    .end local v10           #status:I
    .end local v11           #update:Ljava/lang/String;
    :cond_8
    if-eqz v6, :cond_9

    .line 2819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2820
    const/4 v6, 0x0

    .line 2822
    :cond_9
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2823
    const/4 v1, 0x0

    :try_start_8
    invoke-static {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2824
    monitor-exit v2

    goto/16 :goto_0

    :catchall_4
    move-exception v1

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v1

    .line 2815
    .end local v7           #downloadUrl:Ljava/lang/String;
    .end local v9           #pkgInfo:Landroid/content/Intent;
    :catch_0
    move-exception v8

    .line 2816
    .local v8, e:Ljava/lang/Exception;
    :try_start_9
    const-string v1, "htcCheckinService"

    const-string v2, "Error when query download provider."

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 2818
    if-eqz v6, :cond_a

    .line 2819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2820
    const/4 v6, 0x0

    .line 2822
    :cond_a
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2823
    const/4 v1, 0x0

    :try_start_a
    invoke-static {v1}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2824
    monitor-exit v2

    goto/16 :goto_0

    :catchall_5
    move-exception v1

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1

    .line 2818
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_6
    move-exception v1

    if-eqz v6, :cond_b

    .line 2819
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2820
    const/4 v6, 0x0

    .line 2822
    :cond_b
    invoke-static {}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$1900()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 2823
    const/4 v3, 0x0

    :try_start_b
    invoke-static {v3}, Lcom/android/providers/htcCheckin/htcCheckinService;->access$2002(Z)Z

    .line 2824
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v1

    :catchall_7
    move-exception v1

    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw v1
.end method
