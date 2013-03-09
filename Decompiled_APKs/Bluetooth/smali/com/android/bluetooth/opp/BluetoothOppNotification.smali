.class Lcom/android/bluetooth/opp/BluetoothOppNotification;
.super Ljava/lang/Object;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    }
.end annotation


# static fields
.field private static final D:Z = false

.field private static final NOTIFICATION_ID_INBOUND:I = -0xf4246

.field private static final NOTIFICATION_ID_OUTBOUND:I = -0xf4245

.field private static final TAG:Ljava/lang/String; = "BluetoothOppNotification"

.field private static final V:Z = false

.field static final WHERE_COMPLETED:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\')"

.field private static final WHERE_COMPLETED_INBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (direction == 1)"

.field private static final WHERE_COMPLETED_OUTBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (direction == 0)"

.field static final WHERE_CONFIRM_PENDING:Ljava/lang/String; = "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

.field static final WHERE_RUNNING:Ljava/lang/String; = "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\')"

.field static final confirm:Ljava/lang/String; = "(confirm == \'1\' OR confirm == \'2\')"

.field static final status:Ljava/lang/String; = "(status == \'192\')"

.field static final visible:Ljava/lang/String; = "(visibility IS NULL OR visibility == \'0\')"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFinised:Z

.field public mNotificationMgr:Landroid/app/NotificationManager;

.field private mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingUpdate:Z

.field private mUpdateCompleteNotification:Z

.field private mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mFinised:Z

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 124
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 125
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mFinised:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateActiveNotification()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateCompletedNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateIncomingFileConfirmNotification()V

    return-void
.end method

.method private updateActiveNotification()V
    .locals 29

    .prologue
    .line 180
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\')"

    const/4 v7, 0x0

    const-string v8, "_id"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 182
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_1

    .line 276
    :cond_0
    return-void

    .line 196
    :cond_1
    const-string v3, "timestamp"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 197
    .local v26, timestampIndex:I
    const-string v3, "direction"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 198
    .local v16, directionIndex:I
    const-string v3, "_id"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 199
    .local v21, idIndex:I
    const-string v3, "total_bytes"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v28

    .line 200
    .local v28, totalBytesIndex:I
    const-string v3, "current_bytes"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 201
    .local v12, currentBytesIndex:I
    const-string v3, "_data"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 202
    .local v14, dataIndex:I
    const-string v3, "hint"

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 204
    .local v18, filenameHintIndex:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 205
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_7

    .line 206
    move/from16 v0, v26

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 207
    .local v24, timeStamp:J
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 208
    .local v15, dir:I
    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 209
    .local v20, id:I
    move/from16 v0, v28

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 210
    .local v27, total:I
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 212
    .local v11, current:I
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 213
    .local v17, fileName:Ljava/lang/String;
    if-nez v17, :cond_2

    .line 214
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 216
    :cond_2
    if-nez v17, :cond_3

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040034

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 220
    :cond_3
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 223
    .local v10, batchID:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 205
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 227
    :cond_4
    new-instance v23, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    invoke-direct/range {v23 .. v23}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;-><init>()V

    .line 228
    .local v23, item:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 229
    move/from16 v0, v20

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    .line 230
    move-object/from16 v0, v23

    iput v15, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    .line 231
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v3, :cond_6

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040018

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    .line 239
    :cond_5
    :goto_2
    move-object/from16 v0, v23

    iput v11, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    .line 240
    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    .line 242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v0, v23

    invoke-virtual {v3, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 233
    :cond_6
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 234
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040015

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v17, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v23

    iput-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    goto :goto_2

    .line 248
    .end local v10           #batchID:Ljava/lang/String;
    .end local v11           #current:I
    .end local v15           #dir:I
    .end local v17           #fileName:Ljava/lang/String;
    .end local v20           #id:I
    .end local v23           #item:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    .end local v24           #timeStamp:J
    .end local v27           #total:I
    :cond_7
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 251
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    .line 254
    .restart local v23       #item:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    new-instance v9, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-direct {v9, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 255
    .local v9, b:Landroid/app/Notification$Builder;
    move-object/from16 v0, v23

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 256
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    int-to-long v3, v3

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    int-to-long v5, v5

    invoke-static {v3, v4, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 258
    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:I

    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:I

    const/4 v6, -0x1

    if-ne v3, v6, :cond_9

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v9, v4, v5, v3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 259
    move-object/from16 v0, v23

    iget-wide v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    invoke-virtual {v9, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 260
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v3, :cond_a

    .line 261
    const v3, 0x1080088

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 267
    :cond_8
    :goto_5
    const/4 v3, 0x1

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 269
    new-instance v22, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.LIST"

    move-object/from16 v0, v22

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .local v22, intent:Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 273
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 274
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v9}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_3

    .line 258
    .end local v22           #intent:Landroid/content/Intent;
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 262
    :cond_a
    move-object/from16 v0, v23

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 263
    const v3, 0x1080081

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_5
.end method

.method private updateCompletedNotification()V
    .locals 28

    .prologue
    .line 281
    const-wide/16 v24, 0x0

    .line 282
    .local v24, timeStamp:J
    const/16 v21, 0x0

    .line 283
    .local v21, outboundSuccNumber:I
    const/16 v19, 0x0

    .line 286
    .local v19, outboundFailNumber:I
    const/16 v16, 0x0

    .line 287
    .local v16, inboundSuccNumber:I
    const/4 v14, 0x0

    .line 308
    .local v14, inboundFailNumber:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (direction == 0)"

    const/4 v7, 0x0

    const-string v8, "timestamp DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 310
    .local v10, cursor:Landroid/database/Cursor;
    if-nez v10, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    const-string v3, "_id"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 315
    .local v12, idIndex:I
    const-string v3, "timestamp"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 316
    .local v26, timestampIndex:I
    const-string v3, "status"

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 318
    .local v23, statusIndex:I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_4

    .line 319
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 320
    .local v11, id:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v3, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 321
    invoke-interface {v10}, Landroid/database/Cursor;->isFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 325
    :cond_2
    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 327
    .local v22, status:I
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 328
    add-int/lit8 v19, v19, 0x1

    .line 318
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 330
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    .line 334
    .end local v11           #id:I
    .end local v22           #status:I
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 336
    add-int v20, v21, v19

    .line 338
    .local v20, outboundNum:I
    if-lez v20, :cond_7

    .line 339
    new-instance v18, Landroid/app/Notification;

    invoke-direct/range {v18 .. v18}, Landroid/app/Notification;-><init>()V

    .line 340
    .local v18, outNoti:Landroid/app/Notification;
    const v3, 0x1080089

    move-object/from16 v0, v18

    iput v3, v0, Landroid/app/Notification;->icon:I

    .line 341
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040055

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 342
    .local v27, title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040057

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 344
    .local v9, caption:Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.OPEN_OUTBOUND"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    .local v17, intent:Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1, v9, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 348
    new-instance v17, Landroid/content/Intent;

    .end local v17           #intent:Landroid/content/Intent;
    const-string v3, "android.btopp.intent.action.HIDE_COMPLETE"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v17       #intent:Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, v18

    iput-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 351
    move-wide/from16 v0, v24

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v4, -0xf4245

    move-object/from16 v0, v18

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 361
    .end local v9           #caption:Ljava/lang/String;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #outNoti:Landroid/app/Notification;
    .end local v27           #title:Ljava/lang/String;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (direction == 1)"

    const/4 v7, 0x0

    const-string v8, "timestamp DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 363
    if-eqz v10, :cond_0

    .line 367
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_4
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_9

    .line 368
    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 369
    .restart local v11       #id:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v3, v11}, Landroid/app/NotificationManager;->cancel(I)V

    .line 370
    invoke-interface {v10}, Landroid/database/Cursor;->isFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 372
    move/from16 v0, v26

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 374
    :cond_6
    move/from16 v0, v23

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 376
    .restart local v22       #status:I
    invoke-static/range {v22 .. v22}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 377
    add-int/lit8 v14, v14, 0x1

    .line 367
    :goto_5
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_4

    .line 354
    .end local v11           #id:I
    .end local v22           #status:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v3, :cond_5

    .line 355
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v4, -0xf4245

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_3

    .line 379
    .restart local v11       #id:I
    .restart local v22       #status:I
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 383
    .end local v11           #id:I
    .end local v22           #status:I
    :cond_9
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 385
    add-int v15, v16, v14

    .line 387
    .local v15, inboundNum:I
    if-lez v15, :cond_a

    .line 388
    new-instance v13, Landroid/app/Notification;

    invoke-direct {v13}, Landroid/app/Notification;-><init>()V

    .line 389
    .local v13, inNoti:Landroid/app/Notification;
    const v3, 0x1080082

    iput v3, v13, Landroid/app/Notification;->icon:I

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040056

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 391
    .restart local v27       #title:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f040057

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 393
    .restart local v9       #caption:Ljava/lang/String;
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.OPEN_INBOUND"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .restart local v17       #intent:Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v13, v3, v0, v9, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 397
    new-instance v17, Landroid/content/Intent;

    .end local v17           #intent:Landroid/content/Intent;
    const-string v3, "android.btopp.intent.action.HIDE_COMPLETE"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .restart local v17       #intent:Landroid/content/Intent;
    const-string v3, "com.android.bluetooth"

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v17

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v13, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 400
    move-wide/from16 v0, v24

    iput-wide v0, v13, Landroid/app/Notification;->when:J

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v4, -0xf4246

    invoke-virtual {v3, v4, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 403
    .end local v9           #caption:Ljava/lang/String;
    .end local v13           #inNoti:Landroid/app/Notification;
    .end local v17           #intent:Landroid/content/Intent;
    .end local v27           #title:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v3, :cond_0

    .line 404
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v4, -0xf4246

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0
.end method

.method private updateIncomingFileConfirmNotification()V
    .locals 15

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

    const/4 v4, 0x0

    const-string v5, "_id"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 414
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 448
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f040012

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    .line 421
    .local v14, title:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v1, 0x7f040013

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 423
    .local v6, caption:Ljava/lang/CharSequence;
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 424
    .local v9, id:I
    const-string v0, "timestamp"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 425
    .local v12, timeStamp:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 427
    .local v7, contentUri:Landroid/net/Uri;
    new-instance v11, Landroid/app/Notification;

    invoke-direct {v11}, Landroid/app/Notification;-><init>()V

    .line 428
    .local v11, n:Landroid/app/Notification;
    const v0, 0x7f020002

    iput v0, v11, Landroid/app/Notification;->icon:I

    .line 429
    iget v0, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x28

    iput v0, v11, Landroid/app/Notification;->flags:I

    .line 430
    const/4 v0, 0x1

    iput v0, v11, Landroid/app/Notification;->defaults:I

    .line 431
    iput-object v14, v11, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 432
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.btopp.intent.action.CONFIRM"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 433
    .local v10, intent:Landroid/content/Intent;
    const-string v0, "com.android.bluetooth"

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 436
    iput-wide v12, v11, Landroid/app/Notification;->when:J

    .line 437
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v10, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v11, v0, v14, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 440
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intent:Landroid/content/Intent;
    const-string v0, "android.btopp.intent.action.HIDE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .restart local v10       #intent:Landroid/content/Intent;
    const-string v0, "com.android.bluetooth"

    const-class v1, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    invoke-virtual {v10, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 443
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v10, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 445
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v9, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 418
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 447
    .end local v6           #caption:Ljava/lang/CharSequence;
    .end local v7           #contentUri:Landroid/net/Uri;
    .end local v9           #id:I
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #n:Landroid/app/Notification;
    .end local v12           #timeStamp:J
    .end local v14           #title:Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method


# virtual methods
.method public finishNotification()V
    .locals 1

    .prologue
    .line 131
    monitor-enter p0

    .line 132
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mFinised:Z

    .line 133
    monitor-exit p0

    .line 134
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateNotification()V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    .line 141
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:Z

    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->start()V

    .line 145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mFinised:Z

    .line 147
    :cond_0
    monitor-exit p0

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
