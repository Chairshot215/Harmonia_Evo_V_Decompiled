.class Lcom/android/systemui/statusbar/preference/MobileNetwork$3;
.super Ljava/lang/Object;
.source "MobileNetwork.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/MobileNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/MobileNetwork;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "MobileNetworkStatusBarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set mobiledata enable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    #calls: Lcom/android/systemui/statusbar/preference/MobileNetwork;->setMobileDataEnabled(Z)V
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->access$900(Lcom/android/systemui/statusbar/preference/MobileNetwork;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/MobileNetwork;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.Settings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/MobileNetwork$3;->this$0:Lcom/android/systemui/statusbar/preference/MobileNetwork;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/MobileNetwork;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
