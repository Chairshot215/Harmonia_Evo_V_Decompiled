.class Lcom/android/systemui/statusbar/preference/PowerSaver$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerSaver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/PowerSaver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/PowerSaver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/4 v2, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "plugged"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #setter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mPlugState:Z
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$002(Lcom/android/systemui/statusbar/preference/PowerSaver;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mStateHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$100(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    const-string v2, "level"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/preference/PowerSaver;->mBatteryLevel:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #setter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mPlugState:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$002(Lcom/android/systemui/statusbar/preference/PowerSaver;Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mStateHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$100(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    const-string v1, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$200(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    const-string v1, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerSaver$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerSaver;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerSaver;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerSaver;->access$200(Lcom/android/systemui/statusbar/preference/PowerSaver;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method
