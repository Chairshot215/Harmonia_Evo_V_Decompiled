.class Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$3;
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
    .line 132
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$3;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog$3;->this$0:Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;

    invoke-virtual {v0}, Lcom/htc/cs/activity/accountactivities/CSConfirmDialog;->finish()V

    .line 135
    return-void
.end method
