.class Lcom/htc/omadm/gui/ext/BaseDialog$9;
.super Ljava/lang/Object;
.source "BaseDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/gui/ext/BaseDialog;->appendButton(Lcom/htc/widget/HtcAlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/gui/ext/BaseDialog;


# direct methods
.method constructor <init>(Lcom/htc/omadm/gui/ext/BaseDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 827
    iput-object p1, p0, Lcom/htc/omadm/gui/ext/BaseDialog$9;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 829
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$9;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const/4 v1, 0x0

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->setEnableProgressBar(Z)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1600(Lcom/htc/omadm/gui/ext/BaseDialog;Z)V

    .line 830
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$9;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    const/4 v1, -0x1

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->sendButtonCallback(I)V
    invoke-static {v0, v1}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1200(Lcom/htc/omadm/gui/ext/BaseDialog;I)V

    .line 831
    iget-object v0, p0, Lcom/htc/omadm/gui/ext/BaseDialog$9;->this$0:Lcom/htc/omadm/gui/ext/BaseDialog;

    #calls: Lcom/htc/omadm/gui/ext/BaseDialog;->setupFinishFunction()V
    invoke-static {v0}, Lcom/htc/omadm/gui/ext/BaseDialog;->access$1300(Lcom/htc/omadm/gui/ext/BaseDialog;)V

    .line 832
    return-void
.end method
