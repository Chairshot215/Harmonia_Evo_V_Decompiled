.class Lcom/htc/dmc/DmrListActivity$4;
.super Ljava/lang/Object;
.source "DmrListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/dmc/DmrListActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/dmc/DmrListActivity;


# direct methods
.method constructor <init>(Lcom/htc/dmc/DmrListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/htc/dmc/DmrListActivity$4;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 747
    iget-object v0, p0, Lcom/htc/dmc/DmrListActivity$4;->this$0:Lcom/htc/dmc/DmrListActivity;

    invoke-virtual {v0}, Lcom/htc/dmc/DmrListActivity;->finish()V

    .line 748
    return-void
.end method
