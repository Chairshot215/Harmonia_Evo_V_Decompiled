.class Lcom/android/systemui/statusbar/preference/GPS$3;
.super Ljava/lang/Object;
.source "GPS.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/GPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/GPS;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/GPS;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v1}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "gps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/GPS;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/GPS$3;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/GPS;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/GPS$3;->this$0:Lcom/android/systemui/statusbar/preference/GPS;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/GPS;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
