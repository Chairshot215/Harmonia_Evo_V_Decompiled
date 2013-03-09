.class Lcom/android/phone/BluetoothAtPhonebook$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAtPhonebook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtPhonebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtPhonebook;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtPhonebook;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/phone/BluetoothAtPhonebook;->mPhoneState:Ljava/lang/String;

    .line 161
    const-string v1, "IDLE"

    iget-object v2, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    iget-object v2, v2, Lcom/android/phone/BluetoothAtPhonebook;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/phone/BluetoothAtPhonebook$1;->this$0:Lcom/android/phone/BluetoothAtPhonebook;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/phone/BluetoothAtPhonebook;->mPhoneDiscTime:J

    .line 164
    :cond_0
    return-void
.end method
