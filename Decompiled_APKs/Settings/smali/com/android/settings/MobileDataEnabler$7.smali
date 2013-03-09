.class Lcom/android/settings/MobileDataEnabler$7;
.super Ljava/lang/Object;
.source "MobileDataEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MobileDataEnabler;->setMobileDataEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MobileDataEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/MobileDataEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/settings/MobileDataEnabler$7;->this$0:Lcom/android/settings/MobileDataEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler$7;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;
    invoke-static {v0}, Lcom/android/settings/MobileDataEnabler;->access$300(Lcom/android/settings/MobileDataEnabler;)Lcom/htc/widget/HtcToggleButton;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MobileDataEnabler$7;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mMobileDataEnabledSetting:Z
    invoke-static {v1}, Lcom/android/settings/MobileDataEnabler;->access$700(Lcom/android/settings/MobileDataEnabler;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setChecked(Z)V

    .line 600
    iget-object v0, p0, Lcom/android/settings/MobileDataEnabler$7;->this$0:Lcom/android/settings/MobileDataEnabler;

    #getter for: Lcom/android/settings/MobileDataEnabler;->mSwitch:Lcom/htc/widget/HtcToggleButton;
    invoke-static {v0}, Lcom/android/settings/MobileDataEnabler;->access$300(Lcom/android/settings/MobileDataEnabler;)Lcom/htc/widget/HtcToggleButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcToggleButton;->setEnabled(Z)V

    .line 601
    return-void
.end method
