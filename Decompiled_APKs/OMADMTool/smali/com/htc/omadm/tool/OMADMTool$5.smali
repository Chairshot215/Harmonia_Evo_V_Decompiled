.class Lcom/htc/omadm/tool/OMADMTool$5;
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
    .line 300
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMTool$5;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 303
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 304
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$5;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/omadm/tool/OMADMTool;->showDialog(I)V

    .line 306
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$5;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    iget-object v1, p0, Lcom/htc/omadm/tool/OMADMTool$5;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-static {}, Lcom/htc/omadm/tool/OMADMTool;->access$400()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/omadm/tool/OMADMTool;->anthenticate(Lcom/htc/omadm/tool/OMADMTool;Ljava/lang/String;)V

    .line 307
    return-void
.end method
