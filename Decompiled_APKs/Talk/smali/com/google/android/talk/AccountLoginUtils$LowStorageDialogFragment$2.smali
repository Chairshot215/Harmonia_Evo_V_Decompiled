.class Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment$2;
.super Ljava/lang/Object;
.source "AccountLoginUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 260
    iput-object p1, p0, Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment$2;->this$0:Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 262
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.INTERNAL_STORAGE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 265
    iget-object v1, p0, Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment$2;->this$0:Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/google/android/talk/AccountLoginUtils$LowStorageDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 266
    return-void
.end method
