.class Lcom/htc/omadm/tool/OMADMTool$7;
.super Ljava/lang/Object;
.source "OMADMTool.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 341
    iput-object p1, p0, Lcom/htc/omadm/tool/OMADMTool$7;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/htc/omadm/tool/OMADMTool$7;->this$0:Lcom/htc/omadm/tool/OMADMTool;

    invoke-virtual {v0}, Lcom/htc/omadm/tool/OMADMTool;->finish()V

    .line 344
    return-void
.end method
