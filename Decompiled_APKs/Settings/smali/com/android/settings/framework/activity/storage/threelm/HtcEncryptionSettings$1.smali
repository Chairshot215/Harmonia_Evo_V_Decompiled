.class Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcEncryptionSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 80
    const-string v9, "level"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 81
    .local v2, level:I
    const-string v9, "plugged"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 82
    .local v4, plugged:I
    const-string v9, "invalid_charger"

    invoke-virtual {p2, v9, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, invalidCharger:I
    const/4 v3, 0x0

    .line 85
    .local v3, levelOk:Z
    const/4 v5, 0x0

    .line 86
    .local v5, pluggedOk:Z
    const/16 v9, 0x50

    if-lt v2, v9, :cond_1

    .line 87
    const/4 v3, 0x1

    .line 88
    const/4 v5, 0x1

    .line 99
    :goto_0
    iget-object v9, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v9}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->access$000(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)Landroid/widget/Button;

    move-result-object v9

    if-eqz v3, :cond_5

    if-eqz v5, :cond_5

    :goto_1
    invoke-virtual {v9, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 100
    iget-object v7, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mPowerWarning:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->access$100(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)Landroid/widget/TextView;

    move-result-object v9

    if-eqz v5, :cond_6

    move v7, v8

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v7, p0, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings$1;->this$0:Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;

    #getter for: Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->mBatteryWarning:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;->access$200(Lcom/android/settings/framework/activity/storage/threelm/HtcEncryptionSettings;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    .end local v1           #invalidCharger:I
    .end local v2           #level:I
    .end local v3           #levelOk:Z
    .end local v4           #plugged:I
    .end local v5           #pluggedOk:Z
    :cond_0
    return-void

    .line 90
    .restart local v1       #invalidCharger:I
    .restart local v2       #level:I
    .restart local v3       #levelOk:Z
    .restart local v4       #plugged:I
    .restart local v5       #pluggedOk:Z
    :cond_1
    const/16 v9, 0x1e

    if-lt v2, v9, :cond_2

    .line 91
    const/4 v3, 0x1

    .line 92
    :cond_2
    if-eq v4, v7, :cond_3

    const/4 v9, 0x2

    if-ne v4, v9, :cond_4

    :cond_3
    if-nez v1, :cond_4

    move v5, v7

    :goto_4
    goto :goto_0

    :cond_4
    move v5, v6

    goto :goto_4

    :cond_5
    move v7, v6

    .line 99
    goto :goto_1

    :cond_6
    move v7, v6

    .line 100
    goto :goto_2

    :cond_7
    move v8, v6

    .line 101
    goto :goto_3
.end method
