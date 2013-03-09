.class Lcom/htc/sdcardwizard/AlertDialogActivity$2;
.super Ljava/lang/Object;
.source "AlertDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/sdcardwizard/AlertDialogActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;


# direct methods
.method constructor <init>(Lcom/htc/sdcardwizard/AlertDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$2;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 73
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 74
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$2;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->finish()V

    .line 75
    return-void
.end method
