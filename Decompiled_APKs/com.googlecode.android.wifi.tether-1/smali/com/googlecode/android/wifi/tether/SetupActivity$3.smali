.class Lcom/googlecode/android/wifi/tether/SetupActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "SetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/android/wifi/tether/SetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;


# direct methods
.method constructor <init>(Lcom/googlecode/android/wifi/tether/SetupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$3;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    .line 268
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.googlecode.android.wifi.tether.intent.STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    const-string v1, "state"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 281
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$3;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    invoke-static {}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/SetupActivity;->dismissDialog(I)V

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 275
    :sswitch_0
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$3;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    invoke-static {}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/SetupActivity;->showDialog(I)V

    goto :goto_0

    .line 278
    :sswitch_1
    iget-object v1, p0, Lcom/googlecode/android/wifi/tether/SetupActivity$3;->this$0:Lcom/googlecode/android/wifi/tether/SetupActivity;

    invoke-static {}, Lcom/googlecode/android/wifi/tether/SetupActivity;->access$0()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/googlecode/android/wifi/tether/SetupActivity;->dismissDialog(I)V

    goto :goto_0

    .line 273
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
