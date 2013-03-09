.class Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$1;
.super Ljava/lang/Object;
.source "AccountSetupActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .parameter "name"
    .parameter "service"

    .prologue
    .line 224
    const-string v2, "OOBE_AccountSetupActivity"

    const-string v3, "onServiceConnected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    invoke-static {p2}, Lcom/android/syncml/service/ISyncMLService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/syncml/service/ISyncMLService;

    move-result-object v3

    #setter for: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mSyncService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v2, v3}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$002(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 226
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 227
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, b:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 229
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #b:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 230
    .restart local v0       #b:Landroid/os/Bundle;
    :cond_0
    const-string v2, "key"

    const-string v3, "aab_login"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "username"

    const-string v3, "Completed"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 233
    const/16 v2, 0x42

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 234
    iget-object v2, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    iget-object v2, v2, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 237
    const-string v0, "OOBE_AccountSetupActivity"

    const-string v1, "onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity$1;->this$0:Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;

    const/4 v1, 0x0

    #setter for: Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->mSyncService:Lcom/android/syncml/service/ISyncMLService;
    invoke-static {v0, v1}, Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;->access$002(Lcom/htc/android/htcsetupwizard/activity/AccountSetupActivity;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;

    .line 239
    return-void
.end method
