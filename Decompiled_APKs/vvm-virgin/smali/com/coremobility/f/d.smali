.class public final Lcom/coremobility/f/d;
.super Lcom/coremobility/f/g;


# static fields
.field protected static a:Lcom/coremobility/f/d;

.field private static s:Ljava/util/Vector;


# instance fields
.field protected b:Lcom/coremobility/integration/e/a;

.field protected c:Lcom/coremobility/integration/e/b;

.field protected d:Lcom/coremobility/integration/e/j;

.field protected e:Lcom/coremobility/integration/e/k;

.field protected f:Lcom/coremobility/integration/e/c;

.field protected g:Lcom/coremobility/integration/e/l;

.field protected h:Lcom/coremobility/integration/e/m;

.field protected i:Lcom/coremobility/integration/e/n;

.field protected j:Lcom/coremobility/integration/e/p;

.field protected k:Lcom/coremobility/f/m;

.field protected l:Z

.field protected m:Lcom/coremobility/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/f/d;->a:Lcom/coremobility/f/d;

    sput-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/coremobility/f/g;-><init>(I)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    new-instance v0, Lcom/coremobility/integration/e/a;

    invoke-direct {v0}, Lcom/coremobility/integration/e/a;-><init>()V

    iput-object v0, p0, Lcom/coremobility/f/d;->b:Lcom/coremobility/integration/e/a;

    new-instance v0, Lcom/coremobility/integration/e/b;

    invoke-direct {v0}, Lcom/coremobility/integration/e/b;-><init>()V

    iput-object v0, p0, Lcom/coremobility/f/d;->c:Lcom/coremobility/integration/e/b;

    new-instance v0, Lcom/coremobility/integration/e/j;

    invoke-direct {v0}, Lcom/coremobility/integration/e/j;-><init>()V

    iput-object v0, p0, Lcom/coremobility/f/d;->d:Lcom/coremobility/integration/e/j;

    new-instance v0, Lcom/coremobility/integration/e/k;

    invoke-direct {v0}, Lcom/coremobility/integration/e/k;-><init>()V

    iput-object v0, p0, Lcom/coremobility/f/d;->e:Lcom/coremobility/integration/e/k;

    new-instance v0, Lcom/coremobility/integration/e/c;

    invoke-direct {v0}, Lcom/coremobility/integration/e/c;-><init>()V

    iput-object v0, p0, Lcom/coremobility/f/d;->f:Lcom/coremobility/integration/e/c;

    new-instance v0, Lcom/coremobility/integration/e/l;

    invoke-direct {v0}, Lcom/coremobility/integration/e/l;-><init>()V

    iput-object v0, p0, Lcom/coremobility/f/d;->g:Lcom/coremobility/integration/e/l;

    new-instance v0, Lcom/coremobility/integration/e/m;

    invoke-direct {v0}, Lcom/coremobility/integration/e/m;-><init>()V

    iput-object v0, p0, Lcom/coremobility/f/d;->h:Lcom/coremobility/integration/e/m;

    new-instance v0, Lcom/coremobility/integration/e/n;

    invoke-direct {v0}, Lcom/coremobility/integration/e/n;-><init>()V

    iput-object v0, p0, Lcom/coremobility/f/d;->i:Lcom/coremobility/integration/e/n;

    new-instance v0, Lcom/coremobility/integration/e/p;

    invoke-direct {v0}, Lcom/coremobility/integration/e/p;-><init>()V

    iput-object v0, p0, Lcom/coremobility/f/d;->j:Lcom/coremobility/integration/e/p;

    new-instance v0, Lcom/coremobility/f/e;

    invoke-direct {v0, p0, p0}, Lcom/coremobility/f/e;-><init>(Lcom/coremobility/f/d;Lcom/coremobility/f/d;)V

    iput-object v0, p0, Lcom/coremobility/f/d;->m:Lcom/coremobility/f/e;

    iput-boolean v1, p0, Lcom/coremobility/f/d;->l:Z

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/f/d;->k:Lcom/coremobility/f/m;

    return-void
.end method

.method public static a()Lcom/coremobility/f/d;
    .locals 1

    sget-object v0, Lcom/coremobility/f/d;->a:Lcom/coremobility/f/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/f/d;

    invoke-direct {v0}, Lcom/coremobility/f/d;-><init>()V

    sput-object v0, Lcom/coremobility/f/d;->a:Lcom/coremobility/f/d;

    :cond_0
    sget-object v0, Lcom/coremobility/f/d;->a:Lcom/coremobility/f/d;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/coremobility/f/l;)I
    .locals 3

    const/4 v1, 0x0

    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/f/l;

    if-ne v0, p1, :cond_1

    const/16 v0, 0x79

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/coremobility/f/d;->b()V

    invoke-virtual {p0}, Lcom/coremobility/f/d;->h()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v1, :cond_0

    const/16 v0, 0x64

    goto :goto_1
.end method

.method public final a(IZ)V
    .locals 2

    if-eqz p2, :cond_1

    const/16 v0, 0xb

    invoke-static {v0, p1}, Lcom/coremobility/f/m;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xc

    invoke-static {v0, p1}, Lcom/coremobility/f/m;->a(II)V

    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/f/d;->m:Lcom/coremobility/f/e;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/coremobility/f/e;->a(I)V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v2, 0xb

    if-lt p1, v2, :cond_1

    const/16 v2, 0x1e

    if-eq p1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/f/d;->h()I

    move-result v2

    if-eqz v2, :cond_2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v2, v0

    :goto_1
    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_1
    move v2, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/16 v5, 0x17

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.coremobility.app.vnotes.ROAMING_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Data1"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "Data2"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/f/d;->c:Lcom/coremobility/integration/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/f/d;->c:Lcom/coremobility/integration/e/b;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/e/b;->a(Z)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Roaming "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    const-string v0, "On"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return v2

    :cond_2
    const-string v0, "Off"

    goto :goto_0

    :cond_3
    const-string v1, "com.coremobility.app.vnotes.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "Data1"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "Data2"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_4

    const/4 v4, -0x2

    if-ne v0, v4, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/coremobility/f/d;->b:Lcom/coremobility/integration/e/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/f/d;->b:Lcom/coremobility/integration/e/a;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/e/a;->a(Z)V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Airplane mode "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_6

    const-string v0, "On"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    const-string v0, "Off"

    goto :goto_2

    :cond_7
    const-string v1, "com.coremobility.app.vnotes.PHONE_CALL_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "Data1"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "Data2"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneCall "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_8

    move v0, v2

    :goto_3
    if-eqz v0, :cond_9

    const-string v0, "On"

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_a

    iget-object v0, p0, Lcom/coremobility/f/d;->g:Lcom/coremobility/integration/e/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/f/d;->g:Lcom/coremobility/integration/e/l;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/e/l;->a(Z)V

    goto/16 :goto_1

    :cond_8
    move v0, v3

    goto :goto_3

    :cond_9
    const-string v0, "Off"

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/coremobility/f/d;->g:Lcom/coremobility/integration/e/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/f/d;->g:Lcom/coremobility/integration/e/l;

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/e/l;->a(Z)V

    goto/16 :goto_1

    :cond_b
    const-string v1, "com.coremobility.app.vnotes.SERVICE_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v0, "Data1"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "Data2"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eq v1, v7, :cond_d

    move v0, v2

    :goto_5
    if-eqz v0, :cond_e

    const-string v0, "On"

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-ne v1, v7, :cond_f

    iget-object v0, p0, Lcom/coremobility/f/d;->i:Lcom/coremobility/integration/e/n;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/f/d;->i:Lcom/coremobility/integration/e/n;

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/e/n;->a(Z)V

    :cond_c
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency Only "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-ne v1, v6, :cond_10

    move v0, v2

    :goto_8
    if-eqz v0, :cond_11

    const-string v0, "On"

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v5, v0, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    if-ne v1, v6, :cond_12

    iget-object v0, p0, Lcom/coremobility/f/d;->f:Lcom/coremobility/integration/e/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/f/d;->f:Lcom/coremobility/integration/e/c;

    invoke-virtual {v0, v2}, Lcom/coremobility/integration/e/c;->a(Z)V

    goto/16 :goto_1

    :cond_d
    move v0, v3

    goto :goto_5

    :cond_e
    const-string v0, "Off"

    goto :goto_6

    :cond_f
    iget-object v0, p0, Lcom/coremobility/f/d;->i:Lcom/coremobility/integration/e/n;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/f/d;->i:Lcom/coremobility/integration/e/n;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/e/n;->a(Z)V

    goto :goto_7

    :cond_10
    move v0, v3

    goto :goto_8

    :cond_11
    const-string v0, "Off"

    goto :goto_9

    :cond_12
    iget-object v0, p0, Lcom/coremobility/f/d;->f:Lcom/coremobility/integration/e/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/f/d;->f:Lcom/coremobility/integration/e/c;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/e/c;->a(Z)V

    goto/16 :goto_1

    :cond_13
    const-string v1, "com.coremobility.app.vnotes.CONNECTIVITY_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    if-nez v0, :cond_14

    move v2, v3

    goto/16 :goto_1

    :cond_14
    sget-object v1, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-eqz v0, :cond_15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DEVICE_CONNECTIVITY_ACTION "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v5, v1, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    :cond_15
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    invoke-static {v4}, Lcom/coremobility/integration/e/e;->a(I)I

    move-result v4

    if-eqz v4, :cond_16

    move v2, v3

    goto/16 :goto_1

    :cond_16
    iget-object v4, p0, Lcom/coremobility/f/d;->d:Lcom/coremobility/integration/e/j;

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/coremobility/f/d;->d:Lcom/coremobility/integration/e/j;

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v5, v1}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    move v1, v2

    :goto_a
    invoke-virtual {v4, v1}, Lcom/coremobility/integration/e/j;->a(Z)V

    :cond_17
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/coremobility/f/m;->a()Lcom/coremobility/f/m;

    const/16 v1, 0xd

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-static {v1, v0}, Lcom/coremobility/f/m;->a(II)V

    goto/16 :goto_1

    :cond_18
    move v1, v3

    goto :goto_a

    :cond_19
    move v2, v3

    goto/16 :goto_1
.end method

.method public final a(Lcom/coremobility/integration/v;I)Z
    .locals 1

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/f/d;->c:Lcom/coremobility/integration/e/b;

    invoke-virtual {v0, p1}, Lcom/coremobility/integration/e/b;->a(Lcom/coremobility/integration/v;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/f/d;->h:Lcom/coremobility/integration/e/m;

    invoke-virtual {v0, p1}, Lcom/coremobility/integration/e/m;->a(Lcom/coremobility/integration/v;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/f/d;->j:Lcom/coremobility/integration/e/p;

    invoke-virtual {v0, p1}, Lcom/coremobility/integration/e/p;->a(Lcom/coremobility/integration/v;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/f/d;->d:Lcom/coremobility/integration/e/j;

    invoke-virtual {v0, p1}, Lcom/coremobility/integration/e/j;->a(Lcom/coremobility/integration/v;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/f/d;->m:Lcom/coremobility/f/e;

    const v1, 0x340001

    invoke-static {v1, v0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/f/d;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/f/d;->l:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Z)V

    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p0}, Lcom/coremobility/integration/e/e;->a(ILcom/coremobility/integration/app/f;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/coremobility/f/l;)V
    .locals 2

    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/f/l;

    if-ne v0, p1, :cond_1

    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/f/l;

    invoke-virtual {p0}, Lcom/coremobility/f/d;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/f/l;->b(I)V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/f/d;->m:Lcom/coremobility/f/e;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/coremobility/f/e;->a(I)V

    goto :goto_1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/f/d;->m:Lcom/coremobility/f/e;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/coremobility/f/e;->a(I)V

    return-void
.end method

.method public final d()V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/coremobility/f/d;->b:Lcom/coremobility/integration/e/a;

    invoke-virtual {p0, v2, v0}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;I)V

    iget-object v2, p0, Lcom/coremobility/f/d;->c:Lcom/coremobility/integration/e/b;

    const/4 v3, 0x6

    invoke-virtual {p0, v2, v3}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;I)V

    iget-object v2, p0, Lcom/coremobility/f/d;->d:Lcom/coremobility/integration/e/j;

    const/16 v3, 0x9

    invoke-virtual {p0, v2, v3}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;I)V

    iget-object v2, p0, Lcom/coremobility/f/d;->e:Lcom/coremobility/integration/e/k;

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;I)V

    iget-object v2, p0, Lcom/coremobility/f/d;->f:Lcom/coremobility/integration/e/c;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;I)V

    iget-object v2, p0, Lcom/coremobility/f/d;->g:Lcom/coremobility/integration/e/l;

    invoke-virtual {p0, v2, v4}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;I)V

    iget-object v2, p0, Lcom/coremobility/f/d;->h:Lcom/coremobility/integration/e/m;

    const/4 v3, 0x7

    invoke-virtual {p0, v2, v3}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;I)V

    iget-object v2, p0, Lcom/coremobility/f/d;->i:Lcom/coremobility/integration/e/n;

    invoke-virtual {p0, v2, v1}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;I)V

    iget-object v2, p0, Lcom/coremobility/f/d;->j:Lcom/coremobility/integration/e/p;

    invoke-virtual {p0, v2, v5}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;I)V

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Z)V

    iget-object v2, p0, Lcom/coremobility/f/d;->i:Lcom/coremobility/integration/e/n;

    iget v2, v2, Lcom/coremobility/integration/x;->b:I

    if-eq v2, v4, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/integration/e/e;->a()Lcom/coremobility/integration/e/e;

    move-result-object v0

    invoke-virtual {v0, v5, p0}, Lcom/coremobility/integration/e/e;->a(ILcom/coremobility/integration/app/f;)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    invoke-virtual {p0}, Lcom/coremobility/f/d;->j()V

    iget-object v0, p0, Lcom/coremobility/f/d;->b:Lcom/coremobility/integration/e/a;

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;)V

    iget-object v0, p0, Lcom/coremobility/f/d;->c:Lcom/coremobility/integration/e/b;

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;)V

    iget-object v0, p0, Lcom/coremobility/f/d;->d:Lcom/coremobility/integration/e/j;

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;)V

    iget-object v0, p0, Lcom/coremobility/f/d;->e:Lcom/coremobility/integration/e/k;

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;)V

    iget-object v0, p0, Lcom/coremobility/f/d;->f:Lcom/coremobility/integration/e/c;

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;)V

    iget-object v0, p0, Lcom/coremobility/f/d;->g:Lcom/coremobility/integration/e/l;

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;)V

    iget-object v0, p0, Lcom/coremobility/f/d;->h:Lcom/coremobility/integration/e/m;

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;)V

    iget-object v0, p0, Lcom/coremobility/f/d;->i:Lcom/coremobility/integration/e/n;

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;)V

    iget-object v0, p0, Lcom/coremobility/f/d;->j:Lcom/coremobility/integration/e/p;

    invoke-virtual {p0, v0}, Lcom/coremobility/f/d;->a(Lcom/coremobility/integration/x;)V

    iget-object v0, p0, Lcom/coremobility/f/d;->m:Lcom/coremobility/f/e;

    invoke-static {v0}, Lcom/coremobility/g/b;->a(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/coremobility/g/b;->b(Ljava/lang/Object;)V

    const/high16 v1, 0x34

    invoke-static {v1, v0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/f/d;->a:Lcom/coremobility/f/d;

    return-void
.end method

.method public final f()V
    .locals 2

    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/coremobility/f/d;->s:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/f/l;

    invoke-virtual {p0}, Lcom/coremobility/f/d;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/f/l;->b(I)V

    :cond_0
    const/16 v0, 0xe

    invoke-virtual {p0}, Lcom/coremobility/f/d;->k()I

    move-result v1

    invoke-static {v0, v1}, Lcom/coremobility/f/m;->a(II)V

    return-void
.end method
