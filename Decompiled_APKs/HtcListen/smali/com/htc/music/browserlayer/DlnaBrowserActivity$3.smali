.class Lcom/htc/music/browserlayer/DlnaBrowserActivity$3;
.super Ljava/lang/Object;
.source "DlnaBrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/music/browserlayer/DlnaBrowserActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;


# direct methods
.method constructor <init>(Lcom/htc/music/browserlayer/DlnaBrowserActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    invoke-virtual {v0}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->clearData()V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    const v1, 0x7f0700c8

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showEmptyView(I)V

    iget-object v0, p0, Lcom/htc/music/browserlayer/DlnaBrowserActivity$3;->this$0:Lcom/htc/music/browserlayer/DlnaBrowserActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/music/browserlayer/DlnaBrowserActivity;->showSpinner(Z)V

    return-void
.end method
