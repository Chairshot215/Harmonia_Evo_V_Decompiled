.class Lcom/android/mms/ui/MultipleDeleteActivity$6;
.super Ljava/lang/Object;
.source "MultipleDeleteActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleDeleteActivity;->deleteContactBasehtcThreadByList(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

.field final synthetic val$ids2:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleDeleteActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/mms/ui/MultipleDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    iput-object p2, p0, Lcom/android/mms/ui/MultipleDeleteActivity$6;->val$ids2:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0x76d

    const/16 v1, 0x709

    .line 1009
    new-instance v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;

    invoke-direct {v2}, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;-><init>()V

    .line 1010
    .local v2, cookie:Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    .line 1011
    const-string v0, "MultipleDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startDelete: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v8, v2, Lcom/android/mms/ui/MultipleDeleteActivity$DeleteCookie;->sTime:J

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$6;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_1

    .line 1015
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$900()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1016
    :try_start_0
    sget-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    if-eqz v0, :cond_2

    .line 1017
    const-string v0, "MultipleDeleteActivity"

    const-string v1, "deleteContactBasehtcThreadByList Cancel in thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1019
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    const/16 v1, 0x76d

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1020
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    const/16 v1, 0x709

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1021
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v1

    const/16 v5, 0x899

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1023
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1076
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$900()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1077
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    .line 1078
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1079
    return-void

    .line 1025
    :cond_2
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1027
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 1029
    sget-object v4, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$6;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1031
    .local v3, delUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleDeleteActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/mms/util/SimIoUtil;->deleteSimSms(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1034
    .end local v3           #delUri:Landroid/net/Uri;
    :cond_3
    sget-object v4, Landroid/provider/Telephony$HtcThreads;->CONTACTBASE_THREAD_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$6;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v8, v0

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1035
    .restart local v3       #delUri:Landroid/net/Uri;
    const-string v0, "MultipleDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "delUri: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1038
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 1039
    .local v12, builder:Landroid/net/Uri$Builder;
    const-string v0, "category"

    iget-object v4, p0, Lcom/android/mms/ui/MultipleDeleteActivity$6;->this$0:Lcom/android/mms/ui/MultipleDeleteActivity;

    #getter for: Lcom/android/mms/ui/MultipleDeleteActivity;->mCategoty:I
    invoke-static {v4}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$800(Lcom/android/mms/ui/MultipleDeleteActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1040
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1044
    .end local v12           #builder:Landroid/net/Uri$Builder;
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportBackgroundDeletion()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1045
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 1046
    .restart local v12       #builder:Landroid/net/Uri$Builder;
    const-string v0, "bg"

    const-string v4, "true"

    invoke-virtual {v12, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1047
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1051
    .end local v12           #builder:Landroid/net/Uri$Builder;
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportDeletedItems()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mbDeleteImmediately:Z

    if-nez v0, :cond_6

    .line 1052
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 1053
    .restart local v12       #builder:Landroid/net/Uri$Builder;
    const-string v0, "trash"

    const-string v4, "true"

    invoke-virtual {v12, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1054
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1059
    .end local v12           #builder:Landroid/net/Uri$Builder;
    :cond_6
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$900()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1060
    :try_start_3
    sget-boolean v0, Lcom/android/mms/ui/MultipleDeleteActivity;->mCancelDeletion:Z

    if-eqz v0, :cond_8

    .line 1061
    const-string v0, "MultipleDeleteActivity"

    const-string v1, "deleteContactBasehtcThreadByList Cancel in thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1063
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    const/16 v1, 0x76d

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1064
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    const/16 v1, 0x709

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->cancelOperation(I)V

    .line 1065
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v1

    const/16 v5, 0x899

    invoke-virtual {v1, v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1067
    :cond_7
    monitor-exit v4

    goto/16 :goto_1

    .line 1069
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 1025
    .end local v3           #delUri:Landroid/net/Uri;
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1069
    .restart local v3       #delUri:Landroid/net/Uri;
    :cond_8
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1071
    iget-object v0, p0, Lcom/android/mms/ui/MultipleDeleteActivity$6;->val$ids2:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v13, v0, :cond_9

    .line 1072
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v0

    const-string v4, "locked=0"

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1014
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1074
    :cond_9
    invoke-static {}, Lcom/android/mms/ui/MultipleDeleteActivity;->access$700()Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;

    move-result-object v6

    const-string v10, "locked=0"

    move-object v8, v2

    move-object v9, v3

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/android/mms/ui/MultipleDeleteActivity$MainListQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2

    .line 1078
    .end local v3           #delUri:Landroid/net/Uri;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0
.end method
