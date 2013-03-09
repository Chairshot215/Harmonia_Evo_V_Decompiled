.class public Lcom/android/providers/contacts/HtcUtils/NotificationUtils;
.super Ljava/lang/Object;
.source "NotificationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;
    }
.end annotation


# static fields
.field public static final CLEAR_EVENT_NOTIFICATION:I = 0x4

.field public static final CLEAR_UNE_NOTIFICATION:I = 0x2

.field private static final NOTIFICATION_DELAY:I = 0xbb8

.field public static final NOTIFICATION_SN_UPDATES_EVENTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationUtils"

.field public static final THREAD_NAME:Ljava/lang/String; = "NotificationUpdater"

.field public static final UPDATE_EVENT_NOTIFICATION:I = 0x3

.field private static final UPDATE_QUERY_ECLAIR:Ljava/lang/String; = "SELECT 0 AS _id, user_id, uid, count(uid) AS update_num, type, extra, rowId, is_read, last_time, service_name, full_name, user_name, buddy_icon_url, contact_id FROM \t( \t\tSELECT user.user_id AS user_id, profile.uid AS uid, profile.type AS type, profile.extra AS extra, profile._id AS rowId, profile.is_read AS is_read, user.status_update_time AS last_time, service.service_name AS service_name, full_name, user_name, user.buddy_icon_url as buddy_icon_url, user.contact_id as contact_id \t\tFROM \t\t\t(\t\t\t\tSELECT * \t\t\t\tFROM \t\t\t\t\t(\t\t\t\t\t\tSELECT * \t\t\t\t\t\tFROM \t\t\t\t\t\t\t(\t\t\t\t\t\t\t\tSELECT _id, uid, type, extra, is_read, last_check_time \t\t\t\t\t\t\t\tFROM profile_update \t\t\t\t\t\t\t\tWHERE type=\'status\' ORDER BY last_check_time ASC\t\t\t\t\t\t\t) GROUP BY uid\t\t\t\t\t) \t\t\t\tWHERE is_read=0 \t\t\t) AS profile, user, service \t\tWHERE profile.uid=user._id AND user.sid=service._id AND profile.extra IS NOT NULL AND profile.extra <> \'\' AND user.contact_id > 0 AND user.contact_id <> \'\' AND user.contact_id IS NOT NULL    UNION ALL \tSELECT user.user_id AS user_id, profile.uid AS uid, profile.type AS type, profile.extra AS extra, profile._id AS rowId, profile.is_read AS is_read, profile.last_check_time AS last_time, service.service_name AS service_name, full_name, user_name, user.buddy_icon_url as buddy_icon_url, user.contact_id as contact_id \tFROM \t\t(\t\t\tSELECT _id, uid, type, extra, is_read, last_check_time \t\t\tFROM profile_update \t\t\tWHERE type=\'profile\' AND is_read=0 \t\t) AS profile, user, service \tWHERE profile.uid=user._id AND user.sid=service._id AND user.contact_id > 0 AND user.contact_id <> \'\' AND user.contact_id IS NOT NULL \tUNION ALL \tSELECT user.user_id AS user_id, photo.uid AS uid, \'photo\' AS type, photo.extra AS extra, photo.aid AS rowId, photo.is_read AS is_read, photo.last_update_time AS last_time, service.service_name AS service_name, full_name, user_name, user.buddy_icon_url as buddy_icon_url, user.contact_id as contact_id \tFROM \t\t(\t\t\tSELECT _id, uid, aid, COUNT(uid) AS extra, is_read, MAX(photo_update_time) AS last_update_time \t\t\tFROM photo_update            WHERE is_read=0 GROUP BY uid\t\t) AS photo, user, service \tWHERE photo.uid=user._id AND user.sid=service._id AND user.contact_id > 0 AND user.contact_id <> \'\' AND user.contact_id IS NOT NULL \t) GROUP BY uid "

.field private static final UPDATE_QUERY_ECLAIR_CONTACT:Ljava/lang/String; = "SELECT contact_id FROM ( SELECT 0 AS _id, user_id, uid, count(uid) AS update_num, type, extra, rowId, is_read, last_time, service_name, full_name, user_name, buddy_icon_url, contact_id FROM \t( \t\tSELECT user.user_id AS user_id, profile.uid AS uid, profile.type AS type, profile.extra AS extra, profile._id AS rowId, profile.is_read AS is_read, user.status_update_time AS last_time, service.service_name AS service_name, full_name, user_name, user.buddy_icon_url as buddy_icon_url, user.contact_id as contact_id \t\tFROM \t\t\t(\t\t\t\tSELECT * \t\t\t\tFROM \t\t\t\t\t(\t\t\t\t\t\tSELECT * \t\t\t\t\t\tFROM \t\t\t\t\t\t\t(\t\t\t\t\t\t\t\tSELECT _id, uid, type, extra, is_read, last_check_time \t\t\t\t\t\t\t\tFROM profile_update \t\t\t\t\t\t\t\tWHERE type=\'status\' ORDER BY last_check_time ASC\t\t\t\t\t\t\t) GROUP BY uid\t\t\t\t\t) \t\t\t\tWHERE is_read=0 \t\t\t) AS profile, user, service \t\tWHERE profile.uid=user._id AND user.sid=service._id AND profile.extra IS NOT NULL AND profile.extra <> \'\' AND user.contact_id > 0 AND user.contact_id <> \'\' AND user.contact_id IS NOT NULL    UNION ALL \tSELECT user.user_id AS user_id, profile.uid AS uid, profile.type AS type, profile.extra AS extra, profile._id AS rowId, profile.is_read AS is_read, profile.last_check_time AS last_time, service.service_name AS service_name, full_name, user_name, user.buddy_icon_url as buddy_icon_url, user.contact_id as contact_id \tFROM \t\t(\t\t\tSELECT _id, uid, type, extra, is_read, last_check_time \t\t\tFROM profile_update \t\t\tWHERE type=\'profile\' AND is_read=0 \t\t) AS profile, user, service \tWHERE profile.uid=user._id AND user.sid=service._id AND user.contact_id > 0 AND user.contact_id <> \'\' AND user.contact_id IS NOT NULL \tUNION ALL \tSELECT user.user_id AS user_id, photo.uid AS uid, \'photo\' AS type, photo.extra AS extra, photo.aid AS rowId, photo.is_read AS is_read, photo.last_update_time AS last_time, service.service_name AS service_name, full_name, user_name, user.buddy_icon_url as buddy_icon_url, user.contact_id as contact_id \tFROM \t\t(\t\t\tSELECT _id, uid, aid, COUNT(uid) AS extra, is_read, MAX(photo_update_time) AS last_update_time \t\t\tFROM photo_update            WHERE is_read=0 GROUP BY uid\t\t) AS photo, user, service \tWHERE photo.uid=user._id AND user.sid=service._id AND user.contact_id > 0 AND user.contact_id <> \'\' AND user.contact_id IS NOT NULL \t) GROUP BY uid ) GROUP BY contact_id ORDER BY last_time DESC "

.field public static final UPDATE_UNE_NOTIFICATION:I = 0x1

.field private static mInstance:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mNotificationMgr:Landroid/app/NotificationManager;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 131
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mContext:Landroid/content/Context;

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NotificationUpdater"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mHandlerThread:Landroid/os/HandlerThread;

    .line 134
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 136
    new-instance v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;

    iget-object v1, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$WorkHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mHandler:Landroid/os/Handler;

    .line 138
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 142
    :try_start_0
    new-instance v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$1;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$1;-><init>(Lcom/android/providers/contacts/HtcUtils/NotificationUtils;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PEOPLE_NOTIFICATION_REMOVE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    new-instance v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$2;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils$2;-><init>(Lcom/android/providers/contacts/HtcUtils/NotificationUtils;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PEOPLE_UNE_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$200()Lcom/android/providers/contacts/HtcUtils/NotificationUtils;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    return-object v0
.end method

.method public static clearNotification(I)V
    .locals 4
    .parameter "notification"

    .prologue
    .line 200
    sget-object v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    if-nez v2, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    sget-object v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    invoke-virtual {v2}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 204
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    :cond_2
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 211
    .local v1, msg:Landroid/os/Message;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 180
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    .line 183
    :cond_0
    return-void
.end method

.method public static updateNotification(I)V
    .locals 4
    .parameter "notification"

    .prologue
    .line 186
    sget-object v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    if-nez v2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 189
    :cond_0
    sget-object v2, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    invoke-virtual {v2}, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 190
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 193
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    :cond_1
    invoke-virtual {v0, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 196
    .local v1, msg:Landroid/os/Message;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method protected getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method protected getInstance()Lcom/android/providers/contacts/HtcUtils/NotificationUtils;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/android/providers/contacts/HtcUtils/NotificationUtils;->mInstance:Lcom/android/providers/contacts/HtcUtils/NotificationUtils;

    return-object v0
.end method
