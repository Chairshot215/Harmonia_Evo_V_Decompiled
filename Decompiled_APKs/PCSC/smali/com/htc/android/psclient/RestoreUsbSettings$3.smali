.class Lcom/htc/android/psclient/RestoreUsbSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "RestoreUsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/psclient/RestoreUsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/psclient/RestoreUsbSettings;


# direct methods
.method constructor <init>(Lcom/htc/android/psclient/RestoreUsbSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, action:Ljava/lang/String;
    const-string v1, "RestoreUsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionTypeReceiver intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v1, "INTENT_CHARGEONLY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 225
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1300(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    const v2, 0x7f070008

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 226
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    const-string v2, "Charge Only"

    #setter for: Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$102(Lcom/htc/android/psclient/RestoreUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    :cond_0
    :goto_0
    const-string v1, "INTENT_HTCSYNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1300(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    const v2, 0x7f070003

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 232
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    const-string v2, "HTC Sync"

    #setter for: Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$102(Lcom/htc/android/psclient/RestoreUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 254
    :cond_1
    :goto_1
    return-void

    .line 227
    :cond_2
    const-string v1, "INTENT_DISK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1300(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 229
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    const-string v2, "Disk Drive"

    #setter for: Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$102(Lcom/htc/android/psclient/RestoreUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 233
    :cond_3
    const-string v1, "INTENT_INTERNETSHARING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 234
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_4

    .line 235
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1300(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    const v2, 0x7f070006

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 239
    :goto_2
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    const-string v2, "Internet Sharing"

    #setter for: Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$102(Lcom/htc/android/psclient/RestoreUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1300(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    const v2, 0x7f070005

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    goto :goto_2

    .line 240
    :cond_5
    const-string v1, "INTENT_MODEMLINK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 241
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1300(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    const v2, 0x7f070009

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 242
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    const-string v2, "Modem link"

    #setter for: Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$102(Lcom/htc/android/psclient/RestoreUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 243
    :cond_6
    const-string v1, "INTENT_INTERNETPASSTHROUGH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 244
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1300(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    const v2, 0x7f07000a

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 245
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    const-string v2, "Internet Pass Through"

    #setter for: Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$102(Lcom/htc/android/psclient/RestoreUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 246
    :cond_7
    const-string v1, "INTENT_MEDIASYNC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 247
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->defaultType:Lcom/htc/preference/HtcPreference;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1300(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcPreference;

    move-result-object v1

    const v2, 0x7f070007

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 248
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    const-string v2, "Media Sync"

    #setter for: Lcom/htc/android/psclient/RestoreUsbSettings;->function:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$102(Lcom/htc/android/psclient/RestoreUsbSettings;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 249
    :cond_8
    const-string v1, "INTENT_DONTASK_CHECKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 250
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->askAgain:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1200(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 251
    :cond_9
    const-string v1, "INTENT_DONTASK_UNCHECKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/htc/android/psclient/RestoreUsbSettings$3;->this$0:Lcom/htc/android/psclient/RestoreUsbSettings;

    #getter for: Lcom/htc/android/psclient/RestoreUsbSettings;->askAgain:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v1}, Lcom/htc/android/psclient/RestoreUsbSettings;->access$1200(Lcom/htc/android/psclient/RestoreUsbSettings;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1
.end method
