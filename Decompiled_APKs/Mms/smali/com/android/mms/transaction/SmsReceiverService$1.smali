.class Lcom/android/mms/transaction/SmsReceiverService$1;
.super Landroid/os/Handler;
.source "SmsReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/SmsReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/transaction/SmsReceiverService;


# direct methods
.method constructor <init>(Lcom/android/mms/transaction/SmsReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 18
    .parameter "msg"

    .prologue
    .line 261
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 268
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const v4, 0x7f0900f2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 272
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const v4, 0x7f0900f2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 277
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    const v4, 0x7f09037c

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 282
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    #getter for: Lcom/android/mms/transaction/SmsReceiverService;->mCurrentCBMsg:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/mms/transaction/SmsReceiverService;->access$000(Lcom/android/mms/transaction/SmsReceiverService;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 290
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 291
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    .line 294
    .local v15, message:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v15, v3, v4}, Lcom/android/mms/transaction/SmsReceiverService;->launchSMSErrorDialogVerizon(Ljava/lang/String;II)V

    goto :goto_0

    .line 300
    .end local v15           #message:Ljava/lang/String;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 301
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/net/Uri;

    .line 303
    .local v17, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lcom/android/mms/transaction/SmsReceiverService;->launchSmsSentNoServiceDialog(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 310
    .end local v17           #uri:Landroid/net/Uri;
    :sswitch_6
    const-string v1, "content://sms/sim"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 311
    .local v2, SIM_URI:Landroid/net/Uri;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 313
    .local v13, indexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v1}, Lcom/android/mms/transaction/SmsReceiverService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 314
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 316
    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 317
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 320
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v9, v1, :cond_2

    .line 321
    invoke-interface {v7, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 322
    const-string v1, "dcs"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 323
    .local v8, dcs:I
    const-string v1, "pid"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 325
    .local v16, pid:I
    const/16 v1, 0xd8

    if-ne v8, v1, :cond_1

    const/16 v1, 0x41

    move/from16 v0, v16

    if-ne v0, v1, :cond_1

    .line 326
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 332
    .end local v8           #dcs:I
    .end local v16           #pid:I
    :cond_2
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 333
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 334
    .local v12, index:Ljava/lang/Integer;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 335
    const-string v1, "index_on_sim"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 336
    .local v11, idx:I
    const-string v1, "is_cdma_format"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 337
    .local v14, isCdmaFormat:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/mms/transaction/SmsReceiverService$1;->this$0:Lcom/android/mms/transaction/SmsReceiverService;

    invoke-virtual {v1}, Lcom/android/mms/transaction/SmsReceiverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v1, 0x1

    if-ne v14, v1, :cond_3

    const/4 v1, 0x1

    :goto_3
    invoke-static {v3, v1, v11}, Lcom/android/mms/util/SimIoUtil;->deleteFromSim(Landroid/content/Context;ZI)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    goto :goto_3

    .line 342
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #idx:I
    .end local v12           #index:Ljava/lang/Integer;
    .end local v14           #isCdmaFormat:I
    :cond_4
    if-eqz v7, :cond_0

    .line 343
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 261
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_1
        0x5 -> :sswitch_6
        0x65 -> :sswitch_5
        0x9c2 -> :sswitch_2
    .end sparse-switch
.end method
