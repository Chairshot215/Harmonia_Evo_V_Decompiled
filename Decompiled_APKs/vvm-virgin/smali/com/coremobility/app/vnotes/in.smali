.class final Lcom/coremobility/app/vnotes/in;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)Lcom/coremobility/app/vnotes/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;Z)Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->f(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    move-result v0

    iget-object v5, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v5}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    move-result v5

    if-ge v0, v5, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0d001d

    iget-object v6, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v6}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    move-result v6

    iget-object v7, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v7}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v8}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    move-result v8

    invoke-static {v0, v5, v6, v7, v8}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    iget-object v5, v5, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v5, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->g(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    move-result v0

    :goto_1
    if-ge v0, v4, :cond_8

    iget-object v5, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v5}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v3, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)Lcom/coremobility/app/vnotes/im;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    move-result-wide v5

    long-to-int v3, v5

    iget-object v5, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-virtual {v5}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x5

    invoke-static {v5, v3, v6}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;II)Z

    iget-object v3, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->h(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    iget-object v3, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v3, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->g(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)I

    move-result v0

    if-ge v0, v4, :cond_8

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v0, v1

    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)Lcom/coremobility/app/vnotes/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v0, "requerying delete form list started"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->i(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)V

    const-string v0, "requerying delete form list ended"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/in;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;->j(Lcom/coremobility/app/vnotes/CM_VnoteSavedDeleteForm;)V

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
