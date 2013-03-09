.class public Lcom/android/mms/transaction/MessageStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MessageStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;
    }
.end annotation


# static fields
.field public static final ACTION_MEDIA_UPADTE_RESPONSE:Ljava/lang/String; = "com.htc.providers.media.ID_UPDATE_RESPONSE"

.field public static final ACTION_MEDIA_UPGRADE_COMPLETE:Ljava/lang/String; = "com.htc.providers.media.DB_UPGRADE_COMPLETE"

.field public static final ACTION_MESSAGE_TAB_SCREEN_OFF:Ljava/lang/String; = "com.android.mms.ACTION_MESSAGE_TAB_SCREEN_OFF"

.field public static final ACTION_MESSAGE_TAB_SCREE_ON:Ljava/lang/String; = "com.android.mms.ACTION_MESSAGE_TAB_SCREE_ON"

.field public static final ACTION_WIDGET_ONPAUSE:Ljava/lang/String; = "com.android.mms.ACTION_MSG_WIDGET_WHAT_ONPAUSE"

.field public static final ACTION_WIDGET_ONRESUME:Ljava/lang/String; = "com.android.mms.ACTION_MSG_WIDGET_WHAT_ONRESUM"

.field private static final CANCEL_NOTIFICATION_ACTION:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver.CANCEL_NOTIFICATION"

.field private static final CANCEL_NOTIFICATION_ID:Ljava/lang/String; = "id"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "MessageStatusReceiver"

.field public static final MESSAGE_STATUS_RECEIVED_ACTION:Ljava/lang/String; = "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

.field private static final STATUS_URI:Landroid/net/Uri;

.field public static bMediaUpgarde:Ljava/lang/Boolean;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessageStatusReceiver;->ID_PROJECTION:[Ljava/lang/String;

    .line 76
    const-string v0, "content://sms/status"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessageStatusReceiver;->STATUS_URI:Landroid/net/Uri;

    .line 81
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessageStatusReceiver;->bMediaUpgarde:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 284
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/MessageStatusReceiver;Landroid/content/Context;Landroid/net/Uri;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/MessageStatusReceiver;->updateMessageStatus(Landroid/content/Context;Landroid/net/Uri;[B)V

    return-void
.end method

.method private error(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 281
    const-string v0, "MessageStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MessageStatusReceiver] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method private updateMessageStatus(Landroid/content/Context;Landroid/net/Uri;[B)V
    .locals 20
    .parameter "context"
    .parameter "messageUri"
    .parameter "pdu"

    .prologue
    .line 201
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/mms/transaction/MessageStatusReceiver;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 203
    .local v15, cursor:Landroid/database/Cursor;
    const-string v1, "Jerry"

    const-string v2, "updateMessageStatus >>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    const-wide/16 v8, 0x0

    .line 205
    .local v8, threadId:J
    const/16 v18, 0x0

    .line 206
    .local v18, messageId:I
    const/4 v14, -0x1

    .line 207
    .local v14, currentstatus:I
    const/16 v19, -0x1

    .line 208
    .local v19, status:I
    const/4 v13, 0x0

    .line 209
    .local v13, bChangetoSuccess:Z
    if-eqz v15, :cond_b

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 210
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 211
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 212
    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 213
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 215
    sget-object v1, Lcom/android/mms/transaction/MessageStatusReceiver;->STATUS_URI:Landroid/net/Uri;

    move/from16 v0, v18

    int-to-long v5, v0

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 216
    .local v3, updateUri:Landroid/net/Uri;
    invoke-static/range {p3 .. p3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v17

    .line 218
    .local v17, message:Landroid/telephony/SmsMessage;
    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getStatus()I

    move-result v19

    .line 221
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 222
    shr-int/lit8 v16, v19, 0x18

    .line 223
    .local v16, errorClass:I
    if-nez v16, :cond_7

    .line 224
    const/16 v19, 0x0

    .line 231
    .end local v16           #errorClass:I
    :cond_0
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_1

    .line 233
    const/16 v19, 0x0

    .line 239
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-eq v1, v2, :cond_2

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd0

    if-ne v1, v2, :cond_3

    .line 242
    :cond_2
    if-ltz v19, :cond_9

    const/16 v1, 0x1f

    move/from16 v0, v19

    if-gt v0, v1, :cond_9

    .line 243
    const/16 v19, 0x0

    .line 252
    :cond_3
    :goto_1
    const-string v1, "MessageStatusReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentstatus/newstatus: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " / "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/16 v1, 0x20

    if-ne v14, v1, :cond_4

    if-nez v19, :cond_4

    .line 255
    const/4 v13, 0x1

    .line 258
    :cond_4
    new-instance v4, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v4, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 260
    .local v4, contentValues:Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 262
    const-string v1, "report_date"

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/SmsMessage;->getDateOfReport()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 267
    const-string v1, "MessageStatusReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMessageStatus: status = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    .end local v3           #updateUri:Landroid/net/Uri;
    .end local v4           #contentValues:Landroid/content/ContentValues;
    .end local v17           #message:Landroid/telephony/SmsMessage;
    :cond_5
    :goto_2
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-lez v1, :cond_6

    if-nez v19, :cond_6

    const/4 v1, 0x1

    if-ne v13, v1, :cond_6

    .line 275
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/MessageStatusReceiver;->mContext:Landroid/content/Context;

    const v6, 0x7f0901f5

    const v7, 0x7f0901f6

    move/from16 v0, v18

    int-to-long v10, v0

    const/4 v12, 0x0

    invoke-static/range {v5 .. v12}, Lcom/android/mms/transaction/MessagingNotification;->showReportNotification(Landroid/content/Context;IIJJZ)V

    .line 277
    :cond_6
    const-string v1, "Jerry"

    const-string v2, "updateMessageStatus <<<"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return-void

    .line 225
    .restart local v3       #updateUri:Landroid/net/Uri;
    .restart local v16       #errorClass:I
    .restart local v17       #message:Landroid/telephony/SmsMessage;
    :cond_7
    const/4 v1, 0x2

    move/from16 v0, v16

    if-ne v0, v1, :cond_8

    .line 226
    const/16 v19, 0x20

    goto/16 :goto_0

    .line 227
    :cond_8
    const/4 v1, 0x3

    move/from16 v0, v16

    if-ne v0, v1, :cond_0

    .line 228
    const/16 v19, 0x40

    goto/16 :goto_0

    .line 244
    .end local v16           #errorClass:I
    :cond_9
    const/16 v1, 0x20

    move/from16 v0, v19

    if-lt v0, v1, :cond_a

    const/16 v1, 0x3f

    move/from16 v0, v19

    if-gt v0, v1, :cond_a

    .line 245
    const/16 v19, 0x20

    goto/16 :goto_1

    .line 246
    :cond_a
    const/16 v1, 0x40

    move/from16 v0, v19

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5f

    move/from16 v0, v19

    if-gt v0, v1, :cond_3

    .line 247
    const/16 v19, 0x40

    goto/16 :goto_1

    .line 269
    .end local v3           #updateUri:Landroid/net/Uri;
    .end local v17           #message:Landroid/telephony/SmsMessage;
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find message for status update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessageStatusReceiver;->error(Ljava/lang/String;)V

    .line 270
    if-eqz v15, :cond_5

    .line 271
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v9, -0x1

    .line 85
    iput-object p1, p0, Lcom/android/mms/transaction/MessageStatusReceiver;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const-string v8, "com.android.mms.transaction.MessageStatusReceiver.MESSAGE_STATUS_RECEIVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 96
    .local v5, messageUri:Landroid/net/Uri;
    const-string v8, "MessageStatusReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive: uri> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v8, "pdu"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v7, v8

    check-cast v7, [B

    .line 99
    .local v7, pdu:[B
    new-instance v8, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;

    invoke-direct {v8, p0, p1, v5, v7}, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;-><init>(Lcom/android/mms/transaction/MessageStatusReceiver;Landroid/content/Context;Landroid/net/Uri;[B)V

    new-array v9, v11, [Ljava/lang/Void;

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/MessageStatusReceiver$UpdateStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 102
    .end local v5           #messageUri:Landroid/net/Uri;
    .end local v7           #pdu:[B
    :cond_2
    const-string v8, "com.android.mms.transaction.MessageStatusReceiver.CANCEL_NOTIFICATION"

    invoke-virtual {v0, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    if-nez v8, :cond_3

    .line 103
    const-string v8, "id"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 104
    .local v3, id:I
    if-eq v3, v9, :cond_0

    iget-object v8, p0, Lcom/android/mms/transaction/MessageStatusReceiver;->mContext:Landroid/content/Context;

    invoke-static {v8, v3}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_0

    .line 108
    .end local v3           #id:I
    :cond_3
    const-string v8, "com.android.mms.ACTION_MSG_WIDGET_WHAT_ONRESUM"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 109
    const-string v8, "MessageStatusReceiver"

    const-string v9, "ACTION_WIDGET_ONRESUME> "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p1, v12}, Lcom/android/mms/transaction/MessagingNotification;->setMessageWidgetScreenOn(Landroid/content/Context;Z)V

    goto :goto_0

    .line 111
    :cond_4
    const-string v8, "com.android.mms.ACTION_MSG_WIDGET_WHAT_ONPAUSE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 112
    const-string v8, "MessageStatusReceiver"

    const-string v9, "ACTION_WIDGET_ONPAUSE> "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {p1, v11}, Lcom/android/mms/transaction/MessagingNotification;->setMessageWidgetScreenOn(Landroid/content/Context;Z)V

    goto :goto_0

    .line 117
    :cond_5
    const-string v8, "com.android.mms.ACTION_MESSAGE_TAB_SCREE_ON"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 118
    const-string v8, "MessageStatusReceiver"

    const-string v9, "ACTION_MESSAGE_TAB_SCREE_ON> "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v8, "thread_ids"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    .line 122
    .local v4, ids:[J
    if-eqz v4, :cond_0

    .line 123
    invoke-static {p1, v4}, Lcom/android/mms/transaction/MessagingNotification;->setMessageTabThreadIDs(Landroid/content/Context;[J)V

    goto/16 :goto_0

    .line 126
    .end local v4           #ids:[J
    :cond_6
    const-string v8, "com.android.mms.ACTION_MESSAGE_TAB_SCREEN_OFF"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 127
    const-string v8, "MessageStatusReceiver"

    const-string v9, "ACTION_MESSAGE_TAB_SCREEN_OFF> "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v8, 0x0

    invoke-static {p1, v8}, Lcom/android/mms/transaction/MessagingNotification;->setMessageTabThreadIDs(Landroid/content/Context;[J)V

    goto/16 :goto_0

    .line 132
    :cond_7
    const-string v8, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 133
    const-string v8, "MessageStatusReceiver"

    const-string v9, "SECRET_CODE_ACTION"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 136
    .local v1, data:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isCmasEngineerModeEnabled()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-static {}, Lcom/android/mms/MmsApp;->showTestCmasSettingInEngMode()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 138
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsApp;->checkCmasServiceTable()V

    .line 139
    if-eqz v1, :cond_0

    .line 140
    const-string v8, "cdma2627"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 141
    const-class v8, Lcom/android/mms/ui/CmasControlMenuPreferenceActivity;

    invoke-virtual {p2, p1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 143
    const/high16 v8, 0x1080

    invoke-virtual {p2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 155
    .end local v2           #e:Ljava/lang/Exception;
    :cond_9
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_0

    .line 174
    .end local v1           #data:Landroid/net/Uri;
    :cond_a
    const-string v8, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 175
    const-string v8, "phoneName"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    .local v6, newPhone:Ljava/lang/String;
    const-string v8, "MessageStatusReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Radio technology switched. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is active."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportCMAS()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 178
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->initCmasChannelForNewRadioTechlogy(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 183
    .end local v6           #newPhone:Ljava/lang/String;
    :cond_b
    const-string v8, "com.htc.providers.media.DB_UPGRADE_COMPLETE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 184
    const-string v8, "MessageStatusReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_MEDIA_UPGRADE_COMPLETE> bFota_finish ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/MessagesCustomizeService;->bFota_finish:Ljava/lang/Boolean;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    sput-object v8, Lcom/android/mms/transaction/MessageStatusReceiver;->bMediaUpgarde:Ljava/lang/Boolean;

    .line 186
    sget-object v8, Lcom/android/mms/MessagesCustomizeService;->bFota_finish:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 187
    iget-object v8, p0, Lcom/android/mms/transaction/MessageStatusReceiver;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/MmsRingtonePreference;->mediaUpdateRequest(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 190
    :cond_c
    const-string v8, "com.htc.providers.media.ID_UPDATE_RESPONSE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 191
    const-string v8, "MessageStatusReceiver"

    const-string v9, "ACTION_MEDIA_UPADTE_RESPONSE> "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v8, p0, Lcom/android/mms/transaction/MessageStatusReceiver;->mContext:Landroid/content/Context;

    invoke-static {v8, p2}, Lcom/android/mms/ui/MmsRingtonePreference;->mediaUpdateRespone(Landroid/content/Context;Landroid/content/Intent;)V

    .line 193
    iget-object v8, p0, Lcom/android/mms/transaction/MessageStatusReceiver;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/MessagesCustomizeService;->setUpgradeRingtone(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
