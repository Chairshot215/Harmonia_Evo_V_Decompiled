.class public Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;
.super Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleTouchExplorationFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;-><init>(Lcom/android/settings/AccessibilitySettings$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 653
    invoke-super {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 653
    invoke-super {p0, p1}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 653
    invoke-super {p0, p1}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 653
    invoke-super {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public bridge synthetic onDestroyView()V
    .locals 0

    .prologue
    .line 653
    invoke-super {p0}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 8
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "touch_exploration_enabled"

    if-eqz p2, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 658
    if-eqz p2, :cond_0

    .line 659
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 660
    .local v2, preferences:Landroid/content/SharedPreferences;
    const-string v3, "key_accessibility_tutorial_launched_once"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v4

    .line 662
    .local v1, launchAccessibilityTutorial:Z
    :goto_1
    if-eqz v1, :cond_0

    .line 663
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "key_accessibility_tutorial_launched_once"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 665
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.ACCESSIBILITY_TUTORIAL"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 666
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 669
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #launchAccessibilityTutorial:Z
    .end local v2           #preferences:Landroid/content/SharedPreferences;
    :cond_0
    return-void

    :cond_1
    move v3, v5

    .line 656
    goto :goto_0

    .restart local v2       #preferences:Landroid/content/SharedPreferences;
    :cond_2
    move v1, v5

    .line 660
    goto :goto_1
.end method

.method public bridge synthetic onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 653
    invoke-super {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
