.class Lcom/android/settings/AccessibilitySettings$2;
.super Lcom/htc/preference/HtcPreference;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessibilitySettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 396
    iput-object p1, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    invoke-direct {p0, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 399
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreference;->onBindView(Landroid/view/View;)V

    .line 401
    const v3, 0x7f080170

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 403
    .local v0, containerView:Landroid/widget/LinearLayout;
    const/16 v3, 0x11

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 405
    const v3, 0x7f0800ed

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 406
    .local v1, summaryView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings$2;->this$0:Lcom/android/settings/AccessibilitySettings;

    const v4, 0x7f0c0bb3

    invoke-virtual {v3, v4}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method
