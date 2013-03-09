.class Lcom/android/systemui/statusbar/preference/BT$2;
.super Ljava/lang/Object;
.source "BT.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


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

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v2, v2, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v2}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v2, "BTStatusBarPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set bt enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    const-string v4, "bluetooth"

    #calls: Lcom/android/systemui/statusbar/preference/BT;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/preference/BT;->access$200(Lcom/android/systemui/statusbar/preference/BT;Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    #calls: Lcom/android/systemui/statusbar/preference/BT;->setBluetoothEnabled(Z)Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/preference/BT;->access$300(Lcom/android/systemui/statusbar/preference/BT;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/preference/BT;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/BT;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/BT$2;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/BT;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/BT$2;->this$0:Lcom/android/systemui/statusbar/preference/BT;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/BT;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
