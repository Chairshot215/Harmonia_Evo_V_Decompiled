.class Lcom/android/systemui/statusbar/preference/Brightness$1;
.super Ljava/lang/Object;
.source "Brightness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/preference/Brightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/preference/Brightness;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/preference/Brightness;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcToggleButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mCheckBox:Lcom/htc/widget/HtcToggleButton;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    iget-object v3, v3, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    #calls: Lcom/android/systemui/statusbar/preference/Brightness;->setAutomaticBrightnessMode(Landroid/content/Context;Z)Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/preference/Brightness;->access$000(Landroid/content/Context;Z)Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/preference/Brightness;->setBrightnessBarVisibility(Z)V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    iget-object v1, v1, Lcom/android/systemui/statusbar/preference/Brightness;->mMappingScheme:Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;

    iget-object v2, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    #getter for: Lcom/android/systemui/statusbar/preference/Brightness;->mProgress:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/preference/Brightness;->access$100(Lcom/android/systemui/statusbar/preference/Brightness;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/preference/HtcIBrightnessMappingScheme;->decodeBrightness(I)I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/preference/Brightness;->syncUnderlyingBrightness(I)Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/preference/Brightness;->access$200(I)Z

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/preference/Brightness;->collapseStatusBar()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/preference/Brightness$1;->toggleSettings()V

    return v1
.end method

.method public toggleSettings()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    iget-object v1, v0, Lcom/android/systemui/statusbar/preference/StatusBarPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.DISPLAY_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/preference/Brightness$1;->this$0:Lcom/android/systemui/statusbar/preference/Brightness;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/preference/Brightness;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
