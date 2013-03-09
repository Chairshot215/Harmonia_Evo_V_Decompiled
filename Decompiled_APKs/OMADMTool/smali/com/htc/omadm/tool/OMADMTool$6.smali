.class Lcom/htc/omadm/tool/OMADMTool$6;
.super Ljava/lang/Object;
.source "OMADMTool.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/omadm/tool/OMADMTool;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/omadm/tool/OMADMTool;


# direct methods
.method constructor <init>(Lcom/htc/omadm/tool/OMADMTool;)V
    .locals 0
    .parameter

    .prologue
    .line 323
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMTool$6;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$6;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #calls: Lcom/htc/omadm/tool/OMADMTool;->getActionType()I
    invoke-static {v0}, Lcom/htc/omadm/tool/OMADMTool;->access$300(Lcom/htc/omadm/tool/OMADMTool;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 326
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$6;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-virtual {v0}, Lcom/htc/omadm/tool/OMADMTool;->finish()V

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$6;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/omadm/tool/OMADMTool;->showDialog(I)V

    goto :goto_0
.end method
