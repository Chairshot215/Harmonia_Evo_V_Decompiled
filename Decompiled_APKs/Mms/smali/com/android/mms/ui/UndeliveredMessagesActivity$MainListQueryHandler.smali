.class final Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "UndeliveredMessagesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/UndeliveredMessagesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainListQueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/UndeliveredMessagesActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "contentResolver"

    .prologue
    .line 811
    iput-object p1, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    .line 812
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 813
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 931
    packed-switch p1, :pswitch_data_0

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 933
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->finish()V

    goto :goto_0

    .line 931
    :pswitch_data_0
    .packed-switch 0x709
        :pswitch_0
    .end packed-switch
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 18
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 818
    if-nez p3, :cond_1

    .line 927
    .end local p2
    :cond_0
    :goto_0
    return-void

    .line 820
    .restart local p2
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 821
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 823
    invoke-static/range {p3 .. p3}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 824
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$002(Lcom/android/mms/ui/UndeliveredMessagesActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    const/4 v3, 0x0

    #setter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
    invoke-static {v2, v3}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$302(Lcom/android/mms/ui/UndeliveredMessagesActivity;Lcom/android/mms/ui/UndeliveredMessagesListAdapter;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    goto :goto_0

    .line 830
    :cond_2
    const/16 v2, 0x70a

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 831
    if-eqz p3, :cond_0

    move-object/from16 v15, p2

    .line 834
    check-cast v15, Landroid/os/Bundle;

    .line 835
    .local v15, bundle:Landroid/os/Bundle;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "msgId"

    invoke-virtual {v15, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v13

    .line 838
    .local v13, uri:Landroid/net/Uri;
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 839
    const-string v2, "threadId"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 846
    .local v6, threadId:J
    move-object/from16 v14, p3

    .line 848
    .local v14, cursor1:Landroid/database/Cursor;
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 849
    .local v4, dest:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 850
    .local v5, body:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 851
    .local v8, realTid:J
    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_3

    const/4 v12, 0x1

    .line 852
    .local v12, locked:Z
    :goto_1
    const-string v2, "msgId"

    invoke-virtual {v15, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 854
    .local v10, msgId:J
    new-instance v16, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v14}, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler$1;-><init>(Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;Ljava/lang/String;Ljava/lang/String;JJJZLandroid/net/Uri;Landroid/database/Cursor;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 851
    .end local v10           #msgId:J
    .end local v12           #locked:Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 884
    .end local v4           #dest:Ljava/lang/String;
    .end local v5           #body:Ljava/lang/String;
    .end local v6           #threadId:J
    .end local v8           #realTid:J
    .end local v14           #cursor1:Landroid/database/Cursor;
    :cond_4
    if-eqz p3, :cond_0

    .line 885
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 890
    .end local v13           #uri:Landroid/net/Uri;
    .end local v15           #bundle:Landroid/os/Bundle;
    :cond_5
    if-eqz p3, :cond_8

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    move-object/from16 v0, p3

    #setter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2, v0}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$002(Lcom/android/mms/ui/UndeliveredMessagesActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 892
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 899
    const-string v2, "UndeliveredMessagesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad query token: "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 905
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x9

    if-eq v2, v3, :cond_6

    .line 906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->finish()V

    .line 909
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$300(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$300(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mAdapter:Lcom/android/mms/ui/UndeliveredMessagesListAdapter;
    invoke-static {v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$300(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Lcom/android/mms/ui/UndeliveredMessagesListAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    move-object/from16 v16, v0

    #getter for: Lcom/android/mms/ui/UndeliveredMessagesActivity;->mCursor:Landroid/database/Cursor;
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->access$000(Lcom/android/mms/ui/UndeliveredMessagesActivity;)Landroid/database/Cursor;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Lcom/android/mms/ui/UndeliveredMessagesListAdapter;->setGetMoreFootView(Lcom/htc/widget/HtcListView;Landroid/database/Cursor;)Z

    goto/16 :goto_0

    .line 916
    :cond_7
    const-string v2, "UndeliveredMessagesActivity"

    const-string v3, "Cannot load undelivered messages."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->finish()V

    goto/16 :goto_0

    .line 920
    .restart local p2
    :cond_8
    const-string v2, "UndeliveredMessagesActivity"

    const-string v3, "Cannot init the cursor for the thread list."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/ui/UndeliveredMessagesActivity$MainListQueryHandler;->this$0:Lcom/android/mms/ui/UndeliveredMessagesActivity;

    invoke-virtual {v2}, Lcom/android/mms/ui/UndeliveredMessagesActivity;->finish()V

    goto/16 :goto_0

    .line 892
    :pswitch_data_0
    .packed-switch 0x6a5
        :pswitch_0
    .end packed-switch
.end method
