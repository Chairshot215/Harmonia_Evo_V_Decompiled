.class final Lcom/coremobility/app/vnotes/eh;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/eh;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eh;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/eh;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/fy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/eh;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b(Lcom/coremobility/app/vnotes/CM_VnoteInbox;I)Z

    return-void
.end method
