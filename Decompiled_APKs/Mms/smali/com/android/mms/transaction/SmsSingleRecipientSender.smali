.class public Lcom/android/mms/transaction/SmsSingleRecipientSender;
.super Lcom/android/mms/transaction/SmsMessageSender;
.source "SmsSingleRecipientSender.java"


# static fields
.field private static final HTC_DEBUG:Z = false

.field public static final KEY_EXTRA_FIRST_MSG:Ljava/lang/String; = "first_msg"

.field public static final KEY_EXTRA_LAST_MSG:Ljava/lang/String; = "last_msg"

.field public static final KEY_EXTRA_PRIORITY_INTGER:Ljava/lang/String; = "priority_int"

.field public static final KEY_EXTRA_SINGLE_DEST_ADDR:Ljava/lang/String; = "single_dest"

.field public static final KEY_EXTRA_UPDATE_TIMESTAMP:Ljava/lang/String; = "update_time"

.field private static final TAG:Ljava/lang/String; = "SmsSingleRecipientSender"


# instance fields
.field private mDest:Ljava/lang/String;

.field private mFirstMsg:Z

.field private mGroupMsg:Lcom/android/mms/transaction/GroupMessage;

.field private mLastMsg:Z

.field private mMessageCount:I

.field private mPriNum:I

.field private final mRequestDeliveryReport:Z

.field private mUpdateTimestamp:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    iput-boolean v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUpdateTimestamp:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mGroupMsg:Lcom/android/mms/transaction/GroupMessage;

    .line 33
    iput v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriNum:I

    .line 34
    iput-boolean v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mFirstMsg:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mLastMsg:Z

    .line 36
    iput v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mMessageCount:I

    .line 57
    const-string v0, "status_report"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    .line 58
    const-string v0, "single_dest"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 60
    const-string v0, "update_time"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUpdateTimestamp:Z

    .line 61
    const-string v0, "priority_int"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriNum:I

    .line 62
    const-string v0, "first_msg"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mFirstMsg:Z

    .line 63
    const-string v0, "last_msg"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mLastMsg:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;)V
    .locals 7
    .parameter "context"
    .parameter "dest"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "requestDeliveryReport"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 31
    iput-boolean v6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUpdateTimestamp:Z

    .line 32
    iput-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mGroupMsg:Lcom/android/mms/transaction/GroupMessage;

    .line 33
    iput v6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriNum:I

    .line 34
    iput-boolean v6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mFirstMsg:Z

    .line 35
    iput-boolean v6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mLastMsg:Z

    .line 36
    iput v6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mMessageCount:I

    .line 48
    iput-boolean p6, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    .line 49
    iput-object p2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 50
    iput-object p7, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    .line 51
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 249
    return-void
.end method

.method private moveMessageToOutbox()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 256
    const/4 v6, 0x3

    .line 257
    .local v6, count:I
    iget-boolean v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUpdateTimestamp:Z

    if-eqz v0, :cond_0

    add-int/lit8 v6, v6, 0x1

    .line 258
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 259
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v0, "error_code"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    const-string v0, "type"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    iget-boolean v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUpdateTimestamp:Z

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "date"

    iget-wide v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    const-string v0, "date2"

    iget-wide v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 269
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUpdateTimestamp? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUpdateTimestamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v7, v0, :cond_2

    move v0, v7

    :goto_0
    return v0

    :cond_2
    move v0, v8

    goto :goto_0
.end method


# virtual methods
.method public getMessageCount()I
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mMessageCount:I

    return v0
.end method

.method public sendMessage(J)Z
    .locals 20
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v17

    .line 150
    .local v17, smsManager:Landroid/telephony/SmsManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/telephony/SmsMessage;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v15

    .line 155
    .local v15, nli:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableAccentConvert()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v15, -0x1

    .line 158
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 160
    .local v7, bundle:Landroid/os/Bundle;
    const-string v2, "NLI"

    invoke-virtual {v7, v2, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const/4 v4, 0x0

    .line 163
    .local v4, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mIsVcard:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v2, v3, v1, v7}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->divideMessage(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 167
    .local v13, messageCount:I
    if-nez v13, :cond_1

    .line 168
    const-string v2, ""

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    const/4 v13, 0x1

    .line 172
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->moveMessageToOutbox()Z

    move-result v14

    .line 174
    .local v14, moved:Z
    if-nez v14, :cond_2

    .line 175
    new-instance v2, Lcom/google/android/mms/MmsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SmsMessageSender.sendMessage: couldn\'t move message to outbox: "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    .local v6, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 181
    .local v5, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v13, :cond_7

    .line 182
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mRequestDeliveryReport:Z

    if-eqz v2, :cond_3

    .line 186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->getDeliveryIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v2, v3, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    if-nez v11, :cond_6

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mGroupMsg:Lcom/android/mms/transaction/GroupMessage;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->getSentIntent(Landroid/net/Uri;ZLcom/android/mms/transaction/GroupMessage;)Landroid/content/Intent;

    move-result-object v12

    .line 195
    .local v12, intent:Landroid/content/Intent;
    add-int/lit8 v2, v13, -0x1

    if-ne v11, v2, :cond_4

    .line 200
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mLastMsg:Z

    if-eqz v2, :cond_4

    .line 201
    const-string v2, "SendNextMsg"

    const/4 v3, 0x1

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUniqueIdOfSentIntent:I

    add-int/lit8 v18, v3, 0x1

    sput v18, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUniqueIdOfSentIntent:I

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v2, v3, v12, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    sget v2, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUniqueIdOfSentIntent:I

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    sput v2, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUniqueIdOfSentIntent:I

    .line 181
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 193
    .end local v12           #intent:Landroid/content/Intent;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 209
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->formatDestinaingAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 211
    const-string v2, "PRIORITY"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mPriNum:I

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 214
    const-string v2, "CALLBACK"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_9
    const-string v2, "FIRST_SMS"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mFirstMsg:Z

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    const-string v2, "LAST_SMS"

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mLastMsg:Z

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->sendSMS(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 221
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mMessageCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendMessage: address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mDest:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msgs.count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SmsSingleRecipientSender;->log(Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x0

    return v2

    .line 222
    :catch_0
    move-exception v10

    .line 225
    .local v10, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 226
    .local v8, cnt:I
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v8, :cond_a

    .line 227
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/PendingIntent;

    .line 228
    .local v16, pIntent:Landroid/app/PendingIntent;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 226
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 230
    .end local v8           #cnt:I
    .end local v16           #pIntent:Landroid/app/PendingIntent;
    :catch_1
    move-exception v9

    .line 231
    .local v9, e:Landroid/app/PendingIntent$CanceledException;
    const-string v2, "SmsSingleRecipientSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "pending intent canceled: "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v9           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_a
    const-string v2, "SmsSingleRecipientSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "SmsMessageSender.sendMessage: caught "

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v18, " from SmsManager.sendTextMessage()"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public setGroupMessage(Lcom/android/mms/transaction/GroupMessage;)V
    .locals 0
    .parameter "groupMsg"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/mms/transaction/SmsSingleRecipientSender;->mGroupMsg:Lcom/android/mms/transaction/GroupMessage;

    .line 277
    return-void
.end method
