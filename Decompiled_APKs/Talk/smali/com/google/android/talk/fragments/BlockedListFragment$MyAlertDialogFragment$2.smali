.class Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$2;
.super Ljava/lang/Object;
.source "BlockedListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment$2;->this$1:Lcom/google/android/talk/fragments/BlockedListFragment$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 206
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 207
    return-void
.end method
