.class Lcom/htc/sdcardwizard/AlertDialogActivity$1;
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
    .line 60
    iput-object p1, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$1;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/htc/sdcardwizard/AlertDialogActivity$1;->this$0:Lcom/htc/sdcardwizard/AlertDialogActivity;

    #calls: Lcom/htc/sdcardwizard/AlertDialogActivity;->deleteItems(Landroid/content/DialogInterface;)V
    invoke-static {v0, p1}, Lcom/htc/sdcardwizard/AlertDialogActivity;->access$000(Lcom/htc/sdcardwizard/AlertDialogActivity;Landroid/content/DialogInterface;)V

    .line 68
    return-void
.end method
