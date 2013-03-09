.class Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$4;
.super Ljava/lang/Object;
.source "DlnaBrowserActivityExp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->clearData()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const v1, 0x7f0700c8

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showEmptyView(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->showSpinner(Z)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp$4;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivityExp;->collapseAll()V

    return-void
.end method
