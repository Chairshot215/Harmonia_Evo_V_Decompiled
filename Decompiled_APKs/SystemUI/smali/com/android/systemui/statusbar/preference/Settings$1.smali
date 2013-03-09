.class Lcom/android/systemui/statusbar/preference/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Settings;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Settings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Settings$1;->this$0:Lcom/android/systemui/statusbar/preference/Settings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Settings$1;->this$0:Lcom/android/systemui/statusbar/preference/Settings;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/widget/StatusBarUtils;->startActivity_s(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Settings$1;->this$0:Lcom/android/systemui/statusbar/preference/Settings;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Settings$1;->this$0:Lcom/android/systemui/statusbar/preference/Settings;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->exitKeyguardSecurely()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Settings$1;->this$0:Lcom/android/systemui/statusbar/preference/Settings;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Settings;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Settings$1;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Settings$1;->this$0:Lcom/android/systemui/statusbar/preference/Settings;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.m0narx.tweaks"

    const-string v5, "com.m0narx.tweaks.main"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Settings$1;->this$0:Lcom/android/systemui/statusbar/preference/Settings;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/Settings;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
