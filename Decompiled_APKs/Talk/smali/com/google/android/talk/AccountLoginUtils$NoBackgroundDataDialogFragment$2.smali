.class Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$2;
.super Ljava/lang/Object;
.source "AccountLoginUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;


# direct methods
.method constructor <init>(Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    iput-object p1, p0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$2;->this$0:Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 227
    iget-object v1, p0, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment$2;->this$0:Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/google/android/talk/AccountLoginUtils$NoBackgroundDataDialogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    return-void
.end method
