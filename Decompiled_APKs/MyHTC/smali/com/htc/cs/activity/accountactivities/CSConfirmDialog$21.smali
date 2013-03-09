.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$21;
.super Ljava/lang/Object;
.source "CSConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->createCSConfirmDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$21;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 467
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$21;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    .line 468
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$21;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    .line 469
    return-void
.end method
