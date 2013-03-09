.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;
    }
.end annotation


# static fields
.field public static final ALL_NOTIFICATION_ID:I = 0x321

.field public static final AUTHORITY:Ljava/lang/String; = "com.htc.sdm.provider.SDMProvider"

.field public static final CLASS_ZERO_SMS_NOTIFICATION_ID:I = 0x7d1

.field public static final CMAS_SMS_NOTIFICATION_ID:I = 0x7d3

.field private static final CMAS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final COLUMN_CMAS_BODY:I = 0x2

.field private static final COLUMN_CMAS_DATE:I = 0x1

.field private static final COLUMN_CMAS_EXP:I = 0x3

.field private static final COLUMN_CMAS_ID:I = 0x0

.field private static final COLUMN_DATE:I = 0x1

.field private static final COLUMN_MMS_ID:I = 0x2

.field private static final COLUMN_SMS_ADDRESS:I = 0x2

.field private static final COLUMN_SMS_BODY:I = 0x4

.field private static final COLUMN_SMS_ID:I = 0x5

.field private static final COLUMN_SUBJECT:I = 0x3

.field private static final COLUMN_SUBJECT_CS:I = 0x4

.field private static final COLUMN_THREAD_ID:I = 0x0

.field public static final DEFAULT_CANCEL_NOTIFY_DELAY_TIME:J = 0x1388L

.field public static final DEFAULT_CANCEL_NOTIFY_DELAY_TIME_OLD:J = 0xbb8L

.field public static final DEVICE_STORAGE_FULL_NOTIFICATION_ID:I = 0x7d2

.field public static final DOWNLOAD_FAILED_NOTIFICATION_ID:I = 0x213

.field public static final ERROR_MSG_NOTIFICATION_ID:I = 0x3e7

.field private static final HTC_EXTENDED_NOTITFICATION_ID_OFFSET:I = 0x7d0

.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator; = null

.field public static final INTENT_ACTION_MMS_NOTIFICATION_REMOVE:Ljava/lang/String; = "com.android.mms.intent.action.NOTIFICATION_REMOVE"

.field public static final INTENT_KEY_NOTIFY_CONTACT_ID:Ljava/lang/String; = "notify_contact_id"

.field public static final INTENT_KEY_NOTIFY_ID:Ljava/lang/String; = "notify_id"

.field public static final INTENT_KEY_NOTIFY_MSG_URI:Ljava/lang/String; = "notify_MsgURI"

.field public static final INTENT_KEY_NOTIFY_NEW_INCOMING:Ljava/lang/String; = "notify_is_new_incoming"

.field public static final INTENT_KEY_NOTIFY_TAG:Ljava/lang/String; = "notify_tag"

.field public static final INTENT_KEY_NOTIFY_THREAD_ID:Ljava/lang/String; = "notify_thread_id"

.field public static final INTENT_KEY_NOTIFY_TIMESTAMP:Ljava/lang/String; = "notify_time"

.field private static final LOCAL_LOGV:Z = true

.field public static final LS_CMAS_NOTIFICATION_ID:I = 0x323

.field public static final LS_NOTIFICATION_ID:I = 0x322

.field public static final MESSAGE_FAILED_NOTIFICATION_ID:I = 0x315

.field public static final MMS_SEND_FAIL_NOTIFY_ID:I = 0x320

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_STATUS_PROJECTION_HTC:[Ljava/lang/String; = null

.field private static NEED_NOTIFY_NOTIFICATION:Z = false

.field private static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND read = 0)"

.field private static final NEW_MSG_JOG_DURATION:I = 0x1b7740

.field public static final NOTIFICATION_CLICK_RECEIVER:Ljava/lang/String; = "com.android.mms.transaction.NotificationClickReceiver"

.field public static final NOTIFICATION_ID:I = 0x7b

.field public static final NOTIFICATION_SHOWING_DURING:J = 0x7d0L

.field public static final REF_T_MSG:Ljava/lang/String; = "Message"

.field public static final REF_T_NOTIFICATION:Ljava/lang/String; = "S_Notify"

.field private static final REPORT_NOTIFICATION_ID:I = 0x29a

.field public static final SDM_PROVIDER_AUTHORITY:Landroid/net/Uri; = null

.field public static final SDM_PROVIDER_URI_SETTING:Landroid/net/Uri; = null

.field private static final SENT_NOTIFICATION_ID:I = 0x309

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_STATUS_PROJECTION_HTC:[Ljava/lang/String; = null

.field private static final TABLE_NAME_SETTING:Ljava/lang/String; = "setting"

.field private static final TAG:Ljava/lang/String; = "MessagingNotification"

.field private static isJogBallEnable:Z

.field private static mGroupMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/GroupMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static mLatestNotifyTime:J

.field private static mNotifyMmsSendfailtTime:J

.field private static mNotifySendfailtTime:J

.field private static mNotifySentTime:J

.field private static mNotifyTime:J

.field private static sMessageTabThreadIds:[J

.field private static sMmsSendFailNotifyIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static s_mMessageWidgetScreenOn:Z

.field private static s_mNotifySentThreadIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static s_mNotifySmsSendFailThreadIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static s_mReceivedNotificationShowingFlag:Z

.field private static s_mReceivedNotificationShowingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sMmsSendFailNotifyIds:Ljava/util/Map;

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySentThreadIds:Ljava/util/ArrayList;

    .line 211
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySmsSendFailThreadIds:Ljava/util/ArrayList;

    .line 223
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/transaction/MessagingNotification;->mNotifyTime:J

    .line 226
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/transaction/MessagingNotification;->mNotifySentTime:J

    .line 227
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/transaction/MessagingNotification;->mNotifySendfailtTime:J

    .line 228
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/transaction/MessagingNotification;->mNotifyMmsSendfailtTime:J

    .line 229
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/mms/transaction/MessagingNotification;->mLatestNotifyTime:J

    .line 231
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sMessageTabThreadIds:[J

    .line 232
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->s_mMessageWidgetScreenOn:Z

    .line 236
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNotificationShowingFlag:Z

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNotificationShowingLock:Ljava/lang/Object;

    .line 240
    sput-boolean v3, Lcom/android/mms/transaction/MessagingNotification;->NEED_NOTIFY_NOTIFICATION:Z

    .line 243
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const-string v1, "sub_cs"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 247
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 251
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "sub"

    aput-object v1, v0, v6

    const-string v1, "sub_cs"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION_HTC:[Ljava/lang/String;

    .line 255
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "subject"

    aput-object v1, v0, v6

    const-string v1, "body"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date2"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION_HTC:[Ljava/lang/String;

    .line 281
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    const-string v1, "exp"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->CMAS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 291
    const-string v0, "content://com.htc.sdm.provider.SDMProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    .line 293
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->SDM_PROVIDER_AUTHORITY:Landroid/net/Uri;

    const-string v1, "setting"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->mGroupMessages:Ljava/util/ArrayList;

    .line 346
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 350
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"

    .prologue
    .line 138
    invoke-static/range {p0 .. p11}, Lcom/android/mms/transaction/MessagingNotification;->updateCmasNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"

    .prologue
    .line 138
    invoke-static/range {p0 .. p11}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;JLandroid/app/NotificationManager;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 138
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->removeNotificationByThreadID(Landroid/content/Context;JLandroid/app/NotificationManager;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 138
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->updateLockScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static final accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Z)I
    .locals 1
    .parameter "set"
    .parameter "info"
    .parameter "isAddToList"

    .prologue
    .line 553
    if-eqz p1, :cond_1

    .line 554
    if-eqz p2, :cond_0

    .line 555
    invoke-interface {p0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_0
    iget v0, p1, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mCount:I

    .line 560
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static addGroupMessage(Lcom/android/mms/transaction/GroupMessage;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 309
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->mGroupMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method private static addItemIntoIdList(Ljava/util/ArrayList;J)V
    .locals 3
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 505
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    if-nez p0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    monitor-enter p0

    .line 507
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 508
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_2
    const-string v0, "MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItemIntoIdList> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static alertWithoutNotificationIcon(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "notificationId"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2431
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2433
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_enable_received_notifications"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2461
    :goto_0
    return-void

    .line 2438
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 2442
    .local v1, notification:Landroid/app/Notification;
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getCharmMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 2444
    invoke-static {v1, v5}, Lcom/android/mms/transaction/MessagingNotification;->flashCharmIndicator(Landroid/app/Notification;I)V

    .line 2452
    :cond_1
    invoke-static {p0, v4, v1, v5}, Lcom/android/mms/transaction/MessagingNotification;->initiateEffectOfNotification(Landroid/content/Context;ZLandroid/app/Notification;Z)V

    .line 2454
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2459
    .local v0, nm:Landroid/app/NotificationManager;
    const/4 v3, 0x0

    invoke-static {p0, v0, p1, v3, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;)V

    goto :goto_0
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0xa

    const/16 v5, 0x20

    .line 2096
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v4

    invoke-virtual {v4, p0, p1, v7}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 2099
    .local v1, displayAddress:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_2

    const-string v4, ""

    :goto_0
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2103
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 2106
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2107
    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 2108
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2109
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2112
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2113
    invoke-virtual {p3, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 2114
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2117
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2118
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-virtual {v3, v4, v7, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2121
    return-object v3

    .line 2099
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #offset:I
    .end local v3           #spanText:Landroid/text/SpannableString;
    :cond_2
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static cancelLSNotification(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 3957
    const/16 v0, 0x322

    invoke-static {p0, v0}, Lcom/htc/lockscreen/HtcLSUtility;->removeNotification(Landroid/content/Context;I)V

    .line 3958
    return-void
.end method

.method public static cancelMMSNotification(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .parameter "context"
    .parameter "ctag"
    .parameter "notificationId"

    .prologue
    .line 921
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 926
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-static {p0, v0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 928
    return-void
.end method

.method public static cancelNoNotificationIconAlert(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 2464
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 2467
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-static {p0, v0, p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 2470
    return-void
.end method

.method public static cancelNormalNotification(Landroid/content/Context;I)Z
    .locals 1
    .parameter "context"
    .parameter "id"

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNormalNotification(Landroid/content/Context;IZ)Z

    move-result v0

    return v0
.end method

.method public static cancelNormalNotification(Landroid/content/Context;IZ)Z
    .locals 12
    .parameter "context"
    .parameter "id"
    .parameter "force"

    .prologue
    .line 963
    const-string v9, "notification"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 965
    .local v6, nm:Landroid/app/NotificationManager;
    const-wide/16 v3, 0x0

    .line 966
    .local v3, latestTime:J
    const/4 v0, 0x0

    .line 967
    .local v0, cancelAll:Z
    const/4 v5, 0x0

    .line 968
    .local v5, mmsSendfail:Z
    sparse-switch p1, :sswitch_data_0

    .line 987
    const/4 v9, 0x1

    .line 1031
    :goto_0
    return v9

    .line 970
    :sswitch_0
    sget-wide v3, Lcom/android/mms/transaction/MessagingNotification;->mNotifySentTime:J

    .line 989
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 990
    .local v7, time:J
    sub-long v1, v7, v3

    .line 991
    .local v1, diff:J
    const-string v9, "MessagingNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cancelNormalNotification: id> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", latestTime> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", diff> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-string v9, "MessagingNotification"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "force> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-wide/16 v9, 0x7d0

    cmp-long v9, v1, v9

    if-gtz v9, :cond_0

    if-eqz p2, :cond_7

    .line 996
    :cond_0
    const/16 v9, 0x7b

    if-ne p1, v9, :cond_2

    .line 998
    sget-object v9, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/mms/transaction/MessagingNotification;->clearIdList(Ljava/util/ArrayList;)V

    .line 1014
    :cond_1
    :goto_2
    if-eqz v0, :cond_5

    .line 1018
    const/16 v9, 0x7b

    invoke-static {p0, v6, v9}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 1019
    const/16 v9, 0x309

    invoke-static {p0, v6, v9}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 1020
    const/16 v9, 0x315

    invoke-static {p0, v6, v9}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 1021
    invoke-static {p0, v6}, Lcom/android/mms/transaction/MessagingNotification;->clearMmsSendFailNotification(Landroid/content/Context;Landroid/app/NotificationManager;)V

    .line 1029
    :goto_3
    const/4 v9, 0x1

    goto :goto_0

    .line 973
    .end local v1           #diff:J
    .end local v7           #time:J
    :sswitch_1
    sget-wide v3, Lcom/android/mms/transaction/MessagingNotification;->mNotifySendfailtTime:J

    .line 974
    goto :goto_1

    .line 976
    :sswitch_2
    sget-wide v3, Lcom/android/mms/transaction/MessagingNotification;->mNotifyTime:J

    .line 977
    goto :goto_1

    .line 979
    :sswitch_3
    sget-wide v3, Lcom/android/mms/transaction/MessagingNotification;->mNotifyMmsSendfailtTime:J

    .line 980
    const/4 v5, 0x1

    .line 981
    goto :goto_1

    .line 983
    :sswitch_4
    sget-wide v3, Lcom/android/mms/transaction/MessagingNotification;->mLatestNotifyTime:J

    .line 984
    const/4 v0, 0x1

    .line 985
    goto :goto_1

    .line 999
    .restart local v1       #diff:J
    .restart local v7       #time:J
    :cond_2
    const/16 v9, 0x309

    if-ne p1, v9, :cond_3

    .line 1001
    sget-object v9, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySentThreadIds:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/mms/transaction/MessagingNotification;->clearIdList(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1002
    :cond_3
    const/16 v9, 0x315

    if-ne p1, v9, :cond_4

    .line 1004
    sget-object v9, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySmsSendFailThreadIds:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/mms/transaction/MessagingNotification;->clearIdList(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1005
    :cond_4
    const/16 v9, 0x321

    if-ne p1, v9, :cond_1

    .line 1009
    sget-object v9, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/mms/transaction/MessagingNotification;->clearIdList(Ljava/util/ArrayList;)V

    .line 1010
    sget-object v9, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySentThreadIds:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/mms/transaction/MessagingNotification;->clearIdList(Ljava/util/ArrayList;)V

    .line 1011
    sget-object v9, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySmsSendFailThreadIds:Ljava/util/ArrayList;

    invoke-static {v9}, Lcom/android/mms/transaction/MessagingNotification;->clearIdList(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1022
    :cond_5
    if-eqz v5, :cond_6

    .line 1023
    invoke-static {p0, v6}, Lcom/android/mms/transaction/MessagingNotification;->clearMmsSendFailNotification(Landroid/content/Context;Landroid/app/NotificationManager;)V

    goto :goto_3

    .line 1027
    :cond_6
    invoke-static {p0, v6, p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    goto :goto_3

    .line 1031
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 968
    nop

    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_2
        0x309 -> :sswitch_0
        0x315 -> :sswitch_1
        0x320 -> :sswitch_3
        0x321 -> :sswitch_4
    .end sparse-switch
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "notificationId"

    .prologue
    const/4 v0, 0x0

    .line 818
    invoke-static {p0, v0, v0, p1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 820
    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;I)V
    .locals 1
    .parameter "context"
    .parameter "nm"
    .parameter "id"

    .prologue
    .line 831
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 832
    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;I)V
    .locals 11
    .parameter "context"
    .parameter "nm"
    .parameter "tag"
    .parameter "id"

    .prologue
    const/4 v8, 0x0

    .line 843
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 902
    :goto_0
    return-void

    .line 844
    :cond_0
    if-nez p1, :cond_1

    .line 845
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/NotificationManager;

    .line 847
    .restart local p1
    :cond_1
    sparse-switch p3, :sswitch_data_0

    .line 883
    :cond_2
    :goto_1
    move-object v1, p1

    .line 884
    .local v1, _nm:Landroid/app/NotificationManager;
    move-object v2, p2

    .line 885
    .local v2, _tag:Ljava/lang/String;
    move v0, p3

    .line 895
    .local v0, _id:I
    invoke-static {}, Lcom/android/mms/util/MmsAsyncWorkHandler;->getLowPriorityHandler()Landroid/os/Handler;

    move-result-object v3

    .line 896
    .local v3, handler:Landroid/os/Handler;
    new-instance v7, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v7, v1, v2, v0}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/app/NotificationManager;Ljava/lang/String;I)V

    invoke-virtual {v3, v7}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 849
    .end local v0           #_id:I
    .end local v1           #_nm:Landroid/app/NotificationManager;
    .end local v2           #_tag:Ljava/lang/String;
    .end local v3           #handler:Landroid/os/Handler;
    :sswitch_0
    sget-boolean v7, Lcom/android/mms/transaction/MessagingNotification;->NEED_NOTIFY_NOTIFICATION:Z

    if-nez v7, :cond_2

    .line 851
    invoke-static {v8}, Lcom/android/mms/MmsApp;->setNewIncomingMsgCount(I)V

    .line 854
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 857
    invoke-static {p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v9

    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSense35BubbleRule()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, -0x1

    :goto_2
    const/4 v10, 0x1

    invoke-virtual {v9, p0, v7, v10}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 861
    :cond_3
    invoke-static {v8}, Lcom/android/mms/transaction/MessagingNotification;->setReceivedNotificationShowing(Z)V

    .line 863
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->cancelLSNotification(Landroid/content/Context;)V

    .line 864
    const-string v7, "MessagingNotification"

    const-string v8, "Cancel notification complete"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    move v7, v8

    .line 857
    goto :goto_2

    .line 871
    :sswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 872
    .local v6, ttime:Ljava/lang/Long;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 873
    .local v5, sp:Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 874
    .local v4, preEdt:Landroid/content/SharedPreferences$Editor;
    const-string v7, "CMAS_LASTCANCEL"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 875
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    .line 847
    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_0
        0x7d3 -> :sswitch_1
    .end sparse-switch
.end method

.method private static clearIdList(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 515
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-nez p0, :cond_0

    .line 520
    :goto_0
    return-void

    .line 516
    :cond_0
    monitor-enter p0

    .line 517
    :try_start_0
    const-string v0, "MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear Id list> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 519
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static clearMmsSendFailNotification(Landroid/content/Context;Landroid/app/NotificationManager;)V
    .locals 5
    .parameter "context"
    .parameter "nm"

    .prologue
    .line 937
    if-nez p1, :cond_0

    .line 938
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/NotificationManager;

    .line 941
    .restart local p1
    :cond_0
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sMmsSendFailNotifyIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 942
    .local v1, idx:Ljava/lang/String;
    const-string v2, "MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keySet> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {p0, p1, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;I)V

    goto :goto_0

    .line 946
    .end local v1           #idx:Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sMmsSendFailNotifyIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 947
    return-void
.end method

.method private static converCdmaErrorCauseCodeMessage(I)I
    .locals 4
    .parameter "value"

    .prologue
    const v3, 0x7f09019e

    const v2, 0x7f09018d

    const v1, 0x7f09018a

    const v0, 0x7f090184

    .line 2760
    packed-switch p0, :pswitch_data_0

    .line 3006
    :pswitch_0
    const v0, 0x7f09012c

    :goto_0
    :pswitch_1
    return v0

    .line 2761
    :pswitch_2
    const v0, 0x7f09017f

    goto :goto_0

    .line 2762
    :pswitch_3
    const v0, 0x7f090180

    goto :goto_0

    .line 2763
    :pswitch_4
    const v0, 0x7f090181

    goto :goto_0

    .line 2764
    :pswitch_5
    const v0, 0x7f090182

    goto :goto_0

    .line 2765
    :pswitch_6
    const v0, 0x7f090183

    goto :goto_0

    .line 2793
    :pswitch_7
    const v0, 0x7f090185

    goto :goto_0

    .line 2794
    :pswitch_8
    const v0, 0x7f090186

    goto :goto_0

    .line 2795
    :pswitch_9
    const v0, 0x7f090187

    goto :goto_0

    .line 2796
    :pswitch_a
    const v0, 0x7f090189

    goto :goto_0

    :pswitch_b
    move v0, v1

    .line 2797
    goto :goto_0

    .line 2798
    :pswitch_c
    const v0, 0x7f09018b

    goto :goto_0

    .line 2799
    :pswitch_d
    const v0, 0x7f09018c

    goto :goto_0

    :pswitch_e
    move v0, v2

    .line 2800
    goto :goto_0

    :pswitch_f
    move v0, v2

    .line 2808
    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 2824
    goto :goto_0

    .line 2825
    :pswitch_11
    const v0, 0x7f09018e

    goto :goto_0

    .line 2826
    :pswitch_12
    const v0, 0x7f09018f

    goto :goto_0

    .line 2827
    :pswitch_13
    const v0, 0x7f090190

    goto :goto_0

    .line 2857
    :pswitch_14
    const v0, 0x7f090191

    goto :goto_0

    .line 2858
    :pswitch_15
    const v0, 0x7f090192

    goto :goto_0

    .line 2859
    :pswitch_16
    const v0, 0x7f090194

    goto :goto_0

    .line 2860
    :pswitch_17
    const v0, 0x7f090195

    goto :goto_0

    .line 2861
    :pswitch_18
    const v0, 0x7f090196

    goto :goto_0

    .line 2862
    :pswitch_19
    const v0, 0x7f090197

    goto :goto_0

    .line 2863
    :pswitch_1a
    const v0, 0x7f090198

    goto :goto_0

    .line 2864
    :pswitch_1b
    const v0, 0x7f090199

    goto :goto_0

    .line 2865
    :pswitch_1c
    const v0, 0x7f09019a

    goto :goto_0

    .line 2866
    :pswitch_1d
    const v0, 0x7f09019b

    goto :goto_0

    .line 2867
    :pswitch_1e
    const v0, 0x7f09019c

    goto :goto_0

    :pswitch_1f
    move v0, v3

    .line 2868
    goto :goto_0

    :pswitch_20
    move v0, v3

    .line 3005
    goto :goto_0

    .line 2760
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method private static converCdmaErrorClass(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 3010
    packed-switch p0, :pswitch_data_0

    .line 3016
    const v0, 0x7f09017e

    :goto_0
    return v0

    .line 3011
    :pswitch_0
    const v0, 0x7f09017a

    goto :goto_0

    .line 3012
    :pswitch_1
    const v0, 0x7f09017b

    goto :goto_0

    .line 3013
    :pswitch_2
    const v0, 0x7f09017c

    goto :goto_0

    .line 3014
    :pswitch_3
    const v0, 0x7f09017d

    goto :goto_0

    .line 3010
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static converErrorMessage(I)I
    .locals 5
    .parameter "errorCode"

    .prologue
    const v3, 0x7f09012d

    const v0, 0x7f09012a

    const v4, 0x7f09012e

    const v2, 0x7f09012c

    const v1, 0x7f09012b

    .line 2504
    packed-switch p0, :pswitch_data_0

    .line 2753
    :pswitch_0
    const v0, 0x7f090241

    :goto_0
    :pswitch_1
    return v0

    .line 2505
    :pswitch_2
    const v0, 0x7f0900f8

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2512
    goto :goto_0

    :pswitch_4
    move v0, v2

    .line 2513
    goto :goto_0

    :pswitch_5
    move v0, v1

    .line 2514
    goto :goto_0

    :pswitch_6
    move v0, v2

    .line 2516
    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 2525
    goto :goto_0

    :pswitch_8
    move v0, v2

    .line 2526
    goto :goto_0

    :pswitch_9
    move v0, v1

    .line 2531
    goto :goto_0

    :pswitch_a
    move v0, v3

    .line 2532
    goto :goto_0

    :pswitch_b
    move v0, v4

    .line 2533
    goto :goto_0

    :pswitch_c
    move v0, v2

    .line 2534
    goto :goto_0

    :pswitch_d
    move v0, v4

    .line 2535
    goto :goto_0

    :pswitch_e
    move v0, v1

    .line 2542
    goto :goto_0

    :pswitch_f
    move v0, v2

    .line 2543
    goto :goto_0

    :pswitch_10
    move v0, v1

    .line 2551
    goto :goto_0

    :pswitch_11
    move v0, v2

    .line 2552
    goto :goto_0

    :pswitch_12
    move v0, v1

    .line 2554
    goto :goto_0

    :pswitch_13
    move v0, v4

    .line 2555
    goto :goto_0

    :pswitch_14
    move v0, v1

    .line 2573
    goto :goto_0

    :pswitch_15
    move v0, v4

    .line 2574
    goto :goto_0

    :pswitch_16
    move v0, v1

    .line 2585
    goto :goto_0

    :pswitch_17
    move v0, v2

    .line 2586
    goto :goto_0

    :pswitch_18
    move v0, v1

    .line 2599
    goto :goto_0

    :pswitch_19
    move v0, v2

    .line 2604
    goto :goto_0

    :pswitch_1a
    move v0, v1

    .line 2615
    goto :goto_0

    :pswitch_1b
    move v0, v2

    .line 2616
    goto :goto_0

    :pswitch_1c
    move v0, v1

    .line 2631
    goto :goto_0

    :pswitch_1d
    move v0, v2

    .line 2696
    goto :goto_0

    :pswitch_1e
    move v0, v1

    .line 2697
    goto :goto_0

    :pswitch_1f
    move v0, v1

    .line 2699
    goto :goto_0

    :pswitch_20
    move v0, v3

    .line 2700
    goto :goto_0

    .line 2701
    :pswitch_21
    const v0, 0x7f09012f

    goto :goto_0

    .line 2702
    :pswitch_22
    const v0, 0x7f090130

    goto :goto_0

    :pswitch_23
    move v0, v2

    .line 2749
    goto :goto_0

    .line 2504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method private static flashCharmIndicator(Landroid/app/Notification;I)V
    .locals 3
    .parameter "notification"
    .parameter "type"

    .prologue
    .line 1965
    if-eqz p0, :cond_0

    .line 1966
    iget v0, p0, Landroid/app/Notification;->flags:I

    const/high16 v1, 0x200

    or-int/2addr v0, v1

    iput v0, p0, Landroid/app/Notification;->flags:I

    .line 1967
    iput p1, p0, Landroid/app/Notification;->charmMode:I

    .line 1968
    const-string v0, "MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Charm indicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    :cond_0
    return-void
.end method

.method public static getAddressFromThreadId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 3302
    const/4 v7, 0x0

    .line 3304
    .local v7, address:Ljava/lang/String;
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 3305
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 3306
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "FromThreadTable"

    const-string v1, "true"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3307
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "recipient_address"

    aput-object v0, v3, v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3311
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3312
    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3320
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v5

    .line 3315
    .restart local v8       #builder:Landroid/net/Uri$Builder;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_2
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3316
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v7

    .line 3320
    goto :goto_0
.end method

.method public static getAddressFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 3325
    const-wide/16 v10, -0x1

    .line 3326
    .local v10, threadId:J
    const/4 v7, 0x0

    .line 3329
    .local v7, address:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sms/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 3331
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "thread_id"

    aput-object v2, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3334
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3335
    :cond_0
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3336
    :cond_1
    const/4 v0, 0x0

    .line 3371
    .end local v9           #cursor:Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 3338
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_2
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3339
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3355
    :goto_1
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-eqz v0, :cond_b

    .line 3356
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 3357
    .local v8, builder:Landroid/net/Uri$Builder;
    const-string v0, "FromThreadTable"

    const-string v1, "true"

    invoke-virtual {v8, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3358
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "recipient_address"

    aput-object v4, v3, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3362
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3363
    :cond_3
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3364
    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 3340
    .end local v8           #builder:Landroid/net/Uri$Builder;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_5
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/mms/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 3342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "thread_id"

    aput-object v2, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 3345
    .restart local v9       #cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_6

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3346
    :cond_6
    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3347
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3349
    :cond_8
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3350
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 3352
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3366
    .restart local v8       #builder:Landroid/net/Uri$Builder;
    .restart local v9       #cursor:Landroid/database/Cursor;
    :cond_a
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3367
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .line 3371
    goto/16 :goto_0

    .line 3369
    .end local v8           #builder:Landroid/net/Uri$Builder;
    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private static getAppIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1039
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1040
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 1041
    .local v1, builder:Landroid/net/Uri$Builder;
    const-string v2, "thread_id"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1042
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1050
    .end local v1           #builder:Landroid/net/Uri$Builder;
    .local v0, appIntent:Landroid/content/Intent;
    :goto_0
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1052
    return-object v0

    .line 1048
    .end local v0           #appIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    sget-object v3, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v0       #appIntent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private static getCdmaErrorMessage(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "value"

    .prologue
    .line 3021
    if-gtz p1, :cond_0

    .line 3022
    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->converErrorMessage(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3031
    :goto_0
    return-object v2

    .line 3025
    :cond_0
    shr-int/lit8 v1, p1, 0x10

    .line 3026
    .local v1, errorClass:I
    const v3, 0xffff

    and-int v0, p1, v3

    .line 3028
    .local v0, errorCause:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/mms/transaction/MessagingNotification;->converCdmaErrorCauseCodeMessage(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090178

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " = \'"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/mms/transaction/MessagingNotification;->converCdmaErrorClass(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f090179

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3031
    .local v2, errorMessage:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getCharmMsgNotificationSetting(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 1598
    const/4 v0, 0x1

    .line 1599
    .local v0, bCharm:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x4060

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1601
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "charm_message_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1607
    :cond_0
    :goto_0
    return v0

    .line 1602
    :catch_0
    move-exception v1

    .line 1603
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static final getCmasNewMessageNotificationInfo(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/Long;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 24
    .parameter "context"
    .parameter "type"
    .parameter "msgId"
    .parameter "titlebody"
    .parameter "receivetime"

    .prologue
    .line 4091
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 4092
    .local v21, sp:Landroid/content/SharedPreferences;
    const-string v1, "CMAS_LASTCANCEL"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    .line 4095
    .local v19, prevCancelTime:J
    const-string v1, "content://htc-cmas"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4096
    .local v3, cmasuri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4097
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v1, "received_time > %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4099
    .local v5, tCMASwhere:Ljava/lang/String;
    const/16 v22, 0x0

    .line 4100
    .local v22, title:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/mms/ui/MessageUtils;->getCmasTitleResId(I)I

    move-result v23

    .line 4101
    .local v23, titleResId:I
    if-lez v23, :cond_0

    .line 4102
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, v23

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 4105
    :cond_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4106
    const-string v1, "\r\n"

    const-string v4, "\n"

    move-object/from16 v0, p4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p4

    .line 4110
    :cond_1
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->CMAS_STATUS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 4114
    .local v18, cursor:Landroid/database/Cursor;
    if-eqz v18, :cond_2

    .line 4116
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v17

    .line 4118
    .local v17, ccount:I
    const v9, 0x7f020173

    const/4 v10, 0x0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v13

    move-object/from16 v6, v22

    move-object/from16 v7, p4

    move-object/from16 v8, p0

    move/from16 v14, p1

    move-wide/from16 v15, p2

    invoke-static/range {v6 .. v16}, Lcom/android/mms/transaction/MessagingNotification;->getNewCMASMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JIIJ)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 4122
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 4125
    .end local v17           #ccount:I
    :goto_0
    return-object v1

    .line 4122
    :catchall_0
    move-exception v1

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v1

    .line 4125
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 3444
    invoke-static {}, Lcom/android/mms/util/ContactNameCache;->getInstance()Lcom/android/mms/util/ContactNameCache;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/android/mms/util/ContactNameCache;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3445
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3446
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 3447
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 3448
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 3450
    .end local v0           #info:Lcom/android/internal/telephony/CallerInfo;
    :cond_0
    return-object v1
.end method

.method public static getDisplayMessageSetting(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3425
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3426
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v7, "pref_display_message"

    const/4 v8, 0x0

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3427
    .local v0, setting:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 3428
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 3429
    .local v2, values:[Ljava/lang/String;
    aget-object v7, v2, v3

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3438
    .end local v2           #values:[Ljava/lang/String;
    :goto_0
    return v3

    .line 3431
    .restart local v2       #values:[Ljava/lang/String;
    :cond_0
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v4

    .line 3432
    goto :goto_0

    .line 3433
    :cond_1
    aget-object v3, v2, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    .line 3434
    goto :goto_0

    .line 3435
    :cond_2
    aget-object v3, v2, v6

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    .line 3436
    goto :goto_0

    .line 3438
    .end local v2           #values:[Ljava/lang/String;
    :cond_3
    const/4 v3, -0x1

    goto :goto_0
.end method

.method static getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 1127
    const/4 v1, 0x6

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "title"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "_data"

    aput-object v4, v2, v1

    const/4 v1, 0x3

    const-string v4, "content_offset"

    aput-object v4, v2, v1

    const/4 v1, 0x4

    const-string v4, "content_id"

    aput-object v4, v2, v1

    const/4 v1, 0x5

    const-string v4, "content_boundary_offset"

    aput-object v4, v2, v1

    .line 1136
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1137
    .local v0, res:Landroid/content/ContentResolver;
    const-string v5, "title"

    move-object v1, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1141
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v11, 0x0

    .line 1142
    .local v11, drmUri:Ljava/lang/String;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1143
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1144
    const-string v1, "_data"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1145
    .local v10, data:Ljava/lang/String;
    const-string v1, "content_offset"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1146
    .local v7, contentOffset:I
    const-string v1, "content_id"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1147
    .local v8, contentid:Ljava/lang/String;
    const-string v1, "content_boundary_offset"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1148
    .local v6, boundaryoffset:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "htcdrm://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_header_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&drm_trailor_len="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&sd_content_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1153
    .end local v6           #boundaryoffset:Ljava/lang/String;
    .end local v7           #contentOffset:I
    .end local v8           #contentid:Ljava/lang/String;
    .end local v10           #data:Ljava/lang/String;
    :cond_0
    if-eqz v9, :cond_1

    .line 1154
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1155
    const/4 v9, 0x0

    .line 1158
    :cond_1
    return-object v11
.end method

.method public static getFirstValidNotificationSoundUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 9
    .parameter "context"

    .prologue
    .line 1669
    const-string v6, "MessagingNotification"

    const-string v7, "getFirstValidNotificationSoundUri> "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    const/4 v5, 0x0

    .line 1671
    .local v5, sound:Landroid/net/Uri;
    new-instance v4, Landroid/media/RingtoneManager;

    invoke-direct {v4, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 1672
    .local v4, rm:Landroid/media/RingtoneManager;
    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroid/media/RingtoneManager;->setType(I)V

    .line 1673
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/media/RingtoneManager;->setIncludeDrm(Z)V

    .line 1674
    invoke-virtual {v4}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1675
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 1678
    const/4 v3, 0x0

    .line 1679
    .local v3, i:I
    :goto_0
    :try_start_0
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1680
    invoke-virtual {v4, v3}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v5

    .line 1681
    const-string v6, "MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sound> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1682
    if-eqz v5, :cond_2

    .line 1684
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "r"

    invoke-virtual {v6, v5, v7}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 1685
    .local v2, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1695
    .end local v2           #fd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1698
    .end local v3           #i:I
    :cond_1
    return-object v5

    .line 1687
    .restart local v3       #i:I
    :catch_0
    move-exception v1

    .line 1688
    .local v1, e:Ljava/lang/Exception;
    :try_start_2
    const-string v6, "MessagingNotification"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid uri> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1689
    const/4 v5, 0x0

    .line 1692
    .end local v1           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1695
    :catchall_0
    move-exception v6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method public static getGroupMessage(J)Lcom/android/mms/transaction/GroupMessage;
    .locals 3
    .parameter "id"

    .prologue
    .line 322
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mGroupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 323
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mGroupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/GroupMessage;

    iget-wide v1, v1, Lcom/android/mms/transaction/GroupMessage;->groupId:J

    cmp-long v1, v1, p0

    if-nez v1, :cond_0

    .line 324
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mGroupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/GroupMessage;

    .line 326
    :goto_1
    return-object v1

    .line 322
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getMmsCanonicalErrorMessage(I)I
    .locals 3
    .parameter "code"

    .prologue
    const v0, 0x7f0901b0

    .line 2474
    sparse-switch p0, :sswitch_data_0

    .line 2498
    :cond_0
    :goto_0
    return v0

    .line 2476
    :sswitch_0
    const v0, 0x7f0901af

    goto :goto_0

    .line 2479
    :sswitch_1
    const v0, 0x7f0901b1

    goto :goto_0

    .line 2483
    :sswitch_2
    const v0, 0x7f0901b2

    goto :goto_0

    .line 2486
    :sswitch_3
    const v0, 0x7f0901b3

    goto :goto_0

    .line 2489
    :sswitch_4
    const v0, 0x7f0901b4

    goto :goto_0

    .line 2491
    :sswitch_5
    const v0, 0x7f090240

    goto :goto_0

    .line 2493
    :sswitch_6
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd1

    if-ne v1, v2, :cond_0

    .line 2494
    const v0, 0x7f090271

    goto :goto_0

    .line 2474
    nop

    :sswitch_data_0
    .sparse-switch
        0x1002 -> :sswitch_0
        0x10082 -> :sswitch_3
        0x10084 -> :sswitch_2
        0x10086 -> :sswitch_1
        0x100c1 -> :sswitch_2
        0x100c3 -> :sswitch_1
        0x101c1 -> :sswitch_4
        0x2006a -> :sswitch_6
        0x2014c -> :sswitch_5
        0x100100e1 -> :sswitch_3
        0x100100e3 -> :sswitch_2
        0x100101e2 -> :sswitch_4
    .end sparse-switch
.end method

.method public static final getMmsNewMessageNotificationInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 20
    .parameter "context"

    .prologue
    .line 628
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 638
    .local v3, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 639
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION_HTC:[Ljava/lang/String;

    const-string v6, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

    const/4 v7, 0x0

    const-string v8, "date2 desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 649
    .local v16, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v16, :cond_2

    .line 651
    :try_start_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 652
    const/4 v2, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 653
    .local v17, msgId:J
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v19

    .line 656
    .local v19, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 659
    .local v4, address:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f090259

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 661
    .local v5, subject:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 662
    .local v9, threadId:J
    const/4 v2, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-wide/16 v13, 0x3e8

    mul-long v11, v6, v13

    .line 664
    .local v11, timeMillis:J
    const v7, 0x7f020159

    const/4 v8, 0x0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v13

    const-wide/16 v14, 0x0

    move-object/from16 v6, p0

    invoke-static/range {v4 .. v15}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJIJ)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 671
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 674
    .end local v4           #address:Ljava/lang/String;
    .end local v5           #subject:Ljava/lang/String;
    .end local v9           #threadId:J
    .end local v11           #timeMillis:J
    .end local v17           #msgId:J
    .end local v19           #msgUri:Landroid/net/Uri;
    :goto_1
    return-object v2

    .line 643
    .end local v16           #cursor:Landroid/database/Cursor;
    :cond_0
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(msg_box=1 AND read=0 AND (m_type=130 OR m_type=132))"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .restart local v16       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 671
    :cond_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 674
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 671
    :catchall_0
    move-exception v2

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "sub"
    .parameter "charset"

    .prologue
    .line 2125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getNewCMASMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JIIJ)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 14
    .parameter "title"
    .parameter "body"
    .parameter "context"
    .parameter "iconResourceId"
    .parameter "subject"
    .parameter "timeMillis"
    .parameter "count"
    .parameter "type"
    .parameter "msgId"

    .prologue
    .line 4228
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4230
    .local v3, clickIntent:Landroid/content/Intent;
    const-wide/16 v11, 0x0

    .line 4231
    .local v11, contactId:J
    const/4 v4, 0x1

    move/from16 v0, p7

    if-le v0, v4, :cond_0

    .line 4232
    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.MmsListActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4233
    const-string v4, "c_type"

    move/from16 v0, p8

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4239
    :goto_0
    const/high16 v4, 0x1400

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4241
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, p0, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 4243
    .local v13, senderInfo:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v13, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 4245
    .local v9, senderInfoName:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, p0, v1, p1}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 4248
    .local v6, ticker:Ljava/lang/CharSequence;
    new-instance v2, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-object v4, p1

    move/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V

    .line 4251
    .local v2, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    return-object v2

    .line 4235
    .end local v2           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .end local v6           #ticker:Ljava/lang/CharSequence;
    .end local v9           #senderInfoName:Ljava/lang/String;
    .end local v13           #senderInfo:Ljava/lang/String;
    :cond_0
    const-string v4, "com.android.mms"

    const-string v5, "com.android.mms.ui.OneCmasViewActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4236
    const-string v4, "c_type"

    move/from16 v0, p8

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4237
    const-string v4, "_id"

    move-wide/from16 v0, p9

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static final getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJIJ)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 19
    .parameter "address"
    .parameter "body"
    .parameter "context"
    .parameter "iconResourceId"
    .parameter "subject"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "count"
    .parameter "msgId"

    .prologue
    .line 744
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getAppIntent()Landroid/content/Intent;

    move-result-object v13

    .line 745
    .local v13, clickIntent:Landroid/content/Intent;
    const-wide/16 v14, 0x0

    .line 746
    .local v14, contactId:J
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 748
    const-string v5, "content://mms-sms-v2/get-contactID"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 749
    .local v18, uri:Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-static {v0, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 750
    .local v16, cursor:Landroid/database/Cursor;
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 751
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 752
    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 753
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 757
    :cond_0
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 760
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNGMGroupMessage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 761
    const-string v5, "address"

    move-object/from16 v0, p2

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->getAddressFromThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v18           #uri:Landroid/net/Uri;
    :goto_0
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1, v5, v6}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 787
    .local v17, senderInfo:Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 789
    .local v11, senderInfoName:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 792
    .local v8, ticker:Ljava/lang/CharSequence;
    const-string v5, "MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thread id > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p5

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string v5, "MessagingNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Contact id > "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance v4, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-object v5, v13

    move-object/from16 v6, p1

    move/from16 v7, p3

    move-wide/from16 v9, p7

    move/from16 v12, p9

    invoke-direct/range {v4 .. v12}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;-><init>(Landroid/content/Intent;Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/String;I)V

    .line 799
    .local v4, info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    iput-wide v14, v4, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mContactId:J

    .line 800
    move-wide/from16 v0, p5

    iput-wide v0, v4, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->mThreadId:J

    .line 801
    return-object v4

    .line 763
    .end local v4           #info:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .end local v8           #ticker:Ljava/lang/CharSequence;
    .end local v11           #senderInfoName:Ljava/lang/String;
    .end local v17           #senderInfo:Ljava/lang/String;
    .restart local v16       #cursor:Landroid/database/Cursor;
    .restart local v18       #uri:Landroid/net/Uri;
    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 764
    const-string v5, "address"

    move-object/from16 v0, p0

    invoke-virtual {v13, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 766
    :cond_2
    const-string v5, "address"

    const v6, 0x7f090021

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 778
    .end local v16           #cursor:Landroid/database/Cursor;
    .end local v18           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {v13}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public static getNewMsgNotificationSetting(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 1567
    const/4 v0, 0x1

    .line 1568
    .local v0, displayTextOnLS:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v2

    const v3, 0x40066666

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1570
    :try_start_0
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationPreview()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1571
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_message_notification_preview"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 1579
    :cond_0
    :goto_0
    return v0

    .line 1573
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "htc_new_message_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1574
    :catch_0
    move-exception v1

    .line 1575
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1576
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getNotificationTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4212
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportIgnoreCmas2Mute()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VZW_CMAS_IgnoreNotification2Mute"

    .line 4213
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getReceivedNotificationShowing()Z
    .locals 2

    .prologue
    .line 914
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNotificationShowingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 915
    :try_start_0
    sget-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNotificationShowingFlag:Z

    monitor-exit v1

    return v0

    .line 916
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static final getSmsNewMessageNotificationInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    .locals 17
    .parameter "context"

    .prologue
    .line 679
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 689
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSortByDeviceTime()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION_HTC:[Ljava/lang/String;

    const-string v5, "(type = 1 AND read = 0)"

    const/4 v6, 0x0

    const-string v7, "date2 desc"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 700
    .local v15, cursor:Landroid/database/Cursor;
    :goto_0
    if-eqz v15, :cond_4

    .line 702
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 703
    const/4 v1, 0x2

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 704
    .local v3, address:Ljava/lang/String;
    const/4 v1, 0x4

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 706
    .local v4, body:Ljava/lang/String;
    const/4 v1, 0x5

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 707
    .local v13, msgId:J
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v16

    .line 710
    .local v16, msgUri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 712
    invoke-static {v4}, Lcom/android/mms/ui/MessageUtils;->isSmsVcard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    const v1, 0x7f090172

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 716
    :cond_0
    const-string v1, "\r\n"

    const-string v5, "\n"

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 720
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 721
    .local v8, threadId:J
    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 723
    .local v10, timeMillis:J
    const v6, 0x7f020159

    const/4 v7, 0x0

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v12

    move-object/from16 v5, p0

    invoke-static/range {v3 .. v14}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;JJIJ)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 728
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 731
    .end local v3           #address:Ljava/lang/String;
    .end local v4           #body:Ljava/lang/String;
    .end local v8           #threadId:J
    .end local v10           #timeMillis:J
    .end local v13           #msgId:J
    .end local v16           #msgUri:Landroid/net/Uri;
    :goto_1
    return-object v1

    .line 694
    .end local v15           #cursor:Landroid/database/Cursor;
    :cond_2
    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v5, "(type = 1 AND read = 0)"

    const/4 v6, 0x0

    const-string v7, "date desc"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v7}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .restart local v15       #cursor:Landroid/database/Cursor;
    goto :goto_0

    .line 728
    :cond_3
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 731
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 728
    :catchall_0
    move-exception v1

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method static getSystemSettingsValue(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 1085
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "name"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "value"

    aput-object v4, v2, v1

    .line 1090
    .local v2, cols:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, res:Landroid/content/ContentResolver;
    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 1091
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1095
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 1096
    .local v7, settingsuUri:Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1097
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1098
    const-string v1, "value"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1101
    :cond_0
    if-eqz v6, :cond_1

    .line 1102
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1103
    const/4 v6, 0x0

    .line 1105
    :cond_1
    return-object v7
.end method

.method public static getThreadIdFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 11
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 3269
    if-nez p1, :cond_1

    const-wide/16 v9, 0x0

    .line 3291
    :cond_0
    :goto_0
    return-wide v9

    .line 3270
    :cond_1
    const-wide/16 v9, 0x0

    .line 3271
    .local v9, threadId:J
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    .line 3272
    .local v7, authority:Ljava/lang/String;
    const-string v0, "sms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mms"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3273
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3275
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    .line 3277
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3278
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v9

    .line 3281
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getVVMCharmMsgNotificationSetting(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 1585
    const/4 v0, 0x1

    .line 1586
    .local v0, bCharm:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getSenseVersion()F

    move-result v2

    const/high16 v3, 0x4060

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 1588
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "charm_voice_mail_notification"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1594
    :cond_0
    :goto_0
    return v0

    .line 1589
    :catch_0
    move-exception v1

    .line 1590
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getValidNotificationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "context"
    .parameter "StrUri"

    .prologue
    .line 1707
    const-string v3, "MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValidNotificationUri> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    if-nez p1, :cond_0

    const-string p1, ""

    .line 1710
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1713
    .local v2, sound:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1714
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v3, v2

    .line 1772
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :goto_0
    return-object v3

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x2

    invoke-static {p0, v3}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1718
    const-string v3, "MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sound does not exsit, change to default> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/mms/transaction/MessagingNotification;->wasSystemSettingsValue(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.tmobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1726
    const-string v3, "MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get tmobile sound Uri > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 1727
    goto :goto_0

    .line 1733
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1734
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    move-object v3, v2

    .line 1735
    goto :goto_0

    .line 1736
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v0

    .line 1737
    const-string v3, "MessagingNotification"

    const-string v4, "default sound uri fail. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getFirstValidNotificationSoundUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 1739
    if-eqz v2, :cond_4

    move-object v3, v2

    goto :goto_0

    .line 1741
    :cond_4
    const-string v3, "file:/system/media/audio/notifications/Color.mp3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1742
    const-string v3, "MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not get valid sound, change to absolute> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1747
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    move-object v3, v2

    .line 1748
    goto/16 :goto_0

    .line 1749
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v0

    .line 1750
    invoke-static {p0}, Landroid/media/RingtoneManager;->getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 1751
    const-string v3, "MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sound does not exsit, change to get ringtone> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1756
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_6
    move-object v3, v2

    .line 1757
    goto/16 :goto_0

    .line 1758
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v0

    .line 1760
    const-string v3, "file:/system/media/audio/notifications/Bubble.mp3"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1761
    const-string v3, "MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sound does not exsit, change to specify> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1765
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1766
    .restart local v1       #fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_7
    move-object v3, v2

    .line 1768
    goto/16 :goto_0

    .line 1769
    .end local v1           #fd:Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v0

    .line 1770
    const-string v3, "MessagingNotification"

    const-string v4, "we can not find any useful sound, give up. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static haveAllResult(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 330
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getGroupMessage(J)Lcom/android/mms/transaction/GroupMessage;

    move-result-object v0

    .line 331
    .local v0, message:Lcom/android/mms/transaction/GroupMessage;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/android/mms/transaction/GroupMessage;->haveAllResult()Z

    move-result v1

    .line 334
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initEffectOfCmasNotification(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 28
    .parameter "context"
    .parameter "notification"

    .prologue
    .line 1786
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 1787
    .local v22, sp:Landroid/content/SharedPreferences;
    const-string v24, "pref_key_vibrate_received_notifications"

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 1789
    .local v13, bVibrate:Z
    const-string v24, "pref_key_play_received_notifications"

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    .line 1791
    .local v12, bSound:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    .line 1792
    .local v23, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v15

    .line 1818
    .local v15, callState:I
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 1820
    const-string v24, "pref_earthquake_alert_key"

    const/16 v25, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 1822
    .local v17, earthquakeAlert:Z
    if-eqz v17, :cond_5

    .line 1824
    const/4 v12, 0x1

    .line 1825
    const/4 v13, 0x1

    .line 1846
    .end local v17           #earthquakeAlert:Z
    :cond_0
    :goto_0
    if-eqz v13, :cond_1

    .line 1848
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 1849
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v24, v0

    or-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1865
    :cond_1
    :goto_1
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v15, v0, :cond_7

    .line 1874
    if-nez v12, :cond_2

    if-eqz v13, :cond_3

    .line 1875
    :cond_2
    new-instance v19, Lcom/android/mms/util/InCallTonePlayer;

    const/16 v24, 0x1c

    const/16 v25, 0x50

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/InCallTonePlayer;-><init>(Landroid/content/Context;IIZ)V

    .line 1877
    .local v19, inCallRingTonePlayer:Lcom/android/mms/util/InCallTonePlayer;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/util/InCallTonePlayer;->start()V

    .line 1917
    .end local v19           #inCallRingTonePlayer:Lcom/android/mms/util/InCallTonePlayer;
    :cond_3
    :goto_2
    invoke-static/range {p0 .. p1}, Lcom/android/mms/transaction/MessagingNotification;->setJogBall(Landroid/content/Context;Landroid/app/Notification;)V

    .line 1920
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getCharmMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 1921
    const/16 v24, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->flashCharmIndicator(Landroid/app/Notification;I)V

    .line 1923
    :cond_4
    return-void

    .line 1827
    .restart local v17       #earthquakeAlert:Z
    :cond_5
    const-string v24, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioManager;

    .line 1828
    .local v11, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v11}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v20

    .line 1829
    .local v20, ringerMode:I
    packed-switch v20, :pswitch_data_0

    goto :goto_0

    .line 1838
    :pswitch_0
    const/4 v12, 0x0

    .line 1839
    const/4 v13, 0x0

    goto :goto_0

    .line 1833
    :pswitch_1
    const/4 v12, 0x0

    .line 1834
    const/4 v13, 0x1

    .line 1835
    goto :goto_0

    .line 1852
    .end local v11           #audioManager:Landroid/media/AudioManager;
    .end local v17           #earthquakeAlert:Z
    .end local v20           #ringerMode:I
    :cond_6
    const-wide/16 v7, 0x7d0

    .line 1853
    .local v7, LONG_VIBE:J
    const-wide/16 v9, 0x3e8

    .line 1854
    .local v9, SHORT_VIBE:J
    const-wide/16 v5, 0x1f4

    .line 1855
    .local v5, GAP:J
    const/16 v24, 0xc

    move/from16 v0, v24

    new-array v14, v0, [J

    fill-array-data v14, :array_0

    .line 1861
    .local v14, cadence:[J
    move-object/from16 v0, p1

    iput-object v14, v0, Landroid/app/Notification;->vibrate:[J

    goto :goto_1

    .line 1879
    .end local v5           #GAP:J
    .end local v7           #LONG_VIBE:J
    .end local v9           #SHORT_VIBE:J
    .end local v14           #cadence:[J
    :cond_7
    if-eqz v12, :cond_3

    .line 1888
    :try_start_0
    const-string v24, "file:/system/media/mms/atis_tia_cmas_alert.mp3"

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 1898
    .local v21, sound:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1899
    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v24, v0

    const/high16 v25, -0x8000

    or-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1900
    const/16 v24, 0x4

    move/from16 v0, v24

    move-object/from16 v1, p1

    iput v0, v1, Landroid/app/Notification;->audioStreamType:I

    .line 1901
    const-string v24, "file:/system/media/mms/kddi_earthquake_alert.mp3"

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 1902
    const-string v24, "MessagingNotification"

    const-string v25, "Apply KDDI Earthqauke Alert dedicated ringtone and max volumn"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    const-string v25, "r"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v18

    .line 1906
    .local v18, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v18, :cond_9

    invoke-virtual/range {v18 .. v18}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 1907
    :cond_9
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1908
    .end local v18           #fd:Landroid/os/ParcelFileDescriptor;
    .end local v21           #sound:Landroid/net/Uri;
    :catch_0
    move-exception v16

    .line 1909
    .local v16, e:Ljava/lang/Exception;
    const-string v24, "MessagingNotification"

    const-string v25, "can not cat atis/tia cmas alert> "

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    new-instance v19, Lcom/android/mms/util/InCallTonePlayer;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v24

    const/16 v25, 0x1c

    const/16 v26, 0x64

    const/16 v27, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/util/InCallTonePlayer;-><init>(Landroid/content/Context;IIZ)V

    .line 1913
    .restart local v19       #inCallRingTonePlayer:Lcom/android/mms/util/InCallTonePlayer;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/util/InCallTonePlayer;->start()V

    goto/16 :goto_2

    .line 1829
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1855
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static initiateEffectOfNotification(Landroid/content/Context;ZLandroid/app/Notification;Z)V
    .locals 22
    .parameter "context"
    .parameter "isNew"
    .parameter "notification"
    .parameter "isCmas"

    .prologue
    .line 1976
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1978
    .local v16, sp:Landroid/content/SharedPreferences;
    const-string v2, "MessagingNotification"

    const-string v3, ">> enter initiateEffectOfNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    if-eqz p1, :cond_5

    .line 1980
    const-string v2, "pref_key_vibrate_received_notifications"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 1981
    .local v21, vibrate:Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v18

    .line 1982
    .local v18, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    const/4 v13, 0x1

    .line 1984
    .local v13, isOffHook:Z
    :goto_0
    if-eqz v21, :cond_0

    if-nez v13, :cond_0

    .line 1985
    move-object/from16 v0, p2

    iget v2, v0, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p2

    iput v2, v0, Landroid/app/Notification;->defaults:I

    .line 1987
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getReceivedRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 1989
    .local v14, ringtoneStr:Ljava/lang/String;
    const-string v2, "xxxx!!"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ringtoneStr= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    if-eqz v14, :cond_8

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 1991
    .local v19, uri:Landroid/net/Uri;
    :goto_1
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MessagingNotification;->wasSystemSettingsValue(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1992
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getSystemSettingsValue(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v20

    .line 1993
    .local v20, value:Ljava/lang/String;
    if-eqz v20, :cond_1

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->wasDRMContent(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1994
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 1995
    .local v10, drmUri:Ljava/lang/String;
    const-string v2, "xxxx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "System Settings Value= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,drmUri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    move-object v14, v10

    .line 2007
    .end local v10           #drmUri:Ljava/lang/String;
    .end local v20           #value:Ljava/lang/String;
    :cond_1
    :goto_2
    const/4 v2, 0x1

    if-ne v13, v2, :cond_a

    .line 2009
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    .line 2010
    .local v8, audioManager:Landroid/media/AudioManager;
    const-string v2, "pref_key_play_received_notifications"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 2012
    .local v15, sound:Z
    const/4 v2, 0x1

    if-eq v15, v2, :cond_2

    const/4 v2, 0x1

    move/from16 v0, v21

    if-ne v0, v2, :cond_3

    .line 2014
    :cond_2
    new-instance v12, Lcom/android/mms/util/InCallTonePlayer;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1c

    const/16 v4, 0x50

    const/4 v6, 0x0

    invoke-direct {v12, v2, v3, v4, v6}, Lcom/android/mms/util/InCallTonePlayer;-><init>(Landroid/content/Context;IIZ)V

    .line 2016
    .local v12, inCallRingTonePlayer:Lcom/android/mms/util/InCallTonePlayer;
    invoke-virtual {v12}, Lcom/android/mms/util/InCallTonePlayer;->start()V

    .line 2036
    .end local v8           #audioManager:Landroid/media/AudioManager;
    .end local v12           #inCallRingTonePlayer:Lcom/android/mms/util/InCallTonePlayer;
    .end local v15           #sound:Z
    :cond_3
    :goto_3
    const-string v2, "pref_key_play_received_notifications"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v13, :cond_5

    if-nez p3, :cond_5

    .line 2039
    if-nez v21, :cond_4

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->isFrameworkDecideVibrate()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2040
    const-string v2, "MessagingNotification"

    const-string v3, "set framework decide vibrate flags"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    move-object/from16 v0, p2

    iget v2, v0, Landroid/app/Notification;->flags:I

    const/high16 v3, 0x100

    or-int/2addr v2, v3

    move-object/from16 v0, p2

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 2044
    :cond_4
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSoundSetPicker()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2045
    const/4 v9, 0x0

    .line 2046
    .local v9, c:Landroid/database/Cursor;
    const-string v17, ""

    .line 2047
    .local v17, strSoundUri:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->refType:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    invoke-virtual {v3}, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2049
    .local v5, selectionWithRefType:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SDM_PROVIDER_URI_SETTING:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2050
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2051
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->soundUri:Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;

    invoke-virtual {v2}, Lcom/android/mms/transaction/MessagingNotification$COLUMN_SETTING_INDEX;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 2054
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getValidNotificationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2067
    :goto_4
    if-eqz v9, :cond_5

    .line 2068
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2083
    .end local v5           #selectionWithRefType:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v13           #isOffHook:Z
    .end local v14           #ringtoneStr:Ljava/lang/String;
    .end local v17           #strSoundUri:Ljava/lang/String;
    .end local v18           #telephonyManager:Landroid/telephony/TelephonyManager;
    .end local v19           #uri:Landroid/net/Uri;
    .end local v21           #vibrate:Z
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->setJogBall(Landroid/content/Context;Landroid/app/Notification;)V

    .line 2087
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getCharmMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 2088
    const/4 v2, 0x7

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/mms/transaction/MessagingNotification;->flashCharmIndicator(Landroid/app/Notification;I)V

    .line 2091
    :cond_6
    const-string v2, "MessagingNotification"

    const-string v3, "<< leave initiateEffectOfNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2092
    return-void

    .line 1982
    .restart local v18       #telephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v21       #vibrate:Z
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1990
    .restart local v13       #isOffHook:Z
    .restart local v14       #ringtoneStr:Ljava/lang/String;
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 1999
    .restart local v19       #uri:Landroid/net/Uri;
    :cond_9
    invoke-static/range {v19 .. v19}, Lcom/android/mms/transaction/MessagingNotification;->wasDRMContent(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2000
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getDrmPlaybackUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 2001
    .restart local v10       #drmUri:Ljava/lang/String;
    const-string v2, "xxxx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,drmUri= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    move-object v14, v10

    goto/16 :goto_2

    .line 2022
    .end local v10           #drmUri:Ljava/lang/String;
    :cond_a
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_3

    .line 2023
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    .line 2024
    .restart local v8       #audioManager:Landroid/media/AudioManager;
    const-string v2, "pref_key_play_received_notifications"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 2026
    .restart local v15       #sound:Z
    const/4 v2, 0x1

    if-ne v15, v2, :cond_3

    .line 2028
    new-instance v12, Lcom/android/mms/util/InCallTonePlayer;

    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1c

    const/16 v4, 0x64

    const/4 v6, 0x1

    invoke-direct {v12, v2, v3, v4, v6}, Lcom/android/mms/util/InCallTonePlayer;-><init>(Landroid/content/Context;IIZ)V

    .line 2030
    .restart local v12       #inCallRingTonePlayer:Lcom/android/mms/util/InCallTonePlayer;
    invoke-virtual {v12}, Lcom/android/mms/util/InCallTonePlayer;->start()V

    goto/16 :goto_3

    .line 2059
    .end local v8           #audioManager:Landroid/media/AudioManager;
    .end local v12           #inCallRingTonePlayer:Lcom/android/mms/util/InCallTonePlayer;
    .end local v15           #sound:Z
    .restart local v5       #selectionWithRefType:Ljava/lang/String;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v17       #strSoundUri:Ljava/lang/String;
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/transaction/MessagingNotification;->getValidNotificationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    .line 2062
    :catch_0
    move-exception v11

    .line 2063
    .local v11, ex:Ljava/lang/Exception;
    :try_start_2
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/transaction/MessagingNotification;->getValidNotificationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2064
    const-string v2, "MessagingNotification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception ex= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2067
    if-eqz v9, :cond_5

    .line 2068
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_5

    .line 2067
    .end local v11           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_c

    .line 2068
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2

    .line 2075
    .end local v5           #selectionWithRefType:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v17           #strSoundUri:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/transaction/MessagingNotification;->getValidNotificationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, p2

    iput-object v2, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto/16 :goto_5
.end method

.method public static isAllOk(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 338
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getGroupMessage(J)Lcom/android/mms/transaction/GroupMessage;

    move-result-object v0

    .line 339
    .local v0, message:Lcom/android/mms/transaction/GroupMessage;
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {v0}, Lcom/android/mms/transaction/GroupMessage;->isAllOk()Z

    move-result v1

    .line 342
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isFrameworkDecideVibrate()Z
    .locals 4

    .prologue
    .line 4305
    const-string v1, "MessagingNotification"

    const-string v2, ">> enter isFrameworkDecideVibrate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4306
    const/4 v0, 0x0

    .line 4307
    .local v0, ret:Z
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x97

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 4309
    :goto_0
    const-string v1, "MessagingNotification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< leave isFrameworkDecideVibrate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4311
    return v0

    .line 4307
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMediaUriExist(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3225
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v10

    .line 3232
    .local v2, cols:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 3237
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    move v0, v10

    .line 3260
    .end local v6           #cursor:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 3233
    :catch_0
    move-exception v7

    .local v7, e:Ljava/lang/Exception;
    move v0, v10

    .line 3234
    goto :goto_0

    .line 3241
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-ne v0, v11, :cond_2

    .line 3242
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3243
    .local v9, path:Ljava/lang/String;
    const-string v0, "MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "path> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3248
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3249
    .local v8, f:Ljava/io/File;
    const-string v0, "MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exist> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-ne v0, v11, :cond_1

    move v0, v11

    .line 3251
    goto :goto_0

    :cond_1
    move v0, v10

    .line 3253
    goto :goto_0

    .line 3254
    .end local v8           #f:Ljava/io/File;
    :catch_1
    move-exception v7

    .restart local v7       #e:Ljava/lang/Exception;
    move v0, v10

    .line 3255
    goto :goto_0

    .line 3258
    .end local v7           #e:Ljava/lang/Exception;
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 3260
    goto :goto_0
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 6
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/4 v1, 0x1

    .line 2134
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZZJI)V

    .line 2136
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;JIZ)V
    .locals 10
    .parameter "context"
    .parameter "threadId"
    .parameter "errorCode"
    .parameter "underRetry"

    .prologue
    const/4 v1, 0x1

    .line 2143
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, p0

    move v2, v1

    move-wide v3, p1

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZZJIZLandroid/net/Uri;J)V

    .line 2144
    return-void
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "threadId"
    .parameter "underRetry"

    .prologue
    .line 2139
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;JIZ)V

    .line 2140
    return-void
.end method

.method public static notifyErrorMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter "contentText"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 4263
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 4265
    .local v6, sp:Landroid/content/SharedPreferences;
    const-string v8, "pref_key_enable_sent_failure_notifications"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 4266
    .local v0, enabled:Z
    if-nez v0, :cond_0

    .line 4296
    :goto_0
    return-void

    .line 4270
    :cond_0
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 4273
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-static {p0, v10, p3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 4276
    .local v3, pendingIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 4277
    .local v2, notification:Landroid/app/Notification;
    const v8, 0x7f02015a

    iput v8, v2, Landroid/app/Notification;->icon:I

    .line 4278
    iput-object p1, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 4280
    invoke-virtual {v2, p0, p1, p2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4282
    const-string v8, "pref_key_vibrate_sent_notifications"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 4283
    .local v7, vibrate:Z
    if-eqz v7, :cond_1

    .line 4284
    iget v8, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v2, Landroid/app/Notification;->defaults:I

    .line 4287
    :cond_1
    const-string v8, "pref_key_play_sent_notifications"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 4288
    .local v5, sound:Z
    if-eqz v5, :cond_2

    .line 4289
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSentRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 4290
    .local v4, ringtoneStr:Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/android/mms/transaction/MessagingNotification;->getValidNotificationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 4293
    .end local v4           #ringtoneStr:Ljava/lang/String;
    :cond_2
    iget v8, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v2, Landroid/app/Notification;->flags:I

    .line 4294
    const/16 v8, 0x3e7

    const/4 v9, 0x0

    invoke-static {p0, v1, v8, v9, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;)V

    goto :goto_0
.end method

.method private static notifyFailed(Landroid/content/Context;ZZJI)V
    .locals 0
    .parameter "context"
    .parameter "isMms"
    .parameter "isDownload"
    .parameter "threadId"
    .parameter "errorCode"

    .prologue
    .line 2170
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZZJILandroid/content/Intent;Landroid/net/Uri;J)V
    .locals 23
    .parameter "context"
    .parameter "isMms"
    .parameter "isDownload"
    .parameter "threadId"
    .parameter "errorCode"
    .parameter "intent"
    .parameter "uri"
    .parameter "groupMessageId"

    .prologue
    .line 2191
    const-string v3, "MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyFailed> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isDownload> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", threadId> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    const-string v3, "under_retry"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v21

    .line 2194
    .local v21, underRetry:Z
    const-string v3, "retry_count"

    const/4 v5, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    .line 2197
    .local v16, retryCount:I
    const/4 v3, 0x7

    move/from16 v0, v16

    if-eq v0, v3, :cond_0

    const/16 v3, 0x8

    move/from16 v0, v16

    if-ne v0, v3, :cond_3

    .line 2198
    :cond_0
    const-string v3, "MessagingNotification"

    const-string v5, "AP concated case, go on"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :cond_1
    const-string v3, "MessagingNotification"

    const-string v5, "AP goon send notifiy"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 2211
    .local v20, sp:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_enable_sent_failure_notifications"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 2212
    .local v11, enabled:Z
    if-nez v11, :cond_5

    .line 2377
    .end local v11           #enabled:Z
    .end local v20           #sp:Landroid/content/SharedPreferences;
    :cond_2
    :goto_0
    return-void

    .line 2199
    :cond_3
    const/16 v3, 0x9

    move/from16 v0, v16

    if-ne v0, v3, :cond_4

    .line 2200
    const-string v3, "MessagingNotification"

    const-string v5, "AP concated middle fail case, return "

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2203
    :cond_4
    if-eqz v21, :cond_1

    if-lez v16, :cond_1

    goto :goto_0

    .line 2217
    .restart local v11       #enabled:Z
    .restart local v20       #sp:Landroid/content/SharedPreferences;
    :cond_5
    const-wide/16 v5, 0x0

    cmp-long v3, p8, v5

    if-lez v3, :cond_6

    .line 2218
    move-object/from16 v0, p0

    move-wide/from16 v1, p8

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->showGroupNotification(Landroid/content/Context;J)V

    goto :goto_0

    .line 2223
    :cond_6
    const-string v3, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 2226
    .local v4, nm:Landroid/app/NotificationManager;
    const/4 v14, 0x0

    .line 2227
    .local v14, failedIntent:Landroid/content/Intent;
    if-eqz p2, :cond_d

    .line 2228
    new-instance v14, Landroid/content/Intent;

    .end local v14           #failedIntent:Landroid/content/Intent;
    const-class v3, Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2229
    .restart local v14       #failedIntent:Landroid/content/Intent;
    const-string v3, "thread_id"

    move-wide/from16 v0, p3

    invoke-virtual {v14, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2239
    :goto_1
    const/4 v3, 0x0

    if-eqz v21, :cond_7

    const/4 v14, 0x0

    .end local v14           #failedIntent:Landroid/content/Intent;
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v14, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 2242
    .local v15, pendingIntent:Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    .line 2243
    .local v7, notification:Landroid/app/Notification;
    const v3, 0x7f02015a

    iput v3, v7, Landroid/app/Notification;->icon:I

    .line 2245
    const/4 v13, 0x0

    .line 2247
    .local v13, errorText:Ljava/lang/String;
    invoke-static/range {p5 .. p5}, Lcom/android/mms/transaction/TransactionError;->isDefinedError(I)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2248
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2257
    .local v9, builder:Ljava/lang/StringBuilder;
    invoke-static/range {p5 .. p5}, Lcom/android/mms/transaction/MessagingNotification;->getMmsCanonicalErrorMessage(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2281
    .end local v9           #builder:Ljava/lang/StringBuilder;
    :goto_2
    if-nez v21, :cond_2

    .line 2289
    if-nez v16, :cond_11

    .line 2290
    const v3, 0x7f0900f8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2291
    const v3, 0x7f0900fa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 2299
    .local v10, contentText:Ljava/lang/String;
    :goto_3
    iput-object v13, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2302
    move-object/from16 v0, p0

    invoke-virtual {v7, v0, v13, v10, v15}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2310
    const-string v3, "pref_key_vibrate_sent_notifications"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 2311
    .local v22, vibrate:Z
    if-eqz v22, :cond_8

    .line 2312
    iget v3, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v7, Landroid/app/Notification;->defaults:I

    .line 2315
    :cond_8
    const-string v3, "pref_key_play_sent_notifications"

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 2316
    .local v19, sound:Z
    if-eqz v19, :cond_9

    .line 2317
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSentRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 2319
    .local v17, ringtoneStr:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getValidNotificationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2326
    .end local v17           #ringtoneStr:Ljava/lang/String;
    :cond_9
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_14

    .line 2328
    if-gtz p5, :cond_12

    move/from16 v12, p5

    .line 2329
    .local v12, errorClass:I
    :goto_4
    if-lez p5, :cond_a

    if-eqz v12, :cond_b

    .line 2330
    :cond_a
    if-eqz p2, :cond_13

    .line 2333
    const/16 v3, 0x213

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;)V

    .line 2370
    .end local v12           #errorClass:I
    :cond_b
    :goto_5
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2371
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getDisplayMessageSetting(Landroid/content/Context;)I

    move-result v18

    .line 2372
    .local v18, setting:I
    const/4 v3, 0x1

    move/from16 v0, v18

    if-eq v0, v3, :cond_c

    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_2

    .line 2373
    :cond_c
    if-eqz p7, :cond_2

    .line 2374
    move-object/from16 v0, p7

    invoke-static {v0, v13}, Lcom/android/mms/transaction/MessagingNotification;->showToast(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2231
    .end local v7           #notification:Landroid/app/Notification;
    .end local v10           #contentText:Ljava/lang/String;
    .end local v13           #errorText:Ljava/lang/String;
    .end local v15           #pendingIntent:Landroid/app/PendingIntent;
    .end local v18           #setting:I
    .end local v19           #sound:Z
    .end local v22           #vibrate:Z
    .restart local v14       #failedIntent:Landroid/content/Intent;
    :cond_d
    new-instance v14, Landroid/content/Intent;

    .end local v14           #failedIntent:Landroid/content/Intent;
    const-class v3, Lcom/android/mms/ui/UndeliveredMessagesActivity;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2233
    .restart local v14       #failedIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getThreadIdFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide p3

    .line 2234
    const-string v3, "MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get threadId> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2260
    .end local v14           #failedIntent:Landroid/content/Intent;
    .restart local v7       #notification:Landroid/app/Notification;
    .restart local v13       #errorText:Ljava/lang/String;
    .restart local v15       #pendingIntent:Landroid/app/PendingIntent;
    :cond_e
    if-eqz p2, :cond_f

    const v3, 0x7f0900f7

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_6
    goto/16 :goto_2

    :cond_f
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getCdmaErrorMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_10
    invoke-static/range {p5 .. p5}, Lcom/android/mms/transaction/MessagingNotification;->converErrorMessage(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    .line 2293
    :cond_11
    const v3, 0x7f0900fd

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 2294
    const v3, 0x7f0900f9

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .restart local v10       #contentText:Ljava/lang/String;
    goto/16 :goto_3

    .line 2328
    .restart local v19       #sound:Z
    .restart local v22       #vibrate:Z
    :cond_12
    shr-int/lit8 v12, p5, 0x10

    goto/16 :goto_4

    .line 2339
    .restart local v12       #errorClass:I
    :cond_13
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2340
    .local v8, notifyInfo:Landroid/content/Intent;
    const-string v3, "notify_thread_id"

    move-wide/from16 v0, p3

    invoke-virtual {v8, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2341
    const/16 v5, 0x315

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;Landroid/content/Intent;)V

    goto/16 :goto_5

    .line 2349
    .end local v8           #notifyInfo:Landroid/content/Intent;
    .end local v12           #errorClass:I
    :cond_14
    if-eqz p2, :cond_15

    .line 2352
    const/16 v3, 0x213

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v4, v3, v5, v7}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;)V

    goto/16 :goto_5

    .line 2356
    :cond_15
    iget v3, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v7, Landroid/app/Notification;->flags:I

    .line 2361
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 2362
    .restart local v8       #notifyInfo:Landroid/content/Intent;
    const-string v3, "notify_thread_id"

    move-wide/from16 v0, p3

    invoke-virtual {v8, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2363
    const/16 v5, 0x315

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;Landroid/content/Intent;)V

    goto/16 :goto_5
.end method

.method private static notifyFailed(Landroid/content/Context;ZZJIZLandroid/net/Uri;J)V
    .locals 11
    .parameter "context"
    .parameter "isMms"
    .parameter "isDownload"
    .parameter "threadId"
    .parameter "errorCode"
    .parameter "underRetry"
    .parameter "uri"
    .parameter "groupMessageId"

    .prologue
    .line 2180
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2181
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "under_retry"

    move/from16 v0, p6

    invoke-virtual {v7, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    .line 2183
    invoke-static/range {v1 .. v10}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZZJILandroid/content/Intent;Landroid/net/Uri;J)V

    .line 2185
    return-void
.end method

.method public static notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;)V
    .locals 6
    .parameter "context"
    .parameter "nm"
    .parameter "id"
    .parameter "tag"
    .parameter "notify"

    .prologue
    .line 3871
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;Landroid/content/Intent;)V

    .line 3872
    return-void
.end method

.method public static notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;Landroid/content/Intent;)V
    .locals 19
    .parameter "context"
    .parameter "nm"
    .parameter "id"
    .parameter "tag"
    .parameter "notify"
    .parameter "notifyInfo"

    .prologue
    .line 3963
    const-string v16, "MessagingNotification"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "notifyNotification> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3964
    const/4 v4, 0x0

    .line 3965
    .local v4, b_broadcast:Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 3966
    .local v8, latestTime:J
    const/4 v5, 0x0

    .line 3967
    .local v5, delIntent:Landroid/content/Intent;
    const-wide/16 v11, 0x0

    .line 3970
    .local v11, threadID:J
    if-eqz p5, :cond_0

    .line 3971
    const-string v16, "notify_time"

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3972
    const-string v16, "notify_thread_id"

    const-wide/16 v17, 0x0

    move-object/from16 v0, p5

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    .line 3974
    :cond_0
    const-string v16, "MessagingNotification"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "threadID> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    sparse-switch p2, :sswitch_data_0

    .line 4027
    :cond_1
    :goto_0
    const/16 v16, 0x320

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    if-eqz p3, :cond_5

    .line 4028
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 4029
    .local v15, uri:Landroid/net/Uri;
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getThreadIdFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v13

    .line 4030
    .local v13, thread_id:J
    const-string v16, "MessagingNotification"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "get thread_id> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", id> "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4031
    sget-object v16, Lcom/android/mms/transaction/MessagingNotification;->sMmsSendFailNotifyIds:Ljava/util/Map;

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4032
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v16

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v16

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 4037
    .end local v13           #thread_id:J
    .end local v15           #uri:Landroid/net/Uri;
    :goto_1
    if-eqz v4, :cond_3

    .line 4038
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/MessagingController;->onNewNotification(ILandroid/content/Intent;)V

    .line 4042
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 4044
    const-wide/16 v6, 0x1388

    .line 4045
    .local v6, delayT:J
    const/16 v10, 0x321

    .line 4055
    .local v10, notifyId:I
    :goto_2
    sget-object v16, Lcom/android/mms/transaction/MessagingNotification;->sMessageTabThreadIds:[J

    if-eqz v16, :cond_2

    .line 4057
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v16

    sget-object v17, Lcom/android/mms/transaction/MessagingNotification;->sMessageTabThreadIds:[J

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/android/mms/ui/MessagingController;->cancelNotificationFromThreadIDs(Landroid/content/Context;[JJ)V

    .line 4062
    :cond_2
    sget-boolean v16, Lcom/android/mms/transaction/MessagingNotification;->s_mMessageWidgetScreenOn:Z

    if-eqz v16, :cond_3

    .line 4063
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v10, v6, v7}, Lcom/android/mms/ui/MessagingController;->cancelMessageNotification(Landroid/content/Context;IJ)V

    .line 4067
    .end local v6           #delayT:J
    .end local v10           #notifyId:I
    :cond_3
    return-void

    .line 3979
    :sswitch_0
    const/4 v4, 0x1

    .line 3980
    sput-wide v8, Lcom/android/mms/transaction/MessagingNotification;->mNotifySentTime:J

    .line 3981
    sput-wide v8, Lcom/android/mms/transaction/MessagingNotification;->mLatestNotifyTime:J

    .line 3983
    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-lez v16, :cond_1

    sget-object v16, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySentThreadIds:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-static {v0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->addItemIntoIdList(Ljava/util/ArrayList;J)V

    goto/16 :goto_0

    .line 3987
    :sswitch_1
    const/4 v4, 0x1

    .line 3988
    sput-wide v8, Lcom/android/mms/transaction/MessagingNotification;->mNotifySendfailtTime:J

    .line 3989
    sput-wide v8, Lcom/android/mms/transaction/MessagingNotification;->mLatestNotifyTime:J

    .line 3991
    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-lez v16, :cond_1

    sget-object v16, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySmsSendFailThreadIds:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-static {v0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->addItemIntoIdList(Ljava/util/ArrayList;J)V

    goto/16 :goto_0

    .line 3995
    :sswitch_2
    sput-wide v8, Lcom/android/mms/transaction/MessagingNotification;->mNotifyTime:J

    .line 3996
    sput-wide v8, Lcom/android/mms/transaction/MessagingNotification;->mLatestNotifyTime:J

    .line 3997
    const/4 v4, 0x1

    .line 3999
    new-instance v5, Landroid/content/Intent;

    .end local v5           #delIntent:Landroid/content/Intent;
    const-class v16, Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4000
    .restart local v5       #delIntent:Landroid/content/Intent;
    const-string v16, "com.android.mms.intent.action.NOTIFICATION_REMOVE"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4001
    const-string v16, "notify_id"

    const/16 v17, 0x7b

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4002
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 4004
    const-wide/16 v16, 0x0

    cmp-long v16, v11, v16

    if-lez v16, :cond_4

    sget-object v16, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-static {v0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification;->addItemIntoIdList(Ljava/util/ArrayList;J)V

    .line 4007
    :cond_4
    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Lcom/android/mms/transaction/MessagingNotification;->setReceivedNotificationShowing(Z)V

    goto/16 :goto_0

    .line 4012
    :sswitch_3
    sput-wide v8, Lcom/android/mms/transaction/MessagingNotification;->mNotifyMmsSendfailtTime:J

    .line 4013
    sput-wide v8, Lcom/android/mms/transaction/MessagingNotification;->mLatestNotifyTime:J

    .line 4014
    const/4 v4, 0x1

    .line 4015
    goto/16 :goto_0

    .line 4018
    :sswitch_4
    new-instance v5, Landroid/content/Intent;

    .end local v5           #delIntent:Landroid/content/Intent;
    const-class v16, Lcom/android/mms/transaction/SmsReceiverService;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4019
    .restart local v5       #delIntent:Landroid/content/Intent;
    const-string v16, "com.android.mms.intent.action.NOTIFICATION_REMOVE"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4020
    const-string v16, "notify_id"

    const/16 v17, 0x7d3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4021
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p4

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    goto/16 :goto_0

    .line 4034
    :cond_5
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 4050
    :cond_6
    const-wide/16 v6, 0xbb8

    .line 4051
    .restart local v6       #delayT:J
    const/16 v10, 0x7b

    .restart local v10       #notifyId:I
    goto/16 :goto_2

    .line 3977
    nop

    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_2
        0x309 -> :sswitch_0
        0x315 -> :sswitch_1
        0x320 -> :sswitch_3
        0x7d3 -> :sswitch_4
    .end sparse-switch
.end method

.method public static notifySendFailed(Landroid/content/Context;ZILandroid/content/Intent;Landroid/net/Uri;J)V
    .locals 10
    .parameter "context"
    .parameter "isMms"
    .parameter "errorCode"
    .parameter "intent"
    .parameter "uri"
    .parameter "groupMessageId"

    .prologue
    .line 2162
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move-wide v8, p5

    invoke-static/range {v0 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZZJILandroid/content/Intent;Landroid/net/Uri;J)V

    .line 2163
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;ZILandroid/net/Uri;J)V
    .locals 10
    .parameter "context"
    .parameter "isMms"
    .parameter "errorCode"
    .parameter "uri"
    .parameter "groupMessageId"

    .prologue
    const/4 v2, 0x0

    .line 2153
    const-wide/16 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v5, p2

    move v6, v2

    move-object v7, p3

    move-wide v8, p4

    invoke-static/range {v0 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZZJIZLandroid/net/Uri;J)V

    .line 2154
    return-void
.end method

.method public static notifyTransactionFailure(Landroid/content/Context;Lcom/android/mms/transaction/Transaction;ZLjava/lang/String;)V
    .locals 32
    .parameter "context"
    .parameter "tx"
    .parameter "retryEnabled"
    .parameter "userStr"

    .prologue
    .line 3592
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getId()Ljava/lang/String;

    move-result-object v26

    .line 3593
    .local v26, txId:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v27

    .line 3594
    .local v27, txType:I
    const-string v29, "MessagingNotification"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "notifyTransactionFailure> "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3597
    const/16 v29, 0x3

    move/from16 v0, v27

    move/from16 v1, v29

    if-ne v0, v1, :cond_0

    .line 3748
    :goto_0
    return-void

    .line 3602
    :cond_0
    const/4 v8, 0x0

    .line 3603
    .local v8, intent:Landroid/content/Intent;
    if-nez p2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2

    .line 3605
    new-instance v8, Landroid/content/Intent;

    .end local v8           #intent:Landroid/content/Intent;
    const-class v29, Lcom/android/mms/ui/UndeliveredMessagesActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3612
    .restart local v8       #intent:Landroid/content/Intent;
    :goto_1
    const/high16 v29, 0x1000

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3613
    const-string v29, "tx_id"

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3614
    const-string v29, "tx_type"

    move-object/from16 v0, v29

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3616
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getState()Lcom/android/mms/transaction/TransactionState;

    move-result-object v22

    .line 3617
    .local v22, state:Lcom/android/mms/transaction/TransactionState;
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getError()Lcom/android/mms/transaction/TransactionError;

    move-result-object v6

    .line 3619
    .local v6, error:Lcom/android/mms/transaction/TransactionError;
    if-nez v6, :cond_1

    .line 3620
    new-instance v6, Lcom/android/mms/transaction/TransactionError;

    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    const/16 v29, 0x1001

    move/from16 v0, v29

    invoke-direct {v6, v0}, Lcom/android/mms/transaction/TransactionError;-><init>(I)V

    .line 3621
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getTransactionURI()Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 3624
    :cond_1
    invoke-virtual {v6}, Lcom/android/mms/transaction/TransactionError;->getCode()I

    move-result v4

    .line 3627
    .local v4, code:I
    const/16 v29, 0x1063

    move/from16 v0, v29

    if-ne v4, v0, :cond_3

    .line 3628
    const-string v29, "MessagingNotification"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "notifyTransactionFailure() at airplane mode: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3608
    .end local v4           #code:I
    .end local v6           #error:Lcom/android/mms/transaction/TransactionError;
    .end local v22           #state:Lcom/android/mms/transaction/TransactionState;
    :cond_2
    new-instance v8, Landroid/content/Intent;

    .end local v8           #intent:Landroid/content/Intent;
    const-class v29, Lcom/android/mms/ui/TransactionFailureDialog;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v8       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 3633
    .restart local v4       #code:I
    .restart local v6       #error:Lcom/android/mms/transaction/TransactionError;
    .restart local v22       #state:Lcom/android/mms/transaction/TransactionState;
    :cond_3
    const-string v29, "tx_err_code"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3634
    const-string v29, "tx_retry"

    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3635
    const-string v29, "tx_uri"

    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3637
    new-instance v10, Landroid/app/Notification;

    invoke-direct {v10}, Landroid/app/Notification;-><init>()V

    .line 3638
    .local v10, n:Landroid/app/Notification;
    iget v0, v10, Landroid/app/Notification;->flags:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x10

    move/from16 v0, v29

    iput v0, v10, Landroid/app/Notification;->flags:I

    .line 3639
    const v29, 0x7f02015a

    move/from16 v0, v29

    iput v0, v10, Landroid/app/Notification;->icon:I

    .line 3641
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/android/mms/transaction/TransactionError;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 3642
    .local v9, mesg:Ljava/lang/String;
    const-string v23, ""

    .line 3643
    .local v23, title:Ljava/lang/String;
    if-nez p3, :cond_d

    .line 3644
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getFailureDescription()Ljava/lang/String;

    move-result-object v23

    .line 3646
    if-nez p2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_4

    .line 3647
    const/16 v29, 0x1062

    move/from16 v0, v29

    if-ne v4, v0, :cond_c

    .line 3659
    :cond_4
    :goto_2
    move-object/from16 v25, v23

    .line 3660
    .local v25, toastText:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_7

    .line 3661
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v29

    if-eqz v29, :cond_7

    .line 3662
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/transaction/Transaction;->getTransactionURI()Landroid/net/Uri;

    move-result-object v19

    .line 3663
    .local v19, sendReqUri:Landroid/net/Uri;
    if-eqz v19, :cond_7

    .line 3664
    invoke-static/range {p0 .. p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v15

    .line 3666
    .local v15, persister:Lcom/google/android/mms/pdu/PduPersister;
    :try_start_0
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v18

    check-cast v18, Lcom/google/android/mms/pdu/SendReq;

    .line 3668
    .local v18, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const-string v3, ""

    .line 3669
    .local v3, address:Ljava/lang/String;
    if-eqz v18, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    if-eqz v29, :cond_5

    .line 3670
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/SendReq;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/google/android/mms/pdu/EncodedStringValue;->concat([Lcom/google/android/mms/pdu/EncodedStringValue;)Ljava/lang/String;

    move-result-object v3

    .line 3672
    :cond_5
    const/16 v16, 0x1

    .line 3674
    .local v16, recipientSize:I
    const-string v29, ";"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_6

    .line 3675
    const-string v29, ";"

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 3676
    .local v28, values:[Ljava/lang/String;
    if-eqz v28, :cond_6

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    if-lez v29, :cond_6

    .line 3677
    const/16 v29, 0x0

    aget-object v3, v28, v29

    .line 3678
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v16, v0

    .line 3681
    .end local v28           #values:[Ljava/lang/String;
    :cond_6
    const/16 v29, 0x1

    move/from16 v0, v16

    move/from16 v1, v29

    if-le v0, v1, :cond_7

    .line 3683
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3685
    .local v11, name:Ljava/lang/String;
    const-string v24, "Group message to"
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3687
    .local v24, titleText:Ljava/lang/String;
    const v29, 0x7f0902d6

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    .line 3691
    :goto_3
    :try_start_2
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3692
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3693
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " +"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3694
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    add-int/lit8 v30, v16, -0x1

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 3696
    move-object/from16 v9, v23

    .line 3697
    move-object/from16 v23, v24

    .line 3698
    const v29, 0x7f02015c

    move/from16 v0, v29

    iput v0, v10, Landroid/app/Notification;->icon:I
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3708
    .end local v3           #address:Ljava/lang/String;
    .end local v11           #name:Ljava/lang/String;
    .end local v15           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v16           #recipientSize:I
    .end local v18           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v19           #sendReqUri:Landroid/net/Uri;
    .end local v24           #titleText:Ljava/lang/String;
    :cond_7
    :goto_4
    const-string v29, "tx_err_mesg"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ". "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3709
    move-object/from16 v0, v23

    iput-object v0, v10, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3711
    const/high16 v7, 0x800

    .line 3712
    .local v7, flags:I
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-static {v0, v1, v8, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    .line 3713
    .local v14, pIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v10, v0, v1, v9, v14}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3715
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 3716
    .local v21, sp:Landroid/content/SharedPreferences;
    const-string v29, "pref_key_enable_sent_failure_notifications"

    const/16 v30, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    if-eqz v29, :cond_b

    .line 3717
    const-string v29, "pref_key_vibrate_sent_notifications"

    const/16 v30, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    if-eqz v29, :cond_8

    .line 3718
    iget v0, v10, Landroid/app/Notification;->defaults:I

    move/from16 v29, v0

    or-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    iput v0, v10, Landroid/app/Notification;->defaults:I

    .line 3721
    :cond_8
    const-string v29, "pref_key_play_sent_notifications"

    const/16 v30, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 3722
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSentRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 3723
    .local v17, ringtone:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v29

    if-eqz v29, :cond_e

    const/16 v29, 0x0

    :goto_5
    move-object/from16 v0, v29

    iput-object v0, v10, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3726
    .end local v17           #ringtone:Ljava/lang/String;
    :cond_9
    const-string v13, "notification"

    .line 3727
    .local v13, ns:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 3730
    .local v12, nmgr:Landroid/app/NotificationManager;
    if-nez p2, :cond_b

    .line 3733
    const/16 v29, 0x320

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v26

    invoke-static {v0, v12, v1, v2, v10}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;)V

    .line 3736
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v29

    if-eqz v29, :cond_b

    .line 3737
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getDisplayMessageSetting(Landroid/content/Context;)I

    move-result v20

    .line 3738
    .local v20, setting:I
    const/16 v29, 0x1

    move/from16 v0, v20

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    const/16 v29, 0x2

    move/from16 v0, v20

    move/from16 v1, v29

    if-ne v0, v1, :cond_b

    .line 3739
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/android/mms/transaction/TransactionState;->getContentUri()Landroid/net/Uri;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->showToast(Landroid/net/Uri;Ljava/lang/String;)V

    .line 3746
    .end local v12           #nmgr:Landroid/app/NotificationManager;
    .end local v13           #ns:Ljava/lang/String;
    .end local v20           #setting:I
    :cond_b
    const-string v29, "MessagingNotification"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Transaction failure notified: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3651
    .end local v7           #flags:I
    .end local v14           #pIntent:Landroid/app/PendingIntent;
    .end local v21           #sp:Landroid/content/SharedPreferences;
    .end local v25           #toastText:Ljava/lang/String;
    :cond_c
    const v29, 0x7f0900fd

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto/16 :goto_2

    .line 3656
    :cond_d
    move-object/from16 v23, p3

    goto/16 :goto_2

    .line 3688
    .restart local v3       #address:Ljava/lang/String;
    .restart local v11       #name:Ljava/lang/String;
    .restart local v15       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v16       #recipientSize:I
    .restart local v18       #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .restart local v19       #sendReqUri:Landroid/net/Uri;
    .restart local v24       #titleText:Ljava/lang/String;
    .restart local v25       #toastText:Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 3689
    .local v5, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_3
    const-string v29, "MessagingNotification"

    const-string v30, "Catch exception when get title string: "

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    .line 3700
    .end local v3           #address:Ljava/lang/String;
    .end local v5           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v11           #name:Ljava/lang/String;
    .end local v16           #recipientSize:I
    .end local v18           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v24           #titleText:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 3701
    .local v5, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v5}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    goto/16 :goto_4

    .line 3723
    .end local v5           #e:Lcom/google/android/mms/MmsException;
    .end local v15           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v19           #sendReqUri:Landroid/net/Uri;
    .restart local v7       #flags:I
    .restart local v14       #pIntent:Landroid/app/PendingIntent;
    .restart local v17       #ringtone:Ljava/lang/String;
    .restart local v21       #sp:Landroid/content/SharedPreferences;
    :cond_e
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v29

    goto/16 :goto_5
.end method

.method public static removeGroupMessage(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 313
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mGroupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 314
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mGroupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/GroupMessage;

    iget-wide v1, v1, Lcom/android/mms/transaction/GroupMessage;->groupId:J

    cmp-long v1, v1, p0

    if-nez v1, :cond_1

    .line 315
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->mGroupMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 319
    :cond_0
    return-void

    .line 313
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static removeNotificationByID(Landroid/content/Context;JJ)V
    .locals 6
    .parameter "context"
    .parameter "_id"
    .parameter "milsecond"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1218
    const-string v3, "MessagingNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeNotificationByID> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", millis> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    .line 1244
    :goto_0
    return-void

    .line 1220
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1221
    .local v0, handler:Landroid/os/Handler;
    move-wide v1, p1

    .line 1222
    .local v1, threadID:J
    new-instance v3, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v0, v3, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static removeNotificationByThreadID(Landroid/content/Context;JLandroid/app/NotificationManager;I)Z
    .locals 17
    .parameter "context"
    .parameter "thread_id"
    .parameter "nm"
    .parameter "notifyId"

    .prologue
    .line 1304
    const-string v13, "MessagingNotification"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "removeNotificationByThreadID > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const/4 v12, 0x1

    .line 1306
    .local v12, value:Z
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1307
    .local v9, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    .local v7, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v13, 0x321

    move/from16 v0, p4

    if-eq v0, v13, :cond_0

    const/16 v13, 0x7b

    move/from16 v0, p4

    if-ne v0, v13, :cond_1

    .line 1312
    :cond_0
    sget-object v13, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1313
    const-string v13, "MessagingNotification"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "received thread id > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    sget-object v13, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/android/mms/transaction/MessagingNotification;->clearIdList(Ljava/util/ArrayList;)V

    .line 1316
    const/16 v13, 0x7b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    :cond_1
    const/16 v13, 0x321

    move/from16 v0, p4

    if-eq v0, v13, :cond_2

    const/16 v13, 0x309

    move/from16 v0, p4

    if-ne v0, v13, :cond_3

    .line 1321
    :cond_2
    sget-object v13, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySentThreadIds:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1323
    const-string v13, "MessagingNotification"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " Sent ThreadId > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    sget-object v13, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySentThreadIds:Ljava/util/ArrayList;

    invoke-static {v13}, Lcom/android/mms/transaction/MessagingNotification;->clearIdList(Ljava/util/ArrayList;)V

    .line 1326
    const/16 v13, 0x309

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1329
    :cond_3
    const/16 v13, 0x321

    move/from16 v0, p4

    if-eq v0, v13, :cond_4

    const/16 v13, 0x315

    move/from16 v0, p4

    if-ne v0, v13, :cond_5

    .line 1331
    :cond_4
    sget-object v13, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySmsSendFailThreadIds:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1333
    const-string v13, "MessagingNotification"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " SmsSendFail ThreadId > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-wide/from16 v0, p1

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const/16 v13, 0x315

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    :cond_5
    const/16 v13, 0x321

    move/from16 v0, p4

    if-eq v0, v13, :cond_6

    const/16 v13, 0x320

    move/from16 v0, p4

    if-ne v0, v13, :cond_8

    .line 1340
    :cond_6
    sget-object v13, Lcom/android/mms/transaction/MessagingNotification;->sMmsSendFailNotifyIds:Ljava/util/Map;

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_7
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1341
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    cmp-long v13, p1, v13

    if-nez v13, :cond_7

    .line 1342
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1347
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d

    .line 1348
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1349
    .local v10, time:J
    sget-wide v13, Lcom/android/mms/transaction/MessagingNotification;->mLatestNotifyTime:J

    sub-long v2, v10, v13

    .line 1350
    .local v2, diff:J
    const-string v13, "MessagingNotification"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "latestTime> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-wide v15, Lcom/android/mms/transaction/MessagingNotification;->mLatestNotifyTime:J

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", diff> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const-wide/16 v13, 0x7d0

    cmp-long v13, v2, v13

    if-gez v13, :cond_a

    const/4 v12, 0x0

    .line 1353
    :cond_a
    if-nez p3, :cond_b

    .line 1354
    const-string v13, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/app/NotificationManager;

    .line 1359
    .restart local p3
    :cond_b
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1360
    .local v6, id:Ljava/lang/Integer;
    const-string v13, "MessagingNotification"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cancel id > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v13}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    goto :goto_1

    .line 1367
    .end local v6           #id:Ljava/lang/Integer;
    :cond_c
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1368
    .local v8, tag:Ljava/lang/String;
    const-string v13, "MessagingNotification"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "cancel tag > "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1, v8, v13}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;I)V

    .line 1374
    sget-object v13, Lcom/android/mms/transaction/MessagingNotification;->sMmsSendFailNotifyIds:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1377
    .end local v2           #diff:J
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #tag:Ljava/lang/String;
    .end local v10           #time:J
    :cond_d
    return v12
.end method

.method public static removeNotificationByThreadIDs(Landroid/content/Context;[JI)V
    .locals 15
    .parameter "context"
    .parameter "t_ids"
    .parameter "notifyId"

    .prologue
    .line 1254
    const-string v12, "MessagingNotification"

    const-string v13, "removeNotificationByThreadIDs> "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    if-nez p1, :cond_1

    .line 1292
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    const-string v12, "notification"

    invoke-virtual {p0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1259
    .local v9, nm:Landroid/app/NotificationManager;
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1260
    move-object/from16 v1, p1

    .local v1, arr$:[J
    array-length v8, v1

    .local v8, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v8, :cond_0

    aget-wide v3, v1, v2

    .line 1261
    .local v3, id:J
    move/from16 v0, p2

    invoke-static {p0, v3, v4, v9, v0}, Lcom/android/mms/transaction/MessagingNotification;->removeNotificationByThreadID(Landroid/content/Context;JLandroid/app/NotificationManager;I)Z

    .line 1260
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1265
    .end local v1           #arr$:[J
    .end local v2           #i$:I
    .end local v3           #id:J
    .end local v8           #len$:I
    :cond_2
    const/16 v12, 0x321

    move/from16 v0, p2

    if-eq v0, v12, :cond_3

    const/16 v12, 0x7b

    move/from16 v0, p2

    if-ne v0, v12, :cond_0

    .line 1266
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    .local v5, ids:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v1, p1

    .restart local v1       #arr$:[J
    array-length v8, v1

    .restart local v8       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v8, :cond_4

    aget-wide v10, v1, v2

    .line 1268
    .local v10, t_id:J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    const-string v12, "MessagingNotification"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "t_id> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1272
    .end local v10           #t_id:J
    :cond_4
    sget-object v12, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1273
    sget-object v12, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    sget-object v13, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1275
    .local v6, lastId:J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1276
    move/from16 v0, p2

    invoke-static {p0, v6, v7, v9, v0}, Lcom/android/mms/transaction/MessagingNotification;->removeNotificationByThreadID(Landroid/content/Context;JLandroid/app/NotificationManager;I)Z

    goto/16 :goto_0
.end method

.method public static removeReportNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 3115
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3117
    .local v0, nm:Landroid/app/NotificationManager;
    const/16 v1, 0x29a

    invoke-static {p0, v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;Landroid/app/NotificationManager;I)V

    .line 3120
    return-void
.end method

.method public static declared-synchronized removeThreaIdFromNotifyIdList(I[J)V
    .locals 10
    .parameter "notifyId"
    .parameter "ids"

    .prologue
    .line 525
    const-class v7, Lcom/android/mms/transaction/MessagingNotification;

    monitor-enter v7

    :try_start_0
    const-string v6, "MessagingNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "removeThreaIdFromNotifyIdList> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v5, 0x0

    .line 527
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    sparse-switch p0, :sswitch_data_0

    .line 540
    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 541
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 542
    move-object v0, p1

    .local v0, arr$:[J
    :try_start_1
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 543
    .local v2, id:J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 544
    const-string v6, "MessagingNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove id> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 529
    .end local v0           #arr$:[J
    .end local v1           #i$:I
    .end local v2           #id:J
    .end local v4           #len$:I
    :sswitch_0
    :try_start_2
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySentThreadIds:Ljava/util/ArrayList;

    .line 530
    goto :goto_0

    .line 532
    :sswitch_1
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->s_mNotifySmsSendFailThreadIds:Ljava/util/ArrayList;

    .line 533
    goto :goto_0

    .line 535
    :sswitch_2
    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 536
    goto :goto_0

    .line 546
    .restart local v0       #arr$:[J
    .restart local v1       #i$:I
    .restart local v4       #len$:I
    :cond_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 548
    .end local v0           #arr$:[J
    .end local v1           #i$:I
    .end local v4           #len$:I
    :cond_1
    monitor-exit v7

    return-void

    .line 546
    .restart local v0       #arr$:[J
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 525
    .end local v0           #arr$:[J
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    .line 527
    nop

    :sswitch_data_0
    .sparse-switch
        0x7b -> :sswitch_2
        0x309 -> :sswitch_0
        0x315 -> :sswitch_1
    .end sparse-switch
.end method

.method private static setCmasLSNotification(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 12
    .parameter "context"
    .parameter "timeMillis"
    .parameter "messagesIcon"
    .parameter "title"
    .parameter "description"
    .parameter "address"
    .parameter "pendingIntent"

    .prologue
    .line 3879
    new-instance v6, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-direct {v6, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 3880
    .local v6, htcLsNtf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 3881
    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setFrom(Ljava/lang/String;)V

    .line 3882
    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setContent(Ljava/lang/String;)V

    .line 3884
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v10

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 3885
    .local v1, bd:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v2, 0x0

    .line 3886
    .local v2, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 3888
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3889
    if-eqz v2, :cond_0

    .line 3890
    invoke-virtual {v6, v2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 3894
    :cond_0
    new-instance v7, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    invoke-direct {v7}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;-><init>()V

    .line 3895
    .local v7, viewButton:Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    new-instance v3, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;

    invoke-direct {v3}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;-><init>()V

    .line 3896
    .local v3, dismissButton:Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020197

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 3897
    .local v8, viewButtonIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020196

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3898
    .local v4, dismissButtonIcon:Landroid/graphics/drawable/Drawable;
    instance-of v10, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_1

    .line 3899
    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    .end local v8           #viewButtonIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3901
    :cond_1
    instance-of v10, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v10, :cond_2

    .line 3902
    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    .end local v4           #dismissButtonIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 3904
    :cond_2
    const v10, 0x7f090329

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->setString(Ljava/lang/String;)V

    .line 3905
    const v10, 0x7f09032a

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->setString(Ljava/lang/String;)V

    .line 3906
    new-instance v9, Landroid/content/Intent;

    const-string v10, "cmas_dialog_action_view"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3907
    .local v9, viewIntent:Landroid/content/Intent;
    new-instance v5, Landroid/content/Intent;

    const-string v10, "cmas_dialog_action_dismiss"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3908
    .local v5, dismissIntent:Landroid/content/Intent;
    const/4 v10, 0x0

    const/high16 v11, 0x800

    invoke-static {p0, v10, v9, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 3909
    const/4 v10, 0x0

    const/high16 v11, 0x800

    invoke-static {p0, v10, v5, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;->setPendingIntent(Landroid/app/PendingIntent;)V

    .line 3911
    const/4 v10, 0x0

    invoke-virtual {v6, v7, v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setButton(Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;I)V

    .line 3912
    const/4 v10, 0x1

    invoke-virtual {v6, v3, v10}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setButton(Lcom/htc/lockscreen/ntf/HtcLSNotification$Button;I)V

    .line 3913
    move-object/from16 v0, p7

    invoke-virtual {v6, v0}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDropPendingIntent(Landroid/app/PendingIntent;)V

    .line 3914
    const/16 v10, 0x323

    invoke-static {p0, v10, v6}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 3915
    return-void
.end method

.method public static setJogBall(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 6
    .parameter "context"
    .parameter "notification"

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x1f4

    const v3, -0xff0100

    .line 1929
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x90

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x39

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x18

    if-eq v1, v2, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->isJogBallEnable:Z

    .line 1934
    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getSms(Landroid/content/Context;)Z

    move-result v0

    .line 1936
    .local v0, isStateOn:Z
    sget-boolean v1, Lcom/android/mms/transaction/MessagingNotification;->isJogBallEnable:Z

    if-eqz v1, :cond_3

    .line 1937
    if-eqz v0, :cond_1

    .line 1939
    iget v1, p1, Landroid/app/Notification;->flags:I

    const/high16 v2, 0x1

    or-int/2addr v1, v2

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 1940
    const/4 v1, 0x7

    iput v1, p1, Landroid/app/Notification;->jogMode:I

    .line 1943
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x98

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lcom/htc/util/settings/NotificationFlashLightUtility;->getIncomingCall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1945
    const-string v1, "MessagingNotification"

    const-string v2, "getsms while getIncomingCall"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    iget v1, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 1947
    iput v3, p1, Landroid/app/Notification;->ledARGB:I

    .line 1948
    iput v4, p1, Landroid/app/Notification;->ledOnMS:I

    .line 1949
    iput v5, p1, Landroid/app/Notification;->ledOffMS:I

    .line 1960
    :cond_1
    :goto_1
    return-void

    .line 1929
    .end local v0           #isStateOn:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1953
    .restart local v0       #isStateOn:Z
    :cond_3
    if-eqz v0, :cond_1

    .line 1954
    iget v1, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/app/Notification;->flags:I

    .line 1955
    iput v3, p1, Landroid/app/Notification;->ledARGB:I

    .line 1956
    iput v4, p1, Landroid/app/Notification;->ledOnMS:I

    .line 1957
    iput v5, p1, Landroid/app/Notification;->ledOffMS:I

    goto :goto_1
.end method

.method public static setLSNotification(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "context"
    .parameter "timeMillis"
    .parameter "icon"
    .parameter "title"
    .parameter "description"
    .parameter "address"
    .parameter "pendingIntent"

    .prologue
    .line 3922
    new-instance v2, Lcom/htc/lockscreen/ntf/HtcLSNotification;

    invoke-direct {v2, p1, p2}, Lcom/htc/lockscreen/ntf/HtcLSNotification;-><init>(J)V

    .line 3924
    .local v2, htcLsNtf:Lcom/htc/lockscreen/ntf/HtcLSNotification;
    const v4, 0x7f0900e8

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setTitle(Ljava/lang/String;)V

    .line 3925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDescript(Ljava/lang/String;)V

    .line 3927
    invoke-virtual {v2, p4}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setFrom(Ljava/lang/String;)V

    .line 3928
    invoke-virtual {v2, p5}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setContent(Ljava/lang/String;)V

    .line 3932
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {p0, p6, v4, v5}, Lcom/android/mms/util/ContactNameCache;->getNamePhoto2(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Z)Landroid/provider/Telephony$namephoto;

    move-result-object v3

    .line 3933
    .local v3, np:Landroid/provider/Telephony$namephoto;
    iget-wide v4, v3, Landroid/provider/Telephony$namephoto;->mPersonId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    iget-object v4, v3, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_3

    .line 3934
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020194

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 3935
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x0

    .line 3936
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 3938
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3939
    if-eqz v1, :cond_1

    .line 3940
    invoke-virtual {v2, v1}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 3947
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #bm:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    if-eqz p7, :cond_2

    .line 3948
    invoke-virtual {v2, p7}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setDropPendingIntent(Landroid/app/PendingIntent;)V

    .line 3951
    :cond_2
    const/16 v4, 0x322

    invoke-static {p0, v4, v2}, Lcom/htc/lockscreen/HtcLSUtility;->setNotification(Landroid/content/Context;ILcom/htc/lockscreen/ntf/HtcLSNotification;)V

    .line 3952
    return-void

    .line 3944
    :cond_3
    iget-object v4, v3, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v4}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setLargeIcon(Landroid/graphics/Bitmap;)V

    .line 3945
    const v4, 0x7f020195

    invoke-virtual {v2, v4}, Lcom/htc/lockscreen/ntf/HtcLSNotification;->setIcon(I)V

    goto :goto_0
.end method

.method public static declared-synchronized setMessageTabThreadIDs(Landroid/content/Context;[J)V
    .locals 13
    .parameter "context"
    .parameter "threadIds"

    .prologue
    .line 3774
    const-class v8, Lcom/android/mms/transaction/MessagingNotification;

    monitor-enter v8

    if-eqz p1, :cond_0

    .line 3775
    :try_start_0
    sput-object p1, Lcom/android/mms/transaction/MessagingNotification;->sMessageTabThreadIds:[J

    .line 3776
    const-string v7, "MessagingNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set thread id> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/mms/transaction/MessagingNotification;->sMessageTabThreadIds:[J

    array-length v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3778
    invoke-static {p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v7

    const-wide/16 v9, 0x0

    invoke-virtual {v7, p0, p1, v9, v10}, Lcom/android/mms/ui/MessagingController;->cancelNotificationFromThreadIDs(Landroid/content/Context;[JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3858
    :goto_0
    monitor-exit v8

    return-void

    .line 3781
    :cond_0
    :try_start_1
    const-string v7, "MessagingNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "set thread id> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3784
    invoke-static {p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v7

    const/4 v9, 0x6

    invoke-virtual {v7, v9}, Lcom/android/mms/ui/MessagingController;->removeMessageFromHandler(I)V

    .line 3790
    sget-object v7, Lcom/android/mms/transaction/MessagingNotification;->sMessageTabThreadIds:[J

    if-eqz v7, :cond_1

    .line 3791
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sMessageTabThreadIds:[J

    .local v0, arr$:[J
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-wide v5, v0, v3

    .line 3794
    .local v5, threadId:J
    sget-object v7, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3795
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sget-wide v11, Lcom/android/mms/transaction/MessagingNotification;->mNotifyTime:J

    sub-long v1, v9, v11

    .line 3797
    .local v1, diff:J
    const-wide/16 v9, 0x1388

    cmp-long v7, v1, v9

    if-gez v7, :cond_1

    .line 3798
    const-string v7, "MessagingNotification"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cancel received notify. threaId> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3799
    const/4 v7, 0x0

    const/16 v9, 0x321

    invoke-static {p0, v5, v6, v7, v9}, Lcom/android/mms/transaction/MessagingNotification;->removeNotificationByThreadID(Landroid/content/Context;JLandroid/app/NotificationManager;I)Z

    .line 3856
    .end local v0           #arr$:[J
    .end local v1           #diff:J
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #threadId:J
    :cond_1
    :goto_2
    const/4 v7, 0x0

    sput-object v7, Lcom/android/mms/transaction/MessagingNotification;->sMessageTabThreadIds:[J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3774
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 3791
    .restart local v0       #arr$:[J
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #threadId:J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3808
    .end local v0           #arr$:[J
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #threadId:J
    :cond_3
    :try_start_2
    sget-object v7, Lcom/android/mms/transaction/MessagingNotification;->sMessageTabThreadIds:[J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1

    goto :goto_2
.end method

.method public static declared-synchronized setMessageWidgetScreenOn(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "on"

    .prologue
    .line 3753
    const-class v1, Lcom/android/mms/transaction/MessagingNotification;

    monitor-enter v1

    if-eqz p1, :cond_1

    .line 3754
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->s_mMessageWidgetScreenOn:Z

    .line 3756
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3757
    const/16 v0, 0x321

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNormalNotification(Landroid/content/Context;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3769
    :goto_0
    monitor-exit v1

    return-void

    .line 3759
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    const/16 v2, 0x7b

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, p0, v2, v3, v4}, Lcom/android/mms/ui/MessagingController;->cancelMessageNotification(Landroid/content/Context;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3753
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3765
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->s_mMessageWidgetScreenOn:Z

    .line 3766
    invoke-static {p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/MessagingController;->removeMessageFromHandler(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static setReceivedNotificationShowing(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 908
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNotificationShowingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 909
    :try_start_0
    sput-boolean p0, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNotificationShowingFlag:Z

    .line 910
    monitor-exit v1

    .line 911
    return-void

    .line 910
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static showGroupNotification(Landroid/content/Context;J)V
    .locals 28
    .parameter "context"
    .parameter "groupMessageId"

    .prologue
    .line 3454
    invoke-static/range {p1 .. p2}, Lcom/android/mms/transaction/MessagingNotification;->getGroupMessage(J)Lcom/android/mms/transaction/GroupMessage;

    move-result-object v11

    .line 3455
    .local v11, message:Lcom/android/mms/transaction/GroupMessage;
    const-string v25, "MessagingNotification"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Group notification -- "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3456
    if-nez v11, :cond_0

    .line 3457
    const-string v25, "MessagingNotification"

    const-string v26, "Can\'t find group message"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3585
    .end local p0
    :goto_0
    return-void

    .line 3459
    .restart local p0
    :cond_0
    invoke-static/range {p1 .. p2}, Lcom/android/mms/transaction/MessagingNotification;->haveAllResult(J)Z

    move-result v25

    if-nez v25, :cond_1

    .line 3460
    const-string v25, "MessagingNotification"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Group notification -- "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    const-string v25, "MessagingNotification"

    const-string v26, "Waiting all result"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3465
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/android/mms/transaction/MessagingNotification;->isAllOk(J)Z

    move-result v25

    if-nez v25, :cond_5

    const/4 v5, 0x1

    .line 3466
    .local v5, bFailed:Z
    :goto_1
    const-string v25, "MessagingNotification"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Have all result -- "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 3468
    .local v19, sp:Landroid/content/SharedPreferences;
    const-string v25, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 3471
    .local v13, nm:Landroid/app/NotificationManager;
    if-eqz v5, :cond_6

    .line 3472
    const-string v21, "Unable to send message"

    .line 3477
    .local v21, tickerText:Ljava/lang/String;
    :goto_2
    if-eqz v5, :cond_7

    .line 3478
    const v25, 0x7f0902d7

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 3484
    :goto_3
    new-instance v14, Landroid/app/Notification;

    const v25, 0x7f02019b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    move/from16 v0, v25

    move-object/from16 v1, v21

    move-wide/from16 v2, v26

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 3485
    .local v14, notif:Landroid/app/Notification;
    if-eqz v5, :cond_2

    .line 3486
    const v25, 0x7f02015a

    move/from16 v0, v25

    iput v0, v14, Landroid/app/Notification;->icon:I

    .line 3488
    :cond_2
    new-instance v10, Landroid/content/Intent;

    const-string v25, "android.intent.action.MAIN"

    sget-object v26, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v10, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3489
    .local v10, intent:Landroid/content/Intent;
    const/high16 v25, 0x1400

    move/from16 v0, v25

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3491
    const/16 v25, 0x0

    const/high16 v26, 0x800

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 3494
    .local v6, contentIntent:Landroid/app/PendingIntent;
    const-string v22, "Group message to"

    .line 3496
    .local v22, titleText:Ljava/lang/String;
    const v25, 0x7f0902d6

    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    .line 3502
    :goto_4
    iget-object v0, v11, Lcom/android/mms/transaction/GroupMessage;->dests:[Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget-object v4, v25, v26

    .line 3505
    .local v4, address:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 3507
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5
    iget v0, v11, Lcom/android/mms/transaction/GroupMessage;->size:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_3

    .line 3508
    iget-object v0, v11, Lcom/android/mms/transaction/GroupMessage;->status:[Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v25, v0

    aget-object v25, v25, v9

    sget-object v26, Lcom/android/mms/transaction/GroupMessage$Status;->RESULT_OK:Lcom/android/mms/transaction/GroupMessage$Status;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 3509
    iget-object v0, v11, Lcom/android/mms/transaction/GroupMessage;->dests:[Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_3

    .line 3510
    iget-object v0, v11, Lcom/android/mms/transaction/GroupMessage;->dests:[Ljava/lang/String;

    move-object/from16 v25, v0

    aget-object v4, v25, v9

    .line 3516
    .end local v9           #i:I
    :cond_3
    const-string v25, ";"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 3517
    const-string v25, ";"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 3518
    .local v23, values:[Ljava/lang/String;
    const-string v15, ""

    .line 3519
    .local v15, result:Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_6
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_a

    .line 3520
    aget-object v25, v23, v9

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_4

    .line 3521
    if-nez v9, :cond_9

    .line 3522
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v23, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3519
    :cond_4
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 3465
    .end local v4           #address:Ljava/lang/String;
    .end local v5           #bFailed:Z
    .end local v6           #contentIntent:Landroid/app/PendingIntent;
    .end local v9           #i:I
    .end local v10           #intent:Landroid/content/Intent;
    .end local v13           #nm:Landroid/app/NotificationManager;
    .end local v14           #notif:Landroid/app/Notification;
    .end local v15           #result:Ljava/lang/String;
    .end local v19           #sp:Landroid/content/SharedPreferences;
    .end local v21           #tickerText:Ljava/lang/String;
    .end local v22           #titleText:Ljava/lang/String;
    .end local v23           #values:[Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 3474
    .restart local v5       #bFailed:Z
    .restart local v13       #nm:Landroid/app/NotificationManager;
    .restart local v19       #sp:Landroid/content/SharedPreferences;
    :cond_6
    const-string v21, "Message sent successfully"

    .restart local v21       #tickerText:Ljava/lang/String;
    goto/16 :goto_2

    .line 3480
    :cond_7
    const v25, 0x7f090200

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v21

    goto/16 :goto_3

    .line 3481
    :catch_0
    move-exception v7

    .line 3482
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    const-string v25, "MessagingNotification"

    const-string v26, "Catch exception when get string: "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 3497
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v6       #contentIntent:Landroid/app/PendingIntent;
    .restart local v10       #intent:Landroid/content/Intent;
    .restart local v14       #notif:Landroid/app/Notification;
    .restart local v22       #titleText:Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 3498
    .restart local v7       #e:Landroid/content/res/Resources$NotFoundException;
    const-string v25, "MessagingNotification"

    const-string v26, "Catch exception when get title string: "

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 3507
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v4       #address:Ljava/lang/String;
    .restart local v9       #i:I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 3524
    .restart local v15       #result:Ljava/lang/String;
    .restart local v23       #values:[Ljava/lang/String;
    :cond_9
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ";"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    aget-object v26, v23, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_7

    .line 3527
    :cond_a
    move-object v12, v15

    .line 3533
    .end local v9           #i:I
    .end local v15           #result:Ljava/lang/String;
    .end local v23           #values:[Ljava/lang/String;
    .local v12, name:Ljava/lang/String;
    :goto_8
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3534
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3535
    if-nez v5, :cond_12

    .line 3536
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " +"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3537
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v11, Lcom/android/mms/transaction/GroupMessage;->size:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3546
    :cond_b
    :goto_9
    const v25, 0x7f02015c

    move/from16 v0, v25

    iput v0, v14, Landroid/app/Notification;->icon:I

    .line 3547
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v14, v0, v1, v2, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3549
    const-string v25, "pref_key_play_sent_notifications"

    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 3550
    .local v18, sound:Z
    if-eqz v18, :cond_c

    .line 3551
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSentRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 3553
    .local v16, ringtoneStr:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getValidNotificationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v14, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3556
    .end local v16           #ringtoneStr:Ljava/lang/String;
    :cond_c
    const-string v25, "pref_key_vibrate_sent_notifications"

    const/16 v26, 0x1

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 3557
    .local v24, vibrate:Z
    if-eqz v24, :cond_d

    .line 3558
    iget v0, v14, Landroid/app/Notification;->defaults:I

    move/from16 v25, v0

    or-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    iput v0, v14, Landroid/app/Notification;->defaults:I

    .line 3561
    :cond_d
    const/16 v25, 0x10

    move/from16 v0, v25

    iput v0, v14, Landroid/app/Notification;->flags:I

    .line 3566
    const/16 v25, 0x309

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-static {v0, v13, v1, v2, v14}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;)V

    .line 3570
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 3571
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getDisplayMessageSetting(Landroid/content/Context;)I

    move-result v17

    .line 3572
    .local v17, setting:I
    const/16 v25, 0x3

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_10

    if-nez v5, :cond_e

    if-eqz v17, :cond_f

    const/16 v25, 0x2

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    :cond_e
    if-eqz v5, :cond_10

    const/16 v25, 0x1

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_f

    const/16 v25, 0x2

    move/from16 v0, v17

    move/from16 v1, v25

    if-ne v0, v1, :cond_10

    .line 3577
    :cond_f
    move-object/from16 v20, v22

    .line 3578
    .local v20, text:Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "\n"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3579
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 3580
    check-cast p0, Lcom/android/mms/MmsApp;

    .end local p0
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/mms/MmsApp;->showToast(Ljava/lang/String;)V

    .line 3584
    .end local v17           #setting:I
    .end local v20           #text:Ljava/lang/String;
    :cond_10
    invoke-static/range {p1 .. p2}, Lcom/android/mms/transaction/MessagingNotification;->removeGroupMessage(J)V

    goto/16 :goto_0

    .line 3530
    .end local v12           #name:Ljava/lang/String;
    .end local v18           #sound:Z
    .end local v24           #vibrate:Z
    .restart local p0
    :cond_11
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/transaction/MessagingNotification;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .restart local v12       #name:Ljava/lang/String;
    goto/16 :goto_8

    .line 3540
    :cond_12
    invoke-virtual {v11}, Lcom/android/mms/transaction/GroupMessage;->getFailCount()I

    move-result v8

    .line 3541
    .local v8, failCount:I
    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v8, v0, :cond_b

    .line 3542
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " +"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 3543
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    add-int/lit8 v26, v8, -0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_9
.end method

.method public static showReportNotification(Landroid/content/Context;IIJJ)V
    .locals 8
    .parameter "context"
    .parameter "titleId"
    .parameter "msgId"
    .parameter "threadID"
    .parameter "messageID"

    .prologue
    .line 3038
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-static/range {v0 .. v7}, Lcom/android/mms/transaction/MessagingNotification;->showReportNotification(Landroid/content/Context;IIJJZ)V

    .line 3039
    return-void
.end method

.method public static showReportNotification(Landroid/content/Context;IIJJZ)V
    .locals 22
    .parameter "context"
    .parameter "titleId"
    .parameter "msgId"
    .parameter "threadID"
    .parameter "messageID"
    .parameter "isMMS"

    .prologue
    .line 3043
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 3044
    .local v18, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_received_notifications"

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3112
    :goto_0
    return-void

    .line 3048
    :cond_0
    const-string v2, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 3050
    .local v13, nm:Landroid/app/NotificationManager;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 3051
    .local v19, tickerText:Ljava/lang/String;
    new-instance v14, Landroid/app/Notification;

    const v2, 0x7f02019b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, v19

    invoke-direct {v14, v2, v0, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 3055
    .local v14, notif:Landroid/app/Notification;
    iget v2, v14, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v14, Landroid/app/Notification;->flags:I

    .line 3057
    sget-object v8, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 3058
    .local v8, baseUri:Landroid/net/Uri;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportContactBaseConversation()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3059
    sget-object v8, Landroid/provider/Telephony$Threads;->CONTENT_V2_URI:Landroid/net/Uri;

    .line 3061
    const-string v2, "content://mms-sms-v2/get-contactID"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 3062
    .local v20, uri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3063
    .local v10, cursor:Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3064
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p3

    .line 3065
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 3068
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v20           #uri:Landroid/net/Uri;
    :cond_1
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v12, v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3069
    .local v12, intent:Landroid/content/Intent;
    const/high16 v2, 0x1400

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3070
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3071
    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3072
    const-string v2, "message_id"

    move-wide/from16 v0, p5

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3073
    const-string v2, "isMMS"

    move/from16 v0, p7

    invoke-virtual {v12, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3075
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportTraditionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3076
    invoke-static/range {p0 .. p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 3077
    .local v15, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_mms_thread_mode"

    const/4 v3, 0x1

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 3079
    .local v11, flag:Z
    if-nez v11, :cond_2

    .line 3080
    if-eqz p7, :cond_5

    .line 3081
    const-string v2, "notify_MsgURI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mms/sent/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3090
    .end local v11           #flag:Z
    .end local v15           #pref:Landroid/content/SharedPreferences;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    const/high16 v3, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v2, v12, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 3093
    .local v9, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v2, v1, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3096
    const-string v2, "pref_key_play_received_notifications"

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v17

    .line 3097
    .local v17, sound:Z
    if-eqz v17, :cond_3

    .line 3098
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getReceivedRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    .line 3100
    .local v16, ringtoneStr:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->getValidNotificationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v14, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3103
    .end local v16           #ringtoneStr:Ljava/lang/String;
    :cond_3
    const-string v2, "pref_key_vibrate_received_notifications"

    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 3104
    .local v21, vibrate:Z
    if-eqz v21, :cond_4

    .line 3105
    iget v2, v14, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v14, Landroid/app/Notification;->defaults:I

    .line 3110
    :cond_4
    const/16 v2, 0x29a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v13, v2, v3, v14}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;)V

    goto/16 :goto_0

    .line 3083
    .end local v9           #contentIntent:Landroid/app/PendingIntent;
    .end local v17           #sound:Z
    .end local v21           #vibrate:Z
    .restart local v11       #flag:Z
    .restart local v15       #pref:Landroid/content/SharedPreferences;
    :cond_5
    const-string v2, "notify_MsgURI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://sms/sent/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static showSendNotification(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 24
    .parameter "context"
    .parameter "uri"
    .parameter "groupMessageId"

    .prologue
    .line 3125
    const-string v3, "MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showSendNotification> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", groupId> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 3127
    .local v17, sp:Landroid/content/SharedPreferences;
    const-string v3, "pref_key_enable_sent_notifications"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3220
    :cond_0
    :goto_0
    return-void

    .line 3132
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-lez v3, :cond_2

    .line 3133
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->showGroupNotification(Landroid/content/Context;J)V

    goto :goto_0

    .line 3138
    :cond_2
    const-string v3, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 3140
    .local v4, nm:Landroid/app/NotificationManager;
    const-string v20, "Message sent successfully"

    .line 3142
    .local v20, tickerText:Ljava/lang/String;
    const v3, 0x7f090200

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 3146
    :goto_1
    new-instance v7, Landroid/app/Notification;

    const v3, 0x7f02019b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, v20

    invoke-direct {v7, v3, v0, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 3150
    .local v7, notif:Landroid/app/Notification;
    new-instance v12, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    sget-object v5, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v12, v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3151
    .local v12, intent:Landroid/content/Intent;
    const/high16 v3, 0x1400

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3153
    const/4 v3, 0x0

    const/high16 v5, 0x800

    move-object/from16 v0, p0

    invoke-static {v0, v3, v12, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 3156
    .local v10, contentIntent:Landroid/app/PendingIntent;
    const-string v21, "Message Sent"

    .line 3158
    .local v21, titleText:Ljava/lang/String;
    const v3, 0x7f090201

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v21

    .line 3163
    :goto_2
    invoke-static/range {p0 .. p1}, Lcom/android/mms/transaction/MessagingNotification;->getThreadIdFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v18

    .line 3164
    .local v18, threadId:J
    const-string v3, "MessagingNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "threadId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v18

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "/mms/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    .line 3169
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->getAddressFromThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 3170
    .local v9, address:Ljava/lang/String;
    if-eqz v9, :cond_3

    const-string v3, ";"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3171
    const-string v3, ";"

    invoke-virtual {v9, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 3172
    .local v22, values:[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v22, v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/mms/transaction/MessagingNotification;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3174
    .local v13, name:Ljava/lang/String;
    const-string v21, "Group message to"

    .line 3176
    const v3, 0x7f0902d6

    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v21

    .line 3180
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " +"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3184
    const v3, 0x7f02015c

    iput v3, v7, Landroid/app/Notification;->icon:I

    .line 3189
    .end local v9           #address:Ljava/lang/String;
    .end local v13           #name:Ljava/lang/String;
    .end local v22           #values:[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3191
    const-string v3, "pref_key_play_sent_notifications"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 3192
    .local v16, sound:Z
    if-eqz v16, :cond_4

    .line 3193
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSentRingtone(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 3195
    .local v14, ringtoneStr:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/mms/transaction/MessagingNotification;->getValidNotificationUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3198
    .end local v14           #ringtoneStr:Ljava/lang/String;
    :cond_4
    const-string v3, "pref_key_vibrate_sent_notifications"

    const/4 v5, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 3199
    .local v23, vibrate:Z
    if-eqz v23, :cond_5

    .line 3200
    iget v3, v7, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v7, Landroid/app/Notification;->defaults:I

    .line 3208
    :cond_5
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 3209
    .local v8, notifyInfo:Landroid/content/Intent;
    const-string v3, "notify_thread_id"

    move-wide/from16 v0, v18

    invoke-virtual {v8, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3210
    const/16 v5, 0x309

    const/4 v6, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;Landroid/content/Intent;)V

    .line 3214
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportNotificationEnhancement()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3215
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getDisplayMessageSetting(Landroid/content/Context;)I

    move-result v15

    .line 3216
    .local v15, setting:I
    if-eqz v15, :cond_6

    const/4 v3, 0x2

    if-ne v15, v3, :cond_0

    .line 3217
    :cond_6
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->showToast(Landroid/net/Uri;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3143
    .end local v7           #notif:Landroid/app/Notification;
    .end local v8           #notifyInfo:Landroid/content/Intent;
    .end local v10           #contentIntent:Landroid/app/PendingIntent;
    .end local v12           #intent:Landroid/content/Intent;
    .end local v15           #setting:I
    .end local v16           #sound:Z
    .end local v18           #threadId:J
    .end local v21           #titleText:Ljava/lang/String;
    .end local v23           #vibrate:Z
    :catch_0
    move-exception v11

    .line 3144
    .local v11, e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "MessagingNotification"

    const-string v5, "Catch exception when get string: "

    invoke-static {v3, v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3159
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v7       #notif:Landroid/app/Notification;
    .restart local v10       #contentIntent:Landroid/app/PendingIntent;
    .restart local v12       #intent:Landroid/content/Intent;
    .restart local v21       #titleText:Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 3160
    .restart local v11       #e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "MessagingNotification"

    const-string v5, "Catch exception when get title string: "

    invoke-static {v3, v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 3177
    .end local v11           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v9       #address:Ljava/lang/String;
    .restart local v13       #name:Ljava/lang/String;
    .restart local v18       #threadId:J
    .restart local v22       #values:[Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 3178
    .restart local v11       #e:Landroid/content/res/Resources$NotFoundException;
    const-string v3, "MessagingNotification"

    const-string v5, "Catch exception when get title string: "

    invoke-static {v3, v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3
.end method

.method public static showToast(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 13
    .parameter "toUri"
    .parameter "message"

    .prologue
    .line 3375
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v1

    .line 3376
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_3

    .line 3377
    const-wide/16 v8, -0x1

    .line 3378
    .local v8, threadId:J
    invoke-static {v1, p0}, Lcom/android/mms/transaction/MessagingNotification;->getAddressFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 3379
    .local v0, address:Ljava/lang/String;
    const/4 v4, 0x0

    .line 3382
    .local v4, name:Ljava/lang/String;
    const/4 v5, 0x1

    .line 3383
    .local v5, recipientSize:I
    move-object v2, v0

    .line 3384
    .local v2, firstName:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 3385
    const-string v11, ";"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 3386
    const-string v11, ";"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3387
    .local v10, values:[Ljava/lang/String;
    const-string v6, ""

    .line 3388
    .local v6, result:Ljava/lang/String;
    array-length v5, v10

    .line 3389
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v11, v10

    if-ge v3, v11, :cond_2

    .line 3390
    aget-object v11, v10, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 3391
    if-nez v3, :cond_1

    .line 3392
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v3

    invoke-static {v1, v12}, Lcom/android/mms/transaction/MessagingNotification;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3393
    move-object v2, v6

    .line 3389
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3396
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v10, v3

    invoke-static {v1, v12}, Lcom/android/mms/transaction/MessagingNotification;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 3399
    :cond_2
    move-object v4, v6

    .line 3408
    .end local v3           #i:I
    .end local v6           #result:Ljava/lang/String;
    .end local v10           #values:[Ljava/lang/String;
    :goto_2
    const/4 v11, 0x1

    if-le v5, v11, :cond_5

    .line 3409
    const v11, 0x7f0902d6

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3410
    .local v7, text:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3411
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3412
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " +"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3413
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v5, -0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3418
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3419
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3420
    check-cast v1, Lcom/android/mms/MmsApp;

    .end local v1           #context:Landroid/content/Context;
    invoke-virtual {v1, v7}, Lcom/android/mms/MmsApp;->showToast(Ljava/lang/String;)V

    .line 3422
    .end local v0           #address:Ljava/lang/String;
    .end local v2           #firstName:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #recipientSize:I
    .end local v7           #text:Ljava/lang/String;
    .end local v8           #threadId:J
    :cond_3
    return-void

    .line 3402
    .restart local v0       #address:Ljava/lang/String;
    .restart local v1       #context:Landroid/content/Context;
    .restart local v2       #firstName:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #recipientSize:I
    .restart local v8       #threadId:J
    :cond_4
    invoke-static {v1, v0}, Lcom/android/mms/transaction/MessagingNotification;->getContactName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_2

    .line 3415
    :cond_5
    const v11, 0x7f0900ba

    invoke-virtual {v1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3416
    .restart local v7       #text:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method

.method private static updateCmasNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V
    .locals 18
    .parameter "context"
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconRes"
    .parameter "isNew"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "count"
    .parameter "newMsgCnt"
    .parameter "nInfo"

    .prologue
    .line 4140
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 4142
    .local v16, sp:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportEarthquakeAlert()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "pref_key_enable_received_notifications"

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4208
    :goto_0
    return-void

    .line 4148
    :cond_0
    const/16 v4, 0xa8

    invoke-static {v4}, Lcom/android/mms/MmsApp;->isProjectFlag(S)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4149
    const p3, 0x7f0200b0

    .line 4153
    :cond_1
    const/4 v15, 0x0

    .line 4154
    .local v15, notification:Landroid/app/Notification;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4155
    new-instance v15, Landroid/app/Notification;

    .end local v15           #notification:Landroid/app/Notification;
    move/from16 v0, p3

    move-object/from16 v1, p5

    move-wide/from16 v2, p6

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 4161
    .restart local v15       #notification:Landroid/app/Notification;
    :goto_1
    move-object/from16 v13, p8

    .line 4162
    .local v13, contentTitle:Ljava/lang/String;
    move-object/from16 v12, p2

    .line 4163
    .local v12, contentText:Ljava/lang/String;
    move-object/from16 v17, p1

    .line 4165
    .local v17, targetIntent:Landroid/content/Intent;
    const/4 v4, 0x1

    move/from16 v0, p10

    if-le v0, v4, :cond_2

    .line 4166
    const v4, 0x7f09032c

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/custom/CustomizedManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v13

    .line 4168
    const v4, 0x7f09032e

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/mms/custom/CustomizedManager;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 4172
    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4175
    :cond_2
    const/high16 v14, 0x800

    .line 4176
    .local v14, flag:I
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 4177
    .local v11, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v13, v12, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 4181
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/mms/transaction/MessagingNotification;->initEffectOfCmasNotification(Landroid/content/Context;Landroid/app/Notification;)V

    .line 4184
    move/from16 v0, p10

    iput v0, v15, Landroid/app/Notification;->number:I

    .line 4186
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4187
    iget-object v4, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "lockscreen_title"

    const v7, 0x7f0900e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4188
    iget-object v4, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "lockscreen_text"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4194
    move-object/from16 v10, p8

    .line 4195
    .local v10, address:Ljava/lang/String;
    const v4, 0x7f09030a

    invoke-static {v4}, Lcom/android/mms/custom/CustomizedManager;->getStringResId(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p8

    .line 4196
    const p3, 0x7f020030

    move-object/from16 v4, p0

    move-wide/from16 v5, p6

    move/from16 v7, p3

    move-object/from16 v8, p8

    move-object/from16 v9, p2

    .line 4197
    invoke-static/range {v4 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->setCmasLSNotification(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 4201
    .end local v10           #address:Ljava/lang/String;
    :cond_3
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 4204
    .local v5, nm:Landroid/app/NotificationManager;
    const-string v4, "MessagingNotification"

    const-string v6, "show notification"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    const/16 v6, 0x7d3

    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getNotificationTag()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v4, p0

    move-object v8, v15

    move-object/from16 v9, p11

    invoke-static/range {v4 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4157
    .end local v5           #nm:Landroid/app/NotificationManager;
    .end local v11           #pendingIntent:Landroid/app/PendingIntent;
    .end local v12           #contentText:Ljava/lang/String;
    .end local v13           #contentTitle:Ljava/lang/String;
    .end local v14           #flag:I
    .end local v17           #targetIntent:Landroid/content/Intent;
    :cond_4
    new-instance v15, Landroid/app/Notification;

    .end local v15           #notification:Landroid/app/Notification;
    const-string v4, ""

    move/from16 v0, p3

    move-wide/from16 v1, p6

    invoke-direct {v15, v0, v4, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v15       #notification:Landroid/app/Notification;
    goto/16 :goto_1
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 2399
    sget-object v0, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v10

    .line 2400
    .local v10, uriBuilder:Landroid/net/Uri$Builder;
    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v10, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2402
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2405
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x1

    .line 2406
    .local v9, updateNotification:Z
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 2407
    const-string v0, "err_type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 2408
    .local v8, index:I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2410
    :cond_0
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_4

    .line 2412
    const/4 v9, 0x0

    .line 2418
    .end local v8           #index:I
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    .line 2419
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2421
    :cond_2
    if-eqz v9, :cond_3

    .line 2423
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2425
    :cond_3
    return-void

    .line 2415
    .restart local v8       #index:I
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private static updateLockScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter "subject"
    .parameter "body"
    .parameter "showAttached"

    .prologue
    const v10, 0x7f0e006f

    const v9, 0x7f0e006d

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1613
    sget-object v5, Lcom/android/mms/MmsApp;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    if-nez v5, :cond_1

    .line 1614
    const-string v5, "MessagingNotification"

    const-string v6, "register LSConnection"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    new-instance v5, Lcom/htc/lockscreen/HtcLSViewConnection;

    invoke-direct {v5, p0, v7}, Lcom/htc/lockscreen/HtcLSViewConnection;-><init>(Landroid/content/Context;I)V

    sput-object v5, Lcom/android/mms/MmsApp;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    .line 1616
    sget-object v5, Lcom/android/mms/MmsApp;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    new-instance v6, Lcom/android/mms/transaction/MessagingNotification$4;

    invoke-direct {v6}, Lcom/android/mms/transaction/MessagingNotification$4;-><init>()V

    invoke-virtual {v5, v6}, Lcom/htc/lockscreen/HtcLSViewConnection;->register(Lcom/htc/lockscreen/HtcLSViewConnection$StateListener;)V

    .line 1626
    :goto_0
    const/4 v0, 0x1

    .line 1627
    .local v0, enablePreview:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getAppliction()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1628
    .local v4, pref:Landroid/content/SharedPreferences;
    if-eqz v4, :cond_0

    .line 1629
    const-string v5, "pref_key_sms_message_preview"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1632
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1633
    .local v3, packageName:Ljava/lang/String;
    new-instance v2, Lcom/htc/lockscreen/HtcLSView;

    const v5, 0x7f03001a

    invoke-direct {v2, v3, v5}, Lcom/htc/lockscreen/HtcLSView;-><init>(Ljava/lang/String;I)V

    .line 1635
    .local v2, mainView:Lcom/htc/lockscreen/HtcLSView;
    const v5, 0x7f0e006c

    invoke-virtual {v2, v5, p1}, Lcom/htc/lockscreen/HtcLSView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1637
    const v5, 0x7f0e006e

    invoke-virtual {v2, v5, p2}, Lcom/htc/lockscreen/HtcLSView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1639
    if-eqz v0, :cond_3

    .line 1641
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa0

    if-le v5, v6, :cond_2

    .line 1642
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x9f

    invoke-virtual {p3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1646
    .local v1, limitedBody:Ljava/lang/String;
    :goto_1
    invoke-virtual {v2, v9, v1}, Lcom/htc/lockscreen/HtcLSView;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1651
    .end local v1           #limitedBody:Ljava/lang/String;
    :goto_2
    if-eqz p4, :cond_4

    .line 1652
    invoke-virtual {v2, v10, v8}, Lcom/htc/lockscreen/HtcLSView;->setViewVisibility(II)V

    .line 1656
    :goto_3
    sget-object v5, Lcom/android/mms/MmsApp;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    const-string v6, "main"

    invoke-virtual {v5, v6, v2}, Lcom/htc/lockscreen/HtcLSViewConnection;->setContentView(Ljava/lang/String;Lcom/htc/lockscreen/HtcLSView;)V

    .line 1657
    sget-object v5, Lcom/android/mms/MmsApp;->mLSConnection:Lcom/htc/lockscreen/HtcLSViewConnection;

    invoke-virtual {v5}, Lcom/htc/lockscreen/HtcLSViewConnection;->updateView()V

    .line 1659
    return v7

    .line 1623
    .end local v0           #enablePreview:Z
    .end local v2           #mainView:Lcom/htc/lockscreen/HtcLSView;
    .end local v3           #packageName:Ljava/lang/String;
    .end local v4           #pref:Landroid/content/SharedPreferences;
    :cond_1
    const-string v5, "MessagingNotification"

    const-string v6, "LSConnection has initialized"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1644
    .restart local v0       #enablePreview:Z
    .restart local v2       #mainView:Lcom/htc/lockscreen/HtcLSView;
    .restart local v3       #packageName:Ljava/lang/String;
    .restart local v4       #pref:Landroid/content/SharedPreferences;
    :cond_2
    move-object v1, p3

    .restart local v1       #limitedBody:Ljava/lang/String;
    goto :goto_1

    .line 1648
    .end local v1           #limitedBody:Ljava/lang/String;
    :cond_3
    const-string v5, ""

    invoke-virtual {v2, v9, v5}, Lcom/htc/lockscreen/HtcLSView;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 1654
    :cond_4
    const/16 v5, 0x8

    invoke-virtual {v2, v10, v5}, Lcom/htc/lockscreen/HtcLSView;->setViewVisibility(II)V

    goto :goto_3
.end method

.method public static updateNewCmasMessageIndicator(Landroid/content/Context;ZIJLjava/lang/String;Ljava/lang/Long;)V
    .locals 8
    .parameter "context"
    .parameter "isNew"
    .parameter "type"
    .parameter "msgid"
    .parameter "titlebody"
    .parameter "receivetime"

    .prologue
    .line 4073
    new-instance v7, Ljava/util/TreeSet;

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    invoke-direct {v7, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .local v7, accumulator:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;>;"
    move-object v0, p0

    move v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    .line 4076
    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->getCmasNewMessageNotificationInfo(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/Long;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v7, v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Z)I

    move-result v3

    .line 4079
    .local v3, count:I
    if-gtz v3, :cond_1

    .line 4086
    :cond_0
    :goto_0
    return-void

    .line 4081
    :cond_1
    const/4 v5, 0x1

    .line 4082
    .local v5, bCmas:Z
    move v4, v3

    .line 4083
    .local v4, newMsgCnt:I
    invoke-interface {v7}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4084
    invoke-interface {v7}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->deliver(Landroid/content/Context;ZIIZLandroid/net/Uri;)V

    goto :goto_0
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 360
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;J)V
    .locals 0
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 500
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 501
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isNew"

    .prologue
    .line 373
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 374
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "isNew"
    .parameter "needShowLastNewNotification"

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZZ)V

    .line 364
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;ZZZ)V
    .locals 1
    .parameter "context"
    .parameter "isNew"
    .parameter "needShowLastNewNotification"
    .parameter "isSmsLaunch"

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;ZZZLandroid/net/Uri;)V

    .line 379
    return-void
.end method

.method public static updateNewMessageIndicator(Landroid/content/Context;ZZZLandroid/net/Uri;)V
    .locals 13
    .parameter "context"
    .parameter "isNew"
    .parameter "needShowLastNewNotification"
    .parameter "isSmsLaunch"
    .parameter "uri"

    .prologue
    .line 398
    new-instance v8, Ljava/util/TreeSet;

    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfoComparator;

    invoke-direct {v8, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 400
    .local v8, accumulator:Ljava/util/SortedSet;,"Ljava/util/SortedSet<Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;>;"
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->NEED_NOTIFY_NOTIFICATION:Z

    .line 401
    const-string v0, "MessagingNotification"

    const-string v1, "New incoming message, can\'t cancel notification now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v10

    .line 406
    .local v10, isNewMsgRule:Z
    invoke-static {}, Lcom/android/mms/MmsApp;->getNewIncomingMsgCount()I

    move-result v4

    .line 407
    .local v4, newMsgCnt:I
    const-string v0, "MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newMsgCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    if-gtz v4, :cond_1

    if-eqz v10, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    if-eqz p1, :cond_6

    if-nez p3, :cond_5

    const/4 v11, 0x1

    .line 415
    .local v11, newMms:Z
    :goto_1
    if-eqz p1, :cond_7

    move/from16 v12, p3

    .line 417
    .local v12, newSms:Z
    :goto_2
    const/4 v3, 0x0

    .line 418
    .local v3, count:I
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getMmsNewMessageNotificationInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v0

    invoke-static {v8, v0, v11}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Z)I

    move-result v0

    add-int/2addr v3, v0

    .line 420
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewMessageNotificationInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-result-object v0

    invoke-static {v8, v0, v12}, Lcom/android/mms/transaction/MessagingNotification;->accumulateNotificationInfo(Ljava/util/SortedSet;Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;Z)I

    move-result v0

    add-int/2addr v3, v0

    .line 423
    invoke-static {}, Lcom/android/mms/MmsApp;->getNewIncomingMsgCount()I

    move-result v4

    .line 424
    const-string v0, "MessagingNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unread count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    if-gtz v4, :cond_2

    if-nez v10, :cond_0

    .line 428
    :cond_2
    if-le v4, v3, :cond_3

    .line 429
    invoke-static {v3}, Lcom/android/mms/MmsApp;->setNewIncomingMsgCount(I)V

    .line 430
    move v4, v3

    .line 437
    :cond_3
    const/4 v5, 0x0

    .line 438
    .local v5, bCmas:Z
    if-eqz p2, :cond_4

    .line 439
    invoke-interface {v8}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 440
    invoke-interface {v8}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;

    move-object v1, p0

    move v2, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsNotificationInfo;->deliver(Landroid/content/Context;ZIIZLandroid/net/Uri;)V

    .line 451
    :cond_4
    :goto_3
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/transaction/MessagingNotification;->NEED_NOTIFY_NOTIFICATION:Z

    .line 452
    const-string v0, "MessagingNotification"

    const-string v1, "Notify notification complete, can cancel notification now"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v7, 0x0

    .line 457
    .local v7, ShortcutCount:I
    if-eqz v10, :cond_a

    .line 458
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportSense35BubbleRule()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 460
    move v7, v3

    .line 468
    :goto_4
    invoke-static {p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v7, v1}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    .line 473
    if-eqz p1, :cond_0

    .line 475
    const-string v0, "MessagingNotification"

    const-string v1, "New message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.message.RECEIVE_NEW_MESSAGE"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    .local v9, broadcast:Landroid/content/Intent;
    invoke-virtual {p0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 414
    .end local v3           #count:I
    .end local v5           #bCmas:Z
    .end local v7           #ShortcutCount:I
    .end local v9           #broadcast:Landroid/content/Intent;
    .end local v11           #newMms:Z
    .end local v12           #newSms:Z
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 415
    .restart local v11       #newMms:Z
    :cond_7
    const/4 v12, 0x1

    goto/16 :goto_2

    .line 444
    .restart local v3       #count:I
    .restart local v5       #bCmas:Z
    .restart local v12       #newSms:Z
    :cond_8
    if-nez v3, :cond_4

    .line 445
    const-string v0, "MessagingNotification"

    const-string v1, "cancel incoming notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/16 v0, 0x7b

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    goto :goto_3

    .line 463
    .restart local v7       #ShortcutCount:I
    :cond_9
    move v7, v4

    goto :goto_4

    .line 466
    :cond_a
    move v7, v3

    goto :goto_4
.end method

.method public static updateNewMessageIndicatorIfNeed(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 384
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->s_mReceivedNoticeThreadIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;Z)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    invoke-static {p0}, Lcom/android/mms/ui/MessagingController;->getSingleton(Landroid/content/Context;)Lcom/android/mms/ui/MessagingController;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/mms/ui/MessagingController;->updateMsgShortcut(Landroid/content/Context;IZ)V

    goto :goto_0
.end method

.method private static updateNotification(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IZLjava/lang/CharSequence;JLjava/lang/String;IILandroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "clickIntent"
    .parameter "description"
    .parameter "iconRes"
    .parameter "isNew"
    .parameter "ticker"
    .parameter "timeMillis"
    .parameter "title"
    .parameter "count"
    .parameter "newMsgCnt"
    .parameter "nInfo"

    .prologue
    .line 1400
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v17

    .line 1402
    .local v17, sp:Landroid/content/SharedPreferences;
    const-string v4, "pref_key_enable_received_notifications"

    const/4 v6, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1563
    .end local p10
    :goto_0
    return-void

    .line 1406
    .restart local p10
    :cond_0
    const-string v4, "MessagingNotification"

    const-string v6, "updateNotification> "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 v15, 0x0

    .line 1410
    .local v15, notification:Landroid/app/Notification;
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1411
    new-instance v15, Landroid/app/Notification;

    .end local v15           #notification:Landroid/app/Notification;
    move/from16 v0, p3

    move-object/from16 v1, p5

    move-wide/from16 v2, p6

    invoke-direct {v15, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1420
    .restart local v15       #notification:Landroid/app/Notification;
    :goto_1
    move-object/from16 v13, p8

    .line 1421
    .local v13, contentTitle:Ljava/lang/String;
    move-object/from16 v12, p2

    .line 1422
    .local v12, contentText:Ljava/lang/String;
    move-object/from16 v19, p1

    .line 1424
    .local v19, targetIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1426
    const/4 v4, 0x1

    move/from16 v0, p10

    if-le v0, v4, :cond_1

    .line 1427
    const v4, 0x7f0900e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1428
    const v4, 0x7f0900e9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1430
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getAppIntent()Landroid/content/Intent;

    move-result-object v19

    .line 1431
    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1432
    const-string v4, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1454
    :cond_1
    :goto_2
    const-string v4, "notify_MsgURI"

    move-object/from16 v0, p11

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1455
    .local v22, uri:Ljava/lang/String;
    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 1456
    const-string v4, "notify_MsgURI"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1458
    :cond_2
    const/4 v4, 0x0

    const/high16 v6, 0x1000

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v4, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1459
    .local v11, pendingIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0, v13, v12, v11}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1488
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getCharmMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 1490
    const/4 v4, 0x0

    invoke-static {v15, v4}, Lcom/android/mms/transaction/MessagingNotification;->flashCharmIndicator(Landroid/app/Notification;I)V

    .line 1498
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v1, v15, v4}, Lcom/android/mms/transaction/MessagingNotification;->initiateEffectOfNotification(Landroid/content/Context;ZLandroid/app/Notification;Z)V

    .line 1503
    invoke-static {}, Lcom/android/mms/MmsApp;->getIfApplyNewMsgNotifyRule()Z

    move-result v4

    if-eqz v4, :cond_8

    .end local p10
    :goto_3
    move/from16 v0, p10

    iput v0, v15, Landroid/app/Notification;->number:I

    .line 1507
    sget-boolean v4, Lcom/android/mms/MmsApp$Customize;->Emerald:Z

    if-eqz v4, :cond_9

    .line 1508
    const/16 v16, 0x0

    .line 1509
    .local v16, showAttachIcon:Z
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f090259

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1510
    const/16 v16, 0x1

    .line 1512
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "hh:mm aa"

    move-wide/from16 v0, p6

    invoke-static {v6, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-static {v0, v4, v6, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->updateLockScreen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 1517
    const/4 v4, 0x2

    move/from16 v0, p9

    if-lt v0, v4, :cond_5

    .line 1518
    move-object/from16 v14, p0

    .line 1519
    .local v14, cx:Landroid/content/Context;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v6, 0x7f0902d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1520
    .local v18, subject:Ljava/lang/String;
    new-instance v20, Lcom/android/mms/transaction/MessagingNotification$3;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v14, v1}, Lcom/android/mms/transaction/MessagingNotification$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1531
    .local v20, thread:Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V

    .line 1548
    .end local v14           #cx:Landroid/content/Context;
    .end local v16           #showAttachIcon:Z
    .end local v18           #subject:Ljava/lang/String;
    .end local v20           #thread:Ljava/lang/Thread;
    :cond_5
    :goto_4
    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 1555
    .local v5, nm:Landroid/app/NotificationManager;
    const-string v4, "MessagingNotification"

    const-string v6, "show notification"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/16 v6, 0x7b

    const/4 v7, 0x0

    move-object/from16 v4, p0

    move-object v8, v15

    move-object/from16 v9, p11

    invoke-static/range {v4 .. v9}, Lcom/android/mms/transaction/MessagingNotification;->notifyNotification(Landroid/content/Context;Landroid/app/NotificationManager;ILjava/lang/String;Landroid/app/Notification;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1413
    .end local v5           #nm:Landroid/app/NotificationManager;
    .end local v11           #pendingIntent:Landroid/app/PendingIntent;
    .end local v12           #contentText:Ljava/lang/String;
    .end local v13           #contentTitle:Ljava/lang/String;
    .end local v19           #targetIntent:Landroid/content/Intent;
    .end local v22           #uri:Ljava/lang/String;
    .restart local p10
    :cond_6
    new-instance v15, Landroid/app/Notification;

    .end local v15           #notification:Landroid/app/Notification;
    const-string v4, ""

    move/from16 v0, p3

    move-wide/from16 v1, p6

    invoke-direct {v15, v0, v4, v1, v2}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v15       #notification:Landroid/app/Notification;
    goto/16 :goto_1

    .line 1443
    .restart local v12       #contentText:Ljava/lang/String;
    .restart local v13       #contentTitle:Ljava/lang/String;
    .restart local v19       #targetIntent:Landroid/content/Intent;
    :cond_7
    const/4 v4, 0x1

    move/from16 v0, p9

    if-le v0, v4, :cond_1

    .line 1444
    const v4, 0x7f0900e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1445
    const v4, 0x7f0900e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1447
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getAppIntent()Landroid/content/Intent;

    move-result-object v19

    .line 1448
    const-string v4, "android.intent.action.MAIN"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1449
    const-string v4, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .restart local v11       #pendingIntent:Landroid/app/PendingIntent;
    .restart local v22       #uri:Ljava/lang/String;
    :cond_8
    move/from16 p10, p9

    .line 1503
    goto/16 :goto_3

    .line 1535
    .end local p10
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->getNewMsgNotificationSetting(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1536
    iget-object v4, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "lockscreen_title"

    const v7, 0x7f0900e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1537
    iget-object v4, v15, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "lockscreen_text"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    const-string v4, "notify_thread_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v21, v0

    .line 1540
    .local v21, threadID:I
    move/from16 v0, v21

    int-to-long v6, v0

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/android/mms/transaction/MessagingNotification;->getAddressFromThreadId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    .local v10, address:Ljava/lang/String;
    move-object/from16 v4, p0

    move-wide/from16 v5, p6

    move/from16 v7, p3

    move-object/from16 v8, p8

    move-object/from16 v9, p2

    .line 1541
    invoke-static/range {v4 .. v11}, Lcom/android/mms/transaction/MessagingNotification;->setLSNotification(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_4
.end method

.method public static updateSendFailedNotification(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 2380
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id limit 1"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2382
    .local v7, mmsCursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "undelivered"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v6, "_id limit 1"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v6}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2385
    .local v8, smsCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_2

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v0, v9, :cond_2

    .line 2387
    :cond_1
    const/16 v0, 0x315

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 2390
    :cond_2
    if-eqz v7, :cond_3

    .line 2391
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2392
    :cond_3
    if-eqz v8, :cond_4

    .line 2393
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2394
    :cond_4
    return-void
.end method

.method public static wasDRMContent(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 1114
    const/4 v1, 0x0

    .line 1115
    .local v1, wasDRMContent:Z
    if-eqz p0, :cond_0

    .line 1116
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1117
    .local v0, authority:Ljava/lang/String;
    const-string v2, "drm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1120
    .end local v0           #authority:Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public static wasSystemSettingsValue(Landroid/net/Uri;)Z
    .locals 3
    .parameter "uri"

    .prologue
    .line 1060
    const/4 v0, 0x0

    .line 1061
    .local v0, wasSystemSettingsValue:Z
    if-eqz p0, :cond_0

    .line 1062
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content://settings/system/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1065
    :cond_0
    return v0
.end method

.method private static wasSystemSettingsValue(Ljava/lang/String;)Z
    .locals 2
    .parameter "uri"

    .prologue
    .line 1072
    const/4 v0, 0x0

    .line 1073
    .local v0, wasSystemSettingsValue:Z
    if-eqz p0, :cond_0

    .line 1074
    const-string v1, "content://settings/system/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 1077
    :cond_0
    return v0
.end method
