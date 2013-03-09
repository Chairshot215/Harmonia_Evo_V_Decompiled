.class public Lcom/google/android/gm/SuppressNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SuppressNotificationReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/google/android/gm/BaseActivityController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public activate(Landroid/content/Context;Lcom/google/android/gm/BaseActivityController;)V
    .locals 3
    .parameter "context"
    .parameter "controller"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mController:Lcom/google/android/gm/BaseActivityController;

    .line 31
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PROVIDER_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 35
    .local v0, filter:Landroid/content/IntentFilter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 36
    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 37
    const-string v1, "gmail-ls"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v1, "/unread/"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 39
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x0

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 59
    .local v1, action:Ljava/lang/String;
    const-string v7, "android.intent.action.PROVIDER_CHANGED"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v7, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mController:Lcom/google/android/gm/BaseActivityController;

    invoke-virtual {v7}, Lcom/google/android/gm/BaseActivityController;->isConversationListVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 66
    iget-object v7, p0, Lcom/google/android/gm/SuppressNotificationReceiver;->mController:Lcom/google/android/gm/BaseActivityController;

    invoke-virtual {v7}, Lcom/google/android/gm/BaseActivityController;->getCurrentListContext()Lcom/google/android/gm/ConversationListContext;

    move-result-object v4

    .line 67
    .local v4, listContext:Lcom/google/android/gm/ConversationListContext;
    if-nez v4, :cond_2

    .line 69
    const-string v7, "Gmail"

    const-string v8, "unexpected null context"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gm/ConversationListContext;->isSearchResult()Z

    move-result v7

    if-nez v7, :cond_0

    .line 78
    invoke-virtual {v4}, Lcom/google/android/gm/ConversationListContext;->getAccount()Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, listContextAccount:Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/android/gm/ConversationListContext;->getLabelName()Ljava/lang/String;

    move-result-object v6

    .line 81
    .local v6, listContextLabel:Ljava/lang/String;
    const-string v7, "account"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, account:Ljava/lang/String;
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 84
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 85
    .local v3, label:Ljava/lang/String;
    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 88
    const-string v7, "count"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 91
    .local v2, count:I
    if-eqz v2, :cond_0

    .line 94
    const-string v7, "Gmail"

    const-string v8, "Aborting broadcast of intent %s, label is %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p2, v9, v10

    const/4 v10, 0x1

    invoke-static {v6}, Lcom/google/android/gm/provider/LogUtils;->sanitizeLabelName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lcom/google/android/gm/provider/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 96
    invoke-virtual {p0}, Lcom/google/android/gm/SuppressNotificationReceiver;->abortBroadcast()V

    goto :goto_0
.end method
