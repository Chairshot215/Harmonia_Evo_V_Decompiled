.class Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;
.super Ljava/lang/Object;
.source "PowerEfficiency.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/PowerEfficiency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x1f4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.powerefficiency.SWITCH_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->access$000(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "PowerEfficiencyStatusBarPreference"

    const-string v2, "not checkd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f080080

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->access$100(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.powerefficiency.SWITCH_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->access$000(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "PowerEfficiencyStatusBarPreference"

    const-string v2, "checkd"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v2, 0x7f08007f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$1;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    #getter for: Lcom/android/systemui/statusbar/preference/PowerEfficiency;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->access$100(Lcom/android/systemui/statusbar/preference/PowerEfficiency;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
