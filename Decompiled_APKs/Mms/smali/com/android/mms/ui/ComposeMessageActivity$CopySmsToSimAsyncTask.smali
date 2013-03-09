.class Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;
.super Landroid/os/AsyncTask;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopySmsToSimAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field mAct:Landroid/app/Activity;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mIsCdma:Z

.field final mMsgItem:Lcom/android/mms/msg/AbstractMessage;

.field final synthetic this$0:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/app/Activity;Lcom/android/mms/msg/AbstractMessage;Landroid/os/Handler;Z)V
    .locals 1
    .parameter
    .parameter "act"
    .parameter "msgItem"
    .parameter "handler"
    .parameter "isCdma"

    .prologue
    .line 5171
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 5172
    iput-object p3, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    .line 5173
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mContext:Landroid/content/Context;

    .line 5174
    iput-object p2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mAct:Landroid/app/Activity;

    .line 5175
    iput-object p4, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mHandler:Landroid/os/Handler;

    .line 5176
    iput-boolean p5, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mIsCdma:Z

    .line 5177
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;
    .locals 22
    .parameter "v"

    .prologue
    .line 5181
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isTextMessage()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5182
    const/4 v11, 0x0

    .line 5301
    :cond_0
    :goto_0
    return-object v11

    .line 5184
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v17

    .line 5186
    .local v17, smsManager:Landroid/telephony/SmsManager;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Landroid/telephony/SmsMessage;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v14

    .line 5190
    .local v14, nli:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 5193
    .local v2, sAddress:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getText()Ljava/lang/String;

    move-result-object v16

    .line 5196
    .local v16, sBody:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getTimestamp()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 5198
    .local v12, lDate:Ljava/lang/Long;
    move-object/from16 v0, v16

    invoke-static {v0, v14}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v13

    .line 5200
    .local v13, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v4, 0x0

    invoke-direct {v11, v3, v4}, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/ui/ComposeMessageActivity$1;)V

    .line 5202
    .local v11, info:Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mSegNum:I

    .line 5204
    iget v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mSegNum:I

    if-nez v3, :cond_2

    .line 5205
    const/4 v3, 0x1

    iput v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mSegNum:I

    .line 5206
    const-string v3, ""

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5211
    :cond_2
    iget v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mSegNum:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5213
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_7

    const/4 v8, 0x1

    .line 5216
    .local v8, enabled:Z
    :goto_1
    iput-boolean v8, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mEnable:Z

    .line 5217
    if-eqz v8, :cond_0

    .line 5223
    const/4 v10, -0x1

    .line 5224
    .local v10, index:I
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-eq v3, v4, :cond_3

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v3, v4, :cond_a

    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_a

    .line 5227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/SimIoUtil;->savetoCSIM(Landroid/net/Uri;I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mIndexes:Ljava/util/ArrayList;

    .line 5285
    :cond_4
    :goto_2
    iget-object v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mIndexes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 5286
    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->bSuccess:Z

    .line 5288
    :cond_5
    iget-boolean v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->bSuccess:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isLocked()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_e

    const/4 v3, 0x1

    :goto_3
    iput v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mLocked:I

    .line 5291
    iget v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mLocked:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 5292
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v4}, Lcom/android/mms/msg/AbstractMessage;->getMessageId()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 5293
    .local v18, uri:Landroid/net/Uri;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 5294
    .local v19, values:Landroid/content/ContentValues;
    const-string v3, "locked"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5295
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1, v4, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5298
    .end local v18           #uri:Landroid/net/Uri;
    .end local v19           #values:Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    iget-object v6, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mIndexes:Ljava/util/ArrayList;

    #calls: Lcom/android/mms/ui/ComposeMessageActivity;->updateIndexOnSim(Lcom/android/mms/msg/AbstractMessage;Ljava/util/ArrayList;)V
    invoke-static {v3, v4, v6}, Lcom/android/mms/ui/ComposeMessageActivity;->access$9400(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/msg/AbstractMessage;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 5213
    .end local v8           #enabled:Z
    .end local v10           #index:I
    :cond_7
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 5231
    .restart local v8       #enabled:Z
    .restart local v10       #index:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isSent()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Lcom/android/mms/util/SimIoUtil;->savetoCSIM(Landroid/net/Uri;I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mIndexes:Ljava/util/ArrayList;

    goto :goto_2

    .line 5234
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lcom/android/mms/util/SimIoUtil;->savetoCSIM(Landroid/net/Uri;I)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mIndexes:Ljava/util/ArrayList;

    goto/16 :goto_2

    .line 5238
    :cond_a
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->isUsingRuim()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mIsCdma:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 5239
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->getURI()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/mms/util/SimIoUtil;->saveDeliverySmstoUim(Landroid/net/Uri;I)I

    move-result v10

    .line 5240
    if-lez v10, :cond_4

    .line 5241
    iget-object v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mIndexes:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 5242
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v3}, Lcom/android/mms/msg/AbstractMessage;->isIncoming()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 5243
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 5244
    .local v7, bundle:Landroid/os/Bundle;
    const-string v3, "NLI"

    invoke-virtual {v7, v3, v14}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5246
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5247
    .local v5, message:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/util/SimIoUtil;->isUsingRuim()Z

    move-result v3

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mIsCdma:Z

    if-nez v3, :cond_d

    .line 5248
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Landroid/telephony/SmsMessage;->is7BitAfterFragmentText()Z

    move-result v6

    invoke-static/range {v2 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v15

    .line 5255
    .local v15, pdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, v15, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedMessage:[B

    const/16 v20, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v3, v4, v6, v1}, Landroid/telephony/SmsManager;->copyMessageToIccForResult(Z[B[BI)I

    move-result v10

    .line 5274
    :goto_4
    iget-object v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mIndexes:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5278
    if-gtz v10, :cond_c

    .line 5279
    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->bSuccess:Z

    goto/16 :goto_2

    .line 5261
    .end local v15           #pdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    :cond_d
    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Landroid/telephony/SmsMessage;->is7BitAfterFragmentText()Z

    move-result v6

    invoke-static/range {v2 .. v7}, Landroid/telephony/SmsMessage;->getDeliveryPdu(Ljava/lang/String;JLjava/lang/String;ZLandroid/os/Bundle;)Landroid/telephony/SmsMessage$DeliveryPdu;

    move-result-object v15

    .line 5268
    .restart local v15       #pdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    const/4 v3, 0x0

    iget-object v4, v15, Landroid/telephony/SmsMessage$DeliveryPdu;->encodedMessage:[B

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v6}, Landroid/telephony/SmsManager;->copyMessageToIccForResult([B[BI)I

    move-result v10

    goto :goto_4

    .line 5290
    .end local v5           #message:Ljava/lang/String;
    .end local v7           #bundle:Landroid/os/Bundle;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v15           #pdu:Landroid/telephony/SmsMessage$DeliveryPdu;
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5164
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;)V
    .locals 7
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const v3, 0x7f0903e9

    .line 5305
    if-nez p1, :cond_1

    .line 5348
    :cond_0
    :goto_0
    return-void

    .line 5308
    :cond_1
    iget v1, p1, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mSegNum:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 5309
    iget-boolean v1, p1, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mEnable:Z

    if-nez v1, :cond_3

    .line 5311
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 5312
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mAct:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mContext:Landroid/content/Context;

    const v4, 0x7f090242

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5346
    :cond_2
    :goto_1
    iput-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mAct:Landroid/app/Activity;

    .line 5347
    iput-object v6, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 5317
    :cond_3
    iget-boolean v1, p1, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->bSuccess:Z

    if-nez v1, :cond_4

    .line 5319
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5320
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mAct:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mContext:Landroid/content/Context;

    const v4, 0x7f0903ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5328
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mAct:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_5

    .line 5329
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->this$0:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->showDialog(I)V

    .line 5332
    :cond_5
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const/4 v3, 0x0

    iget v4, p1, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;->mLocked:I

    iget-object v5, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mMsgItem:Lcom/android/mms/msg/AbstractMessage;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5335
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 5339
    .end local v0           #message:Landroid/os/Message;
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mAct:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->mContext:Landroid/content/Context;

    const v4, 0x7f0903ec

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5164
    check-cast p1, Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity$CopySmsToSimAsyncTask;->onPostExecute(Lcom/android/mms/ui/ComposeMessageActivity$SmsInfo;)V

    return-void
.end method
