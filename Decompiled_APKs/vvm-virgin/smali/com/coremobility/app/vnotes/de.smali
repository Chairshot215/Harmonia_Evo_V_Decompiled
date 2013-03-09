.class final Lcom/coremobility/app/vnotes/de;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    const v8, 0x7f0d0009

    const v7, 0x7f0c00bd

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)Landroid/widget/CursorAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)Landroid/widget/CursorAdapter;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v5}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)I

    move-result v5

    if-eq v4, v5, :cond_0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v0, v6}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->removeDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)I

    move-result v2

    invoke-static {v0, v2, v3}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v2, v6}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->removeDialog(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)I

    move-result v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    if-ne v2, v0, :cond_4

    iget-object v1, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8, v2}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v4, v7}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v3, 0x6

    invoke-static {v1, v3}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    const/16 v3, 0x32

    if-lt v1, v3, :cond_3

    iget-object v1, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    const/16 v3, 0x88

    invoke-virtual {v1, v3}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->showDialog(I)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->f(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    sub-int v3, v2, v0

    invoke-static {v1, v3}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;I)I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->showDialog(I)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)I

    move-result v3

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0006

    invoke-static {v3, v4, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    const v5, 0x7f0c0005

    invoke-virtual {v4, v5}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v8, v2}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-virtual {v4, v7}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/coremobility/app/vnotes/de;->a:Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->h(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
