.class Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;
.super Landroid/os/Handler;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConcateHandler"
.end annotation


# instance fields
.field nConcatDestAddr:Ljava/lang/String;

.field nConcateCount:I

.field nConcateRef:I

.field nDate:I

.field nSequence:I

.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;Landroid/os/Looper;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 24

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatRef:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mCount:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSequence:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mConcatDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v1, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDate:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v1, "Concate"

    const-string v5, "message type MSG_FILTER_CONCATE_SENT"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v7, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/ConcatedUtil;->updateRawTable(ILjava/lang/String;IIII)I

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v7, 0x2

    const/4 v8, 0x5

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/telephony/ConcatedUtil;->query2StatusCount(ILjava/lang/String;IIIII)I

    move-result v21

    const-string v1, "Concate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sent(+fail) count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    add-int/lit8 v1, v1, 0x0

    move/from16 v0, v21

    if-ne v0, v1, :cond_3

    const-string v1, "Concate"

    const-string v5, "sent+fail complete del entry"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v7, 0x2

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/ConcatedUtil;->deleteentry(ILjava/lang/String;IIII)Z

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget-object v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object/from16 v17, v0

    const-string v1, "destaddr"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    move/from16 v0, v21

    int-to-long v5, v0

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->sendDatamanageIntent(Ljava/lang/String;JJ)V
    invoke-static/range {v1 .. v6}, Lcom/android/internal/telephony/SMSDispatcher;->access$400(Lcom/android/internal/telephony/SMSDispatcher;Ljava/lang/String;JJ)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z
    invoke-static {v1}, Lcom/android/internal/telephony/SMSDispatcher;->access$500(Lcom/android/internal/telephony/SMSDispatcher;)Z

    move-result v19

    if-eqz v19, :cond_2

    if-nez v23, :cond_1

    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    :cond_1
    const-string v1, "SendNextMsg"

    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    :try_start_0
    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    if-nez v23, :cond_4

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v13

    const-string v1, "SMS"

    const-string v5, "failed to send sent intent"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    const-string v1, "middle_success"

    const/4 v5, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    :try_start_1
    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tContext:Landroid/content/Context;

    const/4 v6, -0x1

    move-object/from16 v0, v23

    invoke-virtual {v1, v5, v6, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "Concate"

    const-string v5, "message type MSG_FILTER_CONCATE_RETRY"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v11, 0x6

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ConcatedUtil;->updateRawTable(ILjava/lang/String;IIII)I

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v11, 0x6

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ConcatedUtil;->queryStatusCount(ILjava/lang/String;IIII)I

    move-result v20

    const-string v1, "Concate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retry count of retry "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v6, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    move/from16 v0, v20

    if-ne v0, v1, :cond_5

    const-string v1, "retry_count"

    const/4 v5, 0x7

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    const-string v1, "under_retry"

    const/4 v5, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_2
    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tContext:Landroid/content/Context;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tErrorCode:I

    move-object/from16 v0, v16

    invoke-virtual {v1, v5, v6, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_1
    move-exception v14

    const-string v1, "SMS"

    const-string v5, "failed to send retry intent"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    const-string v1, "retry_count"

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tTracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    iget v5, v5, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :catch_2
    move-exception v13

    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v11, 0x5

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ConcatedUtil;->updateRawTable(ILjava/lang/String;IIII)I

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v11, 0x5

    const/4 v12, 0x2

    invoke-virtual/range {v5 .. v12}, Lcom/android/internal/telephony/ConcatedUtil;->query2StatusCount(ILjava/lang/String;IIIII)I

    move-result v18

    const-string v1, "Concate"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail(+sent count): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SMSDispatcher;->isImproveSmsSending()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    #calls: Lcom/android/internal/telephony/SMSDispatcher;->handleAllPendingSmsTracker()Z
    invoke-static {v1}, Lcom/android/internal/telephony/SMSDispatcher;->access$500(Lcom/android/internal/telephony/SMSDispatcher;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v1, "SendNextMsg"

    const/4 v5, 0x1

    invoke-virtual {v15, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    add-int/lit8 v1, v1, 0x0

    move/from16 v0, v18

    if-ne v0, v1, :cond_7

    const-string v1, "Concate"

    const-string v5, "fail+sent count reached, delete entry and send intent"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/internal/telephony/SMSDispatcher;->mConcatedutil:Lcom/android/internal/telephony/ConcatedUtil;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nDate:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcatDestAddr:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateRef:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nConcateCount:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandler;->nSequence:I

    const/4 v11, 0x5

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/telephony/ConcatedUtil;->deleteentry(ILjava/lang/String;IIII)Z

    const-string v1, "retry_count"

    const/16 v5, 0x8

    invoke-virtual {v15, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_3
    const-string v1, "under_retry"

    const/4 v5, 0x0

    invoke-virtual {v15, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_3
    move-object/from16 v0, v22

    iget-object v1, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tContext:Landroid/content/Context;

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/internal/telephony/SMSDispatcher$ConcateHandlerMessageObject;->tErrorCode:I

    invoke-virtual {v1, v5, v6, v15}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v14

    const-string v1, "SMS"

    const-string v5, "failed to send fail intent"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v1, "retry_count"

    const/16 v5, 0x9

    invoke-virtual {v15, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
