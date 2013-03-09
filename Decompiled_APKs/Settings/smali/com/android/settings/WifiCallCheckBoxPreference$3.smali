.class Lcom/android/settings/WifiCallCheckBoxPreference$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiCallCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/WifiCallCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WifiCallCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/WifiCallCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/settings/WifiCallCheckBoxPreference$3;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 237
    if-nez p2, :cond_1

    .line 238
    const-string v4, "WifiCallCheckBoxPreference"

    const-string v5, "onReceive(), intent is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, action:Ljava/lang/String;
    const-string v4, "enable"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 244
    .local v1, enable:Z
    const-string v4, "Preference_enable"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 246
    .local v2, mPreference_enable:Z
    const-string v4, "Summary"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, summary:Ljava/lang/CharSequence;
    const-string v4, "WifiCallCheckBoxPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive(), action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string v4, "com.htc.intent.action.WifiCallStateChanged"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    iget-object v4, p0, Lcom/android/settings/WifiCallCheckBoxPreference$3;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    invoke-virtual {v4, v3}, Lcom/android/settings/WifiCallCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v4, p0, Lcom/android/settings/WifiCallCheckBoxPreference$3;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    invoke-virtual {v4, v1}, Lcom/android/settings/WifiCallCheckBoxPreference;->setEnabled(Z)V

    .line 254
    iget-object v4, p0, Lcom/android/settings/WifiCallCheckBoxPreference$3;->this$0:Lcom/android/settings/WifiCallCheckBoxPreference;

    #getter for: Lcom/android/settings/WifiCallCheckBoxPreference;->mPreference:Lcom/htc/preference/HtcPreference;
    invoke-static {v4}, Lcom/android/settings/WifiCallCheckBoxPreference;->access$000(Lcom/android/settings/WifiCallCheckBoxPreference;)Lcom/htc/preference/HtcPreference;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    goto :goto_0
.end method
