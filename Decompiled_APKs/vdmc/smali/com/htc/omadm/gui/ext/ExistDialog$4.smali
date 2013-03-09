.class Lcom/htc/omadm/gui/ext/ExistDialog$4;
.super Ljava/lang/Object;
.source "ExistDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/gui/ext/ExistDialog;->appendButton(Lcom/htc/widget/HtcAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/ExistDialog;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/ExistDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/ExistDialog$4;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 208
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$4;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #getter for: Lcom/htc/omadm/gui/ext/ExistDialog;->mOption:I
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$100(Lcom/htc/omadm/gui/ext/ExistDialog;)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/ExistDialog$4;->this$0:Lcom/htc/omadm/gui/ext/ExistDialog;

    #calls: Lcom/htc/omadm/gui/ext/ExistDialog;->callDismissFinish()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/ExistDialog;->access$300(Lcom/htc/omadm/gui/ext/ExistDialog;)V

    .line 214
    return-void
.end method
