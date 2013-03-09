.class Lcom/htc/sdcardwizard/AlertDialogActivity$3;
.super Ljava/lang/Object;
.source "AlertDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 79
    iput-object p1, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$3;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$3;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/AlertDialogActivity;->finish()V

    .line 82
    return-void
.end method
