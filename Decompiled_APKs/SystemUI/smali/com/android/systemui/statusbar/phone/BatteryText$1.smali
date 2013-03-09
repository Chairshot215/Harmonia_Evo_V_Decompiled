.class Lcom/android/systemui/statusbar/phone/BatteryText$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BatteryText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BatteryText;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BatteryText;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/BatteryText;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "status_bar_cm_battery"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/BatteryText;->style:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryText;->access$202(Lcom/android/systemui/statusbar/phone/BatteryText;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/BatteryText;->batteryStatus:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryText;->access$302(Lcom/android/systemui/statusbar/phone/BatteryText;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    const-string v2, "level"

    const/16 v3, 0x32

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/BatteryText;->batteryLevel:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryText;->access$402(Lcom/android/systemui/statusbar/phone/BatteryText;I)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryText$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryText;

    #calls: Lcom/android/systemui/statusbar/phone/BatteryText;->updateSettings()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/BatteryText;->access$100(Lcom/android/systemui/statusbar/phone/BatteryText;)V

    :cond_0
    return-void
.end method
