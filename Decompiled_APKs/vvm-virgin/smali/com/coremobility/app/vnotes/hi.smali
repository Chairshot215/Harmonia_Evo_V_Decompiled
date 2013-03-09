.class final Lcom/coremobility/app/vnotes/hi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hi;->b:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    iput-object p2, p0, Lcom/coremobility/app/vnotes/hi;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x6

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-lt p2, v4, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hi;->a:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hi;->a:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/coremobility/app/vnotes/hi;->a:[Ljava/lang/String;

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/coremobility/app/vnotes/hi;->a:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/coremobility/app/vnotes/hi;->a:[Ljava/lang/String;

    array-length v3, v3

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/hi;->a:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "launch email sender"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v6, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/hi;->b:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->n(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/coremobility/app/vnotes/hi;->b:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    iget-object v4, p0, Lcom/coremobility/app/vnotes/hi;->b:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->n(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lcom/coremobility/app/vnotes/hi;->b:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->o(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hi;->b:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->p(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hi;->b:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->removeDialog(I)V

    :goto_1
    return-void

    :cond_4
    const-string v0, "invalid selection."

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hi;->b:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/hi;->b:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->q(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Z)V

    goto :goto_0
.end method
