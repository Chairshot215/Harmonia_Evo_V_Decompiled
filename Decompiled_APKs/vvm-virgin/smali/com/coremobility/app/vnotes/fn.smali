.class final Lcom/coremobility/app/vnotes/fn;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/fn;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fn;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/coremobility/app/vnotes/fn;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
