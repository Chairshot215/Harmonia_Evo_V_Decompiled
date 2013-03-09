.class final Lcom/coremobility/app/vnotes/fz;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    new-instance v2, Lcom/coremobility/integration/h/c;

    invoke-direct {v2, v3}, Lcom/coremobility/integration/h/c;-><init>(B)V

    new-instance v1, Lcom/coremobility/integration/h/c;

    invoke-direct {v1, v3}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I

    move-result v6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;Z)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->f(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I

    move-result v0

    if-ge v0, v6, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v7, 0x7f0d001f

    iget-object v8, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v8}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v0, v7, v6, v8, v6}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    iget-object v7, v7, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I

    move-result v0

    :goto_1
    iget-object v7, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v7}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Landroid/widget/CursorAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v7

    if-ge v0, v7, :cond_5

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v5, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v5}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Landroid/widget/CursorAdapter;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v7

    long-to-int v5, v7

    invoke-static {v5, v2}, Lcom/coremobility/app/vnotes/cf;->a(ILcom/coremobility/integration/h/c;)V

    iget v5, v2, Lcom/coremobility/integration/h/c;->a:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v5}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->i(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I

    iget-object v5, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    add-int/lit8 v7, v0, 0x1

    invoke-static {v5, v7}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;I)I

    iget-object v5, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v5}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->g(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I

    move-result v5

    iget-object v7, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v7}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Landroid/widget/CursorAdapter;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v7

    if-ge v5, v7, :cond_5

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    iput v4, v5, Landroid/os/Message;->what:I

    iget-object v7, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v7}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Landroid/os/Handler;

    move-result-object v7

    const-wide/16 v8, 0xa

    invoke-virtual {v7, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v5}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->h(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)Landroid/widget/CursorAdapter;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v0, v5, :cond_6

    move v3, v4

    :cond_6
    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->removeDialog(I)V

    iget v0, v1, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v0, :cond_b

    iget v0, v2, Lcom/coremobility/integration/h/c;->a:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I

    move-result v1

    sub-int v1, v6, v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->showDialog(I)V

    :goto_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->k(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    move v3, v4

    goto :goto_2

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_9
    iget v0, v2, Lcom/coremobility/integration/h/c;->a:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I

    move-result v1

    sub-int v1, v6, v1

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->showDialog(I)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->showDialog(I)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->f(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)I

    move-result v0

    if-ne v0, v6, :cond_c

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->k()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->showDialog(I)V

    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->j(Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;)V

    goto :goto_3

    :cond_d
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->n()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/app/vnotes/fz;->a:Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteInboxMoveForm;->showDialog(I)V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
