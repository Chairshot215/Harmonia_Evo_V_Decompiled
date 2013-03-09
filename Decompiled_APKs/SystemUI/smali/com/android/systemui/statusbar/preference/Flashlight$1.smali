.class Lcom/android/systemui/statusbar/preference/Flashlight$1;
.super Ljava/lang/Object;
.source "Flashlight.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Flashlight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Flashlight;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Flashlight;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Flashlight;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #calls: Lcom/android/systemui/statusbar/preference/Flashlight;->getFlashlightEnabled()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$200(Lcom/android/systemui/statusbar/preference/Flashlight;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v4

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #setter for: Lcom/android/systemui/statusbar/preference/Flashlight;->runTimer:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$100(Lcom/android/systemui/statusbar/preference/Flashlight;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #calls: Lcom/android/systemui/statusbar/preference/Flashlight;->getFlashlightEnabled()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$200(Lcom/android/systemui/statusbar/preference/Flashlight;)Z

    move-result v0

    if-nez v0, :cond_3

    move v1, v4

    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #calls: Lcom/android/systemui/statusbar/preference/Flashlight;->setFlashlightEnabled(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$300(Lcom/android/systemui/statusbar/preference/Flashlight;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    #calls: Lcom/android/systemui/statusbar/preference/Flashlight;->getFlashlightEnabled()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->access$200(Lcom/android/systemui/statusbar/preference/Flashlight;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSummary:Landroid/widget/TextView;

    const v1, 0x104039f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f020003

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_3
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mSummary:Landroid/widget/TextView;

    const v1, 0x10403a0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v0, v0, Lcom/android/systemui/statusbar/preference/Flashlight;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f02018b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Flashlight;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Flashlight$1;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.htc.flashlight"

    const-string v5, "com.htc.flashlight.FlashlightActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Flashlight$1;->this$0:Lcom/android/systemui/statusbar/preference/Flashlight;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/Flashlight;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
