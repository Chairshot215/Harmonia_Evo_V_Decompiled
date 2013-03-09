.class Lcom/htc/android/mail/easclient/EASSetting$3;
.super Landroid/os/Handler;
.source "EASSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/EASSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASSetting;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 216
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    invoke-virtual {v0}, Lcom/htc/android/mail/easclient/EASSetting;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASSetting;->access$100(Lcom/htc/android/mail/easclient/EASSetting;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage: activity is already finish."

    invoke-static {v0, v1}, Lcom/htc/android/mail/eassvc/util/EASLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    :goto_0
    return-void

    .line 224
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #calls: Lcom/htc/android/mail/easclient/EASSetting;->setupLayout()V
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASSetting;->access$1700(Lcom/htc/android/mail/easclient/EASSetting;)V

    .line 227
    iget-object v1, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    monitor-enter v1

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    #setter for: Lcom/htc/android/mail/easclient/EASSetting;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v0, v2}, Lcom/htc/android/mail/easclient/EASSetting;->access$1802(Lcom/htc/android/mail/easclient/EASSetting;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 229
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASSetting;->access$1800(Lcom/htc/android/mail/easclient/EASSetting;)Landroid/content/IntentFilter;

    move-result-object v0

    const-string v2, "intent.eas.mail.optionChange"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v0}, Lcom/htc/android/mail/easclient/EASSetting;->access$1800(Lcom/htc/android/mail/easclient/EASSetting;)Landroid/content/IntentFilter;

    move-result-object v0

    const-string v2, "intent.eas.mail.schedulerChange"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    iget-object v2, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/htc/android/mail/easclient/EASSetting;->access$1900(Lcom/htc/android/mail/easclient/EASSetting;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/android/mail/easclient/EASSetting$3;->this$0:Lcom/htc/android/mail/easclient/EASSetting;

    #getter for: Lcom/htc/android/mail/easclient/EASSetting;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v3}, Lcom/htc/android/mail/easclient/EASSetting;->access$1800(Lcom/htc/android/mail/easclient/EASSetting;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/htc/android/mail/easclient/EASSetting;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 232
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
