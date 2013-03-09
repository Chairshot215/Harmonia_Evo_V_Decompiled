.class Lcom/android/systemui/power/PowerUI$2;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v10, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "level"

    const/16 v12, 0x64

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "status"

    const/4 v12, 0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v7, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "plugged"

    const/4 v12, 0x1

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v11, "invalid_charger"

    const/4 v12, 0x0

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    iput v11, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    const-string v10, "health"

    const/4 v11, 0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    if-eqz v10, :cond_1

    const/4 v9, 0x1

    :goto_0
    if-eqz v7, :cond_2

    const/4 v8, 0x1

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v10, v3}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v11, v11, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    #calls: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;I)I

    move-result v1

    if-nez v6, :cond_3

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-eqz v10, :cond_3

    const-string v10, "PowerUI"

    const-string v11, "showing invalid charger warning"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->showInvalidChargerDialog()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_b

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    if-nez v10, :cond_b

    const-string v10, "PowerUI"

    const-string v11, "closing invalid charger warning"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->dismissInvalidChargerDialog()V

    :cond_4
    if-nez v9, :cond_c

    if-lt v1, v5, :cond_5

    if-eqz v8, :cond_c

    :cond_5
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_c

    if-gez v1, :cond_c

    :cond_6
    :goto_3
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    if-ge v10, v11, :cond_7

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v11, 0x19

    if-le v10, v11, :cond_8

    :cond_7
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)Lcom/htc/dialog/HtcAlertDialog;

    move-result-object v10

    invoke-virtual {v10}, Lcom/htc/dialog/HtcAlertDialog;->dismiss()V

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v11, 0x0

    #setter for: Lcom/android/systemui/power/PowerUI;->mLowChargingWarningDialog2:Lcom/htc/dialog/HtcAlertDialog;
    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$402(Lcom/android/systemui/power/PowerUI;Lcom/htc/dialog/HtcAlertDialog;)Lcom/htc/dialog/HtcAlertDialog;

    :cond_8
    if-eqz v9, :cond_9

    if-nez v8, :cond_9

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v11, v11, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    #setter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$302(Lcom/android/systemui/power/PowerUI;I)I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v11, 0x1

    #setter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z
    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$502(Lcom/android/systemui/power/PowerUI;Z)Z

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v11, 0x1

    #setter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z
    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$602(Lcom/android/systemui/power/PowerUI;Z)Z

    :cond_9
    if-eqz v9, :cond_a

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a

    const/4 v10, 0x2

    if-ne v2, v10, :cond_a

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)I

    move-result v10

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v11, v11, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    sub-int/2addr v10, v11

    const/4 v11, 0x2

    if-lt v10, v11, :cond_a

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v11, 0xf

    if-gt v10, v11, :cond_a

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z
    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->showLowChargingWarning()V
    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)V

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v11, 0x0

    #setter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning:Z
    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$502(Lcom/android/systemui/power/PowerUI;Z)Z

    :cond_a
    const-string v10, "PowerUI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "plugged = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", health = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mBatteryLevel = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v12, v12, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPluggedBatteryLevel = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mLowBatteryWarningLevel2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x19

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mshowLowChargingWarning2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z
    invoke-static {v12}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_0

    const/4 v10, 0x2

    if-ne v2, v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mPluggedBatteryLevel:I
    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    if-ge v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    rsub-int/lit8 v10, v10, 0x19

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #getter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z
    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->showLowChargingWarning2()V
    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)V

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v11, 0x0

    #setter for: Lcom/android/systemui/power/PowerUI;->mshowLowChargingWarning2:Z
    invoke-static {v10, v11}, Lcom/android/systemui/power/PowerUI;->access$602(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_2

    :cond_b
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v10, v10, Lcom/android/systemui/power/PowerUI;->mInvalidChargerDialog:Landroid/app/AlertDialog;

    if-eqz v10, :cond_4

    goto/16 :goto_2

    :cond_c
    if-nez v9, :cond_d

    if-le v1, v5, :cond_e

    if-lez v1, :cond_e

    :cond_d
    const-string v10, "PowerUI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "closing low battery warning: level="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v12, v12, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-virtual {v10}, Lcom/android/systemui/power/PowerUI;->dismissLowBatteryWarning()V

    goto/16 :goto_3

    :cond_e
    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevelTextView:Landroid/widget/TextView;

    if-eqz v10, :cond_6

    goto/16 :goto_3

    :cond_f
    const-string v10, "com.htc.content.intent.action.BATTERY_WARNING_INFO"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->onUnsupportedCharger(Landroid/content/Intent;)V
    invoke-static {v10, p2}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_10
    const-string v10, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->onBatteryLow(Landroid/content/Intent;)V
    invoke-static {v10, p2}, Lcom/android/systemui/power/PowerUI;->access$1000(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_11
    const-string v10, "com.htc.powersaversetting"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string v10, "PowerUI"

    const-string v11, "com.htc.powersaversetting"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$2;->this$0:Lcom/android/systemui/power/PowerUI;

    #calls: Lcom/android/systemui/power/PowerUI;->PowerSaverOn(Landroid/content/Intent;)V
    invoke-static {v10, p2}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_12
    const-string v10, "PowerUI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unknown intent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
