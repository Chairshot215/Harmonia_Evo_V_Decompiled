.class Lcom/android/systemui/statusbar/preference/ScreenOn$1;
.super Ljava/lang/Object;
.source "ScreenOn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/preference/ScreenOn;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/ScreenOn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v3, v4, Lcom/android/systemui/statusbar/preference/ScreenOn;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/ScreenOn;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout_old"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSummary:Landroid/widget/TextView;

    const v5, 0x10403a0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    const/16 v2, 0x7530

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout_old"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/ScreenOn;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/preference/ScreenOn$1;->this$0:Lcom/android/systemui/statusbar/preference/ScreenOn;

    iget-object v4, v4, Lcom/android/systemui/statusbar/preference/ScreenOn;->mSummary:Landroid/widget/TextView;

    const v5, 0x104039f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :catch_1
    move-exception v0

    const/16 v1, 0x7530

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_2
.end method
