.class Lcom/android/providers/telephony/GsmApnProvider$2;
.super Landroid/content/BroadcastReceiver;
.source "GsmApnProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/telephony/GsmApnProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/telephony/GsmApnProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/telephony/GsmApnProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/providers/telephony/GsmApnProvider$2;->this$0:Lcom/android/providers/telephony/GsmApnProvider;

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

    .line 173
    if-nez p2, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-static {v3}, Lcom/android/providers/telephony/GsmApnProvider;->access$202(Z)Z

    .line 178
    invoke-static {v3}, Lcom/android/providers/telephony/GsmApnProvider;->access$302(Z)Z

    .line 179
    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, state:Ljava/lang/String;
    const-string v1, "LOADED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/providers/telephony/GsmApnProvider;->Log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/providers/telephony/GsmApnProvider;->access$400(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/android/providers/telephony/GsmApnProvider$2;->this$0:Lcom/android/providers/telephony/GsmApnProvider;

    #calls: Lcom/android/providers/telephony/GsmApnProvider;->sendCreateCarriersCacheEvent()V
    invoke-static {v1}, Lcom/android/providers/telephony/GsmApnProvider;->access$500(Lcom/android/providers/telephony/GsmApnProvider;)V

    goto :goto_0
.end method
