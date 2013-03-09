.class Lcom/android/settings/Power$1;
.super Landroid/content/BroadcastReceiver;
.source "Power.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Power;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Power;


# direct methods
.method constructor <init>(Lcom/android/settings/Power;)V
    .locals 0
    .parameter

    .prologue
    .line 270
    iput-object p1, p0, Lcom/android/settings/Power$1;->this$0:Lcom/android/settings/Power;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.android.settings.framework.activity.powersaver.powersaver_level_change"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    iget-object v3, p0, Lcom/android/settings/Power$1;->this$0:Lcom/android/settings/Power;

    #getter for: Lcom/android/settings/Power;->mEnablePowersaverPref:Lcom/htc/preference/HtcCheckBoxPreference;
    invoke-static {v3}, Lcom/android/settings/Power;->access$000(Lcom/android/settings/Power;)Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/activity/powersaver/Powersaver;->getEnable_35(Landroid/content/ContentResolver;)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 290
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 276
    goto :goto_0

    .line 277
    :cond_2
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 278
    const-string v1, "HtcPowerWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Plug State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "plugged"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const-string v1, "plugged"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_3

    .line 284
    :cond_3
    iget-object v1, p0, Lcom/android/settings/Power$1;->this$0:Lcom/android/settings/Power;

    const-string v3, "level"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/settings/Power;->mBatteryLevel:I
    invoke-static {v1, v2}, Lcom/android/settings/Power;->access$102(Lcom/android/settings/Power;I)I

    goto :goto_1

    .line 285
    :cond_4
    const-string v1, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    const-string v1, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method
