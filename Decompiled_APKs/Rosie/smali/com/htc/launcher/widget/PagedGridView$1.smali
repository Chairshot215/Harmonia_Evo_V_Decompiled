.class Lcom/htc/launcher/widget/PagedGridView$1;
.super Ljava/lang/Object;
.source "PagedGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/launcher/widget/PagedGridView;->checkPagePosition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/launcher/widget/PagedGridView;


# direct methods
.method constructor <init>(Lcom/htc/launcher/widget/PagedGridView;)V
    .locals 0
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/htc/launcher/widget/PagedGridView$1;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 652
    const-string v0, "PagedGridView"

    const-string v1, "checkPagePosition: fix page position by onUp"

    invoke-static {v0, v1}, Lcom/htc/launcher/TFC;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/htc/launcher/widget/PagedGridView$1;->this$0:Lcom/htc/launcher/widget/PagedGridView;

    invoke-virtual {v0}, Lcom/htc/launcher/widget/PagedGridView;->onUp()V

    .line 654
    return-void
.end method
