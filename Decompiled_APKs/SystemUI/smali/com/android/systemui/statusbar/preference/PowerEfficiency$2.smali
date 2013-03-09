.class Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;
.super Landroid/os/Handler;
.source "PowerEfficiency.java"


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x104039f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/preference/PowerEfficiency;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/PowerEfficiency$2;->this$0:Lcom/android/systemui/statusbar/preference/PowerEfficiency;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
