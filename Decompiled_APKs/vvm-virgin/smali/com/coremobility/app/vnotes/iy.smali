.class final Lcom/coremobility/app/vnotes/iy;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x3

    const/4 v4, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;I)I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)Lcom/coremobility/app/vnotes/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I

    move-result v0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->d(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I

    move-result v0

    :goto_1
    if-ge v0, v2, :cond_1

    iget-object v3, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)Lcom/coremobility/app/vnotes/im;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v1, v5}, Lcom/coremobility/app/vnotes/cf;->a(III)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;I)I

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->e(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0, v5}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x96

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    const/16 v1, 0x8d

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->showDialog(I)V

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)Lcom/coremobility/app/vnotes/im;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "requerying Move form list started"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->f(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    const-string v0, "requerying Move form list ended"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/iy;->a:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    invoke-static {v0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;Z)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
