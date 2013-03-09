.class Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment$1;->this$0:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment$1;->this$0:Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;

    invoke-virtual {v0}, Lcom/google/android/talk/fragments/SettingsFragment$ClearSearchDialogFragment;->dismiss()V

    .line 338
    return-void
.end method
