.class Lcom/android/mms/ui/ComposeMessageActivity$89;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ComposeMessageActivity;->sendMessageAsync(Landroid/os/Handler;Lcom/android/mms/ui/ComposeMessageActivity$SendMsgResultCallback;[Ljava/lang/String;JLandroid/net/Uri;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;

.field final synthetic val$cb:Lcom/android/mms/ui/ComposeMessageActivity$SendMsgResultCallback;

.field final synthetic val$dests:[Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isMultiMediaMessage:Z

.field final synthetic val$mmMessageUri:Landroid/net/Uri;

.field final synthetic val$mmMsgId:J

.field final synthetic val$mmThreadId:J


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;ZLandroid/net/Uri;JJLandroid/os/Handler;Lcom/android/mms/ui/ComposeMessageActivity$SendMsgResultCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 15685
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$dests:[Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$isMultiMediaMessage:Z

    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMessageUri:Landroid/net/Uri;

    iput-wide p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmThreadId:J

    iput-wide p7, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMsgId:J

    iput-object p9, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$handler:Landroid/os/Handler;

    iput-object p10, p0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$cb:Lcom/android/mms/ui/ComposeMessageActivity$SendMsgResultCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 27

    .prologue
    .line 15687
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 15688
    .local v9, failed:Ljava/lang/Boolean;
    new-instance v16, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 15694
    .local v16, result:Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isRestrictedMode()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v20

    if-eqz v20, :cond_0

    .line 15695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v14

    .line 15697
    .local v14, p:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMessageUri:Landroid/net/Uri;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/net/Uri;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v15

    check-cast v15, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 15698
    .local v15, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual {v15}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/mms/ui/MessageUtils;->isInCoreContentDomain(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)I

    move-result v6

    .line 15699
    .local v6, checkResult:I
    if-eqz v6, :cond_0

    .line 15700
    packed-switch v6, :pswitch_data_0

    .line 15712
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->dismissProgressDialog()V
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15000(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 15872
    .end local v6           #checkResult:I
    .end local v14           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v15           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_1
    return-void

    .line 15702
    .restart local v6       #checkResult:I
    .restart local v14       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v15       #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v23

    const v24, 0x7f0903d1

    invoke-virtual/range {v23 .. v24}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {}, Lcom/android/mms/model/CarrierContentRestriction;->getMaxResolutionString()Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 15715
    .end local v6           #checkResult:I
    .end local v15           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :catch_0
    move-exception v7

    .line 15717
    .local v7, e:Lcom/google/android/mms/MmsException;
    :try_start_2
    invoke-virtual {v7}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    .line 15723
    .end local v7           #e:Lcom/google/android/mms/MmsException;
    .end local v14           #p:Lcom/google/android/mms/pdu/PduPersister;
    :cond_0
    const/4 v11, 0x0

    .line 15724
    .local v11, messageBody:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$dests:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$dests:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-static {}, Lcom/android/mms/MmsApp;->getEmailServerNumber()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSMSEmail:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15100(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v20

    if-nez v20, :cond_4

    .line 15731
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSMSEmail:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15100(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 15732
    const-string v20, "ComposeMessageActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "dests.length "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$dests:[Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " mSMSEmailString "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-static {}, Lcom/android/mms/MmsApp;->getEmailServerNumber()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15758
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$isMultiMediaMessage:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 15759
    new-instance v13, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMessageUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmThreadId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 15785
    .local v13, msgSender:Lcom/android/mms/transaction/MessageSender;
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmThreadId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-interface {v13, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMessageUri:Landroid/net/Uri;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 15791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/ContentResolver;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMessageUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-static/range {v20 .. v24}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 15795
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v20

    const-string v21, "sms"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMsgId:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lcom/android/mms/util/DraftCache;->remove(Ljava/lang/String;J)Z

    .line 15800
    :cond_1
    invoke-interface {v13}, Lcom/android/mms/transaction/MessageSender;->getSentMessage()Landroid/net/Uri;

    move-result-object v12

    .line 15801
    .local v12, msg:Landroid/net/Uri;
    move-object/from16 v0, v16

    iput-object v12, v0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->Uri:Landroid/net/Uri;

    .line 15802
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$isMultiMediaMessage:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 15804
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mCategory:Lcom/android/mms/category/Category;
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageActivity;->access$7200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/category/Category;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-static {v0, v12, v1, v2}, Lcom/android/mms/category/Category;->moveTo(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/android/mms/category/Category;)V

    .line 15809
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mIsFromDraft:Z
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1400(Lcom/android/mms/ui/ComposeMessageActivity;)Z

    move-result v20

    if-eqz v20, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgType:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15400(Lcom/android/mms/ui/ComposeMessageActivity;)Ljava/lang/String;

    move-result-object v20

    const-string v21, "sms"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 15810
    sget-object v20, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMsgId:J

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 15812
    .local v19, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15300(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/content/ContentResolver;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/mms/util/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 15816
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v20

    const-string v21, "sms"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMsgId:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v20 .. v23}, Lcom/android/mms/util/DraftCache;->remove(Ljava/lang/String;J)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 15848
    .end local v11           #messageBody:Ljava/lang/String;
    .end local v12           #msg:Landroid/net/Uri;
    .end local v13           #msgSender:Lcom/android/mms/transaction/MessageSender;
    .end local v19           #uri:Landroid/net/Uri;
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$dests:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    new-array v5, v0, [Ljava/lang/String;

    .line 15849
    .local v5, _dests:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$dests:[Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$dests:[Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15850
    move-object/from16 v0, v16

    iput-object v5, v0, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->dests:[Ljava/lang/String;

    .line 15852
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMsgId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->msgId:J

    .line 15853
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$isMultiMediaMessage:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->isMms:Z

    .line 15854
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-nez v20, :cond_9

    const/16 v20, 0x1

    :goto_5
    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->success:Z

    .line 15855
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 15856
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmThreadId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->contactId:J

    .line 15861
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmThreadId:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_b

    .line 15862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->getOrCreateThreadId([Ljava/lang/String;)J
    invoke-static {v0, v5}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15500(Lcom/android/mms/ui/ComposeMessageActivity;[Ljava/lang/String;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->threadId:J

    .line 15867
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$handler:Landroid/os/Handler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/mms/ui/ComposeMessageActivity$89$1;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity$89$1;-><init>(Lcom/android/mms/ui/ComposeMessageActivity$89;Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;)V

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 15708
    .end local v5           #_dests:[Ljava/lang/String;
    .restart local v6       #checkResult:I
    .restart local v14       #p:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v15       #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :pswitch_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mEditorHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$3100(Lcom/android/mms/ui/ComposeMessageActivity;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/ui/ComposeMessageActivity;->getApplication()Landroid/app/Application;

    move-result-object v23

    const v24, 0x7f0903d0

    invoke-virtual/range {v23 .. v24}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_0

    .line 15820
    .end local v6           #checkResult:I
    .end local v14           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v15           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :catch_1
    move-exception v7

    .line 15821
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v20, "ComposeMessageActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to send message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMessageUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15824
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 15830
    :goto_8
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 15843
    goto/16 :goto_4

    .line 15734
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v11       #messageBody:Ljava/lang/String;
    :cond_4
    :try_start_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSSubject()Z

    move-result v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditor:Lcom/android/mms/ui/SubjectEditor;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/SubjectEditor;

    move-result-object v20

    if-eqz v20, :cond_5

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditor:Lcom/android/mms/ui/SubjectEditor;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/SubjectEditor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/SubjectEditor;->isActivated()Z

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mStateWatcher:Lcom/android/mms/ui/StateWatcher;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$1700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/StateWatcher;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/StateWatcher;->isMultimediaMessage()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditor:Lcom/android/mms/ui/SubjectEditor;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/SubjectEditor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/SubjectEditor;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 15739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0900bf

    invoke-virtual/range {v20 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 15740
    .local v18, subs:Ljava/lang/String;
    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 15741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSubjectEditor:Lcom/android/mms/ui/SubjectEditor;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$15200(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/SubjectEditor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/SubjectEditor;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 15742
    .local v17, stext:Ljava/lang/String;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 15743
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v21, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static/range {v21 .. v21}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 15744
    goto/16 :goto_2

    .line 15745
    .end local v17           #stext:Ljava/lang/String;
    .end local v18           #subs:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mMsgTextEditor:Lcom/android/mms/ui/MessageTextEditor;
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$700(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/ui/MessageTextEditor;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/ui/MessageTextEditor;->getText()Landroid/text/Editable;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 15762
    :cond_6
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 15763
    .local v10, it:Landroid/content/Intent;
    const-string v20, "dest"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$dests:[Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 15764
    const-string v20, "threadId"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmThreadId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v10, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 15765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSmsVcard:[B
    invoke-static/range {v20 .. v20}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)[B

    move-result-object v20

    if-eqz v20, :cond_8

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 15766
    const-string v20, "msg"

    new-instance v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v22, v0

    #getter for: Lcom/android/mms/ui/ComposeMessageActivity;->mSmsVcard:[B
    invoke-static/range {v22 .. v22}, Lcom/android/mms/ui/ComposeMessageActivity;->access$200(Lcom/android/mms/ui/ComposeMessageActivity;)[B

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>([B)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15767
    const-string v20, "vcard"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15775
    :goto_9
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 15776
    const-string v20, "send_mode"

    sget v21, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_SEND_MODE_TRANSACTION:I

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 15782
    :cond_7
    new-instance v13, Lcom/android/mms/transaction/SmsMessageSender;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v13, v0, v10}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .restart local v13       #msgSender:Lcom/android/mms/transaction/MessageSender;
    goto/16 :goto_3

    .line 15769
    .end local v13           #msgSender:Lcom/android/mms/transaction/MessageSender;
    :cond_8
    const-string v20, "msg"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_9

    .line 15831
    .end local v10           #it:Landroid/content/Intent;
    .end local v11           #messageBody:Ljava/lang/String;
    :catch_2
    move-exception v7

    .line 15832
    .local v7, e:Lcom/google/android/mms/MmsException;
    const-string v20, "ComposeMessageActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to send message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMessageUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15836
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 15843
    goto/16 :goto_4

    .line 15826
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v8

    .line 15827
    .local v8, e2:Landroid/database/sqlite/SQLiteException;
    const-string v20, "ComposeMessageActivity"

    const-string v21, "isLowStorage false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 15837
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    .end local v8           #e2:Landroid/database/sqlite/SQLiteException;
    :catch_4
    move-exception v7

    .line 15838
    .local v7, e:Ljava/lang/Exception;
    const-string v20, "ComposeMessageActivity"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to send message: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmMessageUri:Landroid/net/Uri;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15842
    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto/16 :goto_4

    .line 15854
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #_dests:[Ljava/lang/String;
    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 15858
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmThreadId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->threadId:J

    goto/16 :goto_6

    .line 15863
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/ComposeMessageActivity$89;->val$mmThreadId:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v16

    iput-wide v0, v2, Lcom/android/mms/ui/ComposeMessageActivity$ComposeObject;->threadId:J

    goto/16 :goto_7

    .line 15700
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
