.class final Lcom/coremobility/app/vnotes/cn;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Lcom/coremobility/app/vnotes/ct;

.field f:Ljava/util/Vector;

.field final synthetic g:Lcom/coremobility/app/vnotes/cf;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/cf;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/app/vnotes/cn;->g:Lcom/coremobility/app/vnotes/cf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/app/vnotes/cn;->a:I

    return-void
.end method

.method private a(ILcom/coremobility/integration/h/c;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    invoke-static {v1, p1, v0}, Lcom/coremobility/integration/app/j;->a(IILcom/coremobility/integration/h/c;)V

    :cond_0
    iput v1, p0, Lcom/coremobility/app/vnotes/cn;->a:I

    invoke-static {p2}, Lcom/coremobility/app/vnotes/cn;->a(Lcom/coremobility/integration/h/c;)V

    return-void
.end method

.method private static a(Lcom/coremobility/integration/h/c;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x8b

    iput v1, v0, Landroid/os/Message;->what:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v1, v0}, Lcom/coremobility/integration/app/e;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 7

    const/16 v3, 0xb

    const/4 v2, 0x3

    const/4 v6, 0x6

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v4}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget v1, p0, Lcom/coremobility/app/vnotes/cn;->a:I

    if-eqz v1, :cond_0

    const/16 v1, 0x1b

    iput v1, v0, Lcom/coremobility/integration/h/c;->a:I

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cn;->a(Lcom/coremobility/integration/h/c;)V

    const-string v0, "Attempted to move mesasge when previous task is not done."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v6, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput v5, p0, Lcom/coremobility/app/vnotes/cn;->a:I

    iput p1, p0, Lcom/coremobility/app/vnotes/cn;->b:I

    iput p2, p0, Lcom/coremobility/app/vnotes/cn;->c:I

    iput p3, p0, Lcom/coremobility/app/vnotes/cn;->d:I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/cn;->f:Ljava/util/Vector;

    new-instance v1, Lcom/coremobility/app/vnotes/ct;

    invoke-direct {v1}, Lcom/coremobility/app/vnotes/ct;-><init>()V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/cn;->e:Lcom/coremobility/app/vnotes/ct;

    if-ne p1, v2, :cond_1

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    invoke-static {p2, v2, v0}, Lcom/coremobility/integration/app/j;->a(IILcom/coremobility/integration/h/c;)V

    iget v1, v0, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CopyInboxToSavedMailbox VnoteSetSafe("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") failed with error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cn;->a(Lcom/coremobility/integration/h/c;)V

    goto :goto_0

    :cond_1
    packed-switch p3, :pswitch_data_0

    :cond_2
    :pswitch_0
    iget v1, p0, Lcom/coremobility/app/vnotes/cn;->b:I

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cn;->e:Lcom/coremobility/app/vnotes/ct;

    iget-object v3, p0, Lcom/coremobility/app/vnotes/cn;->f:Ljava/util/Vector;

    invoke-static {v1, p2, v2, v3, v0}, Lcom/coremobility/app/vnotes/cf;->a(IILcom/coremobility/app/vnotes/ct;Ljava/util/Vector;Lcom/coremobility/integration/h/c;)V

    iget v1, v0, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/cn;->a(ILcom/coremobility/integration/h/c;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->l()Z

    move-result v1

    if-nez v1, :cond_2

    iput v3, v0, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/cn;->a(ILcom/coremobility/integration/h/c;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->k()Z

    move-result v1

    if-nez v1, :cond_2

    iput v3, v0, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/cn;->a(ILcom/coremobility/integration/h/c;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cn;->e:Lcom/coremobility/app/vnotes/ct;

    invoke-static {v1, v2, p3}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Lcom/coremobility/app/vnotes/ct;I)I

    move-result v1

    if-eqz v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VNOTES PROVIDER - Duplicated Vnote! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v6, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v5, v0, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/cn;->a(ILcom/coremobility/integration/h/c;)V

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne p3, v1, :cond_6

    iget-object v1, p0, Lcom/coremobility/app/vnotes/cn;->e:Lcom/coremobility/app/vnotes/ct;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cn;->f:Ljava/util/Vector;

    invoke-static {p3, v1, v2, v0}, Lcom/coremobility/app/vnotes/cf;->a(ILcom/coremobility/app/vnotes/ct;Ljava/util/Vector;Lcom/coremobility/integration/h/c;)V

    iget v1, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v1, :cond_5

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/cn;->c:I

    iget v3, p0, Lcom/coremobility/app/vnotes/cn;->b:I

    invoke-static {v1, v2, v3, v5}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;IIZ)Z

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/da;->a(Landroid/database/Cursor;)V

    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/cn;->a(ILcom/coremobility/integration/h/c;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.coremobility.app.vnotes.Data1"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/cn;->f:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    const-string v1, "com.coremobility.app.vnotes.REQVNOTEFILENAME"

    invoke-static {v1, v0}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(ILjava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/coremobility/integration/h/c;

    invoke-direct {v2, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    packed-switch p1, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    check-cast p2, Ljava/util/Vector;

    iget v3, p0, Lcom/coremobility/app/vnotes/cn;->d:I

    iget-object v4, p0, Lcom/coremobility/app/vnotes/cn;->e:Lcom/coremobility/app/vnotes/ct;

    iget-object v5, p0, Lcom/coremobility/app/vnotes/cn;->f:Ljava/util/Vector;

    invoke-static {v3, v4, v5, p2, v2}, Lcom/coremobility/app/vnotes/cf;->a(ILcom/coremobility/app/vnotes/ct;Ljava/util/Vector;Ljava/util/Vector;Lcom/coremobility/integration/h/c;)V

    iget v3, v2, Lcom/coremobility/integration/h/c;->a:I

    if-nez v3, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/coremobility/app/vnotes/cn;->c:I

    iget v5, p0, Lcom/coremobility/app/vnotes/cn;->b:I

    invoke-static {v3, v4, v5, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;IIZ)Z

    :cond_0
    iput v1, p0, Lcom/coremobility/app/vnotes/cn;->a:I

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cn;->a(Lcom/coremobility/integration/h/c;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8c
        :pswitch_0
    .end packed-switch
.end method
