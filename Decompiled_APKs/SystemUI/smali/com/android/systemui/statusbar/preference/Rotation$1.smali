.class Lcom/android/systemui/statusbar/preference/Rotation$1;
.super Ljava/lang/Object;
.source "Rotation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Rotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Rotation;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Rotation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x104039f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Rotation;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Rotation$1;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/Rotation;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Rotation$1;->this$0:Lcom/android/systemui/statusbar/preference/Rotation;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/Rotation;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
