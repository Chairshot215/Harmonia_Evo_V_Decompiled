.class Lcom/android/phone/HtcCdmaRoamingOptions$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcCdmaRoamingOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/HtcCdmaRoamingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HtcCdmaRoamingOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/HtcCdmaRoamingOptions;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/phone/HtcCdmaRoamingOptions$1;->this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, action:Ljava/lang/String;
    const-string v2, "intent_of_roaming_preference_updated"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    const-string v2, "roaming_mode_key"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 101
    .local v1, mode:I
    const-string v2, "HtcCdmaRoamingOptions"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OoO update roamingMode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions$1;->this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

    #calls: Lcom/android/phone/HtcCdmaRoamingOptions;->setRoamingMode(I)V
    invoke-static {v2, v1}, Lcom/android/phone/HtcCdmaRoamingOptions;->access$000(Lcom/android/phone/HtcCdmaRoamingOptions;I)V

    .line 104
    iget-object v2, p0, Lcom/android/phone/HtcCdmaRoamingOptions$1;->this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

    iget-object v3, p0, Lcom/android/phone/HtcCdmaRoamingOptions$1;->this$0:Lcom/android/phone/HtcCdmaRoamingOptions;

    #getter for: Lcom/android/phone/HtcCdmaRoamingOptions;->mRoamingMode:I
    invoke-static {v3}, Lcom/android/phone/HtcCdmaRoamingOptions;->access$100(Lcom/android/phone/HtcCdmaRoamingOptions;)I

    move-result v3

    #calls: Lcom/android/phone/HtcCdmaRoamingOptions;->updateButtonEnabledState(I)V
    invoke-static {v2, v3}, Lcom/android/phone/HtcCdmaRoamingOptions;->access$200(Lcom/android/phone/HtcCdmaRoamingOptions;I)V

    .line 107
    .end local v1           #mode:I
    :cond_0
    return-void
.end method
