.class Lcom/android/providers/downloads/DownloadNotification;
.super Ljava/lang/Object;
.source "DownloadNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    }
.end annotation


# static fields
.field private static final INSUFFICIENT_NOTIFICATION_ID:I = -0x1

.field static final LOGTAG:Ljava/lang/String; = "DownloadNotification"

.field static final WHERE_COMPLETED:Ljava/lang/String; = "status >= \'200\' AND visibility == \'1\'"

.field static final WHERE_RUNNING:Ljava/lang/String; = "(status >= \'100\') AND (status <= \'199\') AND (visibility IS NULL OR visibility == \'0\' OR visibility == \'1\')"


# instance fields
.field mContext:Landroid/content/Context;

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/downloads/DownloadNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field private m_bSendInsufNoti:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V
    .locals 1
    .parameter "ctx"
    .parameter "systemFacade"

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadNotification;->m_bSendInsufNoti:Z

    .line 103
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    .line 106
    return-void
.end method

.method private static buildPercentageLabel(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "totalBytes"
    .parameter "currentBytes"

    .prologue
    .line 369
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 370
    const/4 v1, 0x0

    .line 373
    :goto_0
    return-object v1

    .line 372
    :cond_0
    const-wide/16 v1, 0x64

    mul-long/2addr v1, p3

    div-long/2addr v1, p1

    long-to-int v0, v1

    .line 373
    .local v0, percent:I
    const v1, 0x7f030020

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final cancelStorageInsufficentNotification()V
    .locals 3

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadNotification;->m_bSendInsufNoti:Z

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    const-string v0, "DownloadNotification"

    const-string v1, "Canceling insufficient download storage notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    const-wide/16 v1, -0x1

    invoke-interface {v0, v1, v2}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadNotification;->m_bSendInsufNoti:Z

    goto :goto_0
.end method

.method private isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 2
    .parameter "download"

    .prologue
    .line 358
    const/16 v0, 0x64

    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z
    .locals 3
    .parameter "download"

    .prologue
    const/4 v0, 0x1

    .line 363
    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    iget v1, p1, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final sendStorageInsufficentNotification()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 127
    const-string v5, "DownloadNotification"

    const-string v6, "Sending insufficient download storage notification"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/providers/downloads/DownloadNotification;->m_bSendInsufNoti:Z

    .line 132
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.category.DEFAULT"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, lowMemIntent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f03001d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 135
    .local v4, title:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f03001e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 136
    .local v0, details:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v2, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 137
    .local v1, intent:Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    .line 138
    .local v3, notification:Landroid/app/Notification;
    const v5, 0x10804ee

    iput v5, v3, Landroid/app/Notification;->icon:I

    .line 139
    iput-object v4, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 140
    iget v5, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v3, Landroid/app/Notification;->flags:I

    .line 141
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v4, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 142
    iget-object v5, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    const-wide/16 v6, -0x1

    invoke-interface {v5, v6, v7, v3}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    .line 143
    return-void
.end method

.method private updateActiveNotification(Ljava/util/Collection;)V
    .locals 29
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->clear()V

    .line 180
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/providers/downloads/DownloadInfo;

    .line 181
    .local v11, download:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/providers/downloads/DownloadNotification;->isActiveAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 184
    iget-object v0, v11, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 185
    .local v19, packageName:Ljava/lang/String;
    iget-wide v8, v11, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 186
    .local v8, max:J
    iget-wide v6, v11, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    .line 187
    .local v6, progress:J
    iget-wide v15, v11, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 188
    .local v15, id:J
    iget-object v5, v11, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    .line 189
    .local v5, title:Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    if-nez v22, :cond_2

    .line 190
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f03000f

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 197
    :cond_2
    iget v0, v11, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    move/from16 v21, v0

    .line 199
    .local v21, status:I
    const/16 v22, 0xc5

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3

    const/16 v22, 0xc3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 201
    :cond_3
    iget v0, v11, Lcom/android/providers/downloads/DownloadInfo;->mRestriction:I

    move/from16 v20, v0

    .line 203
    .local v20, restriction:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/providers/downloads/Helpers;->isNetworkAvailable(Landroid/content/Context;I)Z

    move-result v22

    if-nez v22, :cond_4

    .line 204
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f03001f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 210
    .end local v20           #restriction:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_5

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 212
    .local v4, item:Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;JJ)V

    .line 221
    :goto_1
    iget v0, v11, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    move/from16 v22, v0

    const/16 v23, 0xc4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    iget-object v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f030014

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    goto/16 :goto_0

    .line 214
    .end local v4           #item:Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    :cond_5
    new-instance v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    invoke-direct {v4}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;-><init>()V

    .line 215
    .restart local v4       #item:Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    long-to-int v0, v15

    move/from16 v22, v0

    move/from16 v0, v22

    iput v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    .line 216
    move-object/from16 v0, v19

    iput-object v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPackageName:Ljava/lang/String;

    .line 217
    iget-object v0, v11, Lcom/android/providers/downloads/DownloadInfo;->mDescription:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iput-object v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    .line 218
    invoke-virtual/range {v4 .. v9}, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->addItem(Ljava/lang/String;JJ)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 229
    .end local v4           #item:Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    .end local v5           #title:Ljava/lang/String;
    .end local v6           #progress:J
    .end local v8           #max:J
    .end local v11           #download:Lcom/android/providers/downloads/DownloadInfo;
    .end local v15           #id:J
    .end local v19           #packageName:Ljava/lang/String;
    .end local v21           #status:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mNotifications:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;

    .line 231
    .restart local v4       #item:Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v10, builder:Landroid/app/Notification$Builder;
    iget-object v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_9

    const/4 v12, 0x1

    .line 234
    .local v12, hasPausedText:Z
    :goto_3
    const v14, 0x1080082

    .line 235
    .local v14, iconResource:I
    if-eqz v12, :cond_7

    .line 236
    const v14, 0x108008a

    .line 238
    :cond_7
    invoke-virtual {v10, v14}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 239
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .local v5, title:Ljava/lang/StringBuilder;
    iget v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_a

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f030010

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitles:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    iget v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_8

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x7f030011

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_8
    :goto_4
    invoke-virtual {v10, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 260
    if-eqz v12, :cond_b

    .line 261
    iget-object v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mPausedText:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 273
    :goto_5
    new-instance v17, Landroid/content/Intent;

    const-string v22, "android.intent.action.DOWNLOAD_LIST"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 274
    .local v17, intent:Landroid/content/Intent;
    const-string v22, "com.android.providers.downloads"

    const-class v23, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    sget-object v22, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-static/range {v22 .. v24}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 278
    const-string v23, "multiple"

    iget v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTitleCount:I

    move/from16 v22, v0

    const/16 v24, 0x1

    move/from16 v0, v22

    move/from16 v1, v24

    if-le v0, v1, :cond_d

    const/16 v22, 0x1

    :goto_6
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 283
    invoke-virtual {v10}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v18

    .line 284
    .local v18, n:Landroid/app/Notification;
    iget v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    move-object/from16 v22, v0

    iget v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mId:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    move-object/from16 v3, v18

    invoke-interface {v0, v1, v2, v3}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    goto/16 :goto_2

    .line 233
    .end local v5           #title:Ljava/lang/StringBuilder;
    .end local v12           #hasPausedText:Z
    .end local v14           #iconResource:I
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #n:Landroid/app/Notification;
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 252
    .restart local v5       #title:Ljava/lang/StringBuilder;
    .restart local v12       #hasPausedText:Z
    .restart local v14       #iconResource:I
    :cond_a
    iget-object v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_8

    .line 253
    iget-object v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mDescription:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_4

    .line 263
    :cond_b
    iget-wide v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v23, v0

    iget-wide v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    iget-wide v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    move-wide/from16 v25, v0

    const-wide/16 v27, -0x1

    cmp-long v22, v25, v27

    if-nez v22, :cond_c

    const/16 v22, 0x1

    :goto_7
    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    invoke-virtual {v10, v0, v1, v2}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    iget-wide v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalTotal:J

    move-wide/from16 v23, v0

    iget-wide v0, v4, Lcom/android/providers/downloads/DownloadNotification$NotificationItem;->mTotalCurrent:J

    move-wide/from16 v25, v0

    invoke-static/range {v22 .. v26}, Lcom/android/providers/downloads/DownloadNotification;->buildPercentageLabel(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_5

    .line 263
    :cond_c
    const/16 v22, 0x0

    goto :goto_7

    .line 278
    .restart local v17       #intent:Landroid/content/Intent;
    :cond_d
    const/16 v22, 0x0

    goto/16 :goto_6

    .line 290
    .end local v4           #item:Lcom/android/providers/downloads/DownloadNotification$NotificationItem;
    .end local v5           #title:Ljava/lang/StringBuilder;
    .end local v10           #builder:Landroid/app/Notification$Builder;
    .end local v12           #hasPausedText:Z
    .end local v14           #iconResource:I
    .end local v17           #intent:Landroid/content/Intent;
    :cond_e
    return-void
.end method

.method private updateCompletedNotification(Ljava/util/Collection;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 293
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/downloads/DownloadInfo;

    .line 294
    .local v8, download:Lcom/android/providers/downloads/DownloadInfo;
    invoke-direct {p0, v8}, Lcom/android/providers/downloads/DownloadNotification;->isCompleteAndVisible(Lcom/android/providers/downloads/DownloadInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-wide v1, v8, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    iget-object v3, v8, Lcom/android/providers/downloads/DownloadInfo;->mTitle:Ljava/lang/String;

    iget v4, v8, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    iget v5, v8, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-wide v6, v8, Lcom/android/providers/downloads/DownloadInfo;->mLastMod:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/providers/downloads/DownloadNotification;->notificationForCompletedDownload(JLjava/lang/String;IIJ)V

    goto :goto_0

    .line 300
    .end local v8           #download:Lcom/android/providers/downloads/DownloadInfo;
    :cond_1
    return-void
.end method

.method private updateStorageNotification(Ljava/util/Collection;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 158
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadNotification;->cancelStorageInsufficentNotification()V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    const/4 v0, 0x1

    .line 162
    .local v0, bNeedCancelInsufficentNotifcation:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/DownloadInfo;

    .line 163
    .local v1, download:Lcom/android/providers/downloads/DownloadInfo;
    if-eqz p1, :cond_2

    .line 165
    iget-boolean v3, v1, Lcom/android/providers/downloads/DownloadInfo;->mStorageInsufficient:Z

    if-eqz v3, :cond_2

    .line 168
    if-eqz v0, :cond_3

    .line 169
    const/4 v0, 0x0

    .line 170
    :cond_3
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadNotification;->sendStorageInsufficentNotification()V

    goto :goto_1

    .line 172
    .end local v1           #download:Lcom/android/providers/downloads/DownloadInfo;
    :cond_4
    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadNotification;->cancelStorageInsufficentNotification()V

    goto :goto_0
.end method


# virtual methods
.method notificationForCompletedDownload(JLjava/lang/String;IIJ)V
    .locals 7
    .parameter "id"
    .parameter "title"
    .parameter "status"
    .parameter "destination"
    .parameter "lastMod"

    .prologue
    const/4 v6, 0x0

    .line 304
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 305
    .local v0, builder:Landroid/app/Notification$Builder;
    const v4, 0x1080082

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 306
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 307
    :cond_0
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f03000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 310
    :cond_1
    sget-object v4, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 314
    .local v2, contentUri:Landroid/net/Uri;
    invoke-static {p4}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 315
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, caption:Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_OPEN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "multiple"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 339
    const-string v4, "com.android.providers.downloads"

    const-class v5, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 343
    invoke-virtual {v0, p6, p7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 344
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 345
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 346
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 348
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.DOWNLOAD_HIDE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v4, "com.android.providers.downloads"

    const-class v5, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 351
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 352
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 354
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-interface {v4, p1, p2, v5}, Lcom/android/providers/downloads/SystemFacade;->postNotification(JLandroid/app/Notification;)V

    .line 355
    return-void

    .line 321
    .end local v1           #caption:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #caption:Ljava/lang/String;
    goto :goto_0
.end method

.method public updateNotification(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, downloads:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/downloads/DownloadInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateStorageNotification(Ljava/util/Collection;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateActiveNotification(Ljava/util/Collection;)V

    .line 117
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadNotification;->updateCompletedNotification(Ljava/util/Collection;)V

    .line 118
    return-void
.end method
