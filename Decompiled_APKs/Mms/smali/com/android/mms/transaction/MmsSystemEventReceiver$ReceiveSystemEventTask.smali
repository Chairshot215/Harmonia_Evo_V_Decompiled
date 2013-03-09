.class Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;
.super Landroid/os/AsyncTask;
.source "MmsSystemEventReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/transaction/MmsSystemEventReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReceiveSystemEventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Intent;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 161
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    .line 163
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    check-cast p1, [Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->doInBackground([Landroid/content/Intent;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Intent;)Ljava/lang/Void;
    .locals 23
    .parameter "intents"

    .prologue
    .line 167
    const/16 v19, 0x0

    aget-object v10, p1, v19

    .line 168
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, action:Ljava/lang/String;
    const-string v19, "android.intent.action.CONTENT_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 175
    invoke-static {}, Lcom/android/mms/util/MessageCache;->getInstance()Lcom/android/mms/util/MessageCache;

    move-result-object v12

    .line 176
    .local v12, msgCache:Lcom/android/mms/util/MessageCache;
    invoke-static {}, Lcom/google/android/mms/util/PduCache;->getInstance()Lcom/google/android/mms/util/PduCache;

    move-result-object v15

    .line 177
    .local v15, pduCache:Lcom/google/android/mms/util/PduCache;
    const-string v19, "invalidated"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v9

    .line 178
    .local v9, ids:[J
    if-eqz v9, :cond_0

    .line 179
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    .line 181
    const-string v19, "MmsSystemEventReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "INVALIDATED_CONTENTS:mms cache update: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-wide v21, v9, v8

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :try_start_0
    aget-wide v19, v9, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/mms/util/MessageCache;->invalidate(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    aget-wide v19, v9, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/google/android/mms/util/PduCache;->invalidate(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 191
    :catch_0
    move-exception v5

    .line 192
    .local v5, e:Ljava/lang/NullPointerException;
    const-string v19, "ReceiveSystemEventTask"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "try to invalidate content at invalid position : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-wide v21, v9, v8

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 196
    .end local v5           #e:Ljava/lang/NullPointerException;
    .end local v8           #i:I
    :cond_0
    const-string v19, "deleted_contents"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v9

    .line 197
    if-eqz v9, :cond_2

    .line 198
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    array-length v0, v9

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 200
    const-string v19, "MmsSystemEventReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "DELETED_CONTENTS:mms cache update: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-wide v21, v9, v8

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :try_start_1
    aget-wide v19, v9, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/mms/util/MessageCache;->invalidate(Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    aget-wide v19, v9, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/google/android/mms/util/PduCache;->invalidate(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 198
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 208
    :catch_1
    move-exception v5

    .line 209
    .restart local v5       #e:Ljava/lang/NullPointerException;
    const-string v19, "ReceiveSystemEventTask"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "try to delete content at invalid position : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-wide v21, v9, v8

    invoke-virtual/range {v20 .. v22}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 214
    .end local v5           #e:Ljava/lang/NullPointerException;
    .end local v8           #i:I
    .end local v9           #ids:[J
    .end local v12           #msgCache:Lcom/android/mms/util/MessageCache;
    .end local v15           #pduCache:Lcom/google/android/mms/util/PduCache;
    :cond_1
    const-string v19, "android.intent.action.PHONE_STATE"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 215
    const-string v19, "state"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 217
    .local v18, state:Ljava/lang/String;
    const-string v19, "MmsSystemEventReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "PHONE_STATE_CHANGED event received: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-object v19, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/mms/ui/MessageUtils;->isNetworkAvailable(Landroid/content/Context;IZ)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 221
    const-string v19, "MmsSystemEventReceiver"

    const-string v20, "wakeUpService"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    #calls: Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000(Landroid/content/Context;)V

    .line 317
    .end local v18           #state:Ljava/lang/String;
    :cond_2
    :goto_4
    const/16 v19, 0x0

    return-object v19

    .line 225
    :cond_3
    const-string v19, "android.intent.action.ANY_DATA_STATE"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 226
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSendPendingUnderNoNetwork()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 229
    const-string v19, "state"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 232
    .restart local v18       #state:Ljava/lang/String;
    const-string v19, "MmsSystemEventReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "ANY_DATA_STATE event received: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v19, "CONNECTED"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/mms/ui/MessageUtils;->isNetworkAvailable(Landroid/content/Context;IZ)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 237
    :cond_4
    const-string v19, "MmsSystemEventReceiver"

    const-string v20, "wakeUpService"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    #calls: Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000(Landroid/content/Context;)V

    goto :goto_4

    .line 242
    .end local v18           #state:Ljava/lang/String;
    :cond_5
    const-string v19, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 247
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    cmpl-double v19, v19, v21

    if-ltz v19, :cond_6

    invoke-static {}, Lcom/android/mms/MmsApp;->isNeedWriteToSystemSetting()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 249
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v4

    .line 250
    .local v4, cr:Lcom/android/mms/model/ContentRestriction;
    invoke-interface {v4}, Lcom/android/mms/model/ContentRestriction;->getMessageSizeLimit()I

    move-result v13

    .line 251
    .local v13, msgSizeLimit:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "pref_key_mms_max_size"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v19 .. v21}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 254
    invoke-static {}, Lcom/android/mms/MmsApp;->doneWriteToSystemSetting()V

    .line 258
    .end local v4           #cr:Lcom/android/mms/model/ContentRestriction;
    .end local v13           #msgSizeLimit:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/util/MsgForwardHelper;->updateForwardIndicator(Landroid/content/Context;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    #calls: Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 264
    :cond_7
    const-string v19, "android.provider.Telephony.RTT_EVDO_error"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 267
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    sget-short v19, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v20, 0xa8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 269
    const-string v19, "Jerry"

    const-string v20, "get RTT_EVDO_ERROR"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v19, "msg_id"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    .line 271
    .local v14, msg_id:I
    const-string v19, "errorCode"

    const/16 v20, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 272
    .local v7, errorCode:I
    const-string v19, "Jerry"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MmsSystemEventReceiver msg_id >"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v19, "Jerry"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "MmsSystemEventReceiver errorCode >"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v6, Lcom/android/mms/transaction/CDMATransportError;

    invoke-direct {v6, v14, v7}, Lcom/android/mms/transaction/CDMATransportError;-><init>(II)V

    .line 277
    .local v6, error:Lcom/android/mms/transaction/CDMATransportError;
    invoke-static {v6}, Lcom/android/mms/transaction/CDMATransportError;->setLastError(Lcom/android/mms/transaction/CDMATransportError;)V

    goto/16 :goto_4

    .line 281
    .end local v6           #error:Lcom/android/mms/transaction/CDMATransportError;
    .end local v7           #errorCode:I
    .end local v14           #msg_id:I
    :cond_8
    const-string v19, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_b

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    .line 284
    .local v11, localestr:Ljava/lang/String;
    #calls: Lcom/android/mms/transaction/MmsSystemEventReceiver;->updateCBlocale(Ljava/lang/String;)V
    invoke-static {v11}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$100(Ljava/lang/String;)V

    .line 288
    const-string v19, "MmsSystemEventReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Locale changed to >"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportAccentConvert()Z

    move-result v19

    if-eqz v19, :cond_a

    const/16 v19, 0x34

    invoke-static/range {v19 .. v19}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "com.android.mms.customizationBySIM"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 293
    .local v17, sp:Landroid/content/SharedPreferences;
    const-string v19, "Finished_Customize"

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    if-nez v19, :cond_a

    .line 294
    const-string v19, "MmsSystemEventReceiver"

    const-string v20, "CUSTOMIZATION_FINISHED_IT> false"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v19, "fr_"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    const-string v19, "fr"

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a

    .line 297
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const-string v20, "com.android.mms_preferences"

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 299
    .local v16, preference:Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "pref_key_sms_characters"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 300
    const-string v19, "MmsSystemEventReceiver"

    const-string v20, "set SMS Characters default value unchecked for HTC French locale"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v16           #preference:Landroid/content/SharedPreferences;
    .end local v17           #sp:Landroid/content/SharedPreferences;
    :cond_a
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportChineseFontSizeEnlarged()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/mms/util/TextSizeManager;->reset(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 313
    .end local v11           #localestr:Ljava/lang/String;
    :cond_b
    const-string v19, "android.intent.action.QUICKBOOT_POWERON"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/MmsSystemEventReceiver$ReceiveSystemEventTask;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    #calls: Lcom/android/mms/transaction/MmsSystemEventReceiver;->wakeUpService(Landroid/content/Context;)V
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->access$000(Landroid/content/Context;)V

    goto/16 :goto_4
.end method
