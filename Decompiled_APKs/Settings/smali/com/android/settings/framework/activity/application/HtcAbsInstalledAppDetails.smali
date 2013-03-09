.class public abstract Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;
.super Landroid/app/Fragment;
.source "HtcAbsInstalledAppDetails.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/application/HtcAbsInstalledAppDetails;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected pluginHtcAboutBoxButton(Landroid/view/View;Landroid/content/pm/ApplicationInfo;)V
    .locals 4
    .parameter "installedAppViewRoot"
    .parameter "appInfo"

    .prologue
    .line 29
    const v2, 0x7f08009f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/framework/widget/HtcAboutDialogButton;

    .line 31
    .local v0, btn:Lcom/android/settings/framework/widget/HtcAboutDialogButton;
    invoke-virtual {v0, p2}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->setAutoVisibility(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    .line 32
    .local v1, visibility:I
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v0}, Lcom/android/settings/framework/widget/HtcAboutDialogButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    :cond_0
    return-void
.end method

.method protected resetDataSizeLabel(Landroid/widget/TextView;)V
    .locals 1
    .parameter "tv"

    .prologue
    .line 44
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const v0, 0x7f0c0124

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 47
    :cond_0
    return-void
.end method

.method protected resetMoveButtonText(Landroid/widget/Button;)V
    .locals 1
    .parameter "button"

    .prologue
    .line 38
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcStorageFeatureFlags;->supportPhoneStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const v0, 0x7f0c0123

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 41
    :cond_0
    return-void
.end method
