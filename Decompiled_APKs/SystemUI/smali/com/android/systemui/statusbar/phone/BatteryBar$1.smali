.class Lcom/android/systemui/statusbar/phone/BatteryBar$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/BatteryBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/BatteryBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/BatteryBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryBar;

    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryStatus:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryBar;->access$0(Lcom/android/systemui/statusbar/phone/BatteryBar;I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryBar;

    const-string v2, "level"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/systemui/statusbar/phone/BatteryBar;->batteryLevel:I
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryBar;->access$1(Lcom/android/systemui/statusbar/phone/BatteryBar;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryBar;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/BatteryBar;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BatteryBar$1;->this$0:Lcom/android/systemui/statusbar/phone/BatteryBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BatteryBar;->updateBatteryBar()V

    return-void
.end method
