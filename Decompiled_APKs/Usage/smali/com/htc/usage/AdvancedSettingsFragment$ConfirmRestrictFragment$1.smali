.class Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;


# direct methods
.method constructor <init>(Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 167
    iput-object p1, p0, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment$1;->this$0:Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 169
    iget-object v1, p0, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment$1;->this$0:Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;

    invoke-virtual {v1}, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/htc/usage/AdvancedSettingsFragment;

    .line 170
    .local v0, target:Lcom/htc/usage/AdvancedSettingsFragment;
    invoke-static {v2}, Lcom/htc/usage/AdvancedSettingsFragment$ConfirmRestrictFragment;->access$002(Z)Z

    .line 171
    #setter for: Lcom/htc/usage/AdvancedSettingsFragment;->mEnableRestrictBackground:Z
    invoke-static {v0, v2}, Lcom/htc/usage/AdvancedSettingsFragment;->access$102(Lcom/htc/usage/AdvancedSettingsFragment;Z)Z

    .line 172
    return-void
.end method
