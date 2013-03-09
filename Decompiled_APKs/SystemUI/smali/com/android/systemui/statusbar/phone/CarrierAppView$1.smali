.class Lcom/android/systemui/statusbar/phone/CarrierAppView$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierAppView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierAppView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierAppView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierAppView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v1, "CarrierAppView"

    const-string v2, "onReceive"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierAppView;->handleUsageInfoUpdate(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->access$000(Lcom/android/systemui/statusbar/phone/CarrierAppView;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierAppView;->updateView()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->access$100(Lcom/android/systemui/statusbar/phone/CarrierAppView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierAppView$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierAppView;

    #calls: Lcom/android/systemui/statusbar/phone/CarrierAppView;->storePreferences()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierAppView;->access$200(Lcom/android/systemui/statusbar/phone/CarrierAppView;)V

    goto :goto_0
.end method
