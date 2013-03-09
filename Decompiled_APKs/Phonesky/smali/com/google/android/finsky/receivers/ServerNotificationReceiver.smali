.class public Lcom/google/android/finsky/receivers/ServerNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServerNotificationReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private tryHandleOldStyleNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 93
    const-string v4, "server_notification_message"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, notificationMessage:Ljava/lang/String;
    const-string v4, "server_dialog_message"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, dialogMessage:Ljava/lang/String;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 97
    :cond_0
    const-string v4, "Could not handle old style notification."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    :goto_0
    return-void

    .line 102
    :cond_1
    const-string v4, "server_notification_status"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "server_notification_status"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, notificationStatus:Ljava/lang/String;
    :goto_1
    const-string v4, "server_notification_title"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "server_notification_title"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, notificationTitle:Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getNotifier()Lcom/google/android/finsky/utils/Notifier;

    move-result-object v4

    invoke-interface {v4, v3, v2, v1}, Lcom/google/android/finsky/utils/Notifier;->showMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v4, "Handled old style notification."

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 102
    .end local v2           #notificationStatus:Ljava/lang/String;
    .end local v3           #notificationTitle:Ljava/lang/String;
    :cond_2
    const v4, 0x7f0701f4

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 105
    .restart local v2       #notificationStatus:Ljava/lang/String;
    :cond_3
    const v4, 0x7f0701f5

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "google.com"

    const-string v5, "from"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v4

    const-string v5, "SERVER_NOTIFICATION"

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/receivers/ServerNotificationReceiver;->setResultCode(I)V

    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 70
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "NOTIFICATION_PAYLOAD"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    const-string v4, "NOTIFICATION_PAYLOAD"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 73
    .local v3, notificationData:[B
    if-eqz v3, :cond_0

    .line 74
    const/4 v2, 0x0

    .line 76
    .local v2, notification:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    :try_start_0
    invoke-static {v3}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->parseFrom([B)Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    :try_end_0
    .catch Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 80
    :goto_1
    if-eqz v2, :cond_0

    .line 81
    const-string v4, "Handling notificationId=[%s]"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Notifications$Notification;->getNotificationId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/finsky/FinskyApp;->getDfeNotificationManager()Lcom/google/android/finsky/api/DfeNotificationManager;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/google/android/finsky/api/DfeNotificationManager;->processNotification(Lcom/google/android/finsky/remoting/protos/Notifications$Notification;)V

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    const-string v4, "Received download tickle with malformed notification proto data."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    .end local v1           #e:Lcom/google/protobuf/micro/InvalidProtocolBufferMicroException;
    .end local v2           #notification:Lcom/google/android/finsky/remoting/protos/Notifications$Notification;
    .end local v3           #notificationData:[B
    :cond_2
    const-string v4, "Ignoring server broadcast due to empty notification string."

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/google/android/finsky/utils/FinskyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/receivers/ServerNotificationReceiver;->tryHandleOldStyleNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
