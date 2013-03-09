.class Lcom/android/systemui/statusbar/preference/WiMAX$2;
.super Ljava/lang/Object;
.source "WiMAX.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/WiMAX;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/WiMAX;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/WiMAX;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    #getter for: Lcom/android/systemui/statusbar/preference/WiMAX;->mWimaxController:Lcom/htc/net/wimax/WimaxController;
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/WiMAX;->access$100(Lcom/android/systemui/statusbar/preference/WiMAX;)Lcom/htc/net/wimax/WimaxController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/net/wimax/WimaxController;->setWimaxEnabled(Z)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    #calls: Lcom/android/systemui/statusbar/preference/WiMAX;->persistWimaxSettingEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/WiMAX;->access$200(Lcom/android/systemui/statusbar/preference/WiMAX;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/WiMAX;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/WiMAX$2;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/WiMAX;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.WIMAX_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/WiMAX$2;->this$0:Lcom/android/systemui/statusbar/preference/WiMAX;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/WiMAX;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
