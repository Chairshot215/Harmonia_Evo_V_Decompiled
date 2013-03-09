.class final Lcom/coremobility/app/vnotes/fu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/fu;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fu;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/fu;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;I)Z

    return-void
.end method
