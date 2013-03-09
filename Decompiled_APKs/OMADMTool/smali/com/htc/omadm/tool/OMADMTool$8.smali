.class Lcom/htc/omadm/tool/OMADMTool$8;
.super Ljava/lang/Object;
.source "OMADMTool.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 357
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMTool$8;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 359
    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$500()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/omadm/tool/OMADMTool$8;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    const v3, 0x7f030024

    invoke-virtual {v2, v3}, Lcom/htc/omadm/tool/OMADMTool;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 361
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/htc/omadm/tool/OMADMTool$8;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    const-class v2, Lcom/htc/omadm/tool/GetInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 362
    .local v0, intentGetInfo:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/omadm/tool/OMADMTool$8;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-virtual {v1, v0}, Lcom/htc/omadm/tool/OMADMTool;->startActivity(Landroid/content/Intent;)V

    .line 367
    .end local v0           #intentGetInfo:Landroid/content/Intent;
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/htc/omadm/tool/OMADMTool$8;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    #calls: Lcom/htc/omadm/tool/OMADMTool;->authenticateAction()V
    invoke-static {v1}, Lcom/htc/omadm/tool/OMADMTool;->access$600(Lcom/htc/omadm/tool/OMADMTool;)V

    goto :goto_0
.end method
