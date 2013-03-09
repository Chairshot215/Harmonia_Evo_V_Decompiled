.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$2;
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
    .line 137
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$2;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$2;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->removeDialog(I)V

    .line 140
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$2;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->showDialog(I)V

    .line 141
    return-void
.end method
