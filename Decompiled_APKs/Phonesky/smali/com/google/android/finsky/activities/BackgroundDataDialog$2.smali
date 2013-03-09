.class Lcom/google/android/finsky/activities/BackgroundDataDialog$2;
.super Ljava/lang/Object;
.source "BackgroundDataDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/BackgroundDataDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/BackgroundDataDialog;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/BackgroundDataDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/google/android/finsky/activities/BackgroundDataDialog$2;->this$0:Lcom/google/android/finsky/activities/BackgroundDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    iget-object v1, p0, Lcom/google/android/finsky/activities/BackgroundDataDialog$2;->this$0:Lcom/google/android/finsky/activities/BackgroundDataDialog;

    invoke-virtual {v1, v0}, Lcom/google/android/finsky/activities/BackgroundDataDialog;->startActivity(Landroid/content/Intent;)V

    .line 68
    return-void
.end method
