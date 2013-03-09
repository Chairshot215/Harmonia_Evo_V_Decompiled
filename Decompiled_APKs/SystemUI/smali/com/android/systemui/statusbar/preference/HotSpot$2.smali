.class Lcom/android/systemui/statusbar/preference/HotSpot$2;
.super Landroid/content/BroadcastReceiver;
.source "HotSpot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/HotSpot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/HotSpot;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/HotSpot;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$2;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/HotSpot$2;->this$0:Lcom/android/systemui/statusbar/preference/HotSpot;

    const-string v2, "wifi_state"

    const/16 v3, 0xe

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #calls: Lcom/android/systemui/statusbar/preference/HotSpot;->handleWifiApStateChanged(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/HotSpot;->access$100(Lcom/android/systemui/statusbar/preference/HotSpot;I)V

    :cond_0
    return-void
.end method
