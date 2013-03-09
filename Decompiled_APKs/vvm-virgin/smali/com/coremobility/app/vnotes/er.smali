.class final Lcom/coremobility/app/vnotes/er;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/er;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->P()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/er;->a:Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a(Lcom/coremobility/app/vnotes/CM_VnoteInbox;)Lcom/coremobility/app/vnotes/be;

    move-result-object v0

    const/16 v1, 0x10

    sget v2, Lcom/coremobility/app/vnotes/be;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/be;->a(II)V

    :cond_0
    return-void
.end method
