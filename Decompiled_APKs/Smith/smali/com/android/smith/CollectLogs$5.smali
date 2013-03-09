.class Lcom/android/smith/CollectLogs$5;
.super Landroid/os/Handler;
.source "CollectLogs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/smith/CollectLogs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/smith/CollectLogs;


# direct methods
.method constructor <init>(Lcom/android/smith/CollectLogs;)V
    .locals 0
    .parameter

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 1299
    const/4 v6, 0x0

    .line 1300
    .local v6, mFiles:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1301
    .local v7, mStorage:Ljava/lang/String;
    const/4 v8, 0x0

    .line 1302
    .local v8, mText:Landroid/widget/TextView;
    const/4 v5, 0x0

    .line 1303
    .local v5, mButton:Landroid/widget/Button;
    const/4 v9, 0x0

    .line 1305
    .local v9, mThread:Lcom/android/smith/CollectLogs$LogsThread;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 1650
    :goto_0
    return-void

    .line 1308
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    if-nez v10, :cond_0

    .line 1310
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v11, Lcom/android/smith/CollectLogs$LogsThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x5

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$602(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 1311
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    .line 1313
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1315
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v11, Lcom/android/smith/CollectLogs$LogsThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x5

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$1402(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 1316
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    .line 1318
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    if-nez v10, :cond_2

    .line 1320
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    new-instance v11, Lcom/android/smith/CollectLogs$LogsThread;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v13, 0x3

    const/4 v14, 0x1

    const/4 v15, 0x5

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/android/smith/CollectLogs$LogsThread;-><init>(Lcom/android/smith/CollectLogs;III)V

    #setter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$802(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 1321
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/smith/CollectLogs$LogsThread;->start()V

    .line 1324
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1328
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v10

    if-nez v10, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1335
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/android/smith/CollectLogs;->access$3200(Lcom/android/smith/CollectLogs;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1339
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$3800(Lcom/android/smith/CollectLogs;)Landroid/app/ProgressDialog;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 1341
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$3800(Lcom/android/smith/CollectLogs;)Landroid/app/ProgressDialog;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1342
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v11, 0x0

    #setter for: Lcom/android/smith/CollectLogs;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$3802(Lcom/android/smith/CollectLogs;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1344
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v11, 0x0

    #setter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$602(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 1345
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v11, 0x0

    #setter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$1402(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    .line 1346
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v11, 0x0

    #setter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$802(Lcom/android/smith/CollectLogs;Lcom/android/smith/CollectLogs$LogsThread;)Lcom/android/smith/CollectLogs$LogsThread;

    goto/16 :goto_0

    .line 1351
    :pswitch_2
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_0

    .line 1354
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalLogs:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$3900(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1355
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v11, -0x1

    #setter for: Lcom/android/smith/CollectLogs;->mInternalLogsMark:I
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4002(Lcom/android/smith/CollectLogs;I)I

    goto/16 :goto_0

    .line 1358
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhoneLogs:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v11, -0x1

    #setter for: Lcom/android/smith/CollectLogs;->mPhoneLogsMark:I
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4202(Lcom/android/smith/CollectLogs;I)I

    goto/16 :goto_0

    .line 1362
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalLogs:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v11, -0x1

    #setter for: Lcom/android/smith/CollectLogs;->mExternalLogsMark:I
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4402(Lcom/android/smith/CollectLogs;I)I

    goto/16 :goto_0

    .line 1369
    :pswitch_6
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_2

    goto/16 :goto_0

    .line 1372
    :pswitch_7
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    if-nez v10, :cond_8

    .line 1374
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v11, -0x1

    #setter for: Lcom/android/smith/CollectLogs;->mInternalLogsMark:I
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4002(Lcom/android/smith/CollectLogs;I)I

    .line 1388
    :goto_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalLogs:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$3900(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1378
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalLogsMark:I
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4000(Lcom/android/smith/CollectLogs;)I

    move-result v10

    if-gez v10, :cond_9

    .line 1380
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalLogs:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/smith/CollectLogs;->access$3900(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    #setter for: Lcom/android/smith/CollectLogs;->mInternalLogsMark:I
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4002(Lcom/android/smith/CollectLogs;I)I

    goto :goto_1

    .line 1385
    :cond_9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalLogs:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$3900(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalLogs:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/smith/CollectLogs;->access$3900(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalLogsMark:I
    invoke-static {v13}, Lcom/android/smith/CollectLogs;->access$4000(Lcom/android/smith/CollectLogs;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1391
    :pswitch_8
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    if-nez v10, :cond_a

    .line 1393
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v11, -0x1

    #setter for: Lcom/android/smith/CollectLogs;->mPhoneLogsMark:I
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4202(Lcom/android/smith/CollectLogs;I)I

    .line 1407
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhoneLogs:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1397
    :cond_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneLogsMark:I
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4200(Lcom/android/smith/CollectLogs;)I

    move-result v10

    if-gez v10, :cond_b

    .line 1399
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhoneLogs:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/smith/CollectLogs;->access$4100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    #setter for: Lcom/android/smith/CollectLogs;->mPhoneLogsMark:I
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4202(Lcom/android/smith/CollectLogs;I)I

    goto :goto_2

    .line 1404
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhoneLogs:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhoneLogs:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/smith/CollectLogs;->access$4100(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneLogsMark:I
    invoke-static {v13}, Lcom/android/smith/CollectLogs;->access$4200(Lcom/android/smith/CollectLogs;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1410
    :pswitch_9
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg2:I

    if-nez v10, :cond_c

    .line 1412
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const/4 v11, -0x1

    #setter for: Lcom/android/smith/CollectLogs;->mExternalLogsMark:I
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4402(Lcom/android/smith/CollectLogs;I)I

    .line 1426
    :goto_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalLogs:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1416
    :cond_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalLogsMark:I
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4400(Lcom/android/smith/CollectLogs;)I

    move-result v10

    if-gez v10, :cond_d

    .line 1418
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalLogs:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/smith/CollectLogs;->access$4300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    #setter for: Lcom/android/smith/CollectLogs;->mExternalLogsMark:I
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4402(Lcom/android/smith/CollectLogs;I)I

    goto :goto_3

    .line 1423
    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalLogs:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalLogs:Landroid/widget/TextView;
    invoke-static {v11}, Lcom/android/smith/CollectLogs;->access$4300(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalLogsMark:I
    invoke-static {v13}, Lcom/android/smith/CollectLogs;->access$4400(Lcom/android/smith/CollectLogs;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1432
    :pswitch_a
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_3

    .line 1453
    const-string v7, "Unknown"

    .line 1457
    :goto_4
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 1461
    :try_start_0
    invoke-virtual {v9}, Lcom/android/smith/CollectLogs$LogsThread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1468
    :cond_e
    :goto_5
    if-nez v6, :cond_10

    const/4 v4, 0x0

    .line 1470
    .local v4, count:I
    :goto_6
    if-nez v6, :cond_11

    .line 1472
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "!! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " storage does not exist !!\n\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1572
    :cond_f
    :goto_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " Log(s) :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1435
    .end local v4           #count:I
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v9

    .line 1436
    invoke-static {}, Lcom/android/smith/CollectLogs;->access$3300()[Ljava/lang/String;

    move-result-object v6

    .line 1437
    const-string v7, "Internal"

    .line 1438
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$700(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v8

    .line 1439
    goto :goto_4

    .line 1441
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v9

    .line 1442
    invoke-static {}, Lcom/android/smith/CollectLogs;->access$3400()[Ljava/lang/String;

    move-result-object v6

    .line 1443
    const-string v7, "Phone/Tablet"

    .line 1444
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1500(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v8

    .line 1445
    goto :goto_4

    .line 1447
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v9

    .line 1448
    invoke-static {}, Lcom/android/smith/CollectLogs;->access$3500()[Ljava/lang/String;

    move-result-object v6

    .line 1449
    const-string v7, "External"

    .line 1450
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1000(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v8

    .line 1451
    goto/16 :goto_4

    .line 1468
    :cond_10
    array-length v4, v6

    goto/16 :goto_6

    .line 1474
    .restart local v4       #count:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #calls: Lcom/android/smith/CollectLogs;->isLoggingSystemLoggers()Z
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4500(Lcom/android/smith/CollectLogs;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 1476
    const-string v10, "!! System Loggers is running !!\n!! Please stop it first !!\n\n"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 1478
    :cond_12
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #calls: Lcom/android/smith/CollectLogs;->isLoggingBatteryLogger()Z
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$4600(Lcom/android/smith/CollectLogs;)Z

    move-result v10

    if-eqz v10, :cond_13

    .line 1480
    const-string v10, "!! Battery Logger is running !!\n!! Please stop it first !!\n\n"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1484
    :cond_13
    const/4 v2, 0x0

    .line 1485
    .local v2, canAccessInternalStorage:Z
    const/4 v3, 0x0

    .line 1486
    .local v3, canAccessPhoneStorage:Z
    const/4 v1, 0x0

    .line 1488
    .local v1, canAccessExternalStorage:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const-string v11, "/data/data/com.android.smith/htclog/"

    #calls: Lcom/android/smith/CollectLogs;->canAccessPath(Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4700(Lcom/android/smith/CollectLogs;Ljava/lang/String;)Z

    move-result v2

    .line 1490
    invoke-static {}, Lcom/android/smith/HtcNative;->getPhoneStorageState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_14

    .line 1492
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    invoke-static {}, Lcom/android/smith/CollectLogs;->access$2900()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/smith/CollectLogs;->canAccessPath(Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4700(Lcom/android/smith/CollectLogs;Ljava/lang/String;)Z

    move-result v3

    .line 1499
    :goto_8
    invoke-static {}, Lcom/android/smith/HtcNative;->getExternalStorageState()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    .line 1501
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    invoke-static {}, Lcom/android/smith/CollectLogs;->access$3000()Ljava/lang/String;

    move-result-object v11

    #calls: Lcom/android/smith/CollectLogs;->canAccessPath(Ljava/lang/String;)Z
    invoke-static {v10, v11}, Lcom/android/smith/CollectLogs;->access$4700(Lcom/android/smith/CollectLogs;Ljava/lang/String;)Z

    move-result v1

    .line 1508
    :goto_9
    const-string v10, ""

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1510
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_4

    .line 1566
    :goto_a
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v10

    if-lez v10, :cond_f

    .line 1568
    const-string v10, "\n"

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 1496
    :cond_14
    const-string v10, "SM:CollectLogs"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "storage ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/smith/CollectLogs;->access$2900()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] is not mounted!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1505
    :cond_15
    const-string v10, "SM:CollectLogs"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "storage ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/smith/CollectLogs;->access$3000()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] is not mounted!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/smith/Device$Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 1513
    :pswitch_e
    if-eqz v2, :cond_17

    .line 1515
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1516
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mCheckInternalRemove:Landroid/widget/CheckBox;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1200(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1518
    if-eqz v1, :cond_16

    .line 1520
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_a

    .line 1524
    :cond_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const v11, 0x7f040071

    invoke-virtual {v10, v11}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1529
    :cond_17
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const v11, 0x7f04006f

    invoke-virtual {v10, v11}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1534
    :pswitch_f
    if-eqz v3, :cond_19

    .line 1536
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1537
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mCheckPhoneRemove:Landroid/widget/CheckBox;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1700(Lcom/android/smith/CollectLogs;)Landroid/widget/CheckBox;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1539
    if-eqz v1, :cond_18

    .line 1541
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1300(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_a

    .line 1545
    :cond_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const v11, 0x7f040071

    invoke-virtual {v10, v11}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1550
    :cond_19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const v11, 0x7f040070

    invoke-virtual {v10, v11}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1555
    :pswitch_10
    if-eqz v1, :cond_1a

    .line 1557
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_a

    .line 1561
    :cond_1a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const v11, 0x7f040071

    invoke-virtual {v10, v11}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 1576
    .end local v1           #canAccessExternalStorage:Z
    .end local v2           #canAccessInternalStorage:Z
    .end local v3           #canAccessPhoneStorage:Z
    .end local v4           #count:I
    :pswitch_11
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_5

    .line 1594
    :goto_b
    :pswitch_12
    if-eqz v9, :cond_1b

    invoke-virtual {v9}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1598
    :try_start_1
    invoke-virtual {v9}, Lcom/android/smith/CollectLogs$LogsThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1605
    :cond_1b
    :goto_c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const v11, 0x7f04002e

    invoke-virtual {v10, v11}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1606
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1608
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const v11, 0x7f04006e

    invoke-virtual {v10, v11}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1579
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v9

    .line 1580
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalMove:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$500(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v5

    .line 1581
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$700(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v8

    .line 1582
    goto :goto_b

    .line 1584
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v9

    .line 1585
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneMove:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1300(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v5

    .line 1586
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1500(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v8

    .line 1587
    goto :goto_b

    .line 1612
    :pswitch_15
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    packed-switch v10, :pswitch_data_6

    .line 1633
    :goto_d
    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Lcom/android/smith/CollectLogs$LogsThread;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1637
    :try_start_2
    invoke-virtual {v9}, Lcom/android/smith/CollectLogs$LogsThread;->join()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1644
    :cond_1c
    :goto_e
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const v11, 0x7f04002e

    invoke-virtual {v10, v11}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1645
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    const v11, 0x7f04006e

    invoke-virtual {v10, v11}, Lcom/android/smith/CollectLogs;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1615
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mInternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$600(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v9

    .line 1616
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonInternalUpload:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1100(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v5

    .line 1617
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextInternalPrompt:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$700(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v8

    .line 1618
    goto :goto_d

    .line 1620
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mPhoneThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1400(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v9

    .line 1621
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonPhoneUpload:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1600(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v5

    .line 1622
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextPhonePrompt:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1500(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v8

    .line 1623
    goto :goto_d

    .line 1625
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mExternalThread:Lcom/android/smith/CollectLogs$LogsThread;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$800(Lcom/android/smith/CollectLogs;)Lcom/android/smith/CollectLogs$LogsThread;

    move-result-object v9

    .line 1626
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mButtonExternalUpload:Landroid/widget/Button;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$900(Lcom/android/smith/CollectLogs;)Landroid/widget/Button;

    move-result-object v5

    .line 1627
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/smith/CollectLogs$5;->this$0:Lcom/android/smith/CollectLogs;

    #getter for: Lcom/android/smith/CollectLogs;->mTextExternalPrompt:Landroid/widget/TextView;
    invoke-static {v10}, Lcom/android/smith/CollectLogs;->access$1000(Lcom/android/smith/CollectLogs;)Landroid/widget/TextView;

    move-result-object v8

    .line 1628
    goto :goto_d

    .line 1463
    :catch_0
    move-exception v10

    goto/16 :goto_5

    .line 1600
    :catch_1
    move-exception v10

    goto/16 :goto_c

    .line 1639
    :catch_2
    move-exception v10

    goto :goto_e

    .line 1305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_a
        :pswitch_11
        :pswitch_15
    .end packed-switch

    .line 1351
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1369
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 1432
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 1510
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 1576
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_13
        :pswitch_14
        :pswitch_12
    .end packed-switch

    .line 1612
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_16
        :pswitch_17
        :pswitch_18
    .end packed-switch
.end method
