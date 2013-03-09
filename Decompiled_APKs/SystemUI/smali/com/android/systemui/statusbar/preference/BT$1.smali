.class Lcom/android/systemui/statusbar/preference/BT$1;
.super Landroid/content/BroadcastReceiver;
.source "BT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/BT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/BT;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/BT;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    #getter for: Lcom/android/systemui/statusbar/preference/BT;->mExchangeWifi:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/BT;->access$000(Lcom/android/systemui/statusbar/preference/BT;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/SettingUtil;->setForBTEASPolicyDisable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/preference/BT;->setEnabled(Z)V

    sget-boolean v2, Lcom/android/systemui/statusbar/preference/SettingUtil;->SENSE_30_SUPPORT:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f08009d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f08009e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x8000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    #calls: Lcom/android/systemui/statusbar/preference/BT;->handleStateChanged(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/preference/BT;->access$100(Lcom/android/systemui/statusbar/preference/BT;I)V

    goto :goto_0

    :cond_3
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$1;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    const-string v4, "bluetooth"

    #calls: Lcom/android/systemui/statusbar/preference/BT;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v3, p1, v4}, Lcom/android/systemui/statusbar/preference/BT;->access$200(Lcom/android/systemui/statusbar/preference/BT;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/preference/BT;->setEnabled(Z)V

    goto :goto_0
.end method
