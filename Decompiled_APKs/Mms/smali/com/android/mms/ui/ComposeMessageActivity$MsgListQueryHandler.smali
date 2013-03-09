.class final Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;
.super Lcom/android/mms/util/MmsAsyncQueryHandler;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 14839
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 14840
    invoke-direct {p0, p2}, Lcom/android/mms/util/MmsAsyncQueryHandler;-><init>(Landroid/content/Context;)V

    .line 14841
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 14965
    packed-switch p1, :pswitch_data_0

    .line 14983
    :goto_0
    const/16 v0, 0x4e42

    if-ne p1, v0, :cond_0

    .line 14984
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->discardTemporaryMessage()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$4900(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 14985
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->finish()V

    .line 14987
    if-eqz p2, :cond_0

    .line 14988
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessagingController;->onDeleteDetailScreen(J)V

    .line 14993
    :cond_0
    return-void

    .line 14970
    .restart local p2
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateStatusNotification()V
    invoke-static {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7500(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 14975
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/ComposeMessageActivity$DeleteProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/ComposeMessageActivity$DeleteProgressDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteProgressDialog;->dismiss()V

    .line 14976
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mDeleteProgressDialog:Lcom/android/mms/ui/ComposeMessageActivity$DeleteProgressDialog;

    goto :goto_0

    .line 14965
    nop

    :pswitch_data_0
    .packed-switch 0x4e41
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 14845
    packed-switch p1, :pswitch_data_0

    .line 14961
    :cond_0
    :goto_0
    return-void

    .line 14893
    :pswitch_0
    const-string v6, "ComposeMessageActivity"

    const-string v7, "THREAD_QUERY_MMS_READ_REPORT> "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14894
    if-eqz p3, :cond_0

    .line 14895
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->isFinishing()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 14898
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    goto :goto_0

    .line 14901
    :cond_1
    const/4 v2, 0x0

    .line 14903
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 14904
    .local v0, count:I
    const-string v6, "ComposeMessageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get read report conut> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 14905
    if-nez v0, :cond_2

    .line 14915
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    goto :goto_0

    .line 14906
    :cond_2
    :try_start_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 14907
    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    :try_start_2
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 14908
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 14910
    .local v5, uri:Landroid/net/Uri;
    const/4 v6, 0x1

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 14915
    .end local v5           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v6

    move-object v2, v3

    .end local v0           #count:I
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    throw v6

    .end local v2           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0       #count:I
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-static {p3}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    .line 14918
    if-eqz v3, :cond_0

    .line 14919
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v7, 0x80

    const/4 v8, 0x0

    invoke-static {v6, v3, v7, v8}, Lcom/android/mms/ui/MessageUtils;->handleReadReport(Landroid/content/Context;Ljava/util/Map;ILjava/lang/Runnable;)V

    .line 14923
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->markAsRead()V
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    goto :goto_0

    .line 14929
    .end local v0           #count:I
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_1
    if-eqz p3, :cond_0

    .line 14931
    :try_start_3
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 14932
    .restart local v0       #count:I
    const-string v6, "ComposeMessageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tid cnt> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14933
    if-lez v0, :cond_5

    .line 14934
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    new-array v7, v0, [J

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadIds:[J
    invoke-static {v6, v7}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14202(Lcom/android/mms/ui/ComposeMessageActivity;[J)[J

    .line 14935
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, v0, :cond_4

    .line 14936
    invoke-interface {p3, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 14937
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadIds:[J
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)[J

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v6, v1

    .line 14939
    const-string v6, "ComposeMessageActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get t_id> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadIds:[J
    invoke-static {v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)[J

    move-result-object v8

    aget-wide v8, v8, v1

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14935
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 14943
    :cond_4
    if-eqz p2, :cond_5

    .line 14946
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadIds:[J
    invoke-static {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$14200(Lcom/android/mms/ui/ComposeMessageActivity;)[J

    move-result-object v4

    .line 14947
    .local v4, tids:[J
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListQueryHandler;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v7}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/android/mms/ui/MessagingController;->cancelNotificationFromThreadIDs(Landroid/content/Context;[JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 14955
    .end local v1           #i:I
    .end local v4           #tids:[J
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v0           #count:I
    :catchall_1
    move-exception v6

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v6

    .line 14915
    .restart local v2       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_2
    move-exception v6

    goto/16 :goto_2

    .line 14845
    nop

    :pswitch_data_0
    .packed-switch 0x25e1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
