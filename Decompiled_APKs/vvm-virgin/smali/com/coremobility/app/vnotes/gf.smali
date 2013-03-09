.class final Lcom/coremobility/app/vnotes/gf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/gf;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/gf;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;Z)Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
