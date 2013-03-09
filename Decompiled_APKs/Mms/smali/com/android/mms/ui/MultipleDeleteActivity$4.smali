.class Lcom/android/mms/ui/MultipleDeleteActivity$4;
.super Ljava/lang/Object;
.source "MultipleDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;->deleteThreadByListV2(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

.field final synthetic val$ids2:Ljava/util/ArrayList;

.field final synthetic val$queryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;Ljava/util/ArrayList;Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 852
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->val$ids2:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->val$queryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 887
    new-instance v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;

    invoke-direct {v2}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;-><init>()V

    .line 888
    .local v2, cookie:Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    .line 890
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    const-string v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 892
    .local v3, delUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 894
    .local v6, builder:Landroid/net/Uri$Builder;
    const-string v0, "category"

    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCategoty:I
    invoke-static {v1}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$800(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 895
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 899
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 901
    .restart local v6       #builder:Landroid/net/Uri$Builder;
    const-string v0, "bg"

    const-string v1, "true"

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 902
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 906
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mbDeleteImmediately:Z

    if-nez v0, :cond_2

    .line 907
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    .line 908
    .restart local v6       #builder:Landroid/net/Uri$Builder;
    const-string v0, "trash"

    const-string v1, "true"

    invoke-virtual {v6, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 909
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 913
    .end local v6           #builder:Landroid/net/Uri$Builder;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 914
    .local v8, idsize:I
    const-string v0, "MultipleDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start Deleting >"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_4

    .line 916
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$900()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 917
    :try_start_0
    sget-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    if-eqz v0, :cond_5

    .line 918
    const-string v0, "MultipleDeleteActivity"

    const-string v5, "deleteThreadByListV2 Cancel in thread"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 920
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    const/16 v5, 0x76d

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 921
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    const/16 v5, 0x709

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 922
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1000(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    .line 923
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v5

    const/16 v10, 0x899

    invoke-virtual {v5, v10}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 925
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 957
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$900()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 958
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    .line 959
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 960
    return-void

    .line 927
    :cond_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 929
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 931
    sget-object v1, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v10, v0

    invoke-static {v1, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 933
    .local v9, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 936
    .end local v9           #uri:Landroid/net/Uri;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 938
    .local v4, selection2:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$900()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 939
    :try_start_3
    sget-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    if-eqz v0, :cond_8

    .line 940
    const-string v0, "MultipleDeleteActivity"

    const-string v5, "deleteThreadByListV2 Cancel in thread"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 942
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    const/16 v5, 0x76d

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 943
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    const/16 v5, 0x709

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 944
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #calls: Lcom/android/mms/ui/MultipleDeleteActivity;->releaseWakeLock()V
    invoke-static {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$1000(Lcom/android/mms/ui/MultipleDeleteActivity;)V

    .line 945
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v5

    const/16 v10, 0x899

    invoke-virtual {v5, v10}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 947
    :cond_7
    monitor-exit v1

    goto/16 :goto_1

    .line 949
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 927
    .end local v4           #selection2:Ljava/lang/String;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 949
    .restart local v4       #selection2:Ljava/lang/String;
    :cond_8
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 952
    add-int/lit8 v0, v8, -0x1

    if-ne v7, v0, :cond_9

    .line 953
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->val$queryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v1, 0x709

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 915
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 955
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$4;->val$queryHandler:Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    const/16 v1, 0x76d

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 959
    .end local v4           #selection2:Ljava/lang/String;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method
