.class final Lcom/coremobility/app/vnotes/ax;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_DeletedForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_DeletedForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v0

    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->b(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->c(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->c(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->c(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1, v3}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a(Lcom/coremobility/app/vnotes/CM_DeletedForm;Z)Z

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->d(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v1

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->e(Lcom/coremobility/app/vnotes/CM_DeletedForm;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->f(Lcom/coremobility/app/vnotes/CM_DeletedForm;)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->d(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v4

    if-ge v4, v0, :cond_4

    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    iget-object v4, v4, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    iget-object v4, v4, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0017

    iget-object v6, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v6}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->d(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v5, v0, v6, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    iget-object v4, v4, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->g(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v0

    :goto_1
    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->h(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Landroid/widget/CursorAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_c

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->h(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Landroid/widget/CursorAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "RestoreFailed in Deleted Form"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v7, v1, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    :goto_2
    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->h(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Landroid/widget/CursorAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v0, v4, :cond_5

    move v1, v2

    :cond_5
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seleted items to restore "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->d(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v1

    if-ne v1, v0, :cond_b

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->b(Lcom/coremobility/app/vnotes/CM_DeletedForm;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->f(Lcom/coremobility/app/vnotes/CM_DeletedForm;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x96

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->showDialog(I)V

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->j(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->k(Lcom/coremobility/app/vnotes/CM_DeletedForm;)V

    :cond_7
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->h(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Landroid/widget/CursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v0, "requerying restore form list started"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->l(Lcom/coremobility/app/vnotes/CM_DeletedForm;)V

    const-string v0, "requerying restore form list ended"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->m(Lcom/coremobility/app/vnotes/CM_DeletedForm;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->j(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->n(Lcom/coremobility/app/vnotes/CM_DeletedForm;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->i(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restorecount "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->d(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v7, v1, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v1, v4}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->a(Lcom/coremobility/app/vnotes/CM_DeletedForm;I)I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->g(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v1

    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->h(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Landroid/widget/CursorAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_c

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v4, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->c(Lcom/coremobility/app/vnotes/CM_DeletedForm;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xa

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v3

    goto/16 :goto_2

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_b
    iget-object v1, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->d(Lcom/coremobility/app/vnotes/CM_DeletedForm;)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->b(Lcom/coremobility/app/vnotes/CM_DeletedForm;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ax;->a:Lcom/coremobility/app/vnotes/CM_DeletedForm;

    invoke-virtual {v0, v8}, Lcom/coremobility/app/vnotes/CM_DeletedForm;->showDialog(I)V

    goto/16 :goto_3

    :cond_c
    move v1, v3

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
