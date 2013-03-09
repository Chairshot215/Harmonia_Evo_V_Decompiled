.class public final Lcom/coremobility/l/v;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/g/a;
.implements Lcom/coremobility/g/h;
.implements Lcom/coremobility/integration/b/e;


# static fields
.field protected static C:Lcom/coremobility/l/v;


# instance fields
.field public A:Lcom/coremobility/integration/b/d;

.field B:J

.field protected D:I

.field protected E:Lcom/coremobility/l/ad;

.field protected F:Ljava/util/Vector;

.field protected G:Ljava/util/Vector;

.field protected H:I

.field protected I:Lcom/coremobility/l/af;

.field protected J:Lcom/coremobility/l/ad;

.field protected K:Lcom/coremobility/l/ac;

.field protected L:Lcom/coremobility/l/ae;

.field protected M:Ljava/util/Hashtable;

.field protected final N:I

.field protected final O:I

.field protected final P:I

.field protected final Q:I

.field protected final R:I

.field protected final S:I

.field protected final T:I

.field protected final U:I

.field protected final V:I

.field protected final W:I

.field protected final X:I

.field protected final Y:I

.field protected final Z:I

.field a:I

.field protected final aa:I

.field protected final ab:I

.field protected final ac:I

.field protected final ad:I

.field protected final ae:I

.field protected final af:I

.field protected final ag:I

.field protected final ah:I

.field protected final ai:I

.field protected final aj:I

.field protected final ak:I

.field protected final al:I

.field protected final am:I

.field protected final an:I

.field protected final ao:I

.field protected final ap:I

.field protected final aq:I

.field protected final ar:[Lcom/coremobility/j/o;

.field as:Lcom/coremobility/g/j;

.field at:Lcom/coremobility/l/v;

.field b:I

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field protected e:Ljava/util/Vector;

.field protected f:Ljava/util/Vector;

.field protected g:Lcom/coremobility/l/s;

.field protected h:Lcom/coremobility/l/w;

.field protected i:Z

.field protected j:Z

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:I

.field protected final n:I

.field protected o:Lcom/coremobility/integration/b/c;

.field protected p:Ljava/util/Vector;

.field protected q:I

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Z

.field protected u:Z

.field protected v:Lcom/coremobility/k/dg;

.field protected w:Z

.field protected x:Lcom/coremobility/g/b;

.field protected y:Lcom/coremobility/integration/k;

.field protected z:Lcom/coremobility/integration/file/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/l/v;->C:Lcom/coremobility/l/v;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v3, 0x1

    const/16 v7, 0x1b

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/coremobility/l/v;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/l/v;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/l/v;->d:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/l/v;->e:Ljava/util/Vector;

    iput-object v2, p0, Lcom/coremobility/l/v;->f:Ljava/util/Vector;

    iput-object v2, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    iput-object v2, p0, Lcom/coremobility/l/v;->h:Lcom/coremobility/l/w;

    iput-boolean v5, p0, Lcom/coremobility/l/v;->i:Z

    iput-boolean v5, p0, Lcom/coremobility/l/v;->j:Z

    iput-object v2, p0, Lcom/coremobility/l/v;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/l/v;->l:Ljava/lang/String;

    iput v5, p0, Lcom/coremobility/l/v;->m:I

    const v0, 0x93a80

    iput v0, p0, Lcom/coremobility/l/v;->n:I

    iput-object v2, p0, Lcom/coremobility/l/v;->o:Lcom/coremobility/integration/b/c;

    iput-object v2, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    iput v5, p0, Lcom/coremobility/l/v;->q:I

    iput-object v2, p0, Lcom/coremobility/l/v;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/coremobility/l/v;->s:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/coremobility/l/v;->t:Z

    iput-boolean v5, p0, Lcom/coremobility/l/v;->u:Z

    iput-object v2, p0, Lcom/coremobility/l/v;->A:Lcom/coremobility/integration/b/d;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/l/v;->B:J

    iput v5, p0, Lcom/coremobility/l/v;->D:I

    iput-object v2, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    iput-object v2, p0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    iput-object v2, p0, Lcom/coremobility/l/v;->G:Ljava/util/Vector;

    iput v5, p0, Lcom/coremobility/l/v;->H:I

    iput-object v2, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iput-object v2, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iput-object v2, p0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iput-object v2, p0, Lcom/coremobility/l/v;->L:Lcom/coremobility/l/ae;

    iput-object v2, p0, Lcom/coremobility/l/v;->M:Ljava/util/Hashtable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/l/v;->N:I

    iput v5, p0, Lcom/coremobility/l/v;->O:I

    iput v3, p0, Lcom/coremobility/l/v;->P:I

    iput v6, p0, Lcom/coremobility/l/v;->Q:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/l/v;->R:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/coremobility/l/v;->S:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/coremobility/l/v;->T:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/coremobility/l/v;->U:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/coremobility/l/v;->V:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/coremobility/l/v;->W:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/coremobility/l/v;->X:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/coremobility/l/v;->Y:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/coremobility/l/v;->Z:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/coremobility/l/v;->aa:I

    const/16 v0, 0xd

    iput v0, p0, Lcom/coremobility/l/v;->ab:I

    const/16 v0, 0xe

    iput v0, p0, Lcom/coremobility/l/v;->ac:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/coremobility/l/v;->ad:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/coremobility/l/v;->ae:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/coremobility/l/v;->af:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/coremobility/l/v;->ag:I

    const/16 v0, 0x13

    iput v0, p0, Lcom/coremobility/l/v;->ah:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/coremobility/l/v;->ai:I

    const/16 v0, 0x15

    iput v0, p0, Lcom/coremobility/l/v;->aj:I

    const/16 v0, 0x16

    iput v0, p0, Lcom/coremobility/l/v;->ak:I

    const/16 v0, 0x17

    iput v0, p0, Lcom/coremobility/l/v;->al:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/coremobility/l/v;->am:I

    const/16 v0, 0x19

    iput v0, p0, Lcom/coremobility/l/v;->an:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/coremobility/l/v;->ao:I

    iput v7, p0, Lcom/coremobility/l/v;->ap:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/coremobility/l/v;->aq:I

    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/coremobility/j/o;

    new-instance v1, Lcom/coremobility/j/o;

    const-string v2, "Plans"

    invoke-direct {v1, v2, v5}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/coremobility/j/o;

    const-string v2, "Plan"

    invoke-direct {v1, v2, v3}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/coremobility/j/o;

    const-string v2, "PlanName"

    invoke-direct {v1, v2, v6}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "PlanCode"

    const/4 v4, 0x3

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "PlanName"

    invoke-direct {v2, v3, v6}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "TranscriptionMode"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Duration"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Price"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "PlanType"

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Description"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "SubscriptionDetails"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Subscription"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Expiration"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Status"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Preferences"

    const/16 v4, 0xd

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "ArchiveMode"

    const/16 v4, 0xe

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "ArchiveEmail"

    const/16 v4, 0xf

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "FromName"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "VmsList"

    const/16 v4, 0x11

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Vms"

    const/16 v4, 0x12

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Name"

    const/16 v4, 0x13

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Forward"

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Reset"

    const/16 v4, 0x15

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Response"

    const/16 v4, 0x16

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Message"

    const/16 v4, 0x17

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "Code"

    const/16 v4, 0x18

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "ErrorCode"

    invoke-direct {v2, v3, v7}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    new-instance v1, Lcom/coremobility/j/o;

    const-string v2, "Error"

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v7

    const/16 v1, 0x1c

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "ResponseCode"

    const/16 v4, 0x1a

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "ErrorCode"

    invoke-direct {v2, v3, v7}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/coremobility/j/o;

    const-string v3, "RetryTime"

    const/16 v4, 0x1c

    invoke-direct {v2, v3, v4}, Lcom/coremobility/j/o;-><init>(Ljava/lang/String;I)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/coremobility/l/v;->ar:[Lcom/coremobility/j/o;

    iput v5, p0, Lcom/coremobility/l/v;->a:I

    invoke-direct {p0}, Lcom/coremobility/l/v;->y()V

    return-void
.end method

.method private A()V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/l/v;->o:Lcom/coremobility/integration/b/c;

    const/16 v2, 0x6200

    invoke-virtual {v1, v2}, Lcom/coremobility/integration/b/c;->b(I)I

    move-result v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    :cond_0
    return-void

    :cond_1
    new-array v3, v2, [Lcom/coremobility/l/x;

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    new-instance v4, Lcom/coremobility/l/x;

    invoke-direct {v4, p0}, Lcom/coremobility/l/x;-><init>(Lcom/coremobility/l/v;)V

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/coremobility/l/v;->o:Lcom/coremobility/integration/b/c;

    invoke-virtual {v1, v3}, Lcom/coremobility/integration/b/c;->a([Lcom/coremobility/integration/u;)Z

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    :goto_1
    if-ge v0, v2, :cond_0

    new-instance v1, Lcom/coremobility/l/ac;

    invoke-direct {v1}, Lcom/coremobility/l/ac;-><init>()V

    aget-object v4, v3, v0

    iget-object v5, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v5, v5, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    iput-object v5, v1, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    iget-object v5, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget v5, v5, Lcom/coremobility/l/ac;->b:I

    iput v5, v1, Lcom/coremobility/l/ac;->b:I

    iget-object v5, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget v5, v5, Lcom/coremobility/l/ac;->f:I

    iput v5, v1, Lcom/coremobility/l/ac;->f:I

    iget-object v5, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v5, v5, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    iput-object v5, v1, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    iget-object v5, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v5, v5, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    iput-object v5, v1, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    iget-object v5, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v5, v5, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    iput-object v5, v1, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    iget-object v4, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v4, v4, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    iput-object v4, v1, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private B()V
    .locals 9

    const/16 v8, 0x6200

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/l/v;->o:Lcom/coremobility/integration/b/c;

    invoke-virtual {v0, v8}, Lcom/coremobility/integration/b/c;->a(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-instance v4, Lcom/coremobility/l/x;

    invoke-direct {v4, p0}, Lcom/coremobility/l/x;-><init>(Lcom/coremobility/l/v;)V

    move v1, v2

    :goto_1
    if-ge v1, v3, :cond_0

    new-instance v5, Lcom/coremobility/integration/m;

    invoke-direct {v5, v1}, Lcom/coremobility/integration/m;-><init>(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/ac;

    iget-object v6, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v7, v0, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    iput-object v7, v6, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    iget-object v6, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget v7, v0, Lcom/coremobility/l/ac;->b:I

    iput v7, v6, Lcom/coremobility/l/ac;->b:I

    iget-object v6, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget v7, v0, Lcom/coremobility/l/ac;->f:I

    iput v7, v6, Lcom/coremobility/l/ac;->f:I

    iget-object v6, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v7, v0, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    iput-object v7, v6, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    iget-object v6, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v7, v0, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    iput-object v7, v6, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    iget-object v6, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v7, v0, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    iput-object v7, v6, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    iget-object v6, v4, Lcom/coremobility/l/x;->a:Lcom/coremobility/l/ac;

    iget-object v0, v0, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    iput-object v0, v6, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->o:Lcom/coremobility/integration/b/c;

    invoke-virtual {v0, v8, v5, v4}, Lcom/coremobility/integration/b/c;->a(ILcom/coremobility/integration/m;Lcom/coremobility/integration/u;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method

.method private a(IJJLjava/lang/Object;Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/coremobility/l/v;->v:Lcom/coremobility/k/dg;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/coremobility/l/v;->w:Z

    if-eqz v0, :cond_0

    if-eqz p7, :cond_2

    new-instance v0, Lcom/coremobility/l/h;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/l/h;-><init>(IJJ)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM+VTS ui cb!( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/v;->v:Lcom/coremobility/k/dg;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/coremobility/k/dg;->a(IJJLjava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/coremobility/k/e;

    invoke-direct {v0}, Lcom/coremobility/k/e;-><init>()V

    iput p1, v0, Lcom/coremobility/k/e;->a:I

    iput-wide p2, v0, Lcom/coremobility/k/e;->b:J

    iput-wide p4, v0, Lcom/coremobility/k/e;->c:J

    iput-object p6, v0, Lcom/coremobility/k/e;->d:Ljava/lang/Object;

    iget-object v1, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    const v2, 0x39000c

    invoke-virtual {v1, v2, v0, v6, v6}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private a(Lcom/coremobility/l/ac;)V
    .locals 4

    const/4 v2, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3670

    invoke-interface {v0, v1, v3, v2}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    iput v0, p1, Lcom/coremobility/l/ac;->b:I

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3671

    invoke-interface {v0, v1, v3, v2}, Lcom/coremobility/integration/k;->a(III)I

    move-result v0

    iput v0, p1, Lcom/coremobility/l/ac;->f:I

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3804

    const-string v2, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3801

    const-string v2, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3802

    const-string v2, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3803

    const-string v2, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3805

    const-string v2, ""

    invoke-interface {v0, v1, v3, v2}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    iget v0, p1, Lcom/coremobility/l/ac;->b:I

    iput v0, p0, Lcom/coremobility/l/v;->q:I

    return-void
.end method

.method private a(Lcom/coremobility/l/af;)V
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v1, 0x2

    iget v0, p0, Lcom/coremobility/l/v;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/16 v1, 0x80

    const/4 v7, 0x1

    move-object v0, p0

    move-wide v4, v2

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    :cond_0
    :pswitch_1
    return-void

    :pswitch_2
    iget v0, p1, Lcom/coremobility/l/af;->a:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/coremobility/l/af;->a:I

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_3
    iget v0, p1, Lcom/coremobility/l/af;->a:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :pswitch_4
    iget v0, p1, Lcom/coremobility/l/af;->a:I

    if-eqz v0, :cond_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static b()Lcom/coremobility/l/v;
    .locals 3

    sget-object v0, Lcom/coremobility/l/v;->C:Lcom/coremobility/l/v;

    if-nez v0, :cond_0

    const/16 v0, 0x31

    const-string v1, "Creating CM_VttService instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/l/v;

    invoke-direct {v0}, Lcom/coremobility/l/v;-><init>()V

    sput-object v0, Lcom/coremobility/l/v;->C:Lcom/coremobility/l/v;

    :cond_0
    sget-object v0, Lcom/coremobility/l/v;->C:Lcom/coremobility/l/v;

    return-object v0
.end method

.method private b(I)V
    .locals 6

    const/16 v5, 0x3c

    const/16 v4, 0x31

    const/4 v3, 0x0

    const v1, 0x39000d

    const/4 v2, 0x0

    iget v0, p0, Lcom/coremobility/l/v;->D:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    packed-switch p1, :pswitch_data_1

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input not processed in SEND_IMMEDIATE state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/l/v;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->i()V

    iput-object v3, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    const/4 v0, 0x1

    iput v0, p0, Lcom/coremobility/l/v;->D:I

    invoke-static {v1, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    invoke-virtual {v0, v1, v5, v3}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    goto :goto_0

    :pswitch_5
    packed-switch p1, :pswitch_data_2

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "input not processed in WAIT_TIMER state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    if-nez v0, :cond_1

    iput v2, p0, Lcom/coremobility/l/v;->D:I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/l/v;->u()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->i()V

    iput-object v3, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    invoke-static {v1, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    invoke-virtual {v0, v1, v5, v3}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/coremobility/l/v;->D:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method private b(Lcom/coremobility/l/af;)V
    .locals 4

    const-wide v2, 0xffffffffL

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v0, 0x390009

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-wide v0, p1, Lcom/coremobility/l/af;->b:J

    and-long/2addr v0, v2

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    invoke-virtual {v2, v0, v1, p0}, Lcom/coremobility/g/b;->a(JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private c(I)V
    .locals 8

    const/16 v7, 0xe

    const/4 v6, 0x7

    const/4 v5, 0x3

    const/16 v4, 0x31

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/l/v;->a:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " input: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "incorrect event/state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/l/v;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/l/v;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :pswitch_1
    const-string v0, "State: Never"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in NEVER state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->d()V

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error NEVER state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "State: PRE_ACTIVATION"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in PRE_ACTIVATION state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->d()V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_5
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->e()V

    goto/16 :goto_0

    :sswitch_6
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->h()V

    goto/16 :goto_0

    :sswitch_7
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->e()V

    goto/16 :goto_0

    :sswitch_8
    invoke-direct {p0}, Lcom/coremobility/l/v;->v()V

    goto/16 :goto_0

    :sswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error PRE_ACTIVATION state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "State: PRE_ACTIVATION_GET_PLANS_AND_PREFS"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in PRE_ACTIVATION_GET_PLANS_AND_PREFS state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_a
    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->e()V

    goto/16 :goto_0

    :sswitch_b
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/coremobility/l/v;->v()V

    goto/16 :goto_0

    :sswitch_d
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->h()V

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "State: PRE_ACTIVATION_GET_PLANS"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in PRE_ACTIVATION_GET_PLANS state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->e()V

    goto/16 :goto_0

    :sswitch_f
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_10
    invoke-direct {p0}, Lcom/coremobility/l/v;->v()V

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "State: PRE_ACTIVATION_GET_PPREFS"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in PRE_ACTIVATION_GET_PPREFS state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_11
    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->h()V

    goto/16 :goto_0

    :sswitch_12
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_13
    invoke-direct {p0}, Lcom/coremobility/l/v;->v()V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "State: ACTIVATION"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in ACTIVATION state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->c()V

    goto/16 :goto_0

    :sswitch_15
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_16
    invoke-direct {p0, v7}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_17
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_18
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_19
    invoke-direct {p0, v5}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_1a
    invoke-direct {p0, v6}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_1b
    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->c()V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "State: DELAYED_OPT_IN"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in DELAYED_OPT_IN state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_1c
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_1d
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_1e
    invoke-direct {p0, v5}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_1f
    invoke-direct {p0, v6}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_20
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->f()V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "State: PENDING_ACTIVATE"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in PENDING_ACTIVATE state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_21
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_22
    invoke-direct {p0, v7}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_23
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_24
    invoke-direct {p0, v5}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_25
    invoke-direct {p0, v6}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "State: ACTIVE"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in ACTIVE state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_26
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_27
    invoke-direct {p0, v7}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_28
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_29
    invoke-direct {p0, v6}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_2a
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->c()V

    goto/16 :goto_0

    :sswitch_2b
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->f()V

    goto/16 :goto_0

    :pswitch_a
    const-string v0, "State: DE_ACTIVATION"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in DE_ACTIVATION state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_2c
    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->f()V

    goto/16 :goto_0

    :sswitch_2d
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_2e
    invoke-direct {p0, v7}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_2f
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_30
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_31
    invoke-direct {p0, v5}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_32
    invoke-direct {p0, v6}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_33
    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->f()V

    goto/16 :goto_0

    :sswitch_34
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->c()V

    goto/16 :goto_0

    :pswitch_b
    const-string v0, "State: DELAYED_OPT_OUT"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in DELAYED_OPT_OUT state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_35
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_36
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_37
    invoke-direct {p0, v5}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_38
    invoke-direct {p0, v6}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_39
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->c()V

    goto/16 :goto_0

    :pswitch_c
    const-string v0, "State: PENDING_DE_ACTIVATE"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in PENDING_DE_ACTIVATE state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_3a
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_3b
    invoke-direct {p0, v7}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_3c
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_3d
    invoke-direct {p0, v5}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_3e
    invoke-direct {p0, v6}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_3f
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->c()V

    goto/16 :goto_0

    :pswitch_d
    const-string v0, "State: INACTIVE"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sparse-switch p1, :sswitch_data_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event not processed in INACTIVE state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_40
    invoke-direct {p0}, Lcom/coremobility/l/v;->x()V

    goto/16 :goto_0

    :sswitch_41
    invoke-direct {p0, v7}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_42
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_43
    invoke-direct {p0, v5}, Lcom/coremobility/l/v;->d(I)V

    goto/16 :goto_0

    :sswitch_44
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->c()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_8
        :pswitch_c
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_b
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0xd -> :sswitch_2
        0x19 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_3
        0xd -> :sswitch_9
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x1d -> :sswitch_8
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_a
        0x19 -> :sswitch_b
        0x1b -> :sswitch_d
        0x1d -> :sswitch_c
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_e
        0x19 -> :sswitch_f
        0x1b -> :sswitch_10
        0x1d -> :sswitch_10
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_11
        0x19 -> :sswitch_12
        0x1c -> :sswitch_13
        0x1d -> :sswitch_13
    .end sparse-switch

    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_14
        0x12 -> :sswitch_19
        0x13 -> :sswitch_1a
        0x14 -> :sswitch_18
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x19 -> :sswitch_15
        0x1e -> :sswitch_1b
    .end sparse-switch

    :sswitch_data_6
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_20
        0x12 -> :sswitch_1e
        0x13 -> :sswitch_1f
        0x14 -> :sswitch_1d
        0x19 -> :sswitch_1c
    .end sparse-switch

    :sswitch_data_7
    .sparse-switch
        0x1 -> :sswitch_0
        0x12 -> :sswitch_24
        0x13 -> :sswitch_25
        0x16 -> :sswitch_22
        0x17 -> :sswitch_23
        0x19 -> :sswitch_21
    .end sparse-switch

    :sswitch_data_8
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_2b
        0xc -> :sswitch_2a
        0x12 -> :sswitch_0
        0x13 -> :sswitch_29
        0x16 -> :sswitch_27
        0x17 -> :sswitch_28
        0x19 -> :sswitch_26
    .end sparse-switch

    :sswitch_data_9
    .sparse-switch
        0x1 -> :sswitch_2c
        0xc -> :sswitch_34
        0x12 -> :sswitch_31
        0x13 -> :sswitch_32
        0x15 -> :sswitch_30
        0x16 -> :sswitch_2e
        0x17 -> :sswitch_2f
        0x19 -> :sswitch_2d
        0x1e -> :sswitch_33
    .end sparse-switch

    :sswitch_data_a
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_39
        0x12 -> :sswitch_37
        0x13 -> :sswitch_38
        0x15 -> :sswitch_36
        0x19 -> :sswitch_35
    .end sparse-switch

    :sswitch_data_b
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_3f
        0x12 -> :sswitch_3d
        0x13 -> :sswitch_3e
        0x16 -> :sswitch_3b
        0x17 -> :sswitch_3c
        0x19 -> :sswitch_3a
    .end sparse-switch

    :sswitch_data_c
    .sparse-switch
        0x1 -> :sswitch_0
        0xc -> :sswitch_44
        0x12 -> :sswitch_43
        0x13 -> :sswitch_0
        0x16 -> :sswitch_41
        0x17 -> :sswitch_42
        0x19 -> :sswitch_40
    .end sparse-switch
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "periodic survey "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static c(Lcom/coremobility/l/af;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    const-string v2, "99"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private d(I)V
    .locals 3

    iput p1, p0, Lcom/coremobility/l/v;->a:I

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3600

    iget v2, p0, Lcom/coremobility/l/v;->a:I

    invoke-interface {v0, v1, v2}, Lcom/coremobility/integration/k;->a(II)Z

    return-void
.end method

.method public static e()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/l/v;->C:Lcom/coremobility/l/v;

    return-void
.end method

.method private t()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const-string v1, ""

    invoke-interface {v0, v2, v2, v1}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private u()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/coremobility/l/v;->z()V

    :cond_0
    iget-object v2, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->a:I

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->a:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->a:I

    const/16 v3, 0x9

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->a:I

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method private v()V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x1

    invoke-direct {p0}, Lcom/coremobility/l/v;->A()V

    invoke-direct {p0}, Lcom/coremobility/l/v;->z()V

    const/16 v1, 0x7f

    iget-object v6, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    invoke-direct {p0, v8}, Lcom/coremobility/l/v;->b(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v0, v0, Lcom/coremobility/l/af;->a:I

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x31

    const-string v1, "Invalid subscription status %"

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v4, v4, Lcom/coremobility/l/af;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->a(Lcom/coremobility/l/af;)V

    return-void

    :pswitch_1
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v8}, Lcom/coremobility/l/v;->d(I)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto :goto_0

    :pswitch_5
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto :goto_0

    :pswitch_6
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto :goto_0

    :pswitch_7
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private w()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/l/v;->a:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private x()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    const v1, 0x390002

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method private y()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/v;->M:Ljava/util/Hashtable;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coremobility/l/v;->ar:[Lcom/coremobility/j/o;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/coremobility/l/v;->M:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/coremobility/l/v;->ar:[Lcom/coremobility/j/o;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/coremobility/j/o;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/coremobility/l/v;->ar:[Lcom/coremobility/j/o;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/coremobility/j/o;->b:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private z()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    if-nez v0, :cond_0

    new-instance v0, Lcom/coremobility/l/af;

    invoke-direct {v0}, Lcom/coremobility/l/af;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    :cond_0
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3661

    invoke-interface {v1, v2, v4, v3}, Lcom/coremobility/integration/k;->a(III)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/af;->a:I

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3662

    invoke-interface {v1, v2, v4, v3}, Lcom/coremobility/integration/k;->a(III)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/coremobility/l/af;->b:J

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    new-instance v1, Lcom/coremobility/l/ac;

    invoke-direct {v1}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v1, v0, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    :cond_1
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->a(Lcom/coremobility/l/ac;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/coremobility/l/v;->w:Z

    if-nez v0, :cond_0

    const/16 v0, 0x31

    const-string v1, "VTS vnote is not open"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/coremobility/l/v;->w:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/l/v;->v:Lcom/coremobility/k/dg;

    goto :goto_0
.end method

.method public final a(Lcom/coremobility/k/dg;)I
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/coremobility/l/v;->w:Z

    if-eqz v1, :cond_1

    const/16 v0, 0x1a

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/coremobility/l/v;->v:Lcom/coremobility/k/dg;

    iput-boolean v0, p0, Lcom/coremobility/l/v;->w:Z

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 3

    iput p1, p0, Lcom/coremobility/l/v;->q:I

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3670

    iget v2, p0, Lcom/coremobility/l/v;->q:I

    invoke-interface {v0, v1, v2}, Lcom/coremobility/integration/k;->a(II)Z

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    return-void
.end method

.method public final a(ILjava/lang/Object;II)V
    .locals 10

    const/4 v9, 0x0

    const/16 v8, 0x80

    const/4 v4, 0x0

    const/4 v7, 0x1

    const-wide/16 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    const v1, 0x39000a

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v9}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p3}, Lcom/coremobility/l/v;->c(I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/coremobility/l/v;->A()V

    invoke-direct {p0}, Lcom/coremobility/l/v;->z()V

    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coremobility/l/ad;

    invoke-direct {v0}, Lcom/coremobility/l/ad;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    :cond_1
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v5, 0x3703

    const-string v6, ""

    invoke-interface {v1, v5, v4, v6}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v5, 0x3704

    const-string v6, ""

    invoke-interface {v1, v5, v4, v6}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v5, 0x3640

    invoke-interface {v1, v5, v4, v4}, Lcom/coremobility/integration/k;->a(III)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ad;->c:I

    iget-boolean v0, p0, Lcom/coremobility/l/v;->j:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    invoke-virtual {v0}, Lcom/coremobility/l/ad;->a()Lcom/coremobility/l/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    :cond_3
    invoke-direct {p0, v4}, Lcom/coremobility/l/v;->b(I)V

    :cond_4
    iget v0, p0, Lcom/coremobility/l/v;->a:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/l/v;->w()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v1, 0x7f

    iget-object v6, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    move-object v0, p0

    move v1, v8

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    iget v0, p0, Lcom/coremobility/l/v;->a:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/coremobility/l/v;->a:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const/4 v1, -0x2

    iput v1, v0, Lcom/coremobility/l/af;->a:I

    iget-object v6, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    move-object v0, p0

    move v1, v8

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    :cond_6
    :goto_1
    const/16 v1, 0x81

    iget-object v6, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->b(Lcom/coremobility/l/af;)V

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/coremobility/l/v;->a:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/coremobility/l/v;->a:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    :cond_8
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const/4 v1, -0x3

    iput v1, v0, Lcom/coremobility/l/af;->a:I

    iget-object v6, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    move-object v0, p0

    move v1, v8

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    goto :goto_1

    :sswitch_3
    check-cast p2, Lcom/coremobility/k/e;

    iget v1, p2, Lcom/coremobility/k/e;->a:I

    iget-wide v2, p2, Lcom/coremobility/k/e;->b:J

    iget-wide v4, p2, Lcom/coremobility/k/e;->c:J

    iget-object v6, p2, Lcom/coremobility/k/e;->d:Ljava/lang/Object;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    goto/16 :goto_0

    :sswitch_4
    iput-object v9, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-direct {p0}, Lcom/coremobility/l/v;->z()V

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const-wide/16 v5, -0x1

    iput-wide v5, v0, Lcom/coremobility/l/af;->b:J

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v0, v0, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    iget v5, v0, Lcom/coremobility/l/ac;->b:I

    move v1, v4

    :goto_2
    iget-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/ac;

    iget v6, v0, Lcom/coremobility/l/ac;->b:I

    if-ne v6, v5, :cond_c

    iget v0, v0, Lcom/coremobility/l/ac;->f:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/coremobility/l/v;->B()V

    move v4, v7

    :cond_9
    if-eqz v4, :cond_a

    const/16 v1, 0x7f

    iget-object v6, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    :cond_a
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v0, v0, Lcom/coremobility/l/af;->a:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_b

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v0, v0, Lcom/coremobility/l/af;->a:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_b

    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const/4 v1, 0x6

    iput v1, v0, Lcom/coremobility/l/af;->a:I

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iput-object v9, v0, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3661

    iget-object v4, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v4, v4, Lcom/coremobility/l/af;->a:I

    invoke-interface {v0, v1, v4}, Lcom/coremobility/integration/k;->a(II)Z

    :cond_b
    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3662

    iget-object v4, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-wide v4, v4, Lcom/coremobility/l/af;->b:J

    long-to-int v4, v4

    invoke-interface {v0, v1, v4}, Lcom/coremobility/integration/k;->a(II)Z

    iget-boolean v0, p0, Lcom/coremobility/l/v;->t:Z

    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    move-object v0, p0

    move v1, v8

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :sswitch_5
    iput-boolean v4, p0, Lcom/coremobility/l/v;->t:Z

    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/coremobility/l/v;->t()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/v;->r:Ljava/lang/String;

    if-eqz v1, :cond_d

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/coremobility/l/v;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_d

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/coremobility/l/v;->c(I)V

    :cond_d
    iget-object v1, p0, Lcom/coremobility/l/v;->r:Ljava/lang/String;

    if-nez v1, :cond_e

    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/coremobility/l/v;->c(I)V

    :cond_e
    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coremobility/l/v;->r:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0, v7}, Lcom/coremobility/l/v;->b(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3c -> :sswitch_0
        0x390002 -> :sswitch_1
        0x390008 -> :sswitch_2
        0x390009 -> :sswitch_4
        0x39000a -> :sswitch_6
        0x39000c -> :sswitch_3
        0x39000d -> :sswitch_7
        0x39000e -> :sswitch_5
    .end sparse-switch
.end method

.method public final a(J)V
    .locals 8

    const/16 v1, 0x86

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    return-void
.end method

.method public final a(JLjava/lang/String;ILjava/lang/String;II)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/coremobility/k/d;

    invoke-direct {v0}, Lcom/coremobility/k/d;-><init>()V

    iput-wide p1, v0, Lcom/coremobility/k/d;->a:J

    iput-object p3, v0, Lcom/coremobility/k/d;->b:Ljava/lang/String;

    iput p4, v0, Lcom/coremobility/k/d;->c:I

    iput-object p5, v0, Lcom/coremobility/k/d;->h:Ljava/lang/String;

    iput p6, v0, Lcom/coremobility/k/d;->i:I

    iput p7, v0, Lcom/coremobility/k/d;->j:I

    iget-object v1, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    const v2, 0x39000b

    invoke-virtual {v1, v2, v0, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    return-void
.end method

.method public final a(Lcom/coremobility/l/ad;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/coremobility/l/ad;->a()Lcom/coremobility/l/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3704

    invoke-interface {v1, v2, v3, v0}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3703

    invoke-interface {v1, v2, v3, v0}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    :cond_1
    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3640

    iget-object v2, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    iget v2, v2, Lcom/coremobility/l/ad;->c:I

    invoke-interface {v0, v1, v2}, Lcom/coremobility/integration/k;->a(II)Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremobility/l/v;->a(Z)V

    invoke-direct {p0, v3}, Lcom/coremobility/l/v;->b(I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user input mdn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rerun Prepare"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    invoke-interface {v0, v3, v3, p1}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/coremobility/l/v;->h()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v2}, Lcom/coremobility/integration/c/a;->a(Z)V

    iget v0, p0, Lcom/coremobility/l/v;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/l/v;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3703

    invoke-interface {v0, v1, v3, p1}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3704

    invoke-interface {v0, v1, v3, p2}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    invoke-direct {p0, v2}, Lcom/coremobility/l/v;->c(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, v2}, Lcom/coremobility/l/v;->c(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Ljava/util/Vector;)V
    .locals 9

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v5

    move v1, v3

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/y;

    iget-boolean v0, v0, Lcom/coremobility/l/y;->b:Z

    if-eqz v0, :cond_5

    add-int/lit8 v0, v1, 0x1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    :goto_2
    return-void

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    move v1, v3

    move v4, v3

    :goto_3
    if-ge v4, v5, :cond_3

    invoke-virtual {p1, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/y;

    iget-boolean v6, v0, Lcom/coremobility/l/y;->b:Z

    if-eqz v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v1, :cond_2

    iget-wide v6, v0, Lcom/coremobility/l/y;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move-object v1, v2

    :goto_5
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    move v1, v0

    goto :goto_3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v0, Lcom/coremobility/l/y;->a:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id in ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/v;->A:Lcom/coremobility/integration/b/d;

    const-string v2, "changes"

    invoke-static {v1, v3, v2, v3, v0}, Lcom/coremobility/k/b;->a(Lcom/coremobility/integration/b/d;ZLjava/lang/String;ILjava/lang/String;)I

    goto :goto_2

    :cond_4
    move v0, v1

    move-object v1, v2

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 5

    const/16 v4, 0x3620

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    if-nez v2, :cond_1

    iput-boolean p1, p0, Lcom/coremobility/l/v;->j:Z

    iget-object v2, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    iget-boolean v3, p0, Lcom/coremobility/l/v;->j:Z

    if-eqz v3, :cond_0

    :goto_0
    invoke-interface {v2, v4, v0}, Lcom/coremobility/integration/k;->a(II)Z

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/coremobility/l/v;->b(I)V

    goto :goto_1

    :cond_2
    iput-boolean p1, p0, Lcom/coremobility/l/v;->j:Z

    iget-object v2, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    iget-boolean v3, p0, Lcom/coremobility/l/v;->j:Z

    if-eqz v3, :cond_3

    :goto_2
    invoke-interface {v2, v4, v0}, Lcom/coremobility/integration/k;->a(II)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/l/v;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->g()Z

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0, p1}, Lcom/coremobility/l/s;->a(Z)V

    return-void
.end method

.method public final c()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VttService Creation Time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/coremobility/l/v;->B:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/b/d;->a()V

    iget-object v2, p0, Lcom/coremobility/l/v;->A:Lcom/coremobility/integration/b/d;

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/coremobility/k/b;->a(I)Lcom/coremobility/integration/b/d;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/l/v;->A:Lcom/coremobility/integration/b/d;

    :cond_0
    invoke-static {}, Lcom/coremobility/g/b;->a()Lcom/coremobility/g/b;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    invoke-static {}, Lcom/coremobility/integration/a/a;->a()Lcom/coremobility/integration/a/a;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    invoke-static {}, Lcom/coremobility/integration/file/a;->a()Lcom/coremobility/integration/file/a;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/l/v;->z:Lcom/coremobility/integration/file/a;

    iput-boolean v1, p0, Lcom/coremobility/l/v;->w:Z

    iget-object v2, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    const/high16 v3, 0x39

    invoke-virtual {v2, v3, p0}, Lcom/coremobility/g/b;->a(ILcom/coremobility/g/a;)V

    invoke-static {}, Lcom/coremobility/g/j;->a()Lcom/coremobility/g/j;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/l/v;->as:Lcom/coremobility/g/j;

    iput-object p0, p0, Lcom/coremobility/l/v;->at:Lcom/coremobility/l/v;

    iget-object v2, p0, Lcom/coremobility/l/v;->as:Lcom/coremobility/g/j;

    const/16 v3, 0x8

    invoke-virtual {v2, p0, v3}, Lcom/coremobility/g/j;->a(Lcom/coremobility/g/h;I)V

    iget-object v2, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v3, 0x3600

    invoke-interface {v2, v3, v1, v1}, Lcom/coremobility/integration/k;->a(III)I

    move-result v2

    iput v2, p0, Lcom/coremobility/l/v;->a:I

    iget-object v2, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v3, 0x3601

    invoke-interface {v2, v3, v1, v1}, Lcom/coremobility/integration/k;->a(III)I

    move-result v2

    iput v2, p0, Lcom/coremobility/l/v;->b:I

    iget v2, p0, Lcom/coremobility/l/v;->a:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v3, 0x3700

    const-string v4, ""

    invoke-interface {v2, v3, v1, v4}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/l/v;->k:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v3, 0x3701

    const-string v4, ""

    invoke-interface {v2, v3, v1, v4}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/l/v;->l:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/coremobility/integration/b/c;->a()Lcom/coremobility/integration/b/c;

    move-result-object v2

    iput-object v2, p0, Lcom/coremobility/l/v;->o:Lcom/coremobility/integration/b/c;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/coremobility/l/v;->e:Ljava/util/Vector;

    new-instance v2, Lcom/coremobility/l/s;

    invoke-direct {v2}, Lcom/coremobility/l/s;-><init>()V

    iput-object v2, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    iget-object v2, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v2}, Lcom/coremobility/l/s;->a()V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/coremobility/l/v;->f:Ljava/util/Vector;

    iget-object v2, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v3, 0x3620

    invoke-interface {v2, v3, v1, v1}, Lcom/coremobility/integration/k;->a(III)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/coremobility/l/v;->j:Z

    iget-boolean v0, p0, Lcom/coremobility/l/v;->j:Z

    iput-boolean v0, p0, Lcom/coremobility/l/v;->j:Z

    new-instance v0, Lcom/coremobility/l/w;

    invoke-direct {v0, p0}, Lcom/coremobility/l/w;-><init>(Lcom/coremobility/l/v;)V

    iput-object v0, p0, Lcom/coremobility/l/v;->h:Lcom/coremobility/l/w;

    iget-object v0, p0, Lcom/coremobility/l/v;->h:Lcom/coremobility/l/w;

    invoke-virtual {v0, p0}, Lcom/coremobility/l/w;->a(Lcom/coremobility/l/v;)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/l/v;->A:Lcom/coremobility/integration/b/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/coremobility/k/b;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->b()V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    if-eqz v0, :cond_2

    const/high16 v0, 0x39

    invoke-static {v0, p0}, Lcom/coremobility/g/b;->b(ILcom/coremobility/g/a;)V

    :cond_2
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coremobility/l/v;->r:Ljava/lang/String;

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 13

    const/4 v12, -0x1

    const/16 v11, 0x31

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iput-object v9, p0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    iput-object v9, p0, Lcom/coremobility/l/v;->G:Ljava/util/Vector;

    iput v8, p0, Lcom/coremobility/l/v;->H:I

    iput-object v9, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iput-object v9, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iput-object v9, p0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/coremobility/integration/file/b;->c(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    new-array v1, v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p1}, Lcom/coremobility/integration/file/b;->b(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    :try_start_2
    new-instance v0, Lcom/coremobility/l/z;

    invoke-direct {v0, p0}, Lcom/coremobility/l/z;-><init>(Lcom/coremobility/l/v;)V

    array-length v2, v1

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    :try_start_3
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    iget-object v0, v0, Lcom/coremobility/l/z;->a:Lorg/xml/sax/helpers/DefaultHandler;

    invoke-interface {v3, v0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    if-nez v2, :cond_3

    const/16 v0, 0x31

    const-string v1, "Server xml length is 0"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-static {v0}, Lcom/coremobility/l/v;->c(Lcom/coremobility/l/af;)Z

    move-result v0

    invoke-direct {p0}, Lcom/coremobility/l/v;->w()Z

    move-result v10

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/coremobility/l/v;->c(Lcom/coremobility/l/af;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/coremobility/l/af;->g:I

    if-eq v1, v12, :cond_1

    iput-boolean v7, p0, Lcom/coremobility/l/v;->t:Z

    const v1, 0x39000e

    invoke-static {v1, p0}, Lcom/coremobility/g/b;->b(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    const v2, 0x39000e

    iget v0, v0, Lcom/coremobility/l/af;->g:I

    invoke-virtual {v1, v2, v0, p0}, Lcom/coremobility/g/b;->a(IILjava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iput v12, v0, Lcom/coremobility/l/af;->g:I

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v0

    move-object v1, v9

    :goto_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :try_start_4
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const/16 v1, 0x31

    :try_start_5
    const-string v2, "SAX parser exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x31

    const-string v2, "expection message: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v1, "XML parser exception"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v11, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    iput-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/coremobility/l/v;->B()V

    :cond_5
    invoke-direct {p0}, Lcom/coremobility/l/v;->w()Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v1, 0x7f

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    :cond_6
    iget-object v0, p0, Lcom/coremobility/l/v;->L:Lcom/coremobility/l/ae;

    if-eqz v0, :cond_7

    const-string v0, "Received post rating response: %s"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/coremobility/l/v;->L:Lcom/coremobility/l/ae;

    iget-object v2, v2, Lcom/coremobility/l/ae;->a:Ljava/lang/String;

    aput-object v2, v1, v8

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-boolean v0, p0, Lcom/coremobility/l/v;->t:Z

    if-eqz v0, :cond_8

    iput-object v9, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    :cond_8
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    if-eqz v0, :cond_1e

    iget-object v2, p0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget v0, v2, Lcom/coremobility/l/ac;->b:I

    if-eq v0, v12, :cond_14

    iget v3, v2, Lcom/coremobility/l/ac;->b:I

    iget-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    if-eqz v0, :cond_1d

    move v1, v8

    :goto_4
    iget-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    iget-object v0, p0, Lcom/coremobility/l/v;->p:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/l/ac;

    iget v4, v0, Lcom/coremobility/l/ac;->b:I

    if-ne v4, v3, :cond_1c

    :goto_5
    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v3, 0x3670

    iget v4, v2, Lcom/coremobility/l/ac;->b:I

    invoke-interface {v1, v3, v4}, Lcom/coremobility/integration/k;->a(II)Z

    if-eqz v0, :cond_e

    iget-object v1, v2, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    iput-object v1, v2, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    :cond_9
    iget-object v1, v2, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    :cond_a
    iget-object v1, v2, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    iput-object v1, v2, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    :cond_b
    iget v1, v2, Lcom/coremobility/l/ac;->f:I

    if-ne v1, v12, :cond_c

    iget v1, v0, Lcom/coremobility/l/ac;->f:I

    iput v1, v2, Lcom/coremobility/l/ac;->f:I

    :cond_c
    iget-object v1, v2, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    iput-object v1, v2, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    :cond_d
    iget-object v1, v2, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    iget-object v0, v0, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    iput-object v0, v2, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    :cond_e
    iget-object v0, v2, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3804

    iget-object v3, v2, Lcom/coremobility/l/ac;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v3}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    :cond_f
    iget-object v0, v2, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3801

    iget-object v3, v2, Lcom/coremobility/l/ac;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v3}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    :cond_10
    iget-object v0, v2, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3802

    iget-object v3, v2, Lcom/coremobility/l/ac;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v3}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    :cond_11
    iget v0, v2, Lcom/coremobility/l/ac;->f:I

    if-eq v0, v12, :cond_12

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3671

    iget v3, v2, Lcom/coremobility/l/ac;->f:I

    invoke-interface {v0, v1, v3}, Lcom/coremobility/integration/k;->a(II)Z

    :cond_12
    iget-object v0, v2, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3803

    iget-object v3, v2, Lcom/coremobility/l/ac;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v3}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    :cond_13
    iget-object v0, v2, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3805

    iget-object v2, v2, Lcom/coremobility/l/ac;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v8, v2}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    :cond_14
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v1, p0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iput-object v1, v0, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    iget-object v0, p0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget v0, v0, Lcom/coremobility/l/ac;->b:I

    iput v0, p0, Lcom/coremobility/l/v;->q:I

    :cond_15
    :goto_6
    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3661

    iget-object v2, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->a:I

    invoke-interface {v0, v1, v2}, Lcom/coremobility/integration/k;->a(II)Z

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3662

    iget-object v2, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-wide v2, v2, Lcom/coremobility/l/af;->b:J

    long-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/coremobility/integration/k;->a(II)Z

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->b(Lcom/coremobility/l/af;)V

    invoke-direct {p0}, Lcom/coremobility/l/v;->w()Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->b(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v0, v0, Lcom/coremobility/l/af;->a:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "Invalid subscription status %"

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->a(Lcom/coremobility/l/af;)V

    :cond_16
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    if-eqz v0, :cond_1b

    if-nez v10, :cond_17

    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    if-nez v0, :cond_20

    :cond_17
    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3640

    iget-object v2, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget v2, v2, Lcom/coremobility/l/ad;->c:I

    invoke-interface {v0, v1, v2}, Lcom/coremobility/integration/k;->a(II)Z

    :goto_8
    if-nez v10, :cond_18

    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    if-nez v0, :cond_22

    :cond_18
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    :cond_19
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3704

    const-string v3, ""

    invoke-interface {v1, v2, v8, v3}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    :goto_9
    iget-object v0, p0, Lcom/coremobility/l/v;->E:Lcom/coremobility/l/ad;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_23

    :cond_1a
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3703

    const-string v3, ""

    invoke-interface {v1, v2, v8, v3}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    :goto_a
    const/16 v1, 0x81

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    :cond_1b
    invoke-direct {p0}, Lcom/coremobility/l/v;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    if-nez v0, :cond_25

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_2

    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_1d
    move-object v0, v9

    goto/16 :goto_5

    :cond_1e
    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v0, v0, Lcom/coremobility/l/af;->a:I

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v0, v0, Lcom/coremobility/l/af;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    :cond_1f
    new-instance v0, Lcom/coremobility/l/ac;

    invoke-direct {v0}, Lcom/coremobility/l/ac;-><init>()V

    iput-object v0, p0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iget-object v0, p0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->a(Lcom/coremobility/l/ac;)V

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget-object v1, p0, Lcom/coremobility/l/v;->K:Lcom/coremobility/l/ac;

    iput-object v1, v0, Lcom/coremobility/l/af;->c:Lcom/coremobility/l/ac;

    goto/16 :goto_6

    :pswitch_1
    const/16 v0, 0x16

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_7

    :pswitch_2
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_7

    :pswitch_3
    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_7

    :pswitch_4
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_7

    :pswitch_5
    const/16 v0, 0x15

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_7

    :pswitch_6
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_7

    :pswitch_7
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_7

    :cond_20
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3640

    invoke-interface {v1, v2, v8, v8}, Lcom/coremobility/integration/k;->a(III)I

    move-result v1

    iput v1, v0, Lcom/coremobility/l/ad;->c:I

    goto/16 :goto_8

    :cond_21
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3704

    invoke-interface {v1, v2, v8, v0}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    goto/16 :goto_9

    :cond_22
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3704

    const-string v3, ""

    invoke-interface {v1, v2, v8, v3}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    goto/16 :goto_9

    :cond_23
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v0, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3703

    invoke-interface {v1, v2, v8, v0}, Lcom/coremobility/integration/k;->b(IILjava/lang/String;)Z

    goto/16 :goto_a

    :cond_24
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    iget-object v1, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v2, 0x3703

    const-string v3, ""

    invoke-interface {v1, v2, v8, v3}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    goto/16 :goto_a

    :cond_25
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/coremobility/l/v;->F:Ljava/util/Vector;

    if-eqz v0, :cond_26

    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_2

    :cond_26
    iget-object v0, p0, Lcom/coremobility/l/v;->J:Lcom/coremobility/l/ad;

    if-eqz v0, :cond_27

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_2

    :cond_27
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    goto/16 :goto_2

    :catch_3
    move-exception v0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/l/v;->u:Z

    return v0
.end method

.method protected final f(Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->d(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    const v1, 0x390002

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    iget v1, p0, Lcom/coremobility/l/v;->a:I

    const/4 v0, 0x0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/coremobility/l/v;->z()V

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const/4 v1, 0x1

    iput v1, v0, Lcom/coremobility/l/af;->a:I

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->b(Lcom/coremobility/l/af;)V

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3661

    iget-object v2, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    iget v2, v2, Lcom/coremobility/l/af;->a:I

    invoke-interface {v0, v1, v2}, Lcom/coremobility/integration/k;->a(II)Z

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/af;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/af;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const-string v1, ""

    iput-object v1, v0, Lcom/coremobility/l/af;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/coremobility/l/v;->I:Lcom/coremobility/l/af;

    const/16 v1, 0x80

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    const/4 v0, 0x1

    :cond_0
    const/16 v1, 0x31

    const-string v2, "Force Vtt Subscription State to Active %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const-string v0, "succeeded"

    :goto_1
    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "failed"

    goto :goto_1

    :sswitch_2
    iget-boolean v0, p0, Lcom/coremobility/l/v;->u:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/coremobility/l/v;->u:Z

    const/16 v1, 0x85

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x38 -> :sswitch_2
    .end sparse-switch
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3703

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()V
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/l/v;->as:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->e()V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/coremobility/l/v;->a:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/l/v;->as:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->e()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coremobility/l/v;->a:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/coremobility/l/v;->w:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coremobility/l/v;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x31

    const-string v1, " Target MDN is null, notify GUI for user input"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x7b

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v7}, Lcom/coremobility/l/v;->a(IJJLjava/lang/Object;Z)V

    iget-object v0, p0, Lcom/coremobility/l/v;->as:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->e()V

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/coremobility/l/v;->i:Z

    :cond_3
    invoke-direct {p0}, Lcom/coremobility/l/v;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/j/s;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/coremobility/l/v;->r:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/coremobility/l/v;->c(I)V

    :cond_4
    iget-object v0, p0, Lcom/coremobility/l/v;->as:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->e()V

    goto :goto_0
.end method

.method public final i()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/l/v;->x:Lcom/coremobility/g/b;

    const v1, 0x390008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/coremobility/g/b;->a(ILjava/lang/Object;II)V

    iget-object v0, p0, Lcom/coremobility/l/v;->g:Lcom/coremobility/l/s;

    invoke-virtual {v0}, Lcom/coremobility/l/s;->j()V

    iget-object v0, p0, Lcom/coremobility/l/v;->as:Lcom/coremobility/g/j;

    invoke-virtual {v0}, Lcom/coremobility/g/j;->e()V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/coremobility/l/v;->y:Lcom/coremobility/integration/k;

    const/16 v1, 0x3704

    const/4 v2, 0x0

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/coremobility/integration/k;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    return-void
.end method

.method public final l()V
    .locals 4

    iget v0, p0, Lcom/coremobility/l/v;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x5

    :goto_0
    const/16 v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "done vms setup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/coremobility/l/v;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    return-void

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public final m()V
    .locals 4

    const/16 v3, 0x31

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/l/v;->s:Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/integration/file/a;->a(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete greeting file error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/v;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "greeting file deleted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/l/v;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final n()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    return-void
.end method

.method public final p()V
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/l/v;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    :cond_0
    return-void
.end method

.method public final q()V
    .locals 3

    const/16 v0, 0x31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done exit survey state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/l/v;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    return-void
.end method

.method public final s()V
    .locals 1

    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/coremobility/l/v;->c(I)V

    return-void
.end method
