.class final Lcom/coremobility/app/vnotes/el;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/el;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    check-cast p1, Lcom/coremobility/app/customui/b;

    invoke-virtual {p1}, Lcom/coremobility/app/customui/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/el;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-virtual {p1}, Lcom/coremobility/app/customui/b;->b()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->c(Lcom/coremobility/app/vnotes/CM_VnoteInbox;Z)V

    :cond_0
    return-void
.end method
