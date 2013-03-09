.class Lcom/android/providers/contacts/NotifyDialerScheduler$1;
.super Landroid/content/BroadcastReceiver;
.source "NotifyDialerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/NotifyDialerScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/NotifyDialerScheduler;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 68
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CONTACTS_DB_READY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    const-string v1, "NotifyDialerScheduler"

    const-string v2, "ACTION_CONTACTS_DB_READY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    #getter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mSrvConn:Landroid/content/ServiceConnection;
    invoke-static {v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$000(Lcom/android/providers/contacts/NotifyDialerScheduler;)Landroid/content/ServiceConnection;

    move-result-object v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    new-instance v2, Lcom/android/providers/contacts/NotifyDialerScheduler$1$1;

    invoke-direct {v2, p0}, Lcom/android/providers/contacts/NotifyDialerScheduler$1$1;-><init>(Lcom/android/providers/contacts/NotifyDialerScheduler$1;)V

    #setter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mSrvConn:Landroid/content/ServiceConnection;
    invoke-static {v1, v2}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$002(Lcom/android/providers/contacts/NotifyDialerScheduler;Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 92
    invoke-static {}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$200()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.htcdialer.DialerService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    #getter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mSrvConn:Landroid/content/ServiceConnection;
    invoke-static {v3}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$000(Lcom/android/providers/contacts/NotifyDialerScheduler;)Landroid/content/ServiceConnection;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 94
    const-string v1, "NotifyDialerScheduler"

    const-string v2, "bind DialerService fail !"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    #getter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsScreenOff:Z
    invoke-static {v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$300(Lcom/android/providers/contacts/NotifyDialerScheduler;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    #getter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsPowerConnected:Z
    invoke-static {v1}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$400(Lcom/android/providers/contacts/NotifyDialerScheduler;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 108
    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->getInstance()Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->getInstance()Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->setEnabled(Z)V

    .line 110
    invoke-static {}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$500()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->updateSuggestAtBegin()V

    .line 120
    :cond_1
    :goto_1
    return-void

    .line 97
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    #setter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsScreenOff:Z
    invoke-static {v1, v6}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$302(Lcom/android/providers/contacts/NotifyDialerScheduler;Z)Z

    goto :goto_0

    .line 99
    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 100
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    #setter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsScreenOff:Z
    invoke-static {v1, v5}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$302(Lcom/android/providers/contacts/NotifyDialerScheduler;Z)Z

    goto :goto_0

    .line 101
    :cond_4
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    #setter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsPowerConnected:Z
    invoke-static {v1, v5}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$402(Lcom/android/providers/contacts/NotifyDialerScheduler;Z)Z

    goto :goto_0

    .line 103
    :cond_5
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/android/providers/contacts/NotifyDialerScheduler$1;->this$0:Lcom/android/providers/contacts/NotifyDialerScheduler;

    #setter for: Lcom/android/providers/contacts/NotifyDialerScheduler;->mIsPowerConnected:Z
    invoke-static {v1, v6}, Lcom/android/providers/contacts/NotifyDialerScheduler;->access$402(Lcom/android/providers/contacts/NotifyDialerScheduler;Z)Z

    goto :goto_0

    .line 116
    :cond_6
    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->getInstance()Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 117
    invoke-static {}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->getInstance()Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/providers/contacts/HtcUtils/SuggsetionUtils;->setEnabled(Z)V

    goto :goto_1
.end method
