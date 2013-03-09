.class Lcom/android/systemui/statusbar/phone/CarrierExtended$2;
.super Landroid/content/BroadcastReceiver;
.source "CarrierExtended.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierExtended;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    #calls: Lcom/android/systemui/statusbar/phone/CarrierExtended;->getWiFiInfo()V
    invoke-static {}, Lcom/android/systemui/statusbar/phone/CarrierExtended;->access$2()V

    return-void
.end method
