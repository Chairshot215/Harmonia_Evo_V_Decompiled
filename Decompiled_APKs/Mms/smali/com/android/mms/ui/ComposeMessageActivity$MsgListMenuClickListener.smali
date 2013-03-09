.class final Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MsgListMenuClickListener"
.end annotation


# instance fields
.field mMsgListItem:Lcom/android/mms/ui/MessageListItem;

.field mMsgView:Lcom/android/mms/view/MessageView;

.field mPosition:I

.field msg:Lcom/android/mms/msg/AbstractMessage;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;ILcom/android/mms/ui/MessageListItem;)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "position"
    .parameter "msgListItem"

    .prologue
    .line 4580
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4581
    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mPosition:I

    .line 4582
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    .line 4583
    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgListItem:Lcom/android/mms/ui/MessageListItem;

    .line 4584
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;ILcom/android/mms/view/MessageView;)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "position"
    .parameter "msgView"

    .prologue
    .line 4574
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4575
    iput p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mPosition:I

    .line 4576
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    .line 4577
    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgView:Lcom/android/mms/view/MessageView;

    .line 4578
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 50
    .parameter "item"

    .prologue
    .line 4590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4591
    const-string v8, "sms"

    .line 4599
    .local v8, type:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v6

    .line 4603
    .local v6, msgId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    if-nez v3, :cond_3

    .line 4604
    const/4 v3, 0x0

    .line 5000
    .end local v6           #msgId:J
    .end local v8           #type:Ljava/lang/String;
    :goto_1
    return v3

    .line 4592
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4593
    const-string v8, "mms"

    .restart local v8       #type:Ljava/lang/String;
    goto :goto_0

    .line 4594
    .end local v8           #type:Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isVvm()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4595
    const-string v8, "vvm"

    .restart local v8       #type:Ljava/lang/String;
    goto :goto_0

    .line 4596
    .end local v8           #type:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 4607
    .restart local v6       #msgId:J
    .restart local v8       #type:Ljava/lang/String;
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 5000
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_1

    .line 4613
    :pswitch_1
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v26

    .line 4614
    .local v26, intent:Landroid/content/Intent;
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/16 v4, 0x1b

    if-ne v3, v4, :cond_4

    .line 4615
    const-string v3, "isVTCall"

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4618
    :cond_4
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v38

    .line 4619
    .local v38, phoneInterface:Lcom/android/internal/telephony/ITelephony;
    const-string v3, "fromDialer"

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4620
    move-object/from16 v0, v38

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->dialWithoutDelay(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4621
    const-string v3, "ComposeMessageActivity"

    const-string v4, "is not Contact make call"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4625
    .end local v38           #phoneInterface:Lcom/android/internal/telephony/ITelephony;
    :cond_5
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    .line 4622
    :catch_0
    move-exception v23

    .line 4623
    .local v23, e:Ljava/lang/Exception;
    const-string v3, "HtcDialer"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 4630
    .end local v23           #e:Ljava/lang/Exception;
    .end local v26           #intent:Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x1

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsEditOriginal:Z
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1502(Lcom/android/mms/ui/ComposeMessageActivity;Z)Z

    .line 4632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->editMessage(Lcom/android/mms/msg/AbstractMessage;)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7600(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;)V

    .line 4633
    const/4 v3, 0x1

    goto :goto_1

    .line 4637
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4638
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v4

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->retryToSendGroupMessage(JJLjava/lang/String;)V
    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7700(Lcom/android/mms/ui/ComposeMessageActivity;JJLjava/lang/String;)V

    .line 4642
    :goto_3
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4640
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v4

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->retryToSendMessage(JJLjava/lang/String;)V
    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7800(Lcom/android/mms/ui/ComposeMessageActivity;JJLjava/lang/String;)V

    goto :goto_3

    .line 4645
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/AbstractMessage;->getText()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7900(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)V

    .line 4646
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4649
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->executeContextMenuForward(Lcom/android/mms/msg/AbstractMessage;)V
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;)V

    .line 4650
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4654
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4655
    new-instance v29, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4656
    .local v29, it:Landroid/content/Intent;
    const-string v3, "android.intent.extra.TEXT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/AbstractMessage;->getText()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4657
    const-string v3, "text/plain"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4658
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v5, 0x7f0902df

    invoke-virtual {v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-static {v0, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4660
    .end local v29           #it:Landroid/content/Intent;
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4665
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mPosition:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 4666
    const-string v3, "ComposeMessageActivity"

    const-string v4, "Invalid cursor position!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4667
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4670
    :cond_8
    new-instance v26, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4671
    .restart local v26       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    const/16 v5, 0x17

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4673
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4674
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4679
    .end local v26           #intent:Landroid/content/Intent;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mPosition:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-nez v3, :cond_9

    .line 4680
    const-string v3, "ComposeMessageActivity"

    const-string v4, "Invalid cursor position!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4685
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v5}, Lcom/android/mms/msg/AbstractMessage;->getMessageSize()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v10}, Lcom/android/mms/msg/AbstractMessage;->isGroupSms()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v10}, Lcom/android/mms/msg/AbstractMessage;->getGroupSmsAddressList()Ljava/lang/String;

    move-result-object v10

    invoke-static/range {v3 .. v10}, Lcom/android/mms/ui/MessageUtils;->getMessageDetails(Landroid/content/Context;Landroid/database/Cursor;IJLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 4690
    .local v33, messageDetails:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getCc(Landroid/content/Context;Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7402(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4692
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 4693
    const-string v3, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4697
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/mms/ui/MessageUtils;->getBcc(Landroid/content/Context;Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgBccList:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8102(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgBccList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8100(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 4700
    const-string v3, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bccList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgBccList:[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8100(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4703
    :cond_b
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4705
    .local v20, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0900b4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/mms/ui/MessageUtils;->getTo(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v16

    .line 4715
    .local v16, MsgToList:Ljava/lang/String;
    const/16 v36, 0x0

    .line 4716
    .local v36, nNum:I
    const/16 v37, 0x0

    .line 4717
    .local v37, nToNum:I
    const/16 v35, 0x0

    .line 4718
    .local v35, nCcNum:I
    const/16 v34, 0x0

    .line 4719
    .local v34, nBccNum:I
    if-eqz v16, :cond_c

    .line 4720
    const-string v3, ";"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 4721
    const/16 v37, 0x2

    .line 4725
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 4726
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_11

    .line 4727
    const/16 v35, 0x2

    .line 4732
    :cond_d
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgBccList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8100(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportShowBccRecipientStatus()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 4733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgBccList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8100(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_12

    .line 4734
    const/16 v34, 0x2

    .line 4739
    :cond_e
    :goto_6
    add-int v3, v37, v35

    add-int v36, v3, v34

    .line 4744
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    move/from16 v0, v36

    if-le v0, v3, :cond_13

    .line 4747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4796
    :goto_7
    invoke-virtual/range {v20 .. v20}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v22

    .line 4797
    .local v22, dialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDlgArray:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6600(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4800
    invoke-static {}, Lcom/android/mms/MmsApp;->isQHDProject()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 4802
    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x20200ac

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v46

    .line 4803
    .local v46, sv:Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Lcom/htc/widget/HtcAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x20200ad

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v49

    .line 4804
    .local v49, v:Landroid/view/View;
    move-object/from16 v0, v49

    instance-of v3, v0, Landroid/widget/TextView;

    if-eqz v3, :cond_16

    check-cast v49, Landroid/widget/TextView;

    .end local v49           #v:Landroid/view/View;
    move-object/from16 v48, v49

    .line 4805
    .local v48, tv:Landroid/widget/TextView;
    :goto_8
    if-eqz v46, :cond_1b

    if-eqz v48, :cond_1b

    .line 4807
    const/4 v3, -0x1

    move-object/from16 v0, v46

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4808
    const/high16 v3, -0x100

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4809
    invoke-virtual/range {v48 .. v48}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v47

    .line 4810
    .local v47, text:Ljava/lang/CharSequence;
    new-instance v45, Landroid/text/SpannableStringBuilder;

    invoke-direct/range {v45 .. v45}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4811
    .local v45, span:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v45

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 4813
    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    .line 4814
    .local v42, sa:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4815
    const/16 v25, 0x0

    .local v25, i:I
    :goto_9
    invoke-interface/range {v47 .. v47}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_17

    .line 4816
    move-object/from16 v0, v47

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_f

    .line 4817
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4815
    :cond_f
    add-int/lit8 v25, v25, 0x1

    goto :goto_9

    .line 4723
    .end local v22           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v25           #i:I
    .end local v42           #sa:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v45           #span:Landroid/text/SpannableStringBuilder;
    .end local v46           #sv:Landroid/view/View;
    .end local v47           #text:Ljava/lang/CharSequence;
    .end local v48           #tv:Landroid/widget/TextView;
    :cond_10
    const/16 v37, 0x1

    goto/16 :goto_4

    .line 4729
    :cond_11
    const/16 v35, 0x1

    goto/16 :goto_5

    .line 4736
    :cond_12
    const/16 v34, 0x1

    goto/16 :goto_6

    .line 4770
    :cond_13
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_5()Z

    move-result v3

    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v3

    if-nez v3, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 4772
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getGroupSmsAddressList()Ljava/lang/String;

    move-result-object v44

    .line 4773
    .local v44, smsToList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getGroupSmsIdList()Ljava/lang/String;

    move-result-object v43

    .line 4775
    .local v43, smsIdList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v4, 0x7f0900b2

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object/from16 v2, v43

    invoke-direct {v4, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener$2;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_7

    .line 4789
    .end local v43           #smsIdList:Ljava/lang/String;
    .end local v44           #smsToList:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_15

    .line 4790
    const v3, 0x7f0901c3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mViewCcClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8200(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_7

    .line 4793
    :cond_15
    const v3, 0x104000a

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    goto/16 :goto_7

    .line 4804
    .restart local v22       #dialog:Lcom/htc/widget/HtcAlertDialog;
    .restart local v46       #sv:Landroid/view/View;
    .restart local v49       #v:Landroid/view/View;
    :cond_16
    const/16 v48, 0x0

    goto/16 :goto_8

    .line 4820
    .end local v49           #v:Landroid/view/View;
    .restart local v25       #i:I
    .restart local v42       #sa:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v45       #span:Landroid/text/SpannableStringBuilder;
    .restart local v47       #text:Ljava/lang/CharSequence;
    .restart local v48       #tv:Landroid/widget/TextView;
    :cond_17
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v41

    .line 4821
    .local v41, sText:Ljava/lang/String;
    const/16 v25, 0x0

    :goto_a
    invoke-virtual/range {v42 .. v42}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v25

    if-ge v0, v3, :cond_1a

    .line 4822
    move-object/from16 v0, v42

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v39

    .line 4823
    .local v39, s:I
    const-string v3, "\uff1a"

    move-object/from16 v0, v41

    move/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v23

    .line 4824
    .local v23, e:I
    const/4 v3, -0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_18

    const-string v3, ":"

    move-object/from16 v0, v41

    move/from16 v1, v39

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v23

    .line 4825
    :cond_18
    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_19

    .line 4826
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x11

    move-object/from16 v0, v45

    move/from16 v1, v39

    move/from16 v2, v23

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 4821
    :cond_19
    add-int/lit8 v25, v25, 0x1

    goto :goto_a

    .line 4828
    .end local v23           #e:I
    .end local v39           #s:I
    :cond_1a
    new-instance v19, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v19

    move-object/from16 v1, v45

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 4829
    .local v19, buffer:Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, v48

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4833
    .end local v19           #buffer:Landroid/text/SpannableStringBuilder;
    .end local v25           #i:I
    .end local v41           #sText:Ljava/lang/String;
    .end local v42           #sa:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v45           #span:Landroid/text/SpannableStringBuilder;
    .end local v46           #sv:Landroid/view/View;
    .end local v47           #text:Ljava/lang/CharSequence;
    .end local v48           #tv:Landroid/widget/TextView;
    :cond_1b
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4846
    .end local v16           #MsgToList:Ljava/lang/String;
    .end local v20           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    .end local v22           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v33           #messageDetails:Ljava/lang/String;
    .end local v34           #nBccNum:I
    .end local v35           #nCcNum:I
    .end local v36           #nNum:I
    .end local v37           #nToNum:I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isGroupSms()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 4847
    new-instance v9, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getGroupId()J

    move-result-wide v12

    const/4 v14, 0x0

    invoke-direct/range {v9 .. v14}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;JZ)V

    .line 4851
    .local v9, l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v4, 0x7f0900ad

    const/4 v5, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;IZ)V
    invoke-static {v3, v9, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;IZ)V

    .line 4852
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4849
    .end local v9           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :cond_1c
    new-instance v9, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v9, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .restart local v9       #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    goto :goto_b

    .line 4855
    .end local v9           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->showDeliveryReport(JLjava/lang/String;)V
    invoke-static {v3, v6, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8400(Lcom/android/mms/ui/ComposeMessageActivity;JLjava/lang/String;)V

    .line 4856
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4860
    :pswitch_b
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_20

    .line 4862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    check-cast v3, Lcom/android/mms/msg/MultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/MultimediaMessage;->withRelatedMessageBody()Z

    move-result v3

    if-eqz v3, :cond_1e

    const/16 v28, 0x1

    .line 4864
    .local v28, isRelated:Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move/from16 v0, v28

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getMmsPduBody(JZ)Lcom/google/android/mms/pdu/PduBody;
    invoke-static {v3, v6, v7, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8500(Lcom/android/mms/ui/ComposeMessageActivity;JZ)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v18

    .line 4866
    .local v18, body:Lcom/google/android/mms/pdu/PduBody;
    if-eqz v28, :cond_1d

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    const/4 v4, 0x3

    if-gt v3, v4, :cond_20

    .line 4868
    :cond_1d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->getAvailableDirPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAvailableDirPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8602(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/mms/StorageFullException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4873
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAvailableDirPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8600(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4862
    .end local v18           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v28           #isRelated:Z
    :cond_1e
    const/16 v28, 0x0

    goto :goto_c

    .line 4870
    .restart local v18       #body:Lcom/google/android/mms/pdu/PduBody;
    .restart local v28       #isRelated:Z
    :catch_1
    move-exception v23

    .line 4871
    .local v23, e:Lcom/android/mms/StorageFullException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x0

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAvailableDirPath:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8602(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_d

    .line 4874
    .end local v23           #e:Lcom/android/mms/StorageFullException;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mAvailableDirPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8600(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    check-cast v3, Lcom/android/mms/msg/MultimediaMessage;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->checkPduPartFileNameExist(Ljava/lang/String;Lcom/android/mms/msg/MultimediaMessage;)Z
    invoke-static {v4, v5, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8700(Lcom/android/mms/ui/ComposeMessageActivity;Ljava/lang/String;Lcom/android/mms/msg/MultimediaMessage;)Z

    move-result v24

    .line 4876
    .local v24, exist:Z
    if-eqz v24, :cond_20

    .line 4877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    check-cast v3, Lcom/android/mms/msg/MultimediaMessage;

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mDialogInfoMsg:Lcom/android/mms/msg/MultimediaMessage;
    invoke-static {v4, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8802(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/MultimediaMessage;)Lcom/android/mms/msg/MultimediaMessage;

    .line 4878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    .line 4879
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4883
    .end local v18           #body:Lcom/google/android/mms/pdu/PduBody;
    .end local v24           #exist:Z
    .end local v28           #isRelated:Z
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    check-cast v3, Lcom/android/mms/msg/MultimediaMessage;

    const/4 v5, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->copyMedia(Lcom/android/mms/msg/MultimediaMessage;Z)V
    invoke-static {v4, v3, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8900(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/MultimediaMessage;Z)V

    .line 4885
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4890
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    .line 4891
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4899
    :pswitch_d
    const/4 v15, 0x0

    .line 4900
    .local v15, isCdma:Z
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->isUsingRuim()Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4901
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    const/16 v4, 0x1f

    if-ne v3, v4, :cond_22

    .line 4902
    const/4 v15, 0x0

    .line 4906
    :cond_21
    :goto_e
    new-instance v13, Lcom/android/mms/msg/TextMessage;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-direct {v13, v3}, Lcom/android/mms/msg/TextMessage;-><init>(Lcom/android/mms/msg/AbstractMessage;)V

    .line 4907
    .local v13, message:Lcom/android/mms/msg/TextMessage;
    new-instance v10, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v14

    invoke-direct/range {v10 .. v15}, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/app/Activity;Lcom/android/mms/msg/AbstractMessage;Landroid/os/Handler;Z)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v10, v3}, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4912
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4904
    .end local v13           #message:Lcom/android/mms/msg/TextMessage;
    :cond_22
    const/4 v15, 0x1

    goto :goto_e

    .line 4914
    .end local v15           #isCdma:Z
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    const/4 v5, 0x1

    const/4 v10, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->copyToPhoneMemory(Lcom/android/mms/msg/AbstractMessage;ZI)V
    invoke-static {v3, v4, v5, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2800(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;ZI)V

    .line 4915
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4918
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgView:Lcom/android/mms/view/MessageView;

    sget-object v4, Lcom/android/mms/view/Event;->CLICKED_EVENT:Lcom/android/mms/view/Event;

    invoke-interface {v3, v4}, Lcom/android/mms/view/MessageView;->fireEvent(Lcom/android/mms/view/Event;)V

    .line 4919
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4921
    :pswitch_10
    new-instance v9, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v9, v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;Z)V

    .line 4922
    .restart local v9       #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v4, 0x7f0900b1

    const/4 v5, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;IZ)V
    invoke-static {v3, v9, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$8300(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/content/DialogInterface$OnClickListener;IZ)V

    .line 4923
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4926
    .end local v9           #l:Lcom/android/mms/ui/ComposeMessageActivity$DeleteMessageListener;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    const/4 v5, 0x1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/msg/AbstractMessage;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;Z)V

    .line 4927
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4929
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    const/4 v5, 0x0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->lockMessage(Lcom/android/mms/msg/AbstractMessage;Z)V
    invoke-static {v3, v4, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9000(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;Z)V

    .line 4930
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4934
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->replyAll()V
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9100(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 4935
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4939
    :pswitch_14
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v27

    .line 4940
    .local v27, intent2:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4941
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4943
    .end local v27           #intent2:Landroid/content/Intent;
    :pswitch_15
    new-instance v25, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v4, Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v25

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4944
    .local v25, i:Landroid/content/Intent;
    const-string v3, "compose_mode"

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4945
    const-string v3, "exit_on_sent"

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4946
    const-string v3, "address"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4947
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, -0x1

    move-object/from16 v0, v25

    invoke-virtual {v3, v0, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 4948
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4952
    .end local v25           #i:Landroid/content/Intent;
    :pswitch_16
    const/16 v40, 0x0

    .line 4953
    .local v40, sCallback:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v40

    .line 4954
    invoke-static/range {v40 .. v40}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 4955
    new-instance v26, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-class v4, Lcom/android/mms/ui/ActionListActivity;

    move-object/from16 v0, v26

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4956
    .restart local v26       #intent:Landroid/content/Intent;
    const-string v3, "id"

    move-object/from16 v0, v26

    move-object/from16 v1, v40

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4957
    const-string v3, "isPhoneNum"

    const/4 v4, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4958
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4961
    .end local v26           #intent:Landroid/content/Intent;
    :cond_23
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4964
    .end local v40           #sCallback:Ljava/lang/String;
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->extractCallbackAndPhoneNumbers(Lcom/android/mms/msg/AbstractMessage;)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 4965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->extractCallbackAndPhoneNumbers(Lcom/android/mms/msg/AbstractMessage;)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;)Ljava/util/ArrayList;

    move-result-object v31

    .line 4966
    .local v31, mCallbackNumbers:Ljava/util/ArrayList;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->msg:Lcom/android/mms/msg/AbstractMessage;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->extractCallbackAndPhoneNumbers(Lcom/android/mms/msg/AbstractMessage;)Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9200(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v32

    .line 4967
    .local v32, mCallbackNumbersSize:I
    const/4 v3, 0x1

    move/from16 v0, v32

    if-ne v0, v3, :cond_25

    .line 4968
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/android/mms/ui/MessageUtils;->getLauchDialerWithPhoneIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/mms/ui/ComposeMessageActivity;->startActivity(Landroid/content/Intent;)V

    .line 4980
    :cond_24
    :goto_f
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 4970
    :cond_25
    const/4 v3, 0x1

    move/from16 v0, v32

    if-le v0, v3, :cond_24

    .line 4971
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->removeDialog(I)V

    .line 4972
    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    .line 4973
    .local v21, callbackNumberssArray:[Ljava/lang/CharSequence;
    const/16 v30, 0x0

    .local v30, k:I
    :goto_10
    move/from16 v0, v30

    move/from16 v1, v32

    if-ge v0, v1, :cond_26

    .line 4974
    move-object/from16 v0, v31

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v21, v30

    .line 4973
    add-int/lit8 v30, v30, 0x1

    goto :goto_10

    .line 4976
    :cond_26
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    .line 4977
    .local v17, b:Landroid/os/Bundle;
    const-string v3, "callbackNumbers"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 4978
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/16 v4, 0x10

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_f

    .line 4983
    .end local v17           #b:Landroid/os/Bundle;
    .end local v21           #callbackNumberssArray:[Ljava/lang/CharSequence;
    .end local v30           #k:I
    .end local v31           #mCallbackNumbers:Ljava/util/ArrayList;
    .end local v32           #mCallbackNumbersSize:I
    :cond_27
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4987
    :pswitch_18
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSelection()Z

    move-result v3

    if-eqz v3, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgView:Lcom/android/mms/view/MessageView;

    if-nez v3, :cond_29

    .line 4988
    :cond_28
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4991
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgView:Lcom/android/mms/view/MessageView;

    instance-of v3, v3, Lcom/android/mms/view/impl/TextMessageViewImpl;

    if-eqz v3, :cond_2a

    .line 4992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgView:Lcom/android/mms/view/MessageView;

    check-cast v3, Lcom/android/mms/view/impl/TextMessageViewImpl;

    invoke-virtual {v3}, Lcom/android/mms/view/impl/TextMessageViewImpl;->startTextSelection()Z

    move-result v3

    goto/16 :goto_1

    .line 4994
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgView:Lcom/android/mms/view/MessageView;

    instance-of v3, v3, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    if-eqz v3, :cond_2b

    .line 4995
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;->mMsgView:Lcom/android/mms/view/MessageView;

    check-cast v3, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    invoke-virtual {v3}, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;->startTextSelection()Z

    move-result v3

    goto/16 :goto_1

    .line 4997
    :cond_2b
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 4607
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_e
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_10
        :pswitch_16
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_d
    .end packed-switch
.end method
