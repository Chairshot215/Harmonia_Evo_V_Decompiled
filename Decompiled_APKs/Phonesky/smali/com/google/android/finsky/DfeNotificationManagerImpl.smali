.class public Lcom/google/android/finsky/DfeNotificationManagerImpl;
.super Ljava/lang/Object;
.source "DfeNotificationManagerImpl.java"

# interfaces
.implements Lcom/google/android/finsky/api/DfeNotificationManager;


# instance fields
.field private final mAccounts:Lcom/google/android/finsky/library/Accounts;

.field private final mAppStates:Lcom/google/android/finsky/appstate/AppStates;

.field private final mContext:Landroid/content/Context;

.field private final mHandledNotifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstaller:Lcom/google/android/finsky/receivers/Installer;

.field private final mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

.field private final mNotifier:Lcom/google/android/finsky/utils/Notifier;

.field private final mPendingAcks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/finsky/receivers/Installer;Lcom/google/android/finsky/utils/Notifier;Lcom/google/android/finsky/appstate/AppStates;Lcom/google/android/finsky/library/LibraryReplicators;Lcom/google/android/finsky/library/Accounts;)V
    .locals 1
    .parameter "context"
    .parameter "installer"
    .parameter "notifier"
    .parameter "appStates"
    .parameter "libraryReplicators"
    .parameter "accounts"

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mHandledNotifications:Ljava/util/List;

    .line 55
    invoke-static {}, Lcom/google/android/finsky/utils/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    .line 66
    iput-object p2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    .line 67
    iput-object p3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    .line 68
    iput-object p1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mContext:Landroid/content/Context;

    .line 69
    iput-object p4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    .line 70
    iput-object p5, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    .line 71
    iput-object p6, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    .line 73
    invoke-direct {p0}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->loadPendingAcks()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/DfeNotificationManagerImpl;Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/finsky/DfeNotificationManagerImpl;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/finsky/DfeNotificationManagerImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->savePendingAcks()V

    return-void
.end method

.method private ackNotification(Ljava/lang/String;)V
    .locals 3
    .parameter "notificationId"

    .prologue
    .line 341
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getDfeApi()Lcom/google/android/finsky/api/DfeApi;

    move-result-object v0

    new-instance v1, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl$2;-><init>(Lcom/google/android/finsky/DfeNotificationManagerImpl;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/finsky/DfeNotificationManagerImpl$3;

    invoke-direct {v2, p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl$3;-><init>(Lcom/google/android/finsky/DfeNotificationManagerImpl;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/finsky/api/DfeApi;->ackNotification(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 355
    return-void
.end method

.method private ackPendingNotifications(Ljava/lang/String;)V
    .locals 3
    .parameter "notificationId"

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->ackNotification(Ljava/lang/String;)V

    .line 329
    iget-object v2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 330
    .local v1, pendingAck:Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 331
    invoke-direct {p0, v1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->ackNotification(Ljava/lang/String;)V

    goto :goto_0

    .line 334
    .end local v1           #pendingAck:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private handleCheckPromoOffersNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 5
    .parameter "notification"

    .prologue
    const/4 v4, 0x1

    .line 296
    const-string v0, "Received CheckPromoOffers notification for account %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserEmail()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    sget-object v0, Lcom/google/android/finsky/utils/FinskyPreferences;->checkPromoOffers:Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$PrefixSharedPreference;->get(Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method private handleInAppNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 3
    .parameter "notification"

    .prologue
    .line 265
    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getInAppNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Notifications$InAppNotificationData;->getInAppNotificationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/android/finsky/billing/iab/MarketBillingService;->sendNotify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    return-void
.end method

.method private handleLibraryDirtyNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 8
    .parameter "notification"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 270
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryDirtyData()Z

    move-result v3

    if-nez v3, :cond_0

    .line 271
    const-string v3, "Received LibraryDirty notification without LibraryDirtyData: id=%s"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserEmail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/google/android/finsky/api/AccountHandler;->findAccount(Ljava/lang/String;Landroid/content/Context;)Landroid/accounts/Account;

    move-result-object v0

    .line 276
    .local v0, account:Landroid/accounts/Account;
    if-nez v0, :cond_1

    .line 277
    const-string v3, "Received LibraryDirty notification for invalid account: id=%s, account=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserEmail()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/finsky/utils/FinskyLog;->scrubPii(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    :cond_1
    new-array v2, v7, [Ljava/lang/String;

    .line 285
    .local v2, libraryIds:[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryDirtyData()Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->hasLibraryId()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryDirtyData()Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->getLibraryId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 291
    :goto_1
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v2, v4, v5}, Lcom/google/android/finsky/library/LibraryReplicators;->replicateAccount(Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryDirtyData()Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/Notifications$LibraryDirtyData;->getBackend()I

    move-result v1

    .line 289
    .local v1, backend:I
    invoke-static {v1}, Lcom/google/android/finsky/library/AccountLibrary;->getLibraryIdFromBackend(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    goto :goto_1
.end method

.method private handleNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 8
    .parameter "notification"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, notificationId:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mHandledNotifications:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string v3, "Notification [%s] ignored, already handled."

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    invoke-direct {p0, v2}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->ackPendingNotifications(Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v3, "Handling notification type=[%s], id=[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v2, v4, v7

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasLibraryUpdate()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, accountName:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAccounts:Lcom/google/android/finsky/library/Accounts;

    invoke-interface {v3, v1}, Lcom/google/android/finsky/library/Accounts;->getAccount(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v0

    .line 113
    .local v0, account:Landroid/accounts/Account;
    if-eqz v0, :cond_2

    .line 114
    const-string v3, "Processing notification library update."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mLibraryReplicators:Lcom/google/android/finsky/library/LibraryReplicators;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getLibraryUpdate()Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->makeReplicatorDebugTag(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v0, v4, v5}, Lcom/google/android/finsky/library/LibraryReplicators;->applyLibraryUpdate(Landroid/accounts/Account;Lcom/google/android/finsky/remoting/protos/Library$LibraryUpdate;Ljava/lang/String;)V

    .line 121
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 144
    const-string v3, "Unhandled notification type [%s]"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    :goto_2
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mHandledNotifications:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_3
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3

    .line 151
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 118
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #accountName:Ljava/lang/String;
    :cond_2
    const-string v3, "Could not process library update for unknown account."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 123
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #accountName:Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handlePurchaseDeliveryNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    goto :goto_2

    .line 126
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handlePurchaseRemovalNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    goto :goto_2

    .line 129
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handlePurchaseDeclinedNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    goto :goto_2

    .line 132
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleUserNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    goto :goto_2

    .line 135
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleInAppNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    goto :goto_2

    .line 138
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleLibraryDirtyNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    goto :goto_2

    .line 141
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleCheckPromoOffersNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    goto :goto_2

    .line 153
    :cond_3
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-direct {p0}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->savePendingAcks()V

    .line 156
    invoke-direct {p0, v2}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->ackPendingNotifications(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private handlePurchaseDeclinedNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 9
    .parameter "notification"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 199
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getPurchaseDeclinedData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseDeclinedData;->getReason()I

    move-result v1

    .line 200
    .local v1, reason:I
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, packageName:Ljava/lang/String;
    const-string v2, "Received PURCHASE_DECLINED tickle for %s reason=%d"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v2

    const-string v3, "install.declinedTickle"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v0, v4}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v2

    const-string v3, "install.declinedTickle"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "cidi"

    aput-object v5, v4, v6

    aput-object v0, v4, v7

    const-string v5, "r"

    aput-object v5, v4, v8

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method private handlePurchaseDeliveryNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 11
    .parameter "notification"

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 211
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getAppData()Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;

    move-result-object v10

    .line 212
    .local v10, notificationData:Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getAppDeliveryData()Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;

    move-result-object v3

    .line 215
    .local v3, deliveryData:Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppData()Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const-string v0, "Ignoring PurchaseDeliveryNotification because AppData was null."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasAppDeliveryData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    const-string v0, "Ignoring PurchaseDeliveryNotification because delivery data was null"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getDownloadAuthCookieCount()I

    move-result v0

    if-ge v0, v9, :cond_2

    .line 222
    const-string v0, "Ignoring PurchaseDeliveryNotification because no cookies were provided."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, backendDocId:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;->getServerInitiated()Z

    move-result v0

    if-nez v0, :cond_3

    .line 229
    const-string v0, "Ignoring PurchaseDeliveryNotification with !server_initiated: pkg=%s"

    new-array v2, v9, [Ljava/lang/Object;

    aput-object v1, v2, v8

    invoke-static {v0, v2}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 234
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserEmail()Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, accountName:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v0

    const-string v2, "install.receiveTickle"

    invoke-interface {v0, v2, v1, v5}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v0

    const-string v2, "install.receiveTickle"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "cidi"

    aput-object v7, v6, v8

    aput-object v1, v6, v9

    invoke-virtual {v0, v2, v6}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-virtual {v10}, Lcom/google/android/finsky/remoting/protos/Notifications$AndroidAppNotificationData;->getVersionCode()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocTitle()Ljava/lang/String;

    move-result-object v7

    const-string v9, "tickle"

    move-object v6, v5

    invoke-interface/range {v0 .. v9}, Lcom/google/android/finsky/receivers/Installer;->requestInstall(Ljava/lang/String;ILcom/google/android/finsky/remoting/protos/AndroidAppDelivery$AndroidAppDeliveryData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method private handlePurchaseRemovalNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 10
    .parameter "notification"

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 165
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocid()Lcom/google/android/finsky/remoting/protos/Common$Docid;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Common$Docid;->getBackendDocid()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->hasPurchaseRemovalData()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getPurchaseRemovalData()Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/remoting/protos/Notifications$PurchaseRemovalData;->getMalicious()Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 168
    .local v0, isMalicious:Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getDocTitle()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, title:Ljava/lang/String;
    const-string v6, "Removing package \'%s\'. Malicious=\'%s\'"

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getAnalytics()Lcom/google/android/finsky/analytics/Analytics;

    move-result-object v6

    const-string v7, "install.removeAppTickle"

    const/4 v8, 0x0

    invoke-interface {v6, v7, v1, v8}, Lcom/google/android/finsky/analytics/Analytics;->logTagAndPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/finsky/FinskyApp;->getEventLogger()Lcom/google/android/finsky/analytics/FinskyEventLog;

    move-result-object v6

    const-string v7, "install.removeAppTickle"

    new-array v8, v9, [Ljava/lang/Object;

    const-string v9, "cidi"

    aput-object v9, v8, v5

    aput-object v1, v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/android/finsky/analytics/FinskyEventLog;->logTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v4}, Lcom/google/android/finsky/appstate/AppStates;->getPackageStateRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v2

    .line 179
    .local v2, packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    if-eqz v2, :cond_0

    .line 181
    if-eqz v0, :cond_2

    .line 182
    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v4, v3, v1}, Lcom/google/android/finsky/utils/Notifier;->showMaliciousAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 190
    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v4, v1}, Lcom/google/android/finsky/receivers/Installer;->uninstallPackagesByUid(Ljava/lang/String;)V

    .line 194
    :goto_2
    return-void

    .end local v0           #isMalicious:Z
    .end local v2           #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    .end local v3           #title:Ljava/lang/String;
    :cond_1
    move v0, v5

    .line 166
    goto :goto_0

    .line 184
    .restart local v0       #isMalicious:Z
    .restart local v2       #packageState:Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;
    .restart local v3       #title:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-interface {v4, v3, v1}, Lcom/google/android/finsky/utils/Notifier;->showNormalAssetRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_3
    iget-object v4, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mInstaller:Lcom/google/android/finsky/receivers/Installer;

    invoke-interface {v4, v1}, Lcom/google/android/finsky/receivers/Installer;->uninstallAssetSilently(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private handleUserNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 5
    .parameter "notification"

    .prologue
    .line 259
    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getUserNotificationData()Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;

    move-result-object v0

    .line 260
    .local v0, notificationData:Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;
    iget-object v1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mNotifier:Lcom/google/android/finsky/utils/Notifier;

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getNotificationTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getTickerText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/Notifications$UserNotificationData;->getNotificationText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/finsky/utils/Notifier;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method private loadPendingAcks()V
    .locals 5

    .prologue
    .line 363
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->dfeNotificationPendingAcks:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 364
    .local v1, pendingAckList:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 365
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, pendingAcks:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 367
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v3, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mHandledNotifications:Ljava/util/List;

    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 371
    .end local v0           #i:I
    .end local v2           #pendingAcks:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private makeReplicatorDebugTag(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)Ljava/lang/String;
    .locals 2
    .parameter "notification"

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notification (type=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],id=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private savePendingAcks()V
    .locals 4

    .prologue
    .line 378
    iget-object v1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->dfeNotificationPendingAcks:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->remove()V

    .line 386
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 381
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->dfeNotificationPendingAcks:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    iget-object v2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0

    .line 383
    :cond_1
    const-string v1, ","

    iget-object v2, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mPendingAcks:Ljava/util/List;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 384
    .local v0, pendingList:Ljava/lang/String;
    sget-object v1, Lcom/google/android/finsky/utils/FinskyPreferences;->dfeNotificationPendingAcks:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public processNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V
    .locals 2
    .parameter "notification"

    .prologue
    .line 86
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    invoke-virtual {v0}, Lcom/google/android/finsky/appstate/AppStates;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl;->handleNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    .line 97
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/DfeNotificationManagerImpl;->mAppStates:Lcom/google/android/finsky/appstate/AppStates;

    new-instance v1, Lcom/google/android/finsky/DfeNotificationManagerImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/DfeNotificationManagerImpl$1;-><init>(Lcom/google/android/finsky/DfeNotificationManagerImpl;Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/appstate/AppStates;->load(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
