.class Lcom/android/settings/MobileDataEnabler$5;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MobileDataEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 163
    const/4 v3, 0x0

    .line 164
    .local v3, info:Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 165
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 169
    :goto_0
    if-nez v3, :cond_2

    .line 170
    const-string v10, "SettingsMobileDataEnabler"

    const-string v11, "network info is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return-void

    .line 167
    .restart local v3       #info:Landroid/net/NetworkInfo;
    :cond_1
    const-string v10, "SettingsMobileDataEnabler"

    const-string v11, "mCM is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 173
    :cond_2
    const-string v10, "SettingsMobileDataEnabler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "info:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    .line 175
    .local v7, state:Landroid/net/NetworkInfo$State;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, reason:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, apnName:Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    .line 178
    .local v8, type:I
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v10

    if-nez v10, :cond_3

    const/4 v9, 0x1

    .line 180
    .local v9, unavailable:Z
    :goto_2
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    iget-object v11, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    #calls: Lcom/android/settings/MobileDataEnabler;->getPersistedMobileDataEnabled()Z
    invoke-static {v11}, Lcom/android/settings/MobileDataEnabler;->access$800(Lcom/android/settings/MobileDataEnabler;)Z

    move-result v11

    #setter for: Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z
    invoke-static {v10, v11}, Lcom/android/settings/MobileDataEnabler;->access$702(Lcom/android/settings/MobileDataEnabler;Z)Z

    .line 191
    if-eqz v8, :cond_4

    .line 194
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z
    invoke-static {v10}, Lcom/android/settings/MobileDataEnabler;->access$700(Lcom/android/settings/MobileDataEnabler;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 209
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    const v11, 0x7f0c01bf

    #calls: Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V
    invoke-static {v10, v11}, Lcom/android/settings/MobileDataEnabler;->access$900(Lcom/android/settings/MobileDataEnabler;I)V

    goto :goto_1

    .line 178
    .end local v9           #unavailable:Z
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 213
    .restart local v9       #unavailable:Z
    :cond_4
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    #calls: Lcom/android/settings/MobileDataEnabler;->updateNetworkState(Landroid/net/NetworkInfo$State;Ljava/lang/String;Z)V
    invoke-static {v10, v7, v5, v9}, Lcom/android/settings/MobileDataEnabler;->access$1000(Lcom/android/settings/MobileDataEnabler;Landroid/net/NetworkInfo$State;Ljava/lang/String;Z)V

    .line 255
    .end local v0           #apnName:Ljava/lang/String;
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v5           #reason:Ljava/lang/String;
    .end local v7           #state:Landroid/net/NetworkInfo$State;
    .end local v8           #type:I
    .end local v9           #unavailable:Z
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-virtual {v10}, Lcom/android/settings/MobileDataEnabler;->checkMobileNetworkDisplayPolicy()V

    goto :goto_1

    .line 214
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.MOBILEDATA_MODE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 215
    const-string v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 216
    .local v2, enabled:Z
    const-string v10, "sender"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 222
    .local v6, sender:Ljava/lang/String;
    const-string v10, "MobileDataEnabler"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 223
    const-string v10, "SettingsMobileDataEnabler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sender is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "; mMobileDataEnabledSetting:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z
    invoke-static {v12}, Lcom/android/settings/MobileDataEnabler;->access$700(Lcom/android/settings/MobileDataEnabler;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    iget-object v11, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    #calls: Lcom/android/settings/MobileDataEnabler;->getPersistedMobileDataEnabled()Z
    invoke-static {v11}, Lcom/android/settings/MobileDataEnabler;->access$800(Lcom/android/settings/MobileDataEnabler;)Z

    move-result v11

    #setter for: Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z
    invoke-static {v10, v11}, Lcom/android/settings/MobileDataEnabler;->access$702(Lcom/android/settings/MobileDataEnabler;Z)Z

    .line 231
    const/4 v4, 0x0

    .line 232
    .local v4, ni:Landroid/net/NetworkInfo;
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 233
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v10}, Lcom/android/settings/MobileDataEnabler;->access$000(Lcom/android/settings/MobileDataEnabler;)Landroid/net/ConnectivityManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 238
    :goto_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 239
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    #calls: Lcom/android/settings/MobileDataEnabler;->updateNetworkState(Landroid/net/NetworkInfo;)V
    invoke-static {v10, v4}, Lcom/android/settings/MobileDataEnabler;->access$100(Lcom/android/settings/MobileDataEnabler;Landroid/net/NetworkInfo;)V

    goto :goto_3

    .line 235
    :cond_7
    const-string v10, "SettingsMobileDataEnabler"

    const-string v11, "mCM is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 243
    .end local v2           #enabled:Z
    .end local v4           #ni:Landroid/net/NetworkInfo;
    .end local v6           #sender:Ljava/lang/String;
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 245
    const-string v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 247
    .local v1, blAir:Z
    if-eqz v1, :cond_9

    .line 248
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    const v11, 0x7f0c01cb

    #calls: Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V
    invoke-static {v10, v11}, Lcom/android/settings/MobileDataEnabler;->access$900(Lcom/android/settings/MobileDataEnabler;I)V

    goto/16 :goto_3

    .line 250
    :cond_9
    iget-object v10, p0, Lcom/android/settings/MobileDataEnabler$5;->this$0:Lcom/android/settings/MobileDataEnabler;

    const v11, 0x7f0c01bf

    #calls: Lcom/android/settings/MobileDataEnabler;->updateSummary(I)V
    invoke-static {v10, v11}, Lcom/android/settings/MobileDataEnabler;->access$900(Lcom/android/settings/MobileDataEnabler;I)V

    goto/16 :goto_3

    .line 252
    .end local v1           #blAir:Z
    :cond_a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.htc.is.disabled"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.htc.is.enabled"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto/16 :goto_3
.end method
