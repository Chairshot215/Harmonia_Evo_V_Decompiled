.class Lcom/android/systemui/statusbar/preference/AirplaneMode$1;
.super Ljava/lang/Object;
.source "AirplaneMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/AirplaneMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/AirplaneMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    #calls: Lcom/android/systemui/statusbar/preference/AirplaneMode;->setAirplaneModeOn(Z)V
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->access$000(Lcom/android/systemui/statusbar/preference/AirplaneMode;Z)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f08007f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/preference/AirplaneMode;->setEnabled(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/AirplaneMode$1;->this$0:Lcom/android/systemui/statusbar/preference/AirplaneMode;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v3, 0x7f080080

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method
