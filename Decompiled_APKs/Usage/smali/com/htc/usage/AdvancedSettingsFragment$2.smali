.class Lcom/htc/usage/AdvancedSettingsFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "AdvancedSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/usage/AdvancedSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/AdvancedSettingsFragment;


# direct methods
.method constructor <init>(Lcom/htc/usage/AdvancedSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/htc/usage/AdvancedSettingsFragment$2;->this$0:Lcom/htc/usage/AdvancedSettingsFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 246
    invoke-static {}, Lcom/htc/usage/AdvancedSettingsFragment;->access$200()Lcom/htc/preference/HtcCheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 247
    iget-object v0, p0, Lcom/htc/usage/AdvancedSettingsFragment$2;->this$0:Lcom/htc/usage/AdvancedSettingsFragment;

    #setter for: Lcom/htc/usage/AdvancedSettingsFragment;->mEnableRestrictBackground:Z
    invoke-static {v0, v1}, Lcom/htc/usage/AdvancedSettingsFragment;->access$102(Lcom/htc/usage/AdvancedSettingsFragment;Z)Z

    .line 248
    return-void
.end method
