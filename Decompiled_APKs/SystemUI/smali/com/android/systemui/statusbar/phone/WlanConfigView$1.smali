.class Lcom/android/systemui/statusbar/phone/WlanConfigView$1;
.super Landroid/content/BroadcastReceiver;
.source "WlanConfigView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WlanConfigView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/WlanConfigView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView$1;->this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView$1;->this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    const/16 v3, 0x8

    #setter for: Lcom/android/systemui/statusbar/phone/WlanConfigView;->mState:I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->access$002(Lcom/android/systemui/statusbar/phone/WlanConfigView;I)I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView$1;->this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    #calls: Lcom/android/systemui/statusbar/phone/WlanConfigView;->updateStateUI()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->access$100(Lcom/android/systemui/statusbar/phone/WlanConfigView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView$1;->this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    const-string v2, "newState"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SupplicantState;

    invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/phone/WlanConfigView;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->access$200(Lcom/android/systemui/statusbar/phone/WlanConfigView;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    :cond_2
    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WlanConfigView$1;->this$0:Lcom/android/systemui/statusbar/phone/WlanConfigView;

    const-string v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    #calls: Lcom/android/systemui/statusbar/phone/WlanConfigView;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/phone/WlanConfigView;->access$200(Lcom/android/systemui/statusbar/phone/WlanConfigView;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0
.end method
