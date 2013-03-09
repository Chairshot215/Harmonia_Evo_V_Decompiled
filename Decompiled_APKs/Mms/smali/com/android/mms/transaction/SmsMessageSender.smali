.class public Lcom/android/mms/transaction/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final COLUMN_REPLY_PATH_PRESENT:I = 0x0

.field private static final COLUMN_SERVICE_CENTER:I = 0x1

.field private static final DATE_PROJECTION:[Ljava/lang/String; = null

.field private static final DEFAULT_DELIVERY_REPORT_MODE:Z = false

.field private static final HTC_DEBUG:Z = false

.field public static final KDDI_INTENT_KEY_SEND_MODE:Ljava/lang/String; = "send_mode"

.field public static final KEY_EXTRA_ACK_DM:Ljava/lang/String; = "ack_dm"

.field public static final KEY_EXTRA_BODY:Ljava/lang/String; = "msg"

.field public static final KEY_EXTRA_CALLBACK:Ljava/lang/String; = "callback"

.field public static final KEY_EXTRA_DELIVERY_REPORT:Ljava/lang/String; = "status_report"

.field public static final KEY_EXTRA_DEST_ADDR:Ljava/lang/String; = "dest"

.field public static final KEY_EXTRA_MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final KEY_EXTRA_PRIORITY:Ljava/lang/String; = "priority"

.field public static final KEY_EXTRA_REAL_THREAD_ID:Ljava/lang/String; = "real_threadId"

.field public static final KEY_EXTRA_THREAD_ID:Ljava/lang/String; = "threadId"

.field public static final KEY_EXTRA_VCARD:Ljava/lang/String; = "vcard"

.field public static final MOVILNET_CALLBACK_INSTANCE158:Ljava/lang/String; = "158"

.field public static final MOVILNET_CALLBACK_INSTANCE199:Ljava/lang/String; = "199"

.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "SmsMessageSender"

.field static final VCARD_DESTINATION_PORT:S = 0x23f4s

.field protected static mUniqueIdOfSentIntent:I


# instance fields
.field private final ID_PROJECTION:[Ljava/lang/String;

.field protected mCallback:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field private final mDests:[Ljava/lang/String;

.field protected mIntent:Landroid/content/Intent;

.field protected mIsVcard:Z

.field protected final mMessageText:Ljava/lang/String;

.field private mMessageUri:Landroid/net/Uri;

.field protected mMsgIds:[J

.field private mNeedAck:I

.field protected final mNumberOfDests:I

.field protected mPriority:Ljava/lang/String;

.field protected mRealThreadId:J

.field private final mSendMode:I

.field protected mServiceCenter:Ljava/lang/String;

.field protected final mThreadId:J

.field protected mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "reply_path_present"

    aput-object v1, v0, v2

    const-string v1, "service_center"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    .line 143
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "date"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->DATE_PROJECTION:[Ljava/lang/String;

    .line 151
    sput v2, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 225
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:Ljava/lang/String;

    .line 98
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    .line 99
    const/4 v6, -0x1

    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNeedAck:I

    .line 101
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mIsVcard:Z

    .line 112
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    .line 113
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMsgIds:[J

    .line 115
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mIntent:Landroid/content/Intent;

    .line 353
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "address"

    aput-object v8, v6, v7

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->ID_PROJECTION:[Ljava/lang/String;

    .line 227
    const/4 v3, 0x0

    .line 229
    .local v3, needAck:Ljava/lang/String;
    :try_start_0
    const-string v6, "ack_dm"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 231
    :goto_0
    const-string v6, "dest"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, dests:[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 233
    const-string v6, "dest"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, destAddress:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 235
    const/4 v6, 0x1

    new-array v1, v6, [Ljava/lang/String;

    .end local v1           #dests:[Ljava/lang/String;
    const/4 v6, 0x0

    aput-object v0, v1, v6

    .line 238
    .end local v0           #destAddress:Ljava/lang/String;
    .restart local v1       #dests:[Ljava/lang/String;
    :cond_0
    const-string v6, "msg"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, msgText:Ljava/lang/String;
    const-string v6, "threadId"

    const-wide/16 v7, -0x1

    invoke-virtual {p2, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 241
    .local v4, threadId:J
    const-string v6, "vcard"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mIsVcard:Z

    .line 242
    const-string v6, "priority"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:Ljava/lang/String;

    .line 243
    const-string v6, "callback"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    .line 244
    if-eqz v3, :cond_3

    .line 245
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNeedAck:I

    .line 250
    :goto_1
    iput-object p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 251
    iput-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 252
    if-eqz v1, :cond_4

    .line 253
    array-length v6, v1

    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 254
    iget v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 255
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v8, 0x0

    iget v9, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {v1, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    .line 263
    const-string v6, "real_threadId"

    const-wide/16 v7, -0x1

    invoke-virtual {p2, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    .line 264
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 269
    if-eqz v1, :cond_1

    .line 271
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 275
    :goto_3
    iget-wide v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    iget-wide v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    :goto_4
    iput-wide v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    .line 279
    :cond_1
    iput-wide v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 292
    :goto_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    .line 293
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 297
    :goto_6
    const-string v6, "msg_id"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMsgIds:[J

    .line 299
    iget-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMsgIds:[J

    if-eqz v6, :cond_2

    .line 300
    iget-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMsgIds:[J

    array-length v6, v6

    iget v7, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-eq v6, v7, :cond_2

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMsgIds:[J

    .line 306
    :cond_2
    const-string v6, "send_mode"

    sget v7, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_SEND_MODE_TRANSACTION:I

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendMode:I

    .line 309
    iput-object p2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mIntent:Landroid/content/Intent;

    .line 310
    return-void

    .line 248
    :cond_3
    const-string v6, "ack_dm"

    const/4 v7, -0x1

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNeedAck:I

    goto :goto_1

    .line 258
    :cond_4
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 259
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    goto :goto_2

    .line 271
    :cond_5
    new-instance v6, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v6}, Landroid/provider/Telephony$Threads;->getOrCreateThreadIdV2(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    goto :goto_3

    .line 275
    :cond_6
    new-instance v6, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v6}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v6

    goto :goto_4

    .line 282
    :cond_7
    if-eqz v1, :cond_8

    .line 283
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_9

    .line 287
    :cond_8
    :goto_7
    iput-wide v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 288
    iput-wide v4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    goto :goto_5

    .line 283
    :cond_9
    new-instance v6, Ljava/util/HashSet;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v6}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v4

    goto :goto_7

    .line 295
    :cond_a
    iget-wide v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    invoke-direct {p0, v6, v7}, Lcom/android/mms/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    goto :goto_6

    .line 230
    .end local v1           #dests:[Ljava/lang/String;
    .end local v2           #msgText:Ljava/lang/String;
    .end local v4           #threadId:J
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"

    .prologue
    .line 162
    sget v6, Lcom/android/mms/custom/CustomizedManager$KddiSmsManager;->KDDI_SEND_MODE_TRANSACTION:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 4
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "sendMode"

    .prologue
    .line 168
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNeedAck:I

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mIsVcard:Z

    .line 112
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMsgIds:[J

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mIntent:Landroid/content/Intent;

    .line 353
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->ID_PROJECTION:[Ljava/lang/String;

    .line 171
    iput-object p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 172
    iput-object p3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 173
    if-eqz p2, :cond_2

    .line 174
    array-length v0, p2

    iput v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 175
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 176
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    .line 184
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 190
    if-eqz p2, :cond_0

    .line 192
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_3

    .line 196
    :goto_1
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    .line 199
    :cond_0
    iput-wide p4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 200
    if-nez p2, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    .line 213
    :cond_1
    :goto_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 219
    :goto_3
    iput p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mSendMode:I

    .line 222
    return-void

    .line 179
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    goto :goto_0

    .line 192
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadIdV2(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide p4

    goto :goto_1

    .line 203
    :cond_4
    if-eqz p2, :cond_5

    .line 204
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_6

    .line 208
    :cond_5
    :goto_4
    iput-wide p4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 209
    iput-wide p4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    goto :goto_2

    .line 204
    :cond_6
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, v0}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide p4

    goto :goto_4

    .line 216
    :cond_7
    iget-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    goto :goto_3
.end method

.method private getCallback(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 1
    .parameter "prefs"
    .parameter "callback"
    .parameter "values"

    .prologue
    .line 1157
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1159
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsMessageSender;->getCallbackNumber(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1160
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1161
    if-nez p3, :cond_0

    new-instance p3, Landroid/content/ContentValues;

    .end local p3
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 1162
    .restart local p3
    :cond_0
    const-string v0, "callback_number"

    invoke-virtual {p3, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    :cond_1
    return-object p2
.end method

.method private getCallbackNumber(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "prefs"
    .parameter "callback"

    .prologue
    const/4 v5, 0x3

    .line 1640
    if-nez p1, :cond_0

    .line 1641
    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1643
    :cond_0
    if-nez p2, :cond_1

    .line 1644
    const-string v2, "pref_key_sms_callback"

    const/4 v3, 0x1

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1647
    .local v0, callbackChecked:Z
    if-eqz v0, :cond_1

    .line 1648
    const-string v2, "pref_key_set_callback"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1653
    .end local v0           #callbackChecked:Z
    :cond_1
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send callback num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_3

    :cond_2
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x62

    if-eq v2, v3, :cond_3

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x28

    if-ne v2, v3, :cond_5

    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_5

    .line 1661
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1662
    .local v1, pre3digit:Ljava/lang/String;
    const-string v2, "158"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0416"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1667
    :cond_4
    :goto_0
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replace callback num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    .end local v1           #pre3digit:Ljava/lang/String;
    :cond_5
    invoke-static {p2}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1674
    return-object p2

    .line 1664
    .restart local v1       #pre3digit:Ljava/lang/String;
    :cond_6
    const-string v2, "199"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1665
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0426"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private getCanonicalAddressCursor()Landroid/database/Cursor;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 355
    const/4 v7, 0x0

    .line 358
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 359
    .local v2, CANONICALADDRESS_URI:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/transaction/SmsMessageSender;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 370
    .end local v2           #CANONICALADDRESS_URI:Landroid/net/Uri;
    :goto_0
    if-eqz v7, :cond_1

    .line 371
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 377
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_1
    return-object v7

    .line 363
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 364
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "SmsMessageSender"

    const-string v1, "get the Canonical address table exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 366
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    throw v0

    .line 374
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v7, v9

    .line 377
    goto :goto_1
.end method

.method private getEmailBody(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .parameter "messageBody"
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1933
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1934
    .local v0, emailBody:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1935
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1936
    .local v1, emailMsgBody:Ljava/lang/String;
    const-string v3, "SmsMessageSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "email messge body: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    return-object v0
.end method

.method public static getEmailBodyLimit(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 10
    .parameter "message"
    .parameter "mailAddress"
    .parameter "nli"

    .prologue
    const/4 v9, 0x2

    const/16 v4, 0x8c

    const/16 v2, 0xa0

    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 1946
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 1949
    .local v0, activePhone:I
    if-eqz p0, :cond_0

    move-object v1, p0

    .line 1951
    .local v1, data:Ljava/lang/String;
    :goto_0
    if-ne v9, v0, :cond_2

    const/4 v5, 0x0

    invoke-static {v1, v5, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v3

    .line 1961
    .local v3, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :goto_1
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x94

    if-ne v5, v6, :cond_3

    .line 1962
    const/16 v2, 0xa0

    .line 1996
    .local v2, limit:I
    :goto_2
    return v2

    .line 1949
    .end local v1           #data:Ljava/lang/String;
    .end local v2           #limit:I
    .end local v3           #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 1951
    .restart local v1       #data:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    invoke-static {v1, v5, p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v3

    goto :goto_1

    .line 1964
    .restart local v3       #ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConcatenatedEmailSms()Z

    move-result v5

    if-ne v5, v7, :cond_12

    .line 1965
    iget v5, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-le v5, v7, :cond_9

    .line 1966
    if-ne p2, v9, :cond_6

    .line 1967
    iget v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v4, v7, :cond_5

    if-ne p2, v8, :cond_4

    const/16 v2, 0x99

    .restart local v2       #limit:I
    :goto_3
    goto :goto_2

    .end local v2           #limit:I
    :cond_4
    const/16 v2, 0x95

    goto :goto_3

    :cond_5
    const/16 v2, 0x86

    goto :goto_3

    .line 1970
    :cond_6
    iget v4, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v4, v7, :cond_8

    if-ne p2, v8, :cond_7

    const/16 v2, 0x99

    .restart local v2       #limit:I
    :goto_4
    goto :goto_2

    .end local v2           #limit:I
    :cond_7
    const/16 v2, 0x92

    goto :goto_4

    :cond_8
    const/16 v2, 0x86

    goto :goto_4

    .line 1973
    :cond_9
    if-ne p2, v9, :cond_c

    .line 1974
    iget v5, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v7, :cond_b

    if-ne p2, v8, :cond_a

    .restart local v2       #limit:I
    :goto_5
    goto :goto_2

    .end local v2           #limit:I
    :cond_a
    const/16 v2, 0x9b

    goto :goto_5

    :cond_b
    move v2, v4

    goto :goto_5

    .line 1976
    :cond_c
    const/16 v5, 0xe

    if-ne p2, v5, :cond_f

    .line 1977
    iget v5, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v7, :cond_e

    if-ne p2, v8, :cond_d

    .restart local v2       #limit:I
    :cond_d
    :goto_6
    goto :goto_2

    .end local v2           #limit:I
    :cond_e
    move v2, v4

    goto :goto_6

    .line 1980
    :cond_f
    iget v5, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v7, :cond_11

    if-ne p2, v8, :cond_10

    .restart local v2       #limit:I
    :goto_7
    goto :goto_2

    .end local v2           #limit:I
    :cond_10
    const/16 v2, 0x98

    goto :goto_7

    :cond_11
    move v2, v4

    goto :goto_7

    .line 1984
    :cond_12
    if-ne p2, v9, :cond_15

    .line 1985
    iget v5, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v7, :cond_14

    if-ne p2, v8, :cond_13

    .restart local v2       #limit:I
    :goto_8
    goto :goto_2

    .end local v2           #limit:I
    :cond_13
    const/16 v2, 0x9b

    goto :goto_8

    :cond_14
    move v2, v4

    goto :goto_8

    .line 1987
    :cond_15
    const/16 v5, 0xe

    if-ne p2, v5, :cond_18

    .line 1988
    iget v5, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v7, :cond_17

    if-ne p2, v8, :cond_16

    .restart local v2       #limit:I
    :cond_16
    :goto_9
    goto/16 :goto_2

    .end local v2           #limit:I
    :cond_17
    move v2, v4

    goto :goto_9

    .line 1991
    :cond_18
    iget v5, v3, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-ne v5, v7, :cond_1a

    if-ne p2, v8, :cond_19

    .restart local v2       #limit:I
    :goto_a
    goto/16 :goto_2

    .end local v2           #limit:I
    :cond_19
    const/16 v2, 0x98

    goto :goto_a

    :cond_1a
    move v2, v4

    goto :goto_a
.end method

.method private getMultiEmailBody(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .parameter "messageBody"
    .parameter "emailAddress"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 2001
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2002
    .local v4, mutliEmailBody:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2003
    .local v3, messagePart:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v6}, Landroid/telephony/SmsMessage;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v2

    .line 2004
    .local v2, mNli:I
    const/4 v0, 0x0

    .line 2005
    .local v0, counter:I
    invoke-static {p1, p2, v2}, Lcom/android/mms/transaction/SmsMessageSender;->getEmailBodyLimit(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 2007
    .local v1, limit:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_1

    .line 2009
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2010
    invoke-static {v3, v9, v2}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;ZI)[I

    move-result-object v5

    .line 2011
    .local v5, params:[I
    aget v6, v5, v9

    if-ne v6, v1, :cond_0

    .line 2012
    const-string v6, "SmsMessageSender"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "messagePart 1>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2013
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2015
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2007
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2020
    .end local v5           #params:[I
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 2021
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    :cond_2
    return-object v4
.end method

.method private getOutgoingServiceCenter(J)Ljava/lang/String;
    .locals 11
    .parameter "threadId"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1907
    const/4 v7, 0x0

    .line 1914
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1918
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 1925
    :cond_0
    if-eqz v7, :cond_1

    .line 1926
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v9

    :cond_2
    :goto_0
    return-object v0

    .line 1922
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v8, v0, :cond_4

    .line 1923
    .local v8, replyPathPresent:Z
    :goto_1
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 1925
    :goto_2
    if-eqz v7, :cond_2

    .line 1926
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #replyPathPresent:Z
    :cond_4
    move v8, v10

    .line 1922
    goto :goto_1

    .restart local v8       #replyPathPresent:Z
    :cond_5
    move-object v0, v9

    .line 1923
    goto :goto_2

    .line 1925
    .end local v8           #replyPathPresent:Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 1926
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private getPriority(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 4
    .parameter "prefs"
    .parameter "priStr"

    .prologue
    .line 1623
    if-nez p1, :cond_0

    .line 1624
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1626
    :cond_0
    const/4 v0, 0x0

    .line 1627
    .local v0, priority:I
    if-nez p2, :cond_1

    .line 1628
    const-string v1, "pref_key_sms_priority"

    const-string v2, "normal"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1632
    :cond_1
    const-string v1, "SmsMessageSender"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "priority > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    const-string v1, "normal"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1634
    const/4 v0, 0x2

    .line 1636
    :cond_2
    return v0
.end method

.method private getPriority(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3
    .parameter "prefs"
    .parameter "priStr"
    .parameter "values"

    .prologue
    .line 1143
    const/4 v0, 0x0

    .line 1144
    .local v0, priority:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1146
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/SmsMessageSender;->getPriority(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    .line 1147
    if-lez v0, :cond_1

    .line 1148
    if-nez p3, :cond_0

    new-instance p3, Landroid/content/ContentValues;

    .end local p3
    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    .line 1149
    .restart local p3
    :cond_0
    const-string v1, "priority"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1152
    :cond_1
    return v0
.end method

.method private isEmailAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 2038
    if-eqz p1, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveMessageToQueue(JZLandroid/content/ContentValues;)Landroid/net/Uri;
    .locals 9
    .parameter "msgId"
    .parameter "requestDeliveryReport"
    .parameter "values"

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1170
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 1191
    :goto_0
    return-object v4

    .line 1171
    :cond_0
    if-nez p4, :cond_1

    .line 1172
    const/4 v6, 0x5

    .line 1174
    .local v6, count:I
    new-instance p4, Landroid/content/ContentValues;

    .end local p4
    invoke-direct {p4, v6}, Landroid/content/ContentValues;-><init>(I)V

    .line 1176
    .end local v6           #count:I
    .restart local p4
    :cond_1
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1177
    .local v2, msgUri:Landroid/net/Uri;
    const-string v0, "error_code"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1178
    const-string v0, "type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1179
    const-string v0, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1180
    const-string v0, "index_on_sim"

    const-string v1, ""

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    if-eqz p3, :cond_2

    .line 1182
    const-string v0, "status"

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1185
    :cond_2
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v3, p4

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 1187
    .local v7, result:I
    if-eq v7, v8, :cond_3

    .line 1188
    const-string v0, "SmsMessageSender"

    const-string v1, "move to queue fail> "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object v4, v2

    .line 1191
    goto :goto_0
.end method

.method private packageBundle(Landroid/os/Bundle;II)V
    .locals 3
    .parameter "bundle"
    .parameter "numOfDest"
    .parameter "idx"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1518
    if-ne p2, v1, :cond_0

    .line 1519
    const-string v0, "FIRST_SMS"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1520
    const-string v0, "LAST_SMS"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1531
    :goto_0
    return-void

    .line 1521
    :cond_0
    if-nez p3, :cond_1

    .line 1522
    const-string v0, "FIRST_SMS"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1523
    const-string v0, "LAST_SMS"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1524
    :cond_1
    add-int/lit8 v0, p2, -0x1

    if-ne p3, v0, :cond_2

    .line 1525
    const-string v0, "FIRST_SMS"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1526
    const-string v0, "LAST_SMS"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1528
    :cond_2
    const-string v0, "FIRST_SMS"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1529
    const-string v0, "LAST_SMS"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private queueMessage(J)Z
    .locals 25
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1197
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v2, v3, :cond_1

    .line 1199
    :cond_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SmsManager;->updateNvItem()V

    .line 1201
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->sortDestinatingAddrs([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1203
    .local v14, AllRecipient:Ljava/lang/String;
    const/16 v16, 0x0

    .line 1204
    .local v16, groupMessage:Lcom/android/mms/transaction/GroupMessage;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1205
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1206
    new-instance v16, Lcom/android/mms/transaction/GroupMessage;

    .end local v16           #groupMessage:Lcom/android/mms/transaction/GroupMessage;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/GroupMessage;-><init>(I)V

    .line 1207
    .restart local v16       #groupMessage:Lcom/android/mms/transaction/GroupMessage;
    invoke-static/range {v16 .. v16}, Lcom/android/mms/transaction/MessagingNotification;->addGroupMessage(Lcom/android/mms/transaction/GroupMessage;)V

    .line 1209
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_2

    .line 1210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v17

    const/4 v3, 0x0

    sget-object v4, Lcom/android/mms/transaction/GroupMessage$Status;->IDLE:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/GroupMessage;->updateStatus(ILjava/lang/String;Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V

    .line 1209
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1216
    .end local v17           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 1217
    .local v21, prefs:Landroid/content/SharedPreferences;
    const/4 v9, 0x0

    .line 1218
    .local v9, requestDeliveryReport:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSDeliverReport()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1219
    const-string v2, "pref_key_sms_delivery_reports"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 1224
    :cond_3
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move/from16 v0, v17

    if-ge v0, v2, :cond_11

    .line 1225
    const/4 v13, 0x0

    .line 1229
    .local v13, values:Landroid/content/ContentValues;
    const/16 v22, 0x0

    .line 1230
    .local v22, priority:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsMessageSender;->getPriority(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v22

    .line 1233
    if-lez v22, :cond_5

    .line 1234
    if-nez v13, :cond_4

    new-instance v13, Landroid/content/ContentValues;

    .end local v13           #values:Landroid/content/ContentValues;
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1235
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_4
    const-string v2, "priority"

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1242
    :cond_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/SmsMessageSender;->getCallbackNumber(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    .line 1245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 1246
    if-nez v13, :cond_6

    new-instance v13, Landroid/content/ContentValues;

    .end local v13           #values:Landroid/content/ContentValues;
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 1247
    .restart local v13       #values:Landroid/content/ContentValues;
    :cond_6
    const-string v2, "callback_number"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move-object/from16 v24, v13

    .line 1253
    .end local v13           #values:Landroid/content/ContentValues;
    .local v24, values:Landroid/content/ContentValues;
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 1254
    .local v10, threadId:J
    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v23

    .line 1255
    .local v23, uriBuilder:Landroid/net/Uri$Builder;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1258
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mRealThreadId:J

    .line 1262
    :cond_8
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMsgIds:[J

    if-eqz v2, :cond_9

    .line 1265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMsgIds:[J

    aget-wide v2, v2, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v3, v9, v1}, Lcom/android/mms/transaction/SmsMessageSender;->moveMessageToQueue(JZLandroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 1267
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_16

    .line 1268
    if-nez v24, :cond_15

    new-instance v13, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/content/ContentValues;-><init>(I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1270
    .end local v24           #values:Landroid/content/ContentValues;
    .restart local v13       #values:Landroid/content/ContentValues;
    :goto_3
    :try_start_1
    const-string v2, "gid"

    new-instance v3, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v13, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    const-string v12, ""

    invoke-static/range {v2 .. v13}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 1281
    :goto_4
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSmsSent for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->updateVcardCache(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1290
    .end local v10           #threadId:J
    .end local v23           #uriBuilder:Landroid/net/Uri$Builder;
    :goto_5
    if-eqz v16, :cond_a

    .line 1291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v17

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/GroupMessage$Status;->SENT:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/GroupMessage;->updateStatus(ILjava/lang/String;Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V

    .line 1295
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMsgIds:[J

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMsgIds:[J

    aget-wide v18, v2, v17

    .line 1296
    .local v18, msgId:J
    :goto_6
    new-instance v20, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNeedAck:I

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;-><init>(ILcom/android/mms/transaction/GroupMessage;)V

    .line 1299
    .local v20, obj:Lcom/android/mms/transaction/SmsReceiverService$SenderObject;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f

    .line 1300
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->grpFirst:Z

    .line 1301
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->grpLast:Z

    .line 1308
    :cond_b
    :goto_7
    sget-object v2, Lcom/android/mms/transaction/SmsReceiverService;->sMsgSenderList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1313
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v17

    move/from16 v0, v22

    invoke-static {v2, v3, v0, v14}, Lcom/android/mms/transaction/SmsReceiverService;->updateThreadTablePriority(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 1224
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 1259
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v18           #msgId:J
    .end local v20           #obj:Lcom/android/mms/transaction/SmsReceiverService$SenderObject;
    .restart local v10       #threadId:J
    .restart local v23       #uriBuilder:Landroid/net/Uri$Builder;
    .restart local v24       #values:Landroid/content/ContentValues;
    :cond_d
    :try_start_2
    const-string v2, "v2"

    const-string v3, "true"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 1285
    .end local v10           #threadId:J
    .end local v23           #uriBuilder:Landroid/net/Uri$Builder;
    :catch_0
    move-exception v15

    move-object/from16 v13, v24

    .line 1286
    .end local v24           #values:Landroid/content/ContentValues;
    .restart local v13       #values:Landroid/content/ContentValues;
    .local v15, e:Landroid/database/sqlite/SQLiteException;
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2, v15}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_5

    .line 1295
    .end local v15           #e:Landroid/database/sqlite/SQLiteException;
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v18

    goto :goto_6

    .line 1302
    .restart local v18       #msgId:J
    .restart local v20       #obj:Lcom/android/mms/transaction/SmsReceiverService$SenderObject;
    :cond_f
    if-nez v17, :cond_10

    .line 1303
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->grpFirst:Z

    goto :goto_7

    .line 1304
    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v17

    if-ne v0, v2, :cond_b

    .line 1305
    const/4 v2, 0x1

    move-object/from16 v0, v20

    iput-boolean v2, v0, Lcom/android/mms/transaction/SmsReceiverService$SenderObject;->grpLast:Z

    goto :goto_7

    .line 1319
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v18           #msgId:J
    .end local v20           #obj:Lcom/android/mms/transaction/SmsReceiverService$SenderObject;
    .end local v22           #priority:I
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1320
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->sendSMSSentLog(I)V

    .line 1321
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->sendMsgCountLog(Landroid/content/Context;)V

    .line 1326
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v7, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1332
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_13

    .line 1333
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1334
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByContactId(Landroid/content/Context;J)V

    .line 1338
    :cond_13
    :goto_9
    const/4 v2, 0x0

    return v2

    .line 1336
    :cond_14
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    goto :goto_9

    .line 1285
    .restart local v10       #threadId:J
    .restart local v13       #values:Landroid/content/ContentValues;
    .restart local v22       #priority:I
    .restart local v23       #uriBuilder:Landroid/net/Uri$Builder;
    :catch_1
    move-exception v15

    goto/16 :goto_8

    .end local v13           #values:Landroid/content/ContentValues;
    .restart local v24       #values:Landroid/content/ContentValues;
    :cond_15
    move-object/from16 v13, v24

    .end local v24           #values:Landroid/content/ContentValues;
    .restart local v13       #values:Landroid/content/ContentValues;
    goto/16 :goto_3

    .end local v13           #values:Landroid/content/ContentValues;
    .restart local v24       #values:Landroid/content/ContentValues;
    :cond_16
    move-object/from16 v13, v24

    .end local v24           #values:Landroid/content/ContentValues;
    .restart local v13       #values:Landroid/content/ContentValues;
    goto/16 :goto_4
.end method

.method private sortDestinatingAddrs([Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .parameter "dests"
    .parameter "numOfDests"

    .prologue
    .line 1534
    const/4 v0, 0x0

    .line 1536
    .local v0, AllRecipient:Ljava/lang/String;
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    .line 1538
    invoke-virtual {p0, p1}, Lcom/android/mms/transaction/SmsMessageSender;->sortArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1540
    .local v2, sortedDest:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1541
    if-nez v1, :cond_0

    .line 1542
    aget-object v0, v2, v1

    .line 1540
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1544
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1548
    .end local v1           #i:I
    .end local v2           #sortedDest:[Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    aget-object v0, p1, v3

    .line 1552
    :cond_2
    return-object v0
.end method

.method private updatePriorityAndCallback(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "prefs"
    .parameter "dest"
    .parameter "msgUri"
    .parameter "pri"
    .parameter "callback"
    .parameter "AllRecipient"
    .parameter "bundle"

    .prologue
    .line 1681
    if-nez p1, :cond_0

    .line 1682
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1684
    :cond_0
    const/4 v0, 0x0

    .line 1685
    .local v0, priority:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1687
    invoke-direct {p0, p1, p4}, Lcom/android/mms/transaction/SmsMessageSender;->getPriority(Landroid/content/SharedPreferences;Ljava/lang/String;)I

    move-result v0

    .line 1689
    if-eqz p7, :cond_1

    const-string v1, "PRIORITY"

    invoke-virtual {p7, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1693
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1695
    invoke-direct {p0, p1, p5}, Lcom/android/mms/transaction/SmsMessageSender;->getCallbackNumber(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 1697
    if-eqz p7, :cond_2

    const-string v1, "CALLBACK"

    invoke-virtual {p7, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    :cond_2
    if-gtz v0, :cond_3

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1702
    :cond_3
    if-eqz p3, :cond_4

    .line 1703
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p5, v0, p3}, Landroid/provider/Telephony$Sms$Outbox;->addCallbackAndPriority(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)I

    .line 1711
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1712
    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0, p6}, Lcom/android/mms/transaction/SmsReceiverService;->updateThreadTablePriority(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 1714
    :cond_5
    return-void
.end method

.method private updateVcardCache(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 4
    .parameter "uri"
    .parameter "msgText"

    .prologue
    .line 1602
    const/4 v1, 0x0

    .line 1603
    .local v1, id:I
    const-string v3, "BEGIN:VCARD"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "END:VCARD"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1605
    if-eqz p1, :cond_0

    .line 1606
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 1613
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 1614
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v2

    .line 1615
    .local v2, ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    if-eqz v2, :cond_1

    .line 1616
    invoke-virtual {v2, v1, p2}, Lcom/android/mms/util/VCardSaveIndicatorCache;->setSMSvCardtoParse(ILjava/lang/String;)V

    .line 1620
    .end local v2           #ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    :cond_1
    return-void

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1610
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 1611
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected divideMessage(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/util/ArrayList;
    .locals 8
    .parameter "dest"
    .parameter "msgText"
    .parameter "isVcard"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1558
    const/4 v0, 0x0

    .line 1559
    .local v0, bIsmail:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/transaction/SmsMessageSender;->isEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1560
    const/4 v0, 0x1

    .line 1563
    :cond_0
    const/4 v2, 0x0

    .line 1564
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_4

    .line 1566
    if-eqz p3, :cond_3

    .line 1567
    invoke-direct {p0, p2, p1}, Lcom/android/mms/transaction/SmsMessageSender;->getEmailBody(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1589
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1591
    .local v1, messageCount:I
    if-ne v0, v7, :cond_2

    if-le v1, v7, :cond_2

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 1593
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1594
    .local v4, temp:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1595
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    .end local v4           #temp:Ljava/lang/String;
    :cond_2
    return-object v2

    .line 1570
    .end local v1           #messageCount:I
    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/android/mms/transaction/SmsMessageSender;->getMultiEmailBody(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 1574
    :cond_4
    if-eqz p3, :cond_5

    .line 1576
    invoke-static {p2}, Landroid/telephony/SmsMessage;->fragmentDataText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_0

    .line 1580
    :cond_5
    const-string v5, "NLI"

    const/4 v6, -0x1

    invoke-virtual {p4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1581
    .local v3, nli:I
    invoke-static {p2, v3}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1582
    invoke-static {}, Landroid/telephony/SmsMessage;->is7BitAfterFragmentText()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1583
    const/4 v3, -0x1

    .line 1584
    const-string v5, "NLI"

    invoke-virtual {p4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method protected formatDestinaingAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "dest"

    .prologue
    .line 1717
    invoke-static {p1}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, p1

    .line 1735
    .end local p1
    .local v0, dest:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1721
    .end local v0           #dest:Ljava/lang/String;
    .restart local p1
    :cond_0
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_1

    .line 1723
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/mms/util/IddUtils;->prependIDD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    move-object v0, p1

    .line 1735
    .end local p1
    .restart local v0       #dest:Ljava/lang/String;
    goto :goto_0

    .line 1728
    .end local v0           #dest:Ljava/lang/String;
    .restart local p1
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->parseGlobalPrefix(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_1

    .line 1729
    :catch_0
    move-exception v1

    .line 1730
    .local v1, e:Ljava/lang/NoSuchMethodError;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 1731
    const-string v2, "SmsMessageSender"

    const-string v3, "NoSuchMethodError on SmsmessageSender parseGlobalPrefix"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected getDeliveryIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 4
    .parameter "uri"

    .prologue
    .line 335
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/transaction/MessageStatusReceiver;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 341
    .local v0, intent:Landroid/content/Intent;
    iget v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNeedAck:I

    if-lez v1, :cond_0

    .line 342
    const-string v1, "ack_dm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    :cond_0
    return-object v0
.end method

.method protected getSentIntent(Landroid/net/Uri;ZLcom/android/mms/transaction/GroupMessage;)Landroid/content/Intent;
    .locals 4
    .parameter "uri"
    .parameter "bFirstOfAll"
    .parameter "message"

    .prologue
    .line 313
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.MESSAGE_SENT"

    iget-object v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 316
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "bFirstOfAll"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 319
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 320
    const-string v1, "groupMessageId"

    iget-wide v2, p3, Lcom/android/mms/transaction/GroupMessage;->groupId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 324
    :cond_0
    iget v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNeedAck:I

    if-lez v1, :cond_1

    .line 325
    const-string v1, "ack_dm"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    :cond_1
    return-object v0
.end method

.method public getSentMessage()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public kddiSendMessage(J)Z
    .locals 25
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    if-nez v2, :cond_1

    .line 1806
    :cond_0
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Null message body or dest."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1810
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1811
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 1816
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v23

    .line 1818
    .local v23, smsManager:Landroid/telephony/SmsManager;
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move/from16 v0, v18

    if-ge v0, v2, :cond_b

    .line 1820
    const/16 v20, 0x1

    .line 1822
    .local v20, messageCount:I
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1825
    .local v16, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1828
    .local v22, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 1830
    .local v21, prefs:Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 1831
    .local v7, requestDeliveryReport:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSDeliverReport()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1832
    const-string v2, "pref_key_sms_delivery_reports"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1836
    :cond_2
    const/16 v24, 0x0

    .line 1839
    .local v24, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1840
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v2 .. v9}, Landroid/provider/Telephony$Sms$Outbox;->addMessageV2(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 1846
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v24, v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    :goto_3
    const/16 v19, 0x0

    .local v19, j:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    .line 1854
    if-eqz v7, :cond_3

    .line 1858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsMessageSender;->getDeliveryIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request a status report - uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    add-int/lit8 v2, v4, 0x1

    sput v2, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v19, :cond_7

    const/4 v2, 0x1

    :goto_5
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v6}, Lcom/android/mms/transaction/SmsMessageSender;->getSentIntent(Landroid/net/Uri;ZLcom/android/mms/transaction/GroupMessage;)Landroid/content/Intent;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1870
    sget v2, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_4

    .line 1871
    const/4 v2, 0x0

    sput v2, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    .line 1853
    :cond_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 1813
    .end local v7           #requestDeliveryReport:Z
    .end local v16           #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v18           #i:I
    .end local v19           #j:I
    .end local v20           #messageCount:I
    .end local v21           #prefs:Landroid/content/SharedPreferences;
    .end local v22           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v23           #smsManager:Landroid/telephony/SmsManager;
    .end local v24           #uri:Landroid/net/Uri;
    :cond_5
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    goto/16 :goto_0

    .line 1843
    .restart local v7       #requestDeliveryReport:Z
    .restart local v16       #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v18       #i:I
    .restart local v20       #messageCount:I
    .restart local v21       #prefs:Landroid/content/SharedPreferences;
    .restart local v22       #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v23       #smsManager:Landroid/telephony/SmsManager;
    .restart local v24       #uri:Landroid/net/Uri;
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v2 .. v9}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1849
    :catch_0
    move-exception v17

    .line 1850
    .local v17, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_3

    .line 1865
    .end local v17           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v19       #j:I
    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    .line 1876
    :cond_8
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v9, v2, v18

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/PendingIntent;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/mms/transaction/SmsMessageSender;->mSendMode:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual/range {v8 .. v15}, Lcom/android/mms/custom/CustomizedManager;->kddiSendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ILandroid/content/Context;)V

    .line 1882
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_9

    .line 1883
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1884
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByContactId(Landroid/content/Context;J)V

    .line 1818
    :cond_9
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 1886
    :cond_a
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V

    goto :goto_6

    .line 1889
    .end local v7           #requestDeliveryReport:Z
    .end local v16           #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v19           #j:I
    .end local v20           #messageCount:I
    .end local v21           #prefs:Landroid/content/SharedPreferences;
    .end local v22           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v24           #uri:Landroid/net/Uri;
    :cond_b
    const/4 v2, 0x0

    return v2
.end method

.method public sendMessage(J)Z
    .locals 36
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1343
    invoke-static {}, Lcom/android/mms/MmsApp;->isImproveSmsSending()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1344
    invoke-direct/range {p0 .. p2}, Lcom/android/mms/transaction/SmsMessageSender;->queueMessage(J)Z

    move-result v3

    .line 1512
    :goto_0
    return v3

    .line 1349
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1350
    invoke-virtual/range {p0 .. p2}, Lcom/android/mms/transaction/SmsMessageSender;->kddiSendMessage(J)Z

    move-result v3

    goto :goto_0

    .line 1354
    :cond_1
    const-string v3, "SmsMessageSender"

    const-string v4, "[HTC_MESSAGES] - SmsMessageSender: sendMessage()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v34

    .line 1358
    .local v34, smsManager:Landroid/telephony/SmsManager;
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x61

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xad

    if-ne v3, v4, :cond_3

    .line 1360
    :cond_2
    invoke-virtual/range {v34 .. v34}, Landroid/telephony/SmsManager;->updateNvItem()V

    .line 1363
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v3}, Landroid/telephony/SmsMessage;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v32

    .line 1369
    .local v32, nli:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableAccentConvert()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1370
    const/16 v32, -0x1

    .line 1372
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/mms/transaction/SmsMessageSender;->sortDestinatingAddrs([Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 1375
    .local v21, AllRecipient:Ljava/lang/String;
    const/16 v26, 0x0

    .line 1376
    .local v26, groupMessage:Lcom/android/mms/transaction/GroupMessage;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1377
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 1378
    new-instance v26, Lcom/android/mms/transaction/GroupMessage;

    .end local v26           #groupMessage:Lcom/android/mms/transaction/GroupMessage;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Lcom/android/mms/transaction/GroupMessage;-><init>(I)V

    .line 1379
    .restart local v26       #groupMessage:Lcom/android/mms/transaction/GroupMessage;
    invoke-static/range {v26 .. v26}, Lcom/android/mms/transaction/MessagingNotification;->addGroupMessage(Lcom/android/mms/transaction/GroupMessage;)V

    .line 1381
    const/16 v27, 0x0

    .local v27, i:I
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move/from16 v0, v27

    if-ge v0, v3, :cond_5

    .line 1382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v27

    const/4 v4, 0x0

    sget-object v5, Lcom/android/mms/transaction/GroupMessage$Status;->IDLE:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/mms/transaction/GroupMessage;->updateStatus(ILjava/lang/String;Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V

    .line 1381
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 1388
    .end local v27           #i:I
    :cond_5
    const/16 v27, 0x0

    .restart local v27       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move/from16 v0, v27

    if-ge v0, v3, :cond_12

    .line 1395
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 1397
    .local v22, bundle:Landroid/os/Bundle;
    const-string v3, "NLI"

    move-object/from16 v0, v22

    move/from16 v1, v32

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1399
    const/16 v31, 0x0

    .line 1400
    .local v31, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mIsVcard:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/android/mms/transaction/SmsMessageSender;->divideMessage(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Ljava/util/ArrayList;

    move-result-object v31

    .line 1403
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 1404
    .local v30, messageCount:I
    if-nez v30, :cond_6

    .line 1405
    const-string v3, ""

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1406
    const/16 v30, 0x1

    .line 1409
    :cond_6
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1411
    .local v24, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v33, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1413
    .local v33, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1415
    .local v16, prefs:Landroid/content/SharedPreferences;
    const/4 v10, 0x0

    .line 1416
    .local v10, requestDeliveryReport:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSDeliverReport()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1417
    const-string v3, "pref_key_sms_delivery_reports"

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1421
    :cond_7
    const/16 v35, 0x0

    .line 1423
    .local v35, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1428
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1430
    .local v14, values:Landroid/content/ContentValues;
    const-string v3, "gid"

    new-instance v4, Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_8

    .line 1432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mIntent:Landroid/content/Intent;

    const-string v4, "locked"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    .line 1433
    .local v29, locked:Z
    if-eqz v29, :cond_8

    const-string v3, "locked"

    invoke-static/range {v29 .. v29}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1435
    .end local v29           #locked:Z
    :cond_8
    sget-object v3, Landroid/provider/Telephony$Sms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v23

    .line 1436
    .local v23, builder:Landroid/net/Uri$Builder;
    const-string v3, "v2"

    const-string v4, "true"

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v5, v5, v27

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    const-string v13, ""

    invoke-static/range {v3 .. v14}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 1451
    .end local v14           #values:Landroid/content/ContentValues;
    .end local v23           #builder:Landroid/net/Uri$Builder;
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1452
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->sendSMSSentLog(I)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->sendMsgCountLog(Landroid/content/Context;)V

    .line 1456
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v35, v0

    .line 1457
    const-string v3, "SmsMessageSender"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleSmsSent for uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v3}, Lcom/android/mms/transaction/SmsMessageSender;->updateVcardCache(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    :goto_4
    if-eqz v26, :cond_a

    .line 1467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/GroupMessage$Status;->SENT:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v1, v3, v4, v5}, Lcom/android/mms/transaction/GroupMessage;->updateStatus(ILjava/lang/String;Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V

    .line 1472
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v17, v3, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v22}, Lcom/android/mms/transaction/SmsMessageSender;->updatePriorityAndCallback(Landroid/content/SharedPreferences;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1475
    const/16 v28, 0x0

    .local v28, j:I
    :goto_5
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_f

    .line 1476
    if-eqz v10, :cond_b

    .line 1477
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsMessageSender;->getDeliveryIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    const-string v3, "TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request a status report - uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v35 .. v35}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    add-int/lit8 v3, v5, 0x1

    sput v3, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v28, :cond_e

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v6, v3, v1}, Lcom/android/mms/transaction/SmsMessageSender;->getSentIntent(Landroid/net/Uri;ZLcom/android/mms/transaction/GroupMessage;)Landroid/content/Intent;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v4, v5, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1487
    sget v3, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    const/16 v4, 0x2710

    if-ne v3, v4, :cond_c

    .line 1488
    const/4 v3, 0x0

    sput v3, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    .line 1475
    :cond_c
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 1447
    .end local v28           #j:I
    :cond_d
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v6, v3, v27

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v5 .. v12}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3

    .line 1461
    :catch_0
    move-exception v25

    .line 1462
    .local v25, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    invoke-static {v3, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_4

    .line 1484
    .end local v25           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v28       #j:I
    :cond_e
    const/4 v3, 0x0

    goto :goto_6

    .line 1493
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v27

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/SmsMessageSender;->formatDestinaingAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v27

    .line 1494
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v27

    invoke-direct {v0, v1, v3, v2}, Lcom/android/mms/transaction/SmsMessageSender;->packageBundle(Landroid/os/Bundle;II)V

    .line 1497
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v3, v27

    move-object/from16 v3, p0

    move-object/from16 v5, v31

    move-object/from16 v6, v33

    move-object/from16 v7, v24

    move-object/from16 v8, v22

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/transaction/SmsMessageSender;->sendSMS(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 1500
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_10

    .line 1501
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1502
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByContactId(Landroid/content/Context;J)V

    .line 1388
    :cond_10
    :goto_7
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_2

    .line 1504
    :cond_11
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 1507
    :catch_1
    move-exception v25

    .line 1508
    .local v25, e:Ljava/lang/Exception;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Exception;->printStackTrace()V

    .line 1509
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1512
    .end local v10           #requestDeliveryReport:Z
    .end local v16           #prefs:Landroid/content/SharedPreferences;
    .end local v22           #bundle:Landroid/os/Bundle;
    .end local v24           #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v25           #e:Ljava/lang/Exception;
    .end local v28           #j:I
    .end local v30           #messageCount:I
    .end local v31           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v33           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v35           #uri:Landroid/net/Uri;
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public sendMessage2(J)Z
    .locals 66
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportPacketSms()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual/range {p0 .. p2}, Lcom/android/mms/transaction/SmsMessageSender;->kddiSendMessage(J)Z

    move-result v2

    .line 1106
    :goto_0
    return v2

    .line 465
    :cond_0
    const-string v2, "SmsMessageSender"

    const-string v3, "[HTC_MESSAGES] - SmsMessageSender: sendMessage()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 469
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 474
    :goto_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v15

    .line 476
    .local v15, smsManager:Landroid/telephony/SmsManager;
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x61

    if-eq v2, v3, :cond_1

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0xad

    if-ne v2, v3, :cond_2

    .line 478
    :cond_1
    invoke-virtual {v15}, Landroid/telephony/SmsManager;->updateNvItem()V

    .line 481
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Landroid/telephony/SmsMessage;->getNliFromLocale(Ljava/util/Locale;)I

    move-result v53

    .line 483
    .local v53, nli:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isEnableAccentConvert()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 484
    const/16 v53, -0x1

    .line 487
    :cond_3
    const/16 v34, 0x0

    .line 499
    .local v34, AllRecipient:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/mms/transaction/SmsMessageSender;->sortArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v60

    .line 503
    .local v60, sortedDest:[Ljava/lang/String;
    const/16 v44, 0x0

    .local v44, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move/from16 v0, v44

    if-ge v0, v2, :cond_7

    .line 504
    if-nez v44, :cond_5

    .line 505
    aget-object v34, v60, v44

    .line 503
    :goto_3
    add-int/lit8 v44, v44, 0x1

    goto :goto_2

    .line 471
    .end local v15           #smsManager:Landroid/telephony/SmsManager;
    .end local v34           #AllRecipient:Ljava/lang/String;
    .end local v44           #i:I
    .end local v53           #nli:I
    .end local v60           #sortedDest:[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    goto :goto_1

    .line 507
    .restart local v15       #smsManager:Landroid/telephony/SmsManager;
    .restart local v34       #AllRecipient:Ljava/lang/String;
    .restart local v44       #i:I
    .restart local v53       #nli:I
    .restart local v60       #sortedDest:[Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v60, v44

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    goto :goto_3

    .line 511
    .end local v44           #i:I
    .end local v60           #sortedDest:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v34, v2, v3

    .line 517
    :cond_7
    const/16 v43, 0x0

    .line 518
    .local v43, groupMessage:Lcom/android/mms/transaction/GroupMessage;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 519
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_8

    .line 520
    new-instance v43, Lcom/android/mms/transaction/GroupMessage;

    .end local v43           #groupMessage:Lcom/android/mms/transaction/GroupMessage;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move-object/from16 v0, v43

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/GroupMessage;-><init>(I)V

    .line 521
    .restart local v43       #groupMessage:Lcom/android/mms/transaction/GroupMessage;
    invoke-static/range {v43 .. v43}, Lcom/android/mms/transaction/MessagingNotification;->addGroupMessage(Lcom/android/mms/transaction/GroupMessage;)V

    .line 523
    const/16 v44, 0x0

    .restart local v44       #i:I
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move/from16 v0, v44

    if-ge v0, v2, :cond_8

    .line 524
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const/4 v3, 0x0

    sget-object v4, Lcom/android/mms/transaction/GroupMessage$Status;->IDLE:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/GroupMessage;->updateStatus(ILjava/lang/String;Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V

    .line 523
    add-int/lit8 v44, v44, 0x1

    goto :goto_4

    .line 530
    .end local v44           #i:I
    :cond_8
    const/16 v44, 0x0

    .restart local v44       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move/from16 v0, v44

    if-ge v0, v2, :cond_53

    .line 541
    const/16 v35, 0x0

    .line 542
    .local v35, bIsmail:Z
    const/16 v18, 0x0

    .line 543
    .local v18, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SmsMessageSender;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 546
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mIsVcard:Z

    if-eqz v2, :cond_1c

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v44

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->getEmailBody(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    .line 552
    :goto_6
    const/16 v35, 0x1

    .line 572
    :cond_9
    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v49

    .line 573
    .local v49, messageCount:I
    if-nez v49, :cond_a

    .line 574
    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    const/16 v49, 0x1

    .line 579
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, v35

    if-ne v0, v2, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v49

    if-le v0, v2, :cond_b

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 580
    new-instance v62, Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v62

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 581
    .local v62, temp:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 582
    move-object/from16 v0, v18

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    const/16 v49, 0x1

    .line 586
    .end local v62           #temp:Ljava/lang/String;
    :cond_b
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, v20

    move/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 588
    .local v20, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move/from16 v1, v49

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 590
    .local v19, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v55

    .line 592
    .local v55, prefs:Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .line 593
    .local v7, requestDeliveryReport:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSDeliverReport()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 594
    const-string v2, "pref_key_sms_delivery_reports"

    const/4 v3, 0x0

    move-object/from16 v0, v55

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 598
    :cond_c
    const/16 v65, 0x0

    .line 601
    .local v65, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 602
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v2 .. v9}, Landroid/provider/Telephony$Sms$Outbox;->addMessageV2(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    .line 609
    :goto_8
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 610
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->sendSMSSentLog(I)V

    .line 611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils;->sendMsgCountLog(Landroid/content/Context;)V

    .line 614
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v65, v0

    .line 616
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSmsSent for uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v65

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const/16 v46, 0x0

    .line 620
    .local v46, id:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const-string v3, "BEGIN:VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const-string v3, "END:VCARD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_f

    .line 622
    if-eqz v65, :cond_e

    .line 623
    :try_start_1
    invoke-virtual/range {v65 .. v65}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v46

    .line 631
    :cond_e
    :goto_9
    if-lez v46, :cond_f

    .line 632
    :try_start_2
    invoke-static {}, Lcom/android/mms/util/VCardSaveIndicatorCache;->getInstance()Lcom/android/mms/util/VCardSaveIndicatorCache;

    move-result-object v47

    .line 633
    .local v47, ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    if-eqz v47, :cond_f

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, v47

    move/from16 v1, v46

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/VCardSaveIndicatorCache;->setSMSvCardtoParse(ILjava/lang/String;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 644
    .end local v46           #id:I
    .end local v47           #ins:Lcom/android/mms/util/VCardSaveIndicatorCache;
    :cond_f
    :goto_a
    if-eqz v43, :cond_10

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/GroupMessage$Status;->SENT:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v43

    move/from16 v1, v44

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/transaction/GroupMessage;->updateStatus(ILjava/lang/String;Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V

    .line 648
    :cond_10
    const/16 v57, 0x0

    .line 649
    .local v57, priority:I
    const/16 v56, 0x0

    .line 650
    .local v56, priStr:Ljava/lang/String;
    const/16 v39, 0x0

    .line 653
    .local v39, callback:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mPriority:Ljava/lang/String;

    move-object/from16 v56, v0

    .line 662
    :goto_b
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "priority >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v56

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v2, "normal"

    move-object/from16 v0, v56

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 665
    const/16 v57, 0x2

    .line 670
    :cond_11
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 672
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mCallback:Ljava/lang/String;

    move-object/from16 v39, v0

    .line 683
    :cond_12
    :goto_c
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send callback num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/mms/MmsApp;->getCarrierID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/16 v3, 0xf

    if-eq v2, v3, :cond_14

    :cond_13
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x62

    if-eq v2, v3, :cond_14

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x28

    if-ne v2, v3, :cond_16

    :cond_14
    if-eqz v39, :cond_16

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_16

    .line 691
    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object/from16 v0, v39

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v54

    .line 692
    .local v54, pre3digit:Ljava/lang/String;
    const-string v2, "158"

    move-object/from16 v0, v54

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 693
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0416"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 697
    :cond_15
    :goto_d
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "replace callback num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    .end local v54           #pre3digit:Ljava/lang/String;
    :cond_16
    invoke-static/range {v39 .. v39}, Lcom/android/mms/ui/RecipientList$Recipient;->filterPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 706
    :cond_17
    const/16 v48, 0x0

    .local v48, j:I
    :goto_e
    move/from16 v0, v48

    move/from16 v1, v49

    if-ge v0, v1, :cond_24

    .line 707
    if-eqz v7, :cond_18

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SmsMessageSender;->getDeliveryIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 715
    const-string v2, "TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request a status report - uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v65 .. v65}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-eqz v2, :cond_1a

    if-gtz v57, :cond_19

    if-eqz v39, :cond_1a

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1a

    .line 719
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    move-object/from16 v0, v39

    move/from16 v1, v57

    invoke-static {v2, v0, v1, v3}, Landroid/provider/Telephony$Sms$Outbox;->addCallbackAndPriority(Landroid/content/ContentResolver;Ljava/lang/String;ILandroid/net/Uri;)I

    .line 723
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    add-int/lit8 v2, v4, 0x1

    sput v2, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;

    if-nez v48, :cond_23

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v5, v2, v1}, Lcom/android/mms/transaction/SmsMessageSender;->getSentIntent(Landroid/net/Uri;ZLcom/android/mms/transaction/GroupMessage;)Landroid/content/Intent;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    sget v2, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    const/16 v3, 0x2710

    if-ne v2, v3, :cond_1b

    .line 727
    const/4 v2, 0x0

    sput v2, Lcom/android/mms/transaction/SmsMessageSender;->mUniqueIdOfSentIntent:I

    .line 706
    :cond_1b
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_e

    .line 550
    .end local v7           #requestDeliveryReport:Z
    .end local v19           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v20           #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v39           #callback:Ljava/lang/String;
    .end local v48           #j:I
    .end local v49           #messageCount:I
    .end local v55           #prefs:Landroid/content/SharedPreferences;
    .end local v56           #priStr:Ljava/lang/String;
    .end local v57           #priority:I
    .end local v65           #uri:Landroid/net/Uri;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v44

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/mms/transaction/SmsMessageSender;->getMultiEmailBody(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    goto/16 :goto_6

    .line 555
    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mIsVcard:Z

    if-eqz v2, :cond_1e

    .line 560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/SmsMessage;->fragmentDataText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v18

    goto/16 :goto_7

    .line 564
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move/from16 v0, v53

    invoke-static {v2, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v18

    .line 565
    invoke-static {}, Landroid/telephony/SmsMessage;->is7BitAfterFragmentText()Z

    move-result v2

    if-nez v2, :cond_9

    .line 566
    const/16 v53, -0x1

    goto/16 :goto_7

    .line 605
    .restart local v7       #requestDeliveryReport:Z
    .restart local v19       #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v20       #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .restart local v49       #messageCount:I
    .restart local v55       #prefs:Landroid/content/SharedPreferences;
    .restart local v65       #uri:Landroid/net/Uri;
    :cond_1f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v44

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-static/range {v2 .. v9}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageUri:Landroid/net/Uri;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_8

    .line 639
    :catch_0
    move-exception v42

    .line 640
    .local v42, e:Landroid/database/sqlite/SQLiteException;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, v42

    invoke-static {v2, v0}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto/16 :goto_a

    .line 626
    .end local v42           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v46       #id:I
    :catch_1
    move-exception v42

    .line 627
    .local v42, e:Ljava/lang/NumberFormatException;
    :try_start_4
    invoke-virtual/range {v42 .. v42}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_9

    .line 628
    .end local v42           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v42

    .line 629
    .local v42, e:Ljava/lang/Exception;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_9

    .line 658
    .end local v42           #e:Ljava/lang/Exception;
    .end local v46           #id:I
    .restart local v39       #callback:Ljava/lang/String;
    .restart local v56       #priStr:Ljava/lang/String;
    .restart local v57       #priority:I
    :cond_20
    const-string v2, "pref_key_sms_priority"

    const-string v3, "normal"

    move-object/from16 v0, v55

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    goto/16 :goto_b

    .line 675
    :cond_21
    const-string v2, "pref_key_sms_callback"

    const/4 v3, 0x1

    move-object/from16 v0, v55

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v40

    .line 677
    .local v40, callbackChecked:Z
    if-eqz v40, :cond_12

    .line 678
    const-string v2, "pref_key_set_callback"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v55

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_c

    .line 694
    .end local v40           #callbackChecked:Z
    .restart local v54       #pre3digit:Ljava/lang/String;
    :cond_22
    const-string v2, "199"

    move-object/from16 v0, v54

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 695
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0426"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x3

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    goto/16 :goto_d

    .line 723
    .end local v54           #pre3digit:Ljava/lang/String;
    .restart local v48       #j:I
    :cond_23
    const/4 v2, 0x0

    goto/16 :goto_f

    .line 733
    :cond_24
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v44

    move/from16 v0, v57

    move-object/from16 v1, v34

    invoke-static {v2, v3, v0, v1}, Lcom/android/mms/transaction/SmsReceiverService;->updateThreadTablePriority(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 738
    :cond_25
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0xa8

    if-ne v2, v3, :cond_49

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-static {v2}, Lcom/android/mms/ui/RecipientList$Recipient;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 741
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v63

    .line 742
    .local v63, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v59

    .line 743
    .local v59, sNetworkOperator:Ljava/lang/String;
    const/16 v50, 0x0

    .line 744
    .local v50, nMCC:Ljava/lang/String;
    const/16 v38, 0x0

    .line 746
    .local v38, bunderVZW:Z
    if-eqz v59, :cond_26

    invoke-virtual/range {v59 .. v59}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_26

    .line 747
    const/4 v2, 0x0

    const/4 v3, 0x3

    move-object/from16 v0, v59

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v50

    .line 752
    :cond_26
    const-string v2, "310012"

    move-object/from16 v0, v59

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "310004"

    move-object/from16 v0, v59

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 754
    :cond_27
    const/16 v38, 0x1

    .line 756
    :cond_28
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ope/undervzw: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v59

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/16 v37, 0x0

    .line 759
    .local v37, bprocessed:Z
    const/16 v64, 0x0

    .line 760
    .local v64, tmpDigits:Ljava/lang/String;
    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_38

    .line 762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "+1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_36

    .line 764
    const/16 v37, 0x1

    .line 785
    :cond_29
    :goto_10
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simoperator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    const-string v2, "20404"

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "310004"

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, "310012"

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 790
    :cond_2a
    const-string v2, "SmsMessageSender"

    const-string v3, "enter vzw simcard"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    if-nez v37, :cond_2b

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-le v2, v3, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "+011"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2b

    .line 795
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v44

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 796
    const/16 v37, 0x1

    .line 801
    :cond_2b
    if-nez v37, :cond_2c

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2c

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v64

    .line 804
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {v64 .. v64}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 805
    .local v51, ncc:Ljava/lang/String;
    if-eqz v51, :cond_2c

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 807
    const/16 v37, 0x1

    .line 813
    .end local v51           #ncc:Ljava/lang/String;
    :cond_2c
    if-nez v37, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2d

    .line 814
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move-object/from16 v0, v50

    invoke-static {v0, v2}, Lcom/android/mms/util/IddUtils;->getlocalIDDlen(Ljava/lang/String;Ljava/lang/String;)I

    move-result v52

    .line 815
    .local v52, niddsize:I
    if-lez v52, :cond_2d

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v64

    .line 817
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {v64 .. v64}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v44

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 819
    const/16 v37, 0x1

    .line 826
    .end local v52           #niddsize:I
    :cond_2d
    if-nez v37, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2e

    .line 827
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-static {v2}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 828
    .restart local v51       #ncc:Ljava/lang/String;
    if-eqz v51, :cond_2e

    const-string v2, "65"

    move-object/from16 v0, v51

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v44

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 830
    const/16 v37, 0x1

    .line 989
    .end local v37           #bprocessed:Z
    .end local v38           #bunderVZW:Z
    .end local v50           #nMCC:Ljava/lang/String;
    .end local v51           #ncc:Ljava/lang/String;
    .end local v59           #sNetworkOperator:Ljava/lang/String;
    .end local v63           #tm:Landroid/telephony/TelephonyManager;
    .end local v64           #tmpDigits:Ljava/lang/String;
    :cond_2e
    :goto_11
    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .line 990
    .local v21, bundle:Landroid/os/Bundle;
    const-string v2, "NLI"

    move-object/from16 v0, v21

    move/from16 v1, v53

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 991
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSmsCallback()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 992
    const-string v2, "CALLBACK"

    move-object/from16 v0, v21

    move-object/from16 v1, v39

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    :cond_2f
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMSPriority()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 994
    const-string v2, "PRIORITY"

    move-object/from16 v0, v21

    move/from16 v1, v57

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 999
    :cond_30
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4a

    .line 1000
    const-string v2, "FIRST_SMS"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1001
    const-string v2, "LAST_SMS"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1016
    :goto_12
    const/4 v13, 0x0

    .line 1017
    .local v13, sentIntent:Landroid/app/PendingIntent;
    const/4 v14, 0x0

    .line 1019
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_31

    .line 1020
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/PendingIntent;

    move-object v13, v0

    .line 1023
    :cond_31
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_32

    .line 1024
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/app/PendingIntent;

    move-object v14, v0

    .line 1029
    :cond_32
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v2

    if-eqz v2, :cond_4f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/transaction/SmsMessageSender;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {}, Lcom/android/mms/MmsApp;->getEmailServerNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v44

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1035
    :cond_33
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mIsVcard:Z

    if-eqz v2, :cond_4d

    .line 1036
    invoke-static {}, Lcom/android/mms/MmsApp;->getEmailServerNumber()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    const/16 v11, 0x23f4

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    move-object v8, v15

    invoke-virtual/range {v8 .. v14}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1093
    :cond_34
    :goto_13
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_35

    .line 1094
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_52

    .line 1095
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByContactId(Landroid/content/Context;J)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 530
    :cond_35
    :goto_14
    add-int/lit8 v44, v44, 0x1

    goto/16 :goto_5

    .line 767
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v21           #bundle:Landroid/os/Bundle;
    .restart local v37       #bprocessed:Z
    .restart local v38       #bunderVZW:Z
    .restart local v50       #nMCC:Ljava/lang/String;
    .restart local v59       #sNetworkOperator:Ljava/lang/String;
    .restart local v63       #tm:Landroid/telephony/TelephonyManager;
    .restart local v64       #tmpDigits:Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_29

    .line 769
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move-object/from16 v0, v50

    invoke-static {v0, v2}, Lcom/android/mms/util/IddUtils;->getlocalIDDlen(Ljava/lang/String;Ljava/lang/String;)I

    move-result v52

    .line 770
    .restart local v52       #niddsize:I
    if-lez v52, :cond_29

    .line 772
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v61

    .line 773
    .local v61, subStr:Ljava/lang/String;
    invoke-virtual/range {v61 .. v61}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_29

    const-string v2, "1"

    move-object/from16 v0, v61

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_29

    .line 774
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    const/4 v2, 0x1

    const/4 v3, 0x4

    move-object/from16 v0, v61

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/util/IddUtils;->isinNANPtable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 775
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 776
    const/16 v37, 0x1

    goto/16 :goto_10

    .line 834
    .end local v52           #niddsize:I
    .end local v61           #subStr:Ljava/lang/String;
    :cond_37
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Don\'t prepend address because MCCMNC : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 836
    :cond_38
    invoke-virtual/range {v63 .. v63}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2e

    .line 840
    const-string v2, "ril.cdmaphoneapp.nbpcd.support"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    .line 842
    .local v36, bNBPCD:Z
    const-string v2, "SmsMessageSender"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "be NBPCD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    if-eqz v38, :cond_41

    .line 848
    const/16 v37, 0x0

    .line 853
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_3a

    .line 881
    :cond_39
    :goto_15
    if-nez v37, :cond_2e

    .line 883
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "011"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3e

    .line 884
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v64

    .line 885
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {v64 .. v64}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 886
    const/16 v37, 0x1

    goto/16 :goto_11

    .line 857
    :cond_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3b

    .line 858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v64

    .line 859
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {v64 .. v64}, Lcom/android/mms/util/IddUtils;->isinNANPtable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 860
    const/16 v37, 0x1

    goto :goto_15

    .line 863
    :cond_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_3c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3c

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const/4 v3, 0x1

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v64

    .line 865
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {v64 .. v64}, Lcom/android/mms/util/IddUtils;->isinNANPtable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 866
    const/16 v37, 0x1

    goto/16 :goto_15

    .line 869
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "+1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_39

    .line 870
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const/4 v3, 0x2

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v64

    .line 871
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {v64 .. v64}, Lcom/android/mms/util/IddUtils;->isinNANPtable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 872
    if-nez v36, :cond_3d

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v44

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 874
    :cond_3d
    const/16 v37, 0x1

    goto/16 :goto_15

    .line 890
    :cond_3e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_40

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_40

    .line 891
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v64

    .line 892
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {v64 .. v64}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 893
    if-nez v36, :cond_3f

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 895
    :cond_3f
    const/16 v37, 0x1

    goto/16 :goto_11

    .line 899
    :cond_40
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2e

    .line 900
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-static {v2}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 901
    .local v41, cc:Ljava/lang/String;
    if-eqz v41, :cond_2e

    const-string v2, "65"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v44

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 903
    const/16 v37, 0x1

    goto/16 :goto_11

    .line 914
    .end local v41           #cc:Ljava/lang/String;
    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_43

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "+1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_43

    .line 915
    const-string v2, "SmsMessageSender"

    const-string v3, "35131-1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    if-nez v36, :cond_42

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v44

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 918
    :cond_42
    const/16 v37, 0x1

    .line 922
    :cond_43
    if-nez v37, :cond_44

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_44

    .line 923
    const-string v2, "SmsMessageSender"

    const-string v3, "35131-2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move-object/from16 v0, v50

    invoke-static {v0, v2}, Lcom/android/mms/util/IddUtils;->getlocalIDDlen(Ljava/lang/String;Ljava/lang/String;)I

    move-result v52

    .line 925
    .restart local v52       #niddsize:I
    if-lez v52, :cond_44

    .line 926
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v64

    .line 927
    const-string v2, "1"

    move-object/from16 v0, v64

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_44

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aput-object v64, v2, v44

    .line 929
    const/16 v37, 0x1

    .line 935
    .end local v52           #niddsize:I
    :cond_44
    if-nez v37, :cond_45

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_46

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "011"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_46

    .line 938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v64

    .line 939
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {v64 .. v64}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 940
    const/16 v37, 0x1

    .line 962
    :cond_45
    :goto_16
    if-nez v37, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2e

    .line 963
    const-string v2, "SmsMessageSender"

    const-string v3, "35132-1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move-object/from16 v0, v50

    invoke-static {v0, v2}, Lcom/android/mms/util/IddUtils;->getlocalIDDlen(Ljava/lang/String;Ljava/lang/String;)I

    move-result v52

    .line 965
    .restart local v52       #niddsize:I
    if-lez v52, :cond_2e

    .line 966
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    move/from16 v0, v52

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v64

    .line 967
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {v64 .. v64}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 968
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    goto/16 :goto_11

    .line 944
    .end local v52           #niddsize:I
    :cond_46
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-lt v2, v3, :cond_48

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_48

    .line 945
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v64

    .line 946
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    invoke-static/range {v64 .. v64}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 947
    if-nez v36, :cond_47

    .line 948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 949
    :cond_47
    const/16 v37, 0x1

    goto/16 :goto_16

    .line 953
    :cond_48
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-lt v2, v3, :cond_45

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_45

    .line 954
    invoke-static {}, Lcom/android/mms/util/IddUtils;->getInstance()Lcom/android/mms/util/IddUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v2, v2, v44

    invoke-static {v2}, Lcom/android/mms/util/IddUtils;->getCCcode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 955
    .restart local v41       #cc:Ljava/lang/String;
    if-eqz v41, :cond_45

    const-string v2, "65"

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "011"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v4, v4, v44

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44

    .line 957
    const/16 v37, 0x1

    goto/16 :goto_16

    .line 980
    .end local v36           #bNBPCD:Z
    .end local v37           #bprocessed:Z
    .end local v38           #bunderVZW:Z
    .end local v41           #cc:Ljava/lang/String;
    .end local v50           #nMCC:Ljava/lang/String;
    .end local v59           #sNetworkOperator:Ljava/lang/String;
    .end local v63           #tm:Landroid/telephony/TelephonyManager;
    .end local v64           #tmpDigits:Ljava/lang/String;
    :cond_49
    :try_start_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v3, v3, v44

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->parseGlobalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v44
    :try_end_6
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_11

    .line 981
    :catch_3
    move-exception v42

    .line 982
    .local v42, e:Ljava/lang/NoSuchMethodError;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    .line 983
    const-string v2, "SmsMessageSender"

    const-string v3, "NoSuchMethodError on SmsmessageSender parseGlobalPrefix"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 1002
    .end local v42           #e:Ljava/lang/NoSuchMethodError;
    .restart local v21       #bundle:Landroid/os/Bundle;
    :cond_4a
    if-nez v44, :cond_4b

    .line 1003
    const-string v2, "FIRST_SMS"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1004
    const-string v2, "LAST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_12

    .line 1005
    :cond_4b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v44

    if-ne v0, v2, :cond_4c

    .line 1006
    const-string v2, "FIRST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1007
    const-string v2, "LAST_SMS"

    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_12

    .line 1009
    :cond_4c
    const-string v2, "FIRST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1010
    const-string v2, "LAST_SMS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_12

    .line 1045
    .restart local v13       #sentIntent:Landroid/app/PendingIntent;
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4d
    :try_start_7
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConcatenatedEmailSms()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4e

    .line 1046
    invoke-static {}, Lcom/android/mms/MmsApp;->getEmailServerNumber()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v21}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_13

    .line 1099
    :catch_4
    move-exception v42

    .line 1100
    .local v42, e:Ljava/lang/Exception;
    invoke-virtual/range {v42 .. v42}, Ljava/lang/Exception;->printStackTrace()V

    .line 1101
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1050
    .end local v42           #e:Ljava/lang/Exception;
    :cond_4e
    :try_start_8
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .local v45, i$:Ljava/util/Iterator;
    :goto_17
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/String;

    .line 1051
    .local v58, s:Ljava/lang/String;
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1052
    .local v25, single:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v25

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    invoke-static {}, Lcom/android/mms/MmsApp;->getEmailServerNumber()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v22, v15

    move-object/from16 v26, v19

    move-object/from16 v27, v20

    move-object/from16 v28, v21

    invoke-virtual/range {v22 .. v28}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto :goto_17

    .line 1062
    .end local v25           #single:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v45           #i$:Ljava/util/Iterator;
    .end local v58           #s:Ljava/lang/String;
    :cond_4f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mIsVcard:Z

    if-eqz v2, :cond_51

    .line 1064
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_50

    .line 1065
    const-string v2, "SmsMessageSender"

    const-string v3, "one segment vCardSMS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v9, v2, v44

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    const/16 v11, 0x23f4

    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    move-object v8, v15

    invoke-virtual/range {v8 .. v14}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto/16 :goto_13

    .line 1075
    :cond_50
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v27, v2, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v28, v0

    const/16 v29, 0x23f4

    move-object/from16 v26, v15

    move-object/from16 v30, v18

    move-object/from16 v31, v19

    move-object/from16 v32, v20

    move-object/from16 v33, v21

    invoke-virtual/range {v26 .. v33}, Landroid/telephony/SmsManager;->sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto/16 :goto_13

    .line 1086
    :cond_51
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    aget-object v16, v2, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v21}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto/16 :goto_13

    .line 1097
    :cond_52
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/mms/util/Recycler$SmsRecycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_14

    .line 1106
    .end local v7           #requestDeliveryReport:Z
    .end local v13           #sentIntent:Landroid/app/PendingIntent;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v18           #messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19           #sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v20           #deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .end local v21           #bundle:Landroid/os/Bundle;
    .end local v35           #bIsmail:Z
    .end local v39           #callback:Ljava/lang/String;
    .end local v48           #j:I
    .end local v49           #messageCount:I
    .end local v55           #prefs:Landroid/content/SharedPreferences;
    .end local v56           #priStr:Ljava/lang/String;
    .end local v57           #priority:I
    .end local v65           #uri:Landroid/net/Uri;
    :cond_53
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public sendMessageCancel(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 2050
    invoke-static {}, Lcom/android/mms/custom/CustomizedManager;->getInstance()Lcom/android/mms/custom/CustomizedManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/custom/CustomizedManager;->kddiSendCancel(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected sendSMS(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 17
    .parameter "dest"
    .parameter
    .parameter
    .parameter
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1747
    .local p2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p4, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .line 1748
    .local v6, sentIntent:Landroid/app/PendingIntent;
    const/4 v7, 0x0

    .line 1749
    .local v7, deliveryIntent:Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1750
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #sentIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 1752
    .restart local v6       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1753
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 1756
    .restart local v7       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_1
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 1758
    .local v1, smsManager:Landroid/telephony/SmsManager;
    const/16 v16, 0x0

    .line 1759
    .local v16, toEmail:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSMS2Email()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1760
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/transaction/SmsMessageSender;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/mms/MmsApp;->getEmailServerNumber()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1761
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsApp;->getEmailServerNumber()Ljava/lang/String;

    move-result-object p1

    .line 1762
    const/16 v16, 0x1

    .line 1763
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportConcatenatedEmailSms()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1764
    const-string v2, "separate_msg"

    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1769
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/mms/transaction/SmsMessageSender;->mIsVcard:Z

    if-eqz v2, :cond_6

    .line 1772
    if-nez v16, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1773
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    const/16 v4, 0x23f4

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 1799
    :goto_0
    return-void

    .line 1781
    :cond_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    const/16 v11, 0x23f4

    move-object v8, v1

    move-object/from16 v9, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-virtual/range {v8 .. v15}, Landroid/telephony/SmsManager;->sendMultipartDataMessage(Ljava/lang/String;Ljava/lang/String;SLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1791
    :cond_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    move-object v8, v1

    move-object/from16 v9, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    invoke-virtual/range {v8 .. v14}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public sortArray([Ljava/lang/String;)[Ljava/lang/String;
    .locals 17
    .parameter "strArray"

    .prologue
    .line 388
    move-object/from16 v0, p1

    array-length v2, v0

    .line 393
    .local v2, arrayCount:I
    new-array v7, v2, [Ljava/lang/String;

    .line 394
    .local v7, ori_addrArray:[Ljava/lang/String;
    new-array v9, v2, [Ljava/lang/String;

    .line 395
    .local v9, sort_addrAarray:[Ljava/lang/String;
    new-array v8, v2, [J

    .line 396
    .local v8, ori_idArray:[J
    new-array v10, v2, [J

    .line 397
    .local v10, sort_idArray:[J
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/transaction/SmsMessageSender;->getCanonicalAddressCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 403
    .local v1, addrcursor:Landroid/database/Cursor;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_4

    .line 404
    aget-object v13, p1, v5

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v7, v5

    .line 405
    int-to-long v13, v5

    aput-wide v13, v8, v5

    .line 406
    int-to-long v13, v5

    aput-wide v13, v10, v5

    .line 408
    if-eqz v1, :cond_3

    .line 409
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 410
    const/4 v3, 0x0

    .line 412
    .local v3, bmatch:Z
    :cond_0
    const/4 v13, 0x1

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 413
    .local v4, cursorstring:Ljava/lang/String;
    aget-object v13, v7, v5

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 415
    const-string v13, "_id"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 416
    .local v11, tempId:J
    aput-wide v11, v8, v5

    .line 417
    aput-wide v11, v10, v5

    .line 418
    const/4 v3, 0x1

    .line 427
    .end local v11           #tempId:J
    :goto_1
    if-nez v3, :cond_1

    .line 403
    .end local v3           #bmatch:Z
    .end local v4           #cursorstring:Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 425
    .restart local v3       #bmatch:Z
    .restart local v4       #cursorstring:Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_0

    goto :goto_1

    .line 431
    .end local v3           #bmatch:Z
    .end local v4           #cursorstring:Ljava/lang/String;
    :cond_3
    const-string v13, "SmsMessageSender"

    const-string v14, "Canonical table length is null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 435
    :cond_4
    invoke-static {v10}, Ljava/util/Arrays;->sort([J)V

    .line 438
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_7

    .line 439
    const/4 v6, 0x0

    .local v6, ori:I
    :goto_4
    if-ge v6, v2, :cond_6

    .line 440
    aget-wide v13, v8, v6

    aget-wide v15, v10, v5

    cmp-long v13, v13, v15

    if-nez v13, :cond_5

    .line 441
    aget-object v13, v7, v6

    aput-object v13, v9, v5

    .line 439
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 438
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 445
    .end local v6           #ori:I
    :cond_7
    if-eqz v1, :cond_8

    .line 446
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_8
    return-object v9
.end method
