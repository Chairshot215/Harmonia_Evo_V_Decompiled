.class Lcom/android/providers/telephony/TelephonyProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/TelephonyProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/TelephonyProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/TelephonyProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/providers/telephony/TelephonyProvider$2;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 174
    if-nez p2, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-static {v3}, Lcom/android/providers/telephony/TelephonyProvider;->access$202(Z)Z

    .line 179
    invoke-static {v3}, Lcom/android/providers/telephony/TelephonyProvider;->access$302(Z)Z

    .line 180
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, state:Ljava/lang/String;
    const-string v1, "LOADED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/providers/telephony/TelephonyProvider;->Log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$400(Ljava/lang/String;)V

    .line 183
    iget-object v1, p0, Lcom/android/providers/telephony/TelephonyProvider$2;->this$0:Lcom/android/providers/telephony/TelephonyProvider;

    #calls: Lcom/android/providers/telephony/TelephonyProvider;->sendCreateCarriersCacheEvent()V
    invoke-static {v1}, Lcom/android/providers/telephony/TelephonyProvider;->access$500(Lcom/android/providers/telephony/TelephonyProvider;)V

    goto :goto_0
.end method
