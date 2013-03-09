.class Lcom/android/mms/ui/ComposeMessageActivity$9;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private m_listener:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

.field private m_menu:Landroid/view/ContextMenu;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 3893
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3894
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->m_menu:Landroid/view/ContextMenu;

    .line 3895
    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->m_listener:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    return-void
.end method

.method private addMenu(II)Z
    .locals 3
    .parameter "nIDMenu"
    .parameter "nIDString"

    .prologue
    const/4 v0, 0x0

    .line 4411
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->m_menu:Landroid/view/ContextMenu;

    invoke-interface {v1, v0, p1, v0, p2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->m_listener:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private addMenu_TextSelection(Landroid/view/View;)Z
    .locals 2
    .parameter "viewMsg"

    .prologue
    const/4 v0, 0x0

    .line 4399
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTextSelection()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 4407
    :cond_0
    :goto_0
    return v0

    .line 4403
    :cond_1
    instance-of v1, p1, Lcom/android/mms/view/impl/TextMessageViewImpl;

    if-nez v1, :cond_2

    instance-of v1, p1, Lcom/android/mms/view/impl/MultimediaMessageViewImpl;

    if-eqz v1, :cond_0

    .line 4404
    :cond_2
    const/16 v0, 0x28

    const v1, 0x7f0901ff

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu(II)Z

    move-result v0

    goto :goto_0
.end method

.method private addSaveAsTaskContextMenu(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;JJLjava/lang/String;Ljava/lang/String;J)V
    .locals 11
    .parameter "menu"
    .parameter "l"
    .parameter "thread_id"
    .parameter "msg_id"
    .parameter "msgtype"
    .parameter "snippet"
    .parameter "Date"

    .prologue
    .line 4276
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCategory:Lcom/android/mms/category/Category;
    invoke-static {v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/category/Category;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/category/Category;->value()I

    move-result v9

    move-wide v1, p3

    move-wide/from16 v3, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-wide/from16 v7, p9

    invoke-static/range {v0 .. v9}, Lcom/android/mms/ui/MessageUtils;->MyTaskCollectIntent(Landroid/content/Context;JJLjava/lang/String;Ljava/lang/String;JI)Landroid/content/Intent;

    move-result-object v10

    .line 4278
    .local v10, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    const/16 v1, 0x39

    const/4 v2, 0x0

    const v3, 0x7f0903bc

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 4281
    return-void
.end method


# virtual methods
.method addMenu_CallbackAction(Lcom/android/mms/msg/AbstractMessage;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4380
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportExtractMsgBodyCallBackNumber()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4394
    :cond_0
    :goto_0
    return v1

    .line 4383
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v3

    if-ne v3, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4385
    const-string v3, "%s %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const v6, 0x7f0901e0

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p1}, Lcom/android/mms/msg/AbstractMessage;->getCallbackNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4388
    .local v0, sCallbackAction:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->m_menu:Landroid/view/ContextMenu;

    const/16 v4, 0x27

    invoke-interface {v3, v1, v4, v1, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->m_listener:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move v1, v2

    .line 4391
    goto :goto_0
.end method

.method addMenu_Download_Decline_Notification(Ljava/lang/String;Lcom/android/mms/msg/AbstractMessage;)Z
    .locals 3
    .parameter "type"
    .parameter "msg"

    .prologue
    .line 4283
    const-string v1, "mms"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4284
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v0

    .line 4285
    .local v0, state:I
    invoke-virtual {p2}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    .line 4286
    const/16 v1, 0x25

    const v2, 0x7f090030

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu(II)Z

    .line 4287
    const/16 v1, 0xa8

    invoke-static {v1}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4288
    const/16 v1, 0x26

    const v2, 0x7f090031

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu(II)Z

    .line 4293
    .end local v0           #state:I
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method addMenu_LockUnlock(ZZLcom/android/mms/msg/AbstractMessage;)Z
    .locals 2
    .parameter "isSms"
    .parameter "isMms"
    .parameter "msg"

    .prologue
    .line 4298
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 4299
    :cond_0
    invoke-virtual {p3}, Lcom/android/mms/msg/AbstractMessage;->isLocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4300
    const/16 v0, 0x22

    const v1, 0x7f0901fd

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu(II)Z

    .line 4305
    :goto_0
    const/4 v0, 0x1

    .line 4307
    :goto_1
    return v0

    .line 4303
    :cond_1
    const/16 v0, 0x23

    const v1, 0x7f0901fe

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu(II)Z

    goto :goto_0

    .line 4307
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method addMenu_ReplyAll(Landroid/database/Cursor;ZLcom/android/mms/msg/AbstractMessage;)Z
    .locals 13
    .parameter "msgListCursor"
    .parameter "isMms"
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    .line 4313
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportReplyAll()Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz p1, :cond_9

    if-eqz p2, :cond_9

    .line 4316
    const/4 v8, 0x0

    .line 4317
    .local v8, selfPhoneNumber:Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const-string v12, "phone"

    invoke-virtual {v10, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 4318
    .local v9, tm:Landroid/telephony/TelephonyManager;
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 4319
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 4320
    :cond_0
    const/4 v6, 0x0

    .line 4321
    .local v6, nonSelfRecipient:I
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v10, p1}, Lcom/android/mms/ui/MessageUtils;->getTo(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 4322
    .local v1, MsgToList:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 4323
    const-string v10, ";"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v2, v4

    .line 4324
    .local v7, recipient:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4323
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 4327
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 4330
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #recipient:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p3

    instance-of v10, v0, Lcom/android/mms/msg/MultimediaMessage;

    if-eqz v10, :cond_6

    .line 4331
    iget-object v12, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p3

    check-cast v0, Lcom/android/mms/msg/MultimediaMessage;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/android/mms/msg/MultimediaMessage;->getCc()[Ljava/lang/String;

    move-result-object v10

    #setter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v12, v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7402(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 4332
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 4333
    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgCcList:[Ljava/lang/String;
    invoke-static {v10}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7400(Lcom/android/mms/ui/ComposeMessageActivity;)[Ljava/lang/String;

    move-result-object v2

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v5, v2

    .restart local v5       #len$:I
    const/4 v4, 0x0

    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v7, v2, v4

    .line 4334
    .restart local v7       #recipient:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4333
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 4337
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 4341
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v7           #recipient:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 4342
    .local v3, fromNumber:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v10

    if-ne v10, v11, :cond_7

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    invoke-static {v3, v8}, Landroid/telephony/PhoneNumberUtils;->htc_compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-object v10, v10, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    const v12, 0x7f090021

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 4344
    add-int/lit8 v6, v6, 0x1

    .line 4347
    :cond_7
    if-le v6, v11, :cond_8

    .line 4348
    const/16 v10, 0x24

    const v12, 0x7f0901f3

    invoke-direct {p0, v10, v12}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    move v10, v11

    .line 4356
    .end local v1           #MsgToList:Ljava/lang/String;
    .end local v3           #fromNumber:Ljava/lang/String;
    .end local v6           #nonSelfRecipient:I
    .end local v8           #selfPhoneNumber:Ljava/lang/String;
    .end local v9           #tm:Landroid/telephony/TelephonyManager;
    :goto_4
    return v10

    .line 4352
    .restart local v8       #selfPhoneNumber:Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 4356
    .end local v8           #selfPhoneNumber:Ljava/lang/String;
    :cond_9
    const/4 v10, 0x0

    goto :goto_4
.end method

.method addMenu_ReplyToSenderOnly(Landroid/database/Cursor;Lcom/android/mms/msg/AbstractMessage;)Z
    .locals 7
    .parameter "msgListCursor"
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4361
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isOutgoing(Lcom/android/mms/msg/AbstractMessage;)Z
    invoke-static {v6, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p2}, Lcom/android/mms/msg/AbstractMessage;->getFrom()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4362
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/mms/ui/MessageUtils;->getTo(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v1

    .line 4363
    .local v1, MsgToList:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v6}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p1}, Lcom/android/mms/ui/MessageUtils;->getCc(Landroid/content/Context;Landroid/database/Cursor;)[Ljava/lang/String;

    move-result-object v0

    .line 4366
    .local v0, MsgCcList:[Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v6, ";"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v3, v6

    .line 4367
    .local v3, toNumber:I
    :goto_0
    if-eqz v0, :cond_2

    array-length v2, v0

    .line 4369
    .local v2, ccNumber:I
    :goto_1
    add-int v5, v3, v2

    if-le v5, v4, :cond_0

    .line 4370
    const/16 v5, 0x38

    const v6, 0x7f0901f4

    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu(II)Z

    .line 4374
    .end local v0           #MsgCcList:[Ljava/lang/String;
    .end local v1           #MsgToList:Ljava/lang/String;
    .end local v2           #ccNumber:I
    .end local v3           #toNumber:I
    :cond_0
    :goto_2
    return v4

    .restart local v0       #MsgCcList:[Ljava/lang/String;
    .restart local v1       #MsgToList:Ljava/lang/String;
    :cond_1
    move v3, v5

    .line 4366
    goto :goto_0

    .restart local v3       #toNumber:I
    :cond_2
    move v2, v5

    .line 4367
    goto :goto_1

    .end local v0           #MsgCcList:[Ljava/lang/String;
    .end local v1           #MsgToList:Ljava/lang/String;
    .end local v3           #toNumber:I
    :cond_3
    move v4, v5

    .line 4374
    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 55
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 3898
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ComposeMessageActivity$9;->m_menu:Landroid/view/ContextMenu;

    .line 3901
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v42

    .line 3902
    .local v42, msgListCursor:Landroid/database/Cursor;
    invoke-interface/range {v42 .. v42}, Landroid/database/Cursor;->getPosition()I

    move-result v30

    .line 3903
    .local v30, iCursor:I
    const/4 v3, -0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_1

    .line 3905
    const-string v3, "ComposeMessageActivity"

    const-string v4, "Invalid cursor position!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4272
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 3908
    .restart local p3
    :cond_1
    invoke-static/range {v42 .. v42}, Lcom/android/mms/ui/MessageUtils;->duplicateCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v38

    .line 3909
    .local v38, mDataCursor:Landroid/database/Cursor;
    move-object/from16 v0, v38

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3911
    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 3913
    :cond_2
    const-string v3, "ComposeMessageActivity"

    const-string v4, "Invalid cursor position!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3914
    if-eqz v38, :cond_0

    .line 3915
    invoke-static/range {v38 .. v38}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    goto :goto_0

    .line 3919
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3920
    .local v7, type:Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 3921
    .local v23, body:Ljava/lang/String;
    const/16 v3, 0xf

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 3922
    .local v20, Subject:Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 3923
    .local v40, msgId:J
    const/16 v3, 0x9

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 3924
    .local v32, indexOnSim:Ljava/lang/String;
    const/4 v8, 0x0

    .line 3926
    .local v8, address:Ljava/lang/String;
    const/16 v34, 0x0

    .line 3927
    .local v34, isSms:Z
    const/16 v33, 0x0

    .line 3928
    .local v33, isMms:Z
    const/16 v36, 0x0

    .line 3929
    .local v36, isVvm:Z
    const/16 v54, 0x0

    .line 3930
    .local v54, vvmPrivated:Z
    const/16 v51, 0x0

    .line 3931
    .local v51, specVvmAdress:Ljava/lang/String;
    const/16 v50, 0x0

    .line 3932
    .local v50, smsBody:Ljava/lang/String;
    const/16 v35, 0x0

    .line 3933
    .local v35, isSmsVcard:Z
    const-string v3, "sms"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 3934
    const/4 v3, 0x3

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3935
    const/16 v34, 0x1

    .line 3936
    const/4 v3, 0x4

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v50

    .line 3937
    invoke-static/range {v50 .. v50}, Lcom/android/mms/ui/MessageUtils;->hasSmsVcardBody(Ljava/lang/String;)Z

    move-result v35

    .line 3956
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isPrimeProject()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3957
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    invoke-static {v3, v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6700(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 3959
    :cond_5
    new-instance v21, Lcom/android/mms/msg/util/MessageDataAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, v38

    invoke-direct {v0, v3, v1}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 3961
    .local v21, adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2600(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageListAdapter;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessage(Lcom/android/mms/msg/util/MessageDataAdapter;)Lcom/android/mms/msg/AbstractMessage;

    move-result-object v6

    .line 3964
    .local v6, msg:Lcom/android/mms/msg/AbstractMessage;
    if-eqz v34, :cond_6

    .line 3967
    move-object/from16 v24, v42

    .line 3968
    .local v24, c:Landroid/database/Cursor;
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 3969
    invoke-static/range {v24 .. v24}, Lcom/android/mms/ui/MessageUtils;->cloneCursorByPosition(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v24

    .line 3970
    if-eqz v24, :cond_0

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3971
    new-instance v22, Lcom/android/mms/msg/util/MessageDataAdapter;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/mms/msg/util/ColumnsMap;

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcom/android/mms/msg/util/ColumnsMap;-><init>(Landroid/database/Cursor;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v3, v1, v4}, Lcom/android/mms/msg/util/MessageDataAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/mms/msg/util/ColumnsMap;)V

    .line 3974
    .local v22, adapter1:Lcom/android/mms/msg/util/MessageDataAdapter;
    :try_start_0
    new-instance v39, Lcom/android/mms/msg/TextMessageByCursor;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iget-boolean v9, v9, Lcom/android/mms/ui/ComposeMessageActivity;->mIsGroupThread:Z

    move-object/from16 v0, v39

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1, v4, v9}, Lcom/android/mms/msg/TextMessageByCursor;-><init>(Landroid/content/Context;Lcom/android/mms/msg/util/MessageDataAdapter;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #msg:Lcom/android/mms/msg/AbstractMessage;
    .local v39, msg:Lcom/android/mms/msg/AbstractMessage;
    move-object/from16 v6, v39

    .line 3988
    .end local v22           #adapter1:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v24           #c:Landroid/database/Cursor;
    .end local v39           #msg:Lcom/android/mms/msg/AbstractMessage;
    .restart local v6       #msg:Lcom/android/mms/msg/AbstractMessage;
    :cond_6
    :goto_2
    if-eqz v6, :cond_0

    .line 3995
    const v3, 0x7f090036

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 3996
    const/16 v43, 0x0

    .line 3997
    .local v43, msgView:Landroid/view/View;
    const/16 v37, 0x0

    .line 3999
    .local v37, l:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    :try_start_1
    check-cast p3, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;

    .end local p3
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/htc/widget/HtcAdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    move-object/from16 v43, v0

    .line 4001
    const v3, 0x7f0e0075

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v53

    .line 4002
    .local v53, tmpView:Landroid/view/View;
    if-eqz v53, :cond_7

    .line 4003
    move-object/from16 v43, v53

    .line 4005
    :cond_7
    new-instance v5, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-interface/range {v38 .. v38}, Landroid/database/Cursor;->getPosition()I

    move-result v9

    move-object/from16 v0, v43

    check-cast v0, Lcom/android/mms/view/MessageView;

    move-object v3, v0

    invoke-direct {v5, v4, v6, v9, v3}, Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;ILcom/android/mms/view/MessageView;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 4016
    .end local v37           #l:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    .local v5, l:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    if-eqz v43, :cond_8

    if-nez v5, :cond_11

    .line 4018
    :cond_8
    if-eqz v38, :cond_0

    .line 4019
    invoke-static/range {v38 .. v38}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 3938
    .end local v5           #l:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    .end local v6           #msg:Lcom/android/mms/msg/AbstractMessage;
    .end local v21           #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v43           #msgView:Landroid/view/View;
    .end local v53           #tmpView:Landroid/view/View;
    .restart local p3
    :cond_9
    const-string v3, "mms"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3939
    const/16 v33, 0x1

    goto/16 :goto_1

    .line 3941
    :cond_a
    const-string v3, "htcmsgs"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3942
    const/16 v3, 0x26

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3943
    const-string v3, "vvm"

    const/16 v4, 0x1e

    move-object/from16 v0, v38

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 3945
    const/16 v36, 0x1

    .line 3946
    const/16 v3, 0x23

    move-object/from16 v0, v38

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_b

    const/16 v54, 0x1

    .line 3947
    :goto_3
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v3, v4, v8}, Lcom/android/mms/util/ContactNameCache;->getSepcVvmAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    goto/16 :goto_1

    .line 3946
    :cond_b
    const/16 v54, 0x0

    goto :goto_3

    .line 3952
    :cond_c
    const/16 v34, 0x1

    goto/16 :goto_1

    .line 3976
    .restart local v6       #msg:Lcom/android/mms/msg/AbstractMessage;
    .restart local v21       #adapter:Lcom/android/mms/msg/util/MessageDataAdapter;
    .restart local v22       #adapter1:Lcom/android/mms/msg/util/MessageDataAdapter;
    .restart local v24       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v28

    .line 3978
    .local v28, e:Ljava/lang/Exception;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 4006
    .end local v22           #adapter1:Lcom/android/mms/msg/util/MessageDataAdapter;
    .end local v24           #c:Landroid/database/Cursor;
    .end local v28           #e:Ljava/lang/Exception;
    .end local p3
    .restart local v37       #l:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    .restart local v43       #msgView:Landroid/view/View;
    :catch_1
    move-exception v28

    .line 4007
    .restart local v28       #e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "occur this kind of exception >"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    if-eqz v38, :cond_d

    .line 4010
    invoke-static/range {v38 .. v38}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4011
    const/16 v38, 0x0

    .line 4016
    :cond_d
    if-eqz v43, :cond_e

    if-nez v37, :cond_0

    .line 4018
    :cond_e
    if-eqz v38, :cond_0

    .line 4019
    invoke-static/range {v38 .. v38}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 4016
    .end local v28           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    if-eqz v43, :cond_f

    if-nez v37, :cond_10

    .line 4018
    :cond_f
    if-eqz v38, :cond_0

    .line 4019
    invoke-static/range {v38 .. v38}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 4020
    :cond_10
    throw v3

    .line 4023
    .end local v37           #l:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    .restart local v5       #l:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;
    .restart local v53       #tmpView:Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->m_listener:Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;

    .line 4027
    const/16 v47, 0x0

    .line 4028
    .local v47, relatedVcard:Z
    const/16 v46, 0x0

    .line 4029
    .local v46, relatedVcal:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportRelatedVcardAndVcal()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4030
    instance-of v3, v6, Lcom/android/mms/msg/RelatedMultimediaMessage;

    if-eqz v3, :cond_12

    move-object v3, v6

    check-cast v3, Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasVcard()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 4032
    const/16 v47, 0x1

    .line 4035
    :cond_12
    instance-of v3, v6, Lcom/android/mms/msg/RelatedMultimediaMessage;

    if-eqz v3, :cond_13

    move-object v3, v6

    check-cast v3, Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasVCalendar()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 4037
    const/16 v46, 0x1

    .line 4041
    :cond_13
    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->isMultimediaMessage()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 4042
    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getMessageBox()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_14
    :goto_4
    move-object v3, v6

    .line 4089
    check-cast v3, Lcom/android/mms/msg/MultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/MultimediaMessage;->withRelatedMessageBody()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 4091
    if-nez v47, :cond_16

    if-nez v46, :cond_16

    .line 4094
    const/16 v29, 0x1

    .line 4095
    .local v29, hasSlides:Z
    instance-of v3, v6, Lcom/android/mms/msg/RelatedMultimediaMessage;

    if-eqz v3, :cond_15

    move-object v3, v6

    .line 4096
    check-cast v3, Lcom/android/mms/msg/RelatedMultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/RelatedMultimediaMessage;->hasSlides()Z

    move-result v29

    .line 4100
    :cond_15
    if-eqz v29, :cond_16

    .line 4101
    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v9, 0x0

    const v10, 0x7f090023

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .end local v29           #hasSlides:Z
    :cond_16
    :goto_5
    move-object v3, v6

    .line 4110
    check-cast v3, Lcom/android/mms/msg/MultimediaMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/MultimediaMessage;->withRelatedMessageBody()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 4111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x1

    move-wide/from16 v0, v40

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getObjectType(JZ)I
    invoke-static {v3, v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6900(Lcom/android/mms/ui/ComposeMessageActivity;JZ)I

    move-result v48

    .line 4112
    .local v48, resID:I
    if-ltz v48, :cond_17

    .line 4113
    const/4 v3, 0x0

    const/16 v4, 0x19

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-interface {v0, v3, v4, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4145
    .end local v48           #resID:I
    :cond_17
    :goto_6
    if-nez v51, :cond_18

    .line 4146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v4, p1

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/msg/AbstractMessage;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v3 .. v8}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7000(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;Lcom/android/mms/msg/AbstractMessage;Ljava/lang/String;Ljava/lang/String;)V

    .line 4152
    :cond_18
    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v3

    if-nez v3, :cond_19

    if-nez v47, :cond_19

    if-nez v46, :cond_19

    if-nez v51, :cond_19

    if-nez v54, :cond_19

    .line 4155
    const/4 v3, 0x0

    const/16 v4, 0x15

    const/4 v9, 0x0

    const v10, 0x7f09002f

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4161
    :cond_19
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 4162
    if-nez v34, :cond_1a

    if-eqz v33, :cond_1b

    .line 4163
    :cond_1a
    const/4 v3, 0x0

    const/16 v4, 0x11

    const/4 v9, 0x0

    const v10, 0x7f090024

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4170
    :cond_1b
    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->isLocked()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 4171
    const/4 v3, 0x0

    const/16 v4, 0x12

    const/4 v9, 0x0

    const v10, 0x7f090026

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4188
    :cond_1c
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-eq v3, v4, :cond_1d

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v3, v4, :cond_2e

    .line 4190
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/telephony/TelephonyManager;

    .line 4191
    .local v52, tm:Landroid/telephony/TelephonyManager;
    const-string v3, "sms"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1e

    if-nez v35, :cond_1e

    .line 4193
    invoke-static/range {v32 .. v32}, Lcom/android/mms/util/SimIndexUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2d

    .line 4194
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    .line 4195
    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/4 v9, 0x0

    const v10, 0x7f0903e9

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4232
    .end local v52           #tm:Landroid/telephony/TelephonyManager;
    :cond_1e
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu_Download_Decline_Notification(Ljava/lang/String;Lcom/android/mms/msg/AbstractMessage;)Z

    .line 4237
    invoke-static/range {v32 .. v32}, Lcom/android/mms/util/SimIndexUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 4238
    move-object/from16 v0, p0

    move/from16 v1, v34

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu_LockUnlock(ZZLcom/android/mms/msg/AbstractMessage;)Z

    .line 4240
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu_ReplyAll(Landroid/database/Cursor;ZLcom/android/mms/msg/AbstractMessage;)Z

    .line 4243
    if-eqz v33, :cond_20

    .line 4244
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v6}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu_ReplyToSenderOnly(Landroid/database/Cursor;Lcom/android/mms/msg/AbstractMessage;)Z

    .line 4247
    :cond_20
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addMenu_CallbackAction(Lcom/android/mms/msg/AbstractMessage;)Z

    .line 4261
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/mms/MmsApp;->isShowSaveasTask(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 4263
    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getMessageBox()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    if-nez v36, :cond_21

    .line 4265
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mThreadId:J
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7300(Lcom/android/mms/ui/ComposeMessageActivity;)J

    move-result-wide v12

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v14

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getText()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v18

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object v11, v5

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v19}, Lcom/android/mms/ui/ComposeMessageActivity$9;->addSaveAsTaskContextMenu(Landroid/view/ContextMenu;Lcom/android/mms/ui/ComposeMessageActivity$MsgListMenuClickListener;JJLjava/lang/String;Ljava/lang/String;J)V

    .line 4270
    :cond_21
    if-eqz v38, :cond_0

    .line 4271
    invoke-static/range {v38 .. v38}, Lcom/android/mms/util/MmsAsyncWorkHandler;->CloseCursorInBG(Landroid/database/Cursor;)V

    goto/16 :goto_0

    .line 4046
    :pswitch_0
    const/16 v49, 0x1

    .line 4047
    .local v49, show:Z
    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v25

    .line 4048
    .local v25, cMsgId:J
    const-string v3, "ComposeMessageActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cMsgId: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v25

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getPduPersister()Lcom/google/android/mms/pdu/PduPersister;
    invoke-static {v3}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6800(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {}, Lcom/android/mms/transaction/Transaction$RetryPolicy;->getMaxRetryInterval()J

    move-result-wide v11

    add-long/2addr v9, v11

    invoke-virtual {v3, v9, v10}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v27

    .line 4054
    .local v27, cursor:Landroid/database/Cursor;
    if-eqz v27, :cond_27

    .line 4056
    :cond_22
    :try_start_3
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 4057
    const-string v3, "msg_id"

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v44

    .line 4059
    .local v44, msg_id:J
    const/16 v31, 0x0

    .line 4060
    .local v31, inScheduler:Z
    sget-object v3, Lcom/android/mms/transaction/TransactionService;->mThis:Lcom/android/mms/transaction/TransactionService;

    if-eqz v3, :cond_23

    .line 4061
    sget-object v3, Lcom/android/mms/transaction/TransactionService;->mThis:Lcom/android/mms/transaction/TransactionService;

    new-instance v4, Ljava/lang/Integer;

    move-wide/from16 v0, v44

    long-to-int v9, v0

    invoke-direct {v4, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionService;->isTransactionExist(Ljava/lang/Integer;)Z

    move-result v31

    .line 4063
    :cond_23
    cmp-long v3, v25, v44

    if-nez v3, :cond_24

    if-nez v31, :cond_25

    :cond_24
    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v3

    if-eqz v3, :cond_22

    .line 4065
    :cond_25
    const/16 v49, 0x0

    .line 4073
    .end local v31           #inScheduler:Z
    .end local v44           #msg_id:J
    :cond_26
    invoke-static/range {v27 .. v27}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 4078
    :cond_27
    :goto_8
    if-eqz v49, :cond_14

    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->isNotification()Z

    move-result v3

    if-nez v3, :cond_14

    .line 4080
    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v9, 0x0

    const v10, 0x7f09006d

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4082
    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v9, 0x0

    const v10, 0x7f0900ca

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_4

    .line 4069
    :catch_2
    move-exception v28

    .line 4070
    .local v28, e:Ljava/lang/IllegalArgumentException;
    :try_start_4
    const-string v3, "ComposeMessageActivity"

    const-string v4, "IllegalArgumentException when query pending msg"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4073
    invoke-static/range {v27 .. v27}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    goto :goto_8

    .end local v28           #e:Ljava/lang/IllegalArgumentException;
    :catchall_1
    move-exception v3

    invoke-static/range {v27 .. v27}, Lcom/android/mms/ui/MessageUtils;->closeCursorInBackground(Landroid/database/Cursor;)V

    throw v3

    .line 4105
    .end local v25           #cMsgId:J
    .end local v27           #cursor:Landroid/database/Cursor;
    .end local v49           #show:Z
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x1

    move-wide/from16 v0, v40

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->hasMixedAttachment(JZ)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_16

    .line 4106
    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v9, 0x0

    const v10, 0x7f090115

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_5

    .line 4116
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x0

    move-wide/from16 v0, v40

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getObjectType(JZ)I
    invoke-static {v3, v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$6900(Lcom/android/mms/ui/ComposeMessageActivity;JZ)I

    move-result v48

    .line 4117
    .restart local v48       #resID:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x1

    move-wide/from16 v0, v40

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->hasMixedAttachment(JZ)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_17

    if-ltz v48, :cond_17

    .line 4119
    const/4 v3, 0x0

    const/16 v4, 0x19

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v48

    invoke-interface {v0, v3, v4, v9, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 4122
    .end local v48           #resID:I
    :cond_2a
    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 4125
    invoke-virtual {v6}, Lcom/android/mms/msg/AbstractMessage;->hasError()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 4130
    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v9, 0x0

    const v10, 0x7f09006d

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4132
    const/4 v3, 0x0

    const/16 v4, 0xf

    const/4 v9, 0x0

    const v10, 0x7f0900ca

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4137
    :cond_2b
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportForwardByEmail()Z

    move-result v3

    if-eqz v3, :cond_17

    if-nez v35, :cond_17

    .line 4138
    const/4 v3, 0x0

    const/16 v4, 0x2b

    const/4 v9, 0x0

    const v10, 0x7f0902e1

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 4196
    .restart local v52       #tm:Landroid/telephony/TelephonyManager;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isOutgoing(Lcom/android/mms/msg/AbstractMessage;)Z
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4197
    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/4 v9, 0x0

    const v10, 0x7f0903e9

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 4199
    :cond_2d
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/4 v9, 0x0

    const v10, 0x7f0900ce

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 4201
    .end local v52           #tm:Landroid/telephony/TelephonyManager;
    :cond_2e
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_2f

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xaa

    if-ne v3, v4, :cond_2f

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1e

    .line 4206
    :cond_2f
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSimSms()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 4207
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSecureFolder()Z

    move-result v3

    if-eqz v3, :cond_30

    sget-object v3, Lcom/android/mms/category/Category;->SECURE:Lcom/android/mms/category/Category;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCategory:Lcom/android/mms/category/Category;
    invoke-static {v4}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/category/Category;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/mms/category/Category;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4211
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/telephony/TelephonyManager;

    .line 4212
    .restart local v52       #tm:Landroid/telephony/TelephonyManager;
    const-string v3, "sms"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual/range {v52 .. v52}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1e

    if-nez v35, :cond_1e

    .line 4214
    invoke-static/range {v32 .. v32}, Lcom/android/mms/util/SimIndexUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 4215
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->isUsingRuim()Z

    move-result v3

    if-eqz v3, :cond_31

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isOutgoing(Lcom/android/mms/msg/AbstractMessage;)Z
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 4218
    const/4 v3, 0x0

    const/16 v4, 0x3a

    const/4 v9, 0x0

    const v10, 0x7f090361

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 4219
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$9;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->isOutgoing(Lcom/android/mms/msg/AbstractMessage;)Z
    invoke-static {v3, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7100(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 4220
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x97

    if-ne v3, v4, :cond_32

    .line 4221
    const/4 v3, 0x0

    const/16 v4, 0x3a

    const/4 v9, 0x0

    const v10, 0x7f090361

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 4223
    :cond_32
    const/4 v3, 0x0

    const/16 v4, 0x1f

    const/4 v9, 0x0

    const v10, 0x7f0903e9

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 4227
    :cond_33
    const/4 v3, 0x0

    const/16 v4, 0x21

    const/4 v9, 0x0

    const v10, 0x7f0900ce

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_7

    .line 4042
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
