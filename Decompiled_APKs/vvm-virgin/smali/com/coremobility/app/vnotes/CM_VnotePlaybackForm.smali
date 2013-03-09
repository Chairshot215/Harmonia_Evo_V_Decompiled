.class public final Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;
.super Lcom/coremobility/integration/app/CM_Form;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/coremobility/app/customui/j;
.implements Lcom/coremobility/app/customui/p;
.implements Lcom/coremobility/app/vnotes/bm;
.implements Lcom/coremobility/app/vnotes/cc;
.implements Lcom/coremobility/app/vnotes/kc;
.implements Lcom/coremobility/integration/app/k;
.implements Lcom/coremobility/integration/b/e;
.implements Lcom/coremobility/integration/i;
.implements Lcom/coremobility/k/dg;


# static fields
.field public static final a:[Ljava/lang/String;

.field private static aV:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

.field public static final b:[Ljava/lang/String;


# instance fields
.field private F:I

.field private G:Z

.field private H:J

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Ljava/lang/String;

.field private N:Ljava/util/Vector;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Ljava/lang/String;

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:J

.field private V:I

.field private W:Ljava/lang/String;

.field private X:Lcom/coremobility/l/an;

.field private Y:I

.field private Z:Ljava/lang/String;

.field private aA:Lcom/coremobility/integration/d/c;

.field private aB:Z

.field private aC:I

.field private aD:Z

.field private aE:I

.field private final aF:I

.field private aG:Ljava/lang/String;

.field private aH:Ljava/lang/String;

.field private aI:Z

.field private aJ:I

.field private aK:I

.field private aL:I

.field private aM:I

.field private aN:I

.field private aO:Ljava/lang/String;

.field private aP:I

.field private aQ:Z

.field private aR:Z

.field private aS:Z

.field private aT:Z

.field private aU:Landroid/view/GestureDetector;

.field private aW:[I

.field private aX:Landroid/widget/RelativeLayout;

.field private aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

.field private aZ:Landroid/app/AlertDialog;

.field private aa:Landroid/widget/ImageButton;

.field private ab:Landroid/widget/ImageView;

.field private ac:Lcom/coremobility/app/customui/CM_ImageButton;

.field private ad:Landroid/widget/ImageButton;

.field private ae:Landroid/widget/ImageButton;

.field private af:Lcom/coremobility/app/customui/CM_ImageButton;

.field private ag:Landroid/widget/SeekBar;

.field private ah:Landroid/widget/ImageView;

.field private ai:Landroid/widget/TextView;

.field private aj:Landroid/widget/TextView;

.field private ak:Landroid/widget/TextView;

.field private al:Landroid/widget/TextView;

.field private am:Landroid/widget/TextView;

.field private an:Landroid/widget/TextView;

.field private ao:Landroid/widget/LinearLayout;

.field private ap:Landroid/widget/Button;

.field private aq:Landroid/widget/TextView;

.field private ar:Landroid/widget/TextView;

.field private as:Landroid/widget/ScrollView;

.field private at:Landroid/widget/ImageView;

.field private au:Landroid/widget/ImageView;

.field private av:Landroid/widget/TextView;

.field private aw:Landroid/widget/ImageView;

.field private ax:Landroid/view/View;

.field private ay:Landroid/view/View;

.field private az:I

.field private bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

.field private bB:Landroid/widget/TextView;

.field private bC:Landroid/app/AlertDialog;

.field private bD:Landroid/os/Handler;

.field private ba:Lcom/coremobility/app/customui/CM_LinearLayout;

.field private bb:Landroid/widget/TextView;

.field private bc:Z

.field private bd:I

.field private be:I

.field private bf:I

.field private bg:I

.field private bh:I

.field private bi:I

.field private bj:I

.field private bk:I

.field private bl:I

.field private bm:I

.field private bn:Z

.field private bo:F

.field private bp:I

.field private bq:I

.field private br:I

.field private bs:Z

.field private bt:Z

.field private bu:Lcom/coremobility/app/customui/k;

.field private bv:Z

.field private bw:Z

.field private bx:Z

.field private by:Z

.field private bz:Ljava/util/ArrayList;

.field protected c:Landroid/view/View;

.field protected d:I

.field protected e:Landroid/app/ProgressDialog;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "recipient_mdns"

    aput-object v1, v0, v4

    const-string v1, "recipient_emails"

    aput-object v1, v0, v5

    const-string v1, "sent_timestamp"

    aput-object v1, v0, v6

    const-string v1, "recv_timestamp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "out_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sender_mdn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sender_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "previous_sender"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dir_id"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sender_email"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "txt_summary"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "record_id"

    aput-object v1, v0, v3

    const-string v1, "duration"

    aput-object v1, v0, v4

    const-string v1, "file_type"

    aput-object v1, v0, v5

    const-string v1, "filename_only"

    aput-object v1, v0, v6

    const-string v1, "file_size"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "file_order"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "transcribe_rate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "mime_guid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aV:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_Form;-><init>()V

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->F:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I:Z

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->K:Z

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->L:Z

    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->M:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    const/16 v0, 0xc8

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aF:I

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iput v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    iput v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aL:I

    iput-boolean v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aR:Z

    iput-boolean v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aS:Z

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aT:Z

    iput v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bh:I

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bv:Z

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bw:Z

    iput-boolean v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bx:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e:Landroid/app/ProgressDialog;

    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bC:Landroid/app/AlertDialog;

    new-instance v0, Lcom/coremobility/app/vnotes/gl;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/gl;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    return-void
.end method

.method private A()V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDirectoryContentChanged() for vnoteID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bu:Lcom/coremobility/app/customui/k;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/k;->a()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->E()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->be:I

    if-ne v0, v4, :cond_0

    const-string v0, "current message deleted."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    iput v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bh:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->C()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->m()V

    sget-object v0, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-direct {p0, v0, v1, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;IZ)Z

    sget-object v0, Lcom/coremobility/app/vnotes/hn;->a:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;Z)V

    sget-object v0, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;Z)V

    sget-object v0, Lcom/coremobility/app/vnotes/hn;->c:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->q()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->s()V

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Z)V

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    goto :goto_0
.end method

.method private B()Z
    .locals 6

    const/16 v5, 0xfa

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    invoke-virtual {v2}, Lcom/coremobility/app/customui/CM_HorizontalScrollView;->getScrollX()I

    move-result v2

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    sub-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    if-nez v3, :cond_3

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bj:I

    if-le v3, v4, :cond_2

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->t()V

    invoke-direct {p0, v5}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j(I)Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->F()V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/d/c;->b(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->v()V

    :cond_1
    return v1

    :cond_2
    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bj:I

    if-le v2, v3, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->t()V

    invoke-direct {p0, v5}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->i(I)Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private C()V
    .locals 12

    const/4 v11, 0x2

    const/4 v8, 0x6

    const/4 v10, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v0, "populatehorizontalscrollview"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->j(I)I

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    :goto_1
    if-ne v0, v10, :cond_b

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O()I

    move-result v0

    move v1, v0

    :goto_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    if-lez v0, :cond_1

    const/4 v0, 0x3

    if-gt v1, v0, :cond_5

    :cond_1
    move v2, v3

    :goto_3
    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indexOfLeftView= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indexOfMiddleView= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "indexOfRightView= "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v8, v0, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    const/4 v4, -0x2

    const/4 v9, 0x0

    invoke-direct {v8, v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->removeAllViews()V

    move v4, v3

    :goto_4
    if-ge v4, v1, :cond_a

    if-ne v4, v2, :cond_7

    iget-object v9, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ki;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hm;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/hm;->b(I)V

    invoke-virtual {v0, v10}, Lcom/coremobility/app/vnotes/hm;->a(I)V

    :goto_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->d(Landroid/content/Context;I)I

    move-result v0

    goto/16 :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    if-eqz v0, :cond_4

    move v0, v5

    goto/16 :goto_1

    :cond_4
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bh:I

    goto/16 :goto_1

    :cond_5
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    add-int/lit8 v2, v1, -0x1

    if-lt v0, v2, :cond_6

    add-int/lit8 v0, v1, -0x3

    move v2, v0

    goto/16 :goto_3

    :cond_6
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    goto/16 :goto_3

    :cond_7
    if-ne v4, v6, :cond_8

    iget-object v9, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ki;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hm;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/hm;->b(I)V

    invoke-virtual {v0, v10}, Lcom/coremobility/app/vnotes/hm;->a(I)V

    goto :goto_5

    :cond_8
    if-ne v4, v7, :cond_9

    iget-object v9, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ki;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hm;

    invoke-virtual {v0, v4}, Lcom/coremobility/app/vnotes/hm;->b(I)V

    invoke-virtual {v0, v10}, Lcom/coremobility/app/vnotes/hm;->a(I)V

    goto :goto_5

    :cond_9
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v9, v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_5

    :cond_a
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v1, v0, v3}, Lcom/coremobility/app/customui/CM_LinearLayout;->addView(Landroid/view/View;I)V

    iput-boolean v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bs:Z

    iput-boolean v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bt:Z

    return-void

    :cond_b
    move v1, v0

    goto/16 :goto_2
.end method

.method private D()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    div-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bj:I

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bk:I

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bl:I

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->br:I

    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bq:I

    div-int/lit8 v0, v1, 0x5

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bm:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMinSwipe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCurrentX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinFlingDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mMinFlingVelocity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private E()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->be:I

    iput v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    :goto_0
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateScrollValues() listPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->be:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " viewChildPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bh:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->m(I)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->be:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bh:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->be:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    goto :goto_0
.end method

.method private F()V
    .locals 4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private G()V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Z)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->i:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(I)Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->i:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->v()V

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aa:Landroid/widget/ImageButton;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private H()V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bb:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bb:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bb:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c000f

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bh:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private I()V
    .locals 9

    const-wide/16 v7, 0x3e8

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v2

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ki;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hm;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hm;->a()I

    move-result v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->i()Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v0

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    mul-long v5, v3, v7

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->V:I

    invoke-static {v5, v6, v0}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v5

    mul-long/2addr v3, v7

    const/4 v0, 0x1

    invoke-static {v3, v4, v0}, Lcom/coremobility/j/p;->b(JI)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ki;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->al:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private J()V
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p0

    :goto_1
    iput-boolean v0, v1, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bx:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bx:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bw:Z

    if-eqz v1, :cond_2

    move-object v1, p0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    move-object v1, p0

    goto :goto_1
.end method

.method private K()V
    .locals 1

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->l(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->l(I)V

    goto :goto_0
.end method

.method private L()V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->M:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->M:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;ZLandroid/app/Activity;)Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0
.end method

.method private M()V
    .locals 4

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bv:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O:Ljava/lang/String;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->c(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->c(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    new-instance v0, Lcom/coremobility/integration/h/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-static {p0, v1}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v1

    iget v0, v0, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/coremobility/k/de;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/coremobility/k/de;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->c(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private N()V
    .locals 11

    const-wide/16 v9, 0x0

    const/16 v8, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_0
    new-instance v0, Lcom/coremobility/integration/h/c;

    invoke-direct {v0, v2}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-direct {p0, v3, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(ILcom/coremobility/integration/h/c;)Lcom/coremobility/app/vnotes/ka;

    move-result-object v3

    iget v0, v0, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v0, :cond_1

    invoke-virtual {p0, v8}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :goto_0
    return-void

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v3

    move-wide v4, v3

    :goto_1
    const-wide/16 v6, 0x80

    and-long/2addr v6, v4

    cmp-long v0, v6, v9

    if-eqz v0, :cond_4

    move v3, v1

    :goto_2
    const-wide/16 v6, 0x100

    and-long/2addr v4, v6

    cmp-long v0, v4, v9

    if-eqz v0, :cond_5

    move v0, v1

    :goto_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->j()Z

    move-result v4

    if-nez v4, :cond_6

    :goto_4
    if-eqz v3, :cond_7

    invoke-virtual {p0, v8}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;I)Lcom/coremobility/k/de;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/coremobility/k/de;->a()J

    move-result-wide v3

    move-wide v4, v3

    goto :goto_1

    :cond_3
    const-wide/16 v3, 0x180

    move-wide v4, v3

    goto :goto_1

    :cond_4
    move v3, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3

    :cond_6
    move v1, v2

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_8
    if-eqz v1, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_9
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    invoke-static {v0, v1, v2, p0}, Lcom/coremobility/app/vnotes/cq;->a(IIILandroid/app/Activity;)V

    goto :goto_0
.end method

.method private O()I
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private P()V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ki;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hm;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ki;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->z()V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    goto :goto_0
.end method

.method private Q()V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/a;->b()V

    :cond_8
    return-void
.end method

.method private R()V
    .locals 2

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private static a(IIZLjava/lang/String;)I
    .locals 2

    const/4 v0, 0x1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne p0, v0, :cond_2

    if-nez p2, :cond_0

    :cond_2
    if-ne p0, v0, :cond_3

    if-ne p1, v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ay:Landroid/view/View;

    return-object v0
.end method

.method private a(ILcom/coremobility/integration/h/c;)Lcom/coremobility/app/vnotes/ka;
    .locals 6

    const/4 v1, 0x0

    const/16 v5, 0x1b

    const/4 v4, 0x6

    const/4 v3, 0x0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/da;->c(I)Lcom/coremobility/app/vnotes/ka;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;ILcom/coremobility/app/vnotes/ka;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSaved;->b:[Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vnote retrieve failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v5, p2, Lcom/coremobility/integration/h/c;->a:I

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/coremobility/app/vnotes/ka;

    invoke-direct {v0}, Lcom/coremobility/app/vnotes/ka;-><init>()V

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/database/Cursor;)Lcom/coremobility/k/de;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/da;->a(Lcom/coremobility/k/de;Lcom/coremobility/app/vnotes/ka;)Z

    invoke-static {p0, p1, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/content/Context;ILcom/coremobility/app/vnotes/ka;)V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Vnote retrieve failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v5, p2, Lcom/coremobility/integration/h/c;->a:I

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    goto :goto_0
.end method

.method private a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, -0x1

    sget-object v1, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    if-ne p1, v1, :cond_2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    move v4, v0

    :goto_0
    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-lt v4, v0, :cond_4

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    sget-object v1, Lcom/coremobility/app/vnotes/hn;->c:Lcom/coremobility/app/vnotes/hn;

    if-ne p1, v1, :cond_3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/coremobility/app/vnotes/hn;->a:Lcom/coremobility/app/vnotes/hn;

    if-ne p1, v1, :cond_7

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v3, v0

    :goto_2
    const/4 v0, 0x3

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ki;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/hm;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/hm;->b()I

    move-result v1

    if-eq v1, v4, :cond_1

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_6
    move-object v0, v2

    goto :goto_1

    :cond_7
    move v4, v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_1

    const-string v0, "unknown@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c000d

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    invoke-static {p2}, Lcom/coremobility/app/vnotes/cq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object p1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    move-object p1, p2

    goto :goto_0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Ljava/lang/String;I)V
    .locals 9

    const/16 v8, 0xf

    const/4 v7, 0x0

    const v6, 0x7f070010

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, ""

    const-string v2, ""

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v7

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    const-string v2, "launch email sender"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->b()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v8}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->removeDialog(I)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->n()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0, v8}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->removeDialog(I)V

    const/16 v0, 0x1a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-static {v0, p0, p2}, Lcom/coremobility/app/vnotes/cq;->a(ILandroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N()V

    goto :goto_0

    :cond_7
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    invoke-static {p0, p1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Z)V

    return-void
.end method

.method private a(Lcom/coremobility/app/vnotes/hn;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;Z)V

    return-void
.end method

.method private a(Lcom/coremobility/app/vnotes/ki;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x6

    const-string v1, "resetLocalViews received a null view"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->a:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aa:Landroid/widget/ImageButton;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->c:Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->d:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ah:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->e:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ai:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->f:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aj:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->g:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ak:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->b:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ab:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->p:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->at:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->q:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->au:Landroid/widget/ImageView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->h:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->al:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->i:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->am:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->j:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->an:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->k:Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ap:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ap:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->l:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ao:Landroid/widget/LinearLayout;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->m:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v0, p0}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->n:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->r:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bb:Landroid/widget/TextView;

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->s:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->av:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->t:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aw:Landroid/widget/ImageView;

    :cond_1
    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->u:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->w:Lcom/coremobility/app/customui/CM_SubscribeButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->x:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    iget-object v0, p1, Lcom/coremobility/app/vnotes/ki;->y:Landroid/view/View;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    goto :goto_0
.end method

.method private static a(Lcom/coremobility/app/vnotes/ki;Z)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->o:Landroid/widget/ScrollView;

    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->c:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->a:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->k:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->m:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/ki;->w:Lcom/coremobility/app/customui/CM_SubscribeButton;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setFocusable(Z)V

    goto :goto_0
.end method

.method private a(Z)V
    .locals 2

    const v1, 0x7f0b0067

    sget-object v0, Lcom/coremobility/app/vnotes/hn;->a:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    sget-object v0, Lcom/coremobility/app/vnotes/hn;->c:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/ki;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method private a(Lcom/coremobility/app/vnotes/hn;IZ)Z
    .locals 18

    const/4 v2, -0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v5, 0x1

    sget-object v2, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v7

    const/4 v2, 0x0

    sget-object v3, Lcom/coremobility/app/vnotes/hn;->a:Lcom/coremobility/app/vnotes/hn;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_5

    sget-object v3, Lcom/coremobility/app/vnotes/hn;->a:Lcom/coremobility/app/vnotes/hn;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/hm;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    :cond_1
    move-object v6, v2

    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/coremobility/app/vnotes/hm;->a()I

    move-result v2

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v5, 0x0

    :cond_3
    if-eqz p3, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v5, :cond_29

    new-instance v2, Lcom/coremobility/integration/h/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/coremobility/integration/h/c;-><init>(B)V

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(ILcom/coremobility/integration/h/c;)Lcom/coremobility/app/vnotes/ka;

    move-result-object v8

    iget v2, v2, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->finish()V

    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_28

    const/4 v2, 0x0

    goto :goto_0

    :cond_5
    sget-object v3, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_6

    if-eqz v7, :cond_2b

    invoke-virtual {v7}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/hm;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    move-object v6, v2

    goto :goto_1

    :cond_6
    sget-object v3, Lcom/coremobility/app/vnotes/hn;->c:Lcom/coremobility/app/vnotes/hn;

    move-object/from16 v0, p1

    if-ne v0, v3, :cond_2b

    sget-object v3, Lcom/coremobility/app/vnotes/hn;->c:Lcom/coremobility/app/vnotes/hn;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/hm;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    move-object v6, v2

    goto :goto_1

    :cond_7
    if-eqz v8, :cond_12

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->c()[J

    move-result-object v9

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->l()[Ljava/lang/String;

    move-result-object v2

    array-length v10, v2

    if-lez v10, :cond_8

    const/4 v2, 0x1

    if-le v10, v2, :cond_a

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->k()[I

    move-result-object v11

    const/4 v3, 0x0

    aget v4, v11, v3

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->k(I)Z

    move-result v3

    int-to-long v12, v4

    invoke-static {v12, v13}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v12

    if-eqz v3, :cond_b

    move v3, v4

    :goto_4
    move-object/from16 v0, p0

    iput v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Y:I

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->l()[Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x0

    aget-object v3, v3, v13

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->W:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->l()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    :goto_5
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->m()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aH:Ljava/lang/String;

    invoke-static {v11}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a([I)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    invoke-static {v10, v4, v12, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(IIZLjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    :cond_8
    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->q()Lcom/coremobility/l/an;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->X:Lcom/coremobility/l/an;

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->j()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aE:I

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->b()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    invoke-static {v2, v3}, Lcom/coremobility/app/vnotes/cq;->c(J)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I:Z

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    const-wide/16 v10, 0x10

    and-long/2addr v2, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_e

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    const-wide/16 v10, 0x100

    and-long/2addr v2, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_f

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->L:Z

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    const-wide/16 v10, 0x2000

    and-long/2addr v2, v10

    const-wide/16 v10, 0x0

    cmp-long v2, v2, v10

    if-lez v2, :cond_10

    const/4 v2, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->K:Z

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->g()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->h()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->i()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Q:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->e()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    :goto_a
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    const/4 v2, 0x0

    aget-wide v2, v9, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->d()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->T:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/coremobility/app/vnotes/ka;->n()[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aW:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->d(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aP:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aP:I

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/coremobility/app/vnotes/cq;->a(IZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aO:Ljava/lang/String;

    :cond_9
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O:Ljava/lang/String;

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    new-instance v2, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O:Ljava/lang/String;

    const-string v4, ","

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_b
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_c
    const-string v2, ""

    goto/16 :goto_5

    :cond_d
    const-string v2, ""

    goto/16 :goto_6

    :cond_e
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_8

    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    goto/16 :goto_a

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    sget-object v3, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v2, v1, v3}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b:[Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-nez v3, :cond_14

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vnote retrieve failed "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v3, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->finish()V

    if-eqz v4, :cond_13

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_14
    if-nez v4, :cond_15

    const/4 v2, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Vnote MIME retrieve failed "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2, v4, v8}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->finish()V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_15
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v2, 0x1

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Q:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v9, v2

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    const/4 v2, 0x6

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v9, v2

    move-object/from16 v0, p0

    iput-wide v9, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    const/16 v2, 0xa

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/16 v2, 0xb

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->T:Ljava/lang/String;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aH:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    invoke-static {v10, v11}, Lcom/coremobility/app/vnotes/cq;->c(J)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I:Z

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    const-wide/16 v12, 0x10

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_1b

    const/4 v2, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    const-wide/16 v12, 0x100

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_1c

    const/4 v2, 0x1

    :goto_e
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->L:Z

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    const-wide/16 v12, 0x2000

    and-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_1d

    const/4 v2, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->K:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->d(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aP:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aP:I

    const/4 v10, 0x1

    invoke-static {v2, v10}, Lcom/coremobility/app/vnotes/cq;->a(IZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aO:Ljava/lang/String;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    new-array v10, v2, [J

    new-array v11, v2, [I

    new-array v12, v2, [Ljava/lang/String;

    new-array v13, v2, [I

    new-array v14, v2, [I

    new-array v15, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16

    if-eqz v16, :cond_17

    :cond_16
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v12, v2

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    aput v16, v11, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    aput-wide v16, v10, v2

    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    aput v16, v13, v2

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    aput v16, v14, v2

    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v15, v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-nez v16, :cond_16

    :cond_17
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    array-length v2, v13

    if-lez v2, :cond_9

    array-length v4, v12

    const/4 v2, 0x1

    if-le v4, v2, :cond_1f

    const/4 v2, 0x1

    move v3, v2

    :goto_10
    if-lez v4, :cond_20

    const/4 v2, 0x0

    aget-object v2, v12, v2

    :goto_11
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->W:Ljava/lang/String;

    array-length v2, v11

    if-lez v2, :cond_21

    const/4 v2, 0x0

    aget v2, v11, v2

    :goto_12
    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Y:I

    if-eqz v3, :cond_22

    const/4 v2, 0x1

    aget-object v2, v12, v2

    :goto_13
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    invoke-static {v11}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a([I)Z

    move-result v2

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    :goto_14
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    const/4 v2, 0x0

    aget-wide v2, v10, v2

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aE:I

    array-length v2, v13

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aW:[I

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aW:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/l/ah;->a(Ljava/lang/String;)Lcom/coremobility/l/an;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->X:Lcom/coremobility/l/an;

    :cond_18
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    move-object/from16 v0, p0

    iget v10, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v13, 0x3

    if-eq v10, v13, :cond_19

    move-object/from16 v0, p0

    iget v10, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v13, 0x6

    if-ne v10, v13, :cond_1a

    :cond_19
    new-instance v10, Lcom/coremobility/app/vnotes/ka;

    invoke-direct {v10}, Lcom/coremobility/app/vnotes/ka;-><init>()V

    const/4 v13, 0x6

    new-array v13, v13, [J

    int-to-long v0, v8

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Lcom/coremobility/app/vnotes/ka;->a(J)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/coremobility/app/vnotes/ka;->b(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/coremobility/app/vnotes/ka;->c(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->T:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Lcom/coremobility/app/vnotes/ka;->a(Ljava/lang/String;)V

    invoke-virtual {v10, v2, v3}, Lcom/coremobility/app/vnotes/ka;->b(J)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    move-wide/from16 v16, v0

    aput-wide v16, v13, v2

    invoke-virtual {v10, v13}, Lcom/coremobility/app/vnotes/ka;->a([J)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aE:I

    int-to-long v2, v2

    invoke-virtual {v10, v2, v3}, Lcom/coremobility/app/vnotes/ka;->c(J)V

    invoke-virtual {v10, v11}, Lcom/coremobility/app/vnotes/ka;->a([I)V

    invoke-virtual {v10, v12}, Lcom/coremobility/app/vnotes/ka;->a([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/coremobility/app/vnotes/ka;->d(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/coremobility/app/vnotes/ka;->e(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Q:Ljava/lang/String;

    invoke-virtual {v10, v2}, Lcom/coremobility/app/vnotes/ka;->f(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Lcom/coremobility/app/vnotes/ka;->g(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aW:[I

    invoke-virtual {v10, v2}, Lcom/coremobility/app/vnotes/ka;->b([I)V

    invoke-virtual {v10, v14}, Lcom/coremobility/app/vnotes/ka;->c([I)V

    invoke-virtual {v10, v15}, Lcom/coremobility/app/vnotes/ka;->b([Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->X:Lcom/coremobility/l/an;

    invoke-virtual {v10, v2}, Lcom/coremobility/app/vnotes/ka;->a(Lcom/coremobility/l/an;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-virtual {v10, v2}, Lcom/coremobility/app/vnotes/ka;->a(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Y:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Y:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    invoke-static {v4, v3, v2, v8}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(IIZLjava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    goto/16 :goto_b

    :cond_1b
    const/4 v2, 0x0

    goto/16 :goto_d

    :cond_1c
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_1d
    const/4 v2, 0x0

    goto/16 :goto_f

    :cond_1e
    const/4 v2, 0x6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Vnote ID does not exist: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v2, v8, v9}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_1f
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_10

    :cond_20
    const-string v2, ""

    goto/16 :goto_11

    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_22
    const-string v2, ""

    goto/16 :goto_13

    :cond_23
    const-string v2, ""

    goto/16 :goto_14

    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P:Ljava/lang/String;

    if-eqz v2, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    new-instance v2, Ljava/util/StringTokenizer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P:Ljava/lang/String;

    const-string v4, ","

    invoke-direct {v2, v3, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_15
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->az:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bh:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->O()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bh:I

    :cond_26
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    if-nez v2, :cond_27

    invoke-direct/range {p0 .. p1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v2

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ki;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremobility/app/vnotes/hm;

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/hm;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bg:I

    :goto_16
    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_27
    move-object/from16 v0, p0

    iget v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bh:I

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->m(I)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bg:I

    goto :goto_16

    :cond_28
    invoke-direct/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j()V

    if-eqz v6, :cond_29

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/coremobility/app/vnotes/hm;->a(I)V

    :cond_29
    sget-object v2, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_2a

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    :cond_2a
    move v2, v5

    goto/16 :goto_0

    :cond_2b
    move-object v6, v2

    goto/16 :goto_1
.end method

.method private a(ZI)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x6

    const/4 v0, 0x0

    new-instance v1, Lcom/coremobility/integration/h/c;

    invoke-direct {v1, v0}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aT:Z

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v2, v3, :cond_2

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VnoteSuspendSend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p2, v2}, Lcom/coremobility/integration/app/j;->a(II)V

    iget v2, v1, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VnoteSuspendSend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed with error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aT:Z

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aT:Z

    return v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VnoteResumeSend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p2, v2}, Lcom/coremobility/integration/app/j;->b(II)V

    iget v2, v1, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VnoteResumeSend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "failed with error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aT:Z

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    if-eqz p1, :cond_3

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VnoteSetSafe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p2, v2, v1}, Lcom/coremobility/integration/app/j;->a(IILcom/coremobility/integration/h/c;)V

    iget v2, v1, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VnoteSetSafe("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed with error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, v1, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aT:Z

    goto/16 :goto_0

    :cond_3
    move p2, v0

    goto :goto_1
.end method

.method private static a([I)Z
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->g:[Ljava/lang/String;

    return-object p1
.end method

.method public static b()Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;
    .locals 1

    sget-object v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aV:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    return-object v0
.end method

.method private b([I)Lcom/coremobility/integration/f/b;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->az:I

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->M:Ljava/lang/String;

    return-object p1
.end method

.method private b(II)V
    .locals 5

    const/4 v3, 0x6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    if-ne p1, p2, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swap out of bounds "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "swap "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p2, 0x1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v2, v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v3, v1}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v4, v2}, Lcom/coremobility/app/customui/CM_LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v4, v3}, Lcom/coremobility/app/customui/CM_LinearLayout;->removeView(Landroid/view/View;)V

    if-ge p1, p2, :cond_4

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v4, v3, v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0, v2, v1}, Lcom/coremobility/app/customui/CM_LinearLayout;->addView(Landroid/view/View;I)V

    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hm;

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/hm;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p2}, Lcom/coremobility/app/vnotes/hm;->b(I)V

    :cond_3
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Lcom/coremobility/app/vnotes/hm;->b(I)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v4, v2, v1}, Lcom/coremobility/app/customui/CM_LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v1, v3, v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;Z)V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {v0, v1, p1, p0}, Lcom/coremobility/app/vnotes/cq;->a(IIZLandroid/app/Activity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne v1, v0, :cond_2

    const v0, 0x7f0c014e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne v1, v0, :cond_3

    const v0, 0x7f0c014f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x5

    if-ne v1, v0, :cond_0

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0
.end method

.method private b(Z)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-instance v2, Lcom/coremobility/k/ag;

    invoke-direct {v2}, Lcom/coremobility/k/ag;-><init>()V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :try_start_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->t()V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2}, Lcom/coremobility/integration/d/c;->c()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/coremobility/k/bl;

    invoke-direct {v1, v0}, Lcom/coremobility/k/bl;-><init>(Z)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2}, Lcom/coremobility/integration/d/c;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown in pausePlayer(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(I)Z

    new-instance v1, Lcom/coremobility/k/bl;

    invoke-direct {v1, v0}, Lcom/coremobility/k/bl;-><init>(Z)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v5, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/coremobility/k/ad;

    invoke-direct {v3, p1}, Lcom/coremobility/k/ad;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    :try_start_0
    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->X:Lcom/coremobility/l/an;

    if-nez v3, :cond_0

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v3, v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "smvvm"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/coremobility/l/ah;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/coremobility/l/an;

    move-result-object v3

    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->X:Lcom/coremobility/l/an;

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->X:Lcom/coremobility/l/an;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->X:Lcom/coremobility/l/an;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Lcom/coremobility/l/an;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->X:Lcom/coremobility/l/an;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/l/an;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_1
    :try_start_1
    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v1

    :goto_2
    new-instance v1, Lcom/coremobility/k/bi;

    invoke-direct {v1, v0}, Lcom/coremobility/k/bi;-><init>(Z)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return v0

    :cond_2
    :try_start_2
    invoke-static {p1}, Lcom/coremobility/l/ah;->a(Ljava/lang/String;)Lcom/coremobility/l/an;

    move-result-object v3

    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->X:Lcom/coremobility/l/an;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    :goto_3
    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in getVnoteText: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :try_start_3
    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v3, v5, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "smvvm"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_4
    if-nez v3, :cond_4

    invoke-static {p1}, Lcom/coremobility/integration/file/b;->b(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    :goto_5
    if-nez v3, :cond_5

    invoke-static {p1}, Lcom/coremobility/integration/file/b;->c(Ljava/lang/String;)J

    move-result-wide v3

    :goto_6
    long-to-int v3, v3

    new-array v3, v3, [B

    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    const/16 v3, 0xd

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v3, p1}, Lcom/coremobility/integration/file/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    goto :goto_5

    :cond_5
    invoke-static {v3, p1}, Lcom/coremobility/integration/file/b;->b(Ljava/lang/String;Ljava/lang/String;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v3

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v1

    move-object v1, v6

    goto :goto_3

    :cond_6
    move-object v3, v0

    goto :goto_4

    :cond_7
    move v0, v2

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :goto_0
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070016

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_1
    if-ge v0, v6, :cond_9

    aget-object v1, v5, v0

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_2
    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/coremobility/app/vnotes/ho;->c:Lcom/coremobility/app/vnotes/ho;

    iget v0, v0, Lcom/coremobility/app/vnotes/ho;->f:F

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    new-instance v1, Lcom/coremobility/app/vnotes/hg;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/hg;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/kj;->a(Landroid/widget/TextView;Lcom/coremobility/app/vnotes/kl;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v2, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bx:Z

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->d(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    move v0, v1

    :cond_6
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    sget-object v0, Lcom/coremobility/app/vnotes/ho;->a:Lcom/coremobility/app/vnotes/ho;

    iget v0, v0, Lcom/coremobility/app/vnotes/ho;->f:F

    goto :goto_3

    :pswitch_1
    sget-object v0, Lcom/coremobility/app/vnotes/ho;->b:Lcom/coremobility/app/vnotes/ho;

    iget v0, v0, Lcom/coremobility/app/vnotes/ho;->f:F

    goto :goto_3

    :pswitch_2
    sget-object v0, Lcom/coremobility/app/vnotes/ho;->c:Lcom/coremobility/app/vnotes/ho;

    iget v0, v0, Lcom/coremobility/app/vnotes/ho;->f:F

    goto :goto_3

    :pswitch_3
    sget-object v0, Lcom/coremobility/app/vnotes/ho;->d:Lcom/coremobility/app/vnotes/ho;

    iget v0, v0, Lcom/coremobility/app/vnotes/ho;->f:F

    goto :goto_3

    :pswitch_4
    sget-object v0, Lcom/coremobility/app/vnotes/ho;->e:Lcom/coremobility/app/vnotes/ho;

    iget v0, v0, Lcom/coremobility/app/vnotes/ho;->f:F

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    sget-object v1, Lcom/coremobility/app/vnotes/ho;->c:Lcom/coremobility/app/vnotes/ho;

    iget v1, v1, Lcom/coremobility/app/vnotes/ho;->f:F

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private c(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/coremobility/app/customui/CM_HorizontalScrollView;->smoothScrollTo(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/coremobility/app/customui/CM_HorizontalScrollView;->scrollTo(II)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/2addr v0, v1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->w()V

    return-void
.end method

.method private d(Z)V
    .locals 4

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->i:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v0, :cond_0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_0
    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Z)V

    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(I)Z

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bC:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bC:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private d(I)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->m()V

    sget-object v2, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v2, p1, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;IZ)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/coremobility/app/vnotes/hn;->a:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;Z)V

    sget-object v2, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;Z)V

    sget-object v2, Lcom/coremobility/app/vnotes/hn;->c:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;Z)V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Y:I

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->k(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p0, p1, v1}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;II)Z

    move-result v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    iget-boolean v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    invoke-static {v2, v3, v1, v4, p0}, Lcom/coremobility/app/vnotes/cq;->a(IIZZLandroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->finish()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->q()V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    if-eq v2, v4, :cond_2

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    :cond_2
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    if-ne v2, v4, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->t()V

    :cond_3
    invoke-static {}, Lcom/coremobility/integration/d/a;->a()Lcom/coremobility/integration/d/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/integration/d/a;->g()V

    :cond_4
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->U()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(Z)V

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "vtt_expiry_notice@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Lcom/coremobility/app/customui/CM_HorizontalScrollView;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    return-object v0
.end method

.method private e(Z)V
    .locals 2

    const/4 v1, 0x1

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->c:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bv:Z

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ax:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->showContextMenu()Z

    goto :goto_0
.end method

.method private static f(Z)I
    .locals 1

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->c:Z

    if-eqz v0, :cond_1

    if-eqz p0, :cond_0

    const v0, 0x7f020042

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f02003f

    goto :goto_0

    :cond_1
    const v0, 0x7f020041

    goto :goto_0
.end method

.method private f(I)Z
    .locals 6

    const v5, 0x7f020046

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playbackState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v4

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->q()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ad:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aS:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ac:Lcom/coremobility/app/customui/CM_ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aR:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_ImageButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->r()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aa:Landroid/widget/ImageButton;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->q()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ad:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aS:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ac:Lcom/coremobility/app/customui/CM_ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aR:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_ImageButton;->setEnabled(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->q()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ad:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aS:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ac:Lcom/coremobility/app/customui/CM_ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aR:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aa:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ad:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ac:Lcom/coremobility/app/customui/CM_ImageButton;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/customui/CM_ImageButton;->setEnabled(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic f(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bt:Z

    return v0
.end method

.method static synthetic g(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    return v0
.end method

.method private g(I)V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->F:I

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->F:I

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->setContentView(I)V

    const v0, 0x7f0b002c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ac:Lcom/coremobility/app/customui/CM_ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ac:Lcom/coremobility/app/customui/CM_ImageButton;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->i(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bw:Z

    const v0, 0x7f0b002e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    if-eqz v0, :cond_2

    const v0, 0x7f020043

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    const v0, 0x7f0b002d

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ad:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ad:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b002f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_ImageButton;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->af:Lcom/coremobility/app/customui/CM_ImageButton;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->af:Lcom/coremobility/app/customui/CM_ImageButton;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aU:Landroid/view/GestureDetector;

    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/coremobility/app/customui/k;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    invoke-direct {v0, v1}, Lcom/coremobility/app/customui/k;-><init>(Landroid/widget/HorizontalScrollView;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bu:Lcom/coremobility/app/customui/k;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bu:Lcom/coremobility/app/customui/k;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/k;->a(Lcom/coremobility/app/customui/j;)V

    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/customui/CM_LinearLayout;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/customui/CM_LinearLayout;->a(Lcom/coremobility/app/customui/p;)V

    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ax:Landroid/view/View;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ax:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->registerForContextMenu(Landroid/view/View;)V

    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ay:Landroid/view/View;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ay:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ad:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    sget-boolean v0, Lcom/coremobility/app/vnotes/cf;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ax:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto/16 :goto_0

    :cond_2
    const v0, 0x7f020044

    goto/16 :goto_1
.end method

.method private h(I)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFormForId id= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readyToPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->w()V

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-direct {p0, v2, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(ZI)Z

    :cond_0
    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-direct {p0, v3, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(ZI)Z

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aT:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "failed in updateFormForId"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    return-void
.end method

.method static synthetic i(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)J
    .locals 2

    iget-wide v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    return-wide v0
.end method

.method private i(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->x()Z

    move-result v0

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2, v1}, Lcom/coremobility/integration/d/c;->a(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2, v1}, Lcom/coremobility/integration/d/c;->b(Z)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bu:Lcom/coremobility/app/customui/k;

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/2addr v2, v4

    const/4 v4, 0x2

    invoke-virtual {v3, v2, v4, p1}, Lcom/coremobility/app/customui/k;->a(III)V

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    invoke-direct {p0, v0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(ZI)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->F()V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bn:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->v()V

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    const-string v2, "Next message is out of bounds."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic j(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Lcom/coremobility/app/customui/CM_SubscribeButton;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    return-object v0
.end method

.method private j()V
    .locals 26

    const/4 v3, 0x1

    new-array v9, v3, [I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b([I)Lcom/coremobility/integration/f/b;

    move-result-object v18

    const/4 v4, 0x0

    const-string v5, ""

    const-string v10, ""

    const-string v8, ""

    const-string v7, ""

    const-string v15, ""

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aR:Z

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aS:Z

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/coremobility/app/vnotes/cf;->Z()I

    move-result v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    move/from16 v16, v0

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    move/from16 v16, v0

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    move/from16 v16, v0

    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    move-wide/from16 v16, v0

    const-wide/16 v20, 0x0

    cmp-long v3, v16, v20

    if-nez v3, :cond_d

    const/4 v3, 0x1

    move/from16 v17, v3

    :goto_0
    const/4 v6, 0x0

    if-eqz v18, :cond_30

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    invoke-static {v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(Ljava/lang/String;)Z

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(ZZ)I

    move-result v21

    const/4 v4, 0x0

    aget v8, v9, v4

    if-eqz v18, :cond_e

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/coremobility/integration/f/b;->b:Ljava/lang/String;

    :goto_2
    move-object/from16 v0, p0

    invoke-static {v0, v8, v4}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v18 .. v18}, Lcom/coremobility/app/vnotes/cq;->b(Lcom/coremobility/integration/f/b;)Landroid/net/Uri;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Lcom/coremobility/integration/f/b;I)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->T:Ljava/lang/String;

    if-eqz v4, :cond_2f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->T:Ljava/lang/String;

    :goto_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Q:Ljava/lang/String;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Q:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " "

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v18, 0x7f0c006e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->az:I

    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v5, v0, :cond_2

    const/4 v12, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0c012f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, " ("

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v15, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->az:I

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ")"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_2
    if-eqz v17, :cond_f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aR:Z

    const/16 v14, 0x8

    const/16 v13, 0x8

    const/4 v11, 0x4

    move v5, v6

    move v6, v13

    move-object v13, v10

    move v10, v14

    :goto_4
    if-nez v17, :cond_3

    if-nez v5, :cond_3

    if-eqz v20, :cond_14

    :cond_3
    const/4 v5, 0x0

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aS:Z

    sget-boolean v5, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v5, :cond_5

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aO:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->c()I

    move-result v5

    if-gtz v5, :cond_15

    :cond_4
    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->l(I)V

    :cond_5
    :goto_6
    if-nez v17, :cond_2c

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    move-wide/from16 v17, v0

    const-wide/16 v20, 0x3e8

    mul-long v17, v17, v20

    invoke-static/range {v17 .. v19}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    const/4 v7, 0x1

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v7}, Lcom/coremobility/j/p;->b(JI)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_7
    move v7, v12

    move v14, v3

    move v3, v6

    move-object v12, v13

    move-object v13, v4

    move-object v6, v9

    move-object v9, v5

    move v4, v10

    move-object v5, v8

    move-object/from16 v10, v16

    move-object v8, v15

    :goto_8
    if-nez v14, :cond_6

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/16 v3, 0x8

    const/16 v4, 0x8

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ai:Landroid/widget/TextView;

    invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aj:Landroid/widget/TextView;

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aj:Landroid/widget/TextView;

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ac:Lcom/coremobility/app/customui/CM_ImageButton;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aR:Z

    invoke-virtual {v4, v12}, Lcom/coremobility/app/customui/CM_ImageButton;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v12, v4, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x0

    :goto_9
    const/4 v13, 0x2

    if-ne v12, v13, :cond_7

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ak:Landroid/widget/TextView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-virtual {v4, v12, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ak:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ak:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ap:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ap:Landroid/widget/Button;

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ad:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v7, 0x1

    if-le v3, v7, :cond_21

    const/4 v3, 0x1

    :goto_a
    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(Z)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ad:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aS:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->al:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->al:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ah:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_8
    :goto_b
    const-string v3, ""

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    :cond_9
    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bx:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->K:Z

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->L:Z

    if-eqz v3, :cond_24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->at:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->au:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_d
    invoke-direct/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->k()V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v4, 0x5

    if-eq v3, v4, :cond_b

    move-object/from16 v0, p0

    iget v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_28

    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->av:Landroid/widget/TextView;

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aw:Landroid/widget/ImageView;

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aO:Ljava/lang/String;

    if-eqz v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->av:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aP:I

    invoke-static {v4}, Lcom/coremobility/app/vnotes/cq;->b(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->av:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aP:I

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->h(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aO:Ljava/lang/String;

    invoke-static {v5}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aw:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aP:I

    invoke-static {v4}, Lcom/coremobility/app/vnotes/cq;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ah:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aP:I

    invoke-static {v4}, Lcom/coremobility/app/vnotes/cq;->c(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_c
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->q()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->am:Landroid/widget/TextView;

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-direct/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H()V

    invoke-direct/range {p0 .. p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->z()V

    return-void

    :cond_d
    const/4 v3, 0x0

    move/from16 v17, v3

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    if-eqz v5, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    const-string v18, "unknown@"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/16 v6, 0x8

    :goto_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-static {v10}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v13, v10

    move v10, v14

    goto/16 :goto_4

    :cond_10
    const/4 v6, 0x0

    goto :goto_10

    :cond_11
    if-nez v5, :cond_12

    if-eqz v20, :cond_13

    :cond_12
    const/16 v6, 0x8

    const/16 v14, 0x8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aR:Z

    move-object v13, v10

    move v10, v14

    goto/16 :goto_4

    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aR:Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    move v6, v13

    move-object v13, v10

    move v10, v14

    goto/16 :goto_4

    :cond_14
    const/4 v5, 0x1

    goto/16 :goto_5

    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->l(I)V

    goto/16 :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    move-wide/from16 v16, v0

    const-wide/16 v20, 0x3e8

    mul-long v16, v16, v20

    const/16 v20, 0x1

    move-wide/from16 v0, v16

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/coremobility/j/p;->b(JI)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x3e8

    mul-long v20, v20, v22

    move-wide/from16 v0, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/coremobility/j/p;->a(JI)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->az:I

    move/from16 v16, v0

    if-lez v16, :cond_2b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->i(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1b

    sget-object v5, Lcom/coremobility/app/vnotes/cu;->b:Lcom/coremobility/app/vnotes/cu;

    iget v5, v5, Lcom/coremobility/app/vnotes/cu;->e:I

    :goto_11
    move-object/from16 v0, p0

    iget v6, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->az:I

    const/16 v20, 0x1

    move/from16 v0, v20

    if-le v6, v0, :cond_17

    const/4 v12, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const v15, 0x7f0c012f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, " ("

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->az:I

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ")"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :cond_17
    if-eqz v18, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Lcom/coremobility/integration/f/b;I)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static/range {v18 .. v18}, Lcom/coremobility/app/vnotes/cq;->b(Lcom/coremobility/integration/f/b;)Landroid/net/Uri;

    move-result-object v5

    const/4 v4, 0x0

    aget v8, v9, v4

    if-eqz v18, :cond_1c

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/coremobility/integration/f/b;->b:Ljava/lang/String;

    :goto_12
    move-object/from16 v0, p0

    invoke-static {v0, v8, v4}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x1

    move-object/from16 v24, v5

    move-object v5, v6

    move-object v6, v4

    move-object/from16 v4, v24

    :goto_13
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_18

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aR:Z

    :cond_18
    if-eqz v16, :cond_19

    const v9, 0x7f0c00db

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Q:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Q:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2a

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const v18, 0x7f0c006e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v16, v9

    :goto_14
    if-eqz v3, :cond_29

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1a
    :goto_15
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    const-wide/16 v20, 0x0

    cmp-long v9, v9, v20

    if-eqz v9, :cond_1f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v9, v7

    move v7, v11

    :goto_16
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aS:Z

    move v11, v7

    move-object v10, v6

    move v7, v12

    move-object v6, v5

    move-object v5, v4

    move-object v12, v3

    move v3, v13

    move v4, v14

    move-object/from16 v13, v16

    move v14, v8

    move-object v8, v15

    goto/16 :goto_8

    :cond_1b
    sget-object v5, Lcom/coremobility/app/vnotes/cu;->c:Lcom/coremobility/app/vnotes/cu;

    iget v5, v5, Lcom/coremobility/app/vnotes/cu;->e:I

    goto/16 :goto_11

    :cond_1c
    const/4 v4, 0x0

    goto/16 :goto_12

    :cond_1d
    if-eqz v16, :cond_1e

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Lcom/coremobility/integration/f/b;I)Landroid/graphics/Bitmap;

    move-result-object v5

    :goto_17
    const/4 v6, 0x0

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v24, v6

    move-object v6, v8

    move v8, v4

    move-object/from16 v4, v24

    goto/16 :goto_13

    :cond_1e
    const/4 v5, 0x0

    goto :goto_17

    :cond_1f
    const/4 v9, 0x4

    move/from16 v24, v9

    move-object v9, v7

    move/from16 v7, v24

    goto :goto_16

    :cond_20
    const/4 v4, 0x1

    goto/16 :goto_9

    :cond_21
    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_22
    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ah:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_b

    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->W:Ljava/lang/String;

    goto/16 :goto_c

    :cond_24
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->K:Z

    if-eqz v3, :cond_25

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->L:Z

    if-nez v3, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->at:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->au:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->K:Z

    if-nez v3, :cond_26

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->L:Z

    if-eqz v3, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->at:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->au:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->at:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->au:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_d

    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ah:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aP:I

    invoke-static {v4}, Lcom/coremobility/app/vnotes/cq;->c(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_e

    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->av:Landroid/widget/TextView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aw:Landroid/widget/ImageView;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->av:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aw:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_e

    :cond_29
    move-object v3, v10

    goto/16 :goto_15

    :cond_2a
    move-object/from16 v16, v9

    goto/16 :goto_14

    :cond_2b
    move-object v9, v7

    move v7, v12

    move-object v12, v10

    move-object v10, v8

    move-object v8, v15

    move-object/from16 v24, v3

    move v3, v13

    move-object v13, v5

    move-object/from16 v5, v24

    move/from16 v25, v14

    move v14, v4

    move/from16 v4, v25

    goto/16 :goto_8

    :cond_2c
    move-object v5, v7

    goto/16 :goto_7

    :cond_2d
    move v5, v6

    goto/16 :goto_f

    :cond_2e
    move v5, v6

    move v6, v13

    move-object v13, v10

    move v10, v14

    goto/16 :goto_4

    :cond_2f
    move-object v4, v5

    goto/16 :goto_3

    :cond_30
    move v3, v4

    goto/16 :goto_1
.end method

.method private j(I)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aL:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2, v1}, Lcom/coremobility/integration/d/c;->a(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2, v1}, Lcom/coremobility/integration/d/c;->b(Z)V

    :cond_3
    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bu:Lcom/coremobility/app/customui/k;

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/2addr v2, v4

    invoke-virtual {v3, v2, v0, p1}, Lcom/coremobility/app/customui/k;->a(III)V

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aL:I

    invoke-direct {p0, v0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(ZI)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->F()V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bn:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->v()V

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    const/4 v0, 0x6

    const-string v2, "Prev message is out of bounds."

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic k(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    return-object v0
.end method

.method private k()V
    .locals 2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ab:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ab:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private static k(I)Z
    .locals 2

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-long v0, p0

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->b(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()Ljava/util/ArrayList;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    new-instance v1, Lcom/coremobility/app/vnotes/ki;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ki;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/ki;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Lcom/coremobility/app/vnotes/hm;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/hm;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/ki;->setTag(Ljava/lang/Object;)V

    invoke-static {v1, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/coremobility/app/vnotes/ki;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/ki;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v2, v0}, Lcom/coremobility/app/vnotes/ki;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/coremobility/app/vnotes/hm;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/hm;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v2, v3}, Lcom/coremobility/app/vnotes/ki;->setTag(Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;Z)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/coremobility/app/vnotes/ki;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ki;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ki;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/coremobility/app/vnotes/hm;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/hm;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/ki;->setTag(Ljava/lang/Object;)V

    invoke-static {v3, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->K()V

    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->K()V

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->K()V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    return-object v0
.end method

.method private l(I)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->av:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->av:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aw:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aw:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic l(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->z()V

    return-void
.end method

.method private m(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p0, p1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p0, p1, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;II)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic m(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    return v0
.end method

.method private m()V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, -0x1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {v0, v2, p0}, Lcom/coremobility/app/vnotes/cq;->b(IILandroid/app/Activity;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    move-object v0, p0

    :goto_1
    iput v1, v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aL:I

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aL:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/coremobility/app/vnotes/hn;->a:Lcom/coremobility/app/vnotes/hn;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aL:I

    invoke-direct {p0, v0, v1, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;IZ)Z

    sget-object v0, Lcom/coremobility/app/vnotes/hn;->c:Lcom/coremobility/app/vnotes/hn;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    invoke-direct {p0, v0, v1, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;IZ)Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {v0, v2, p0}, Lcom/coremobility/app/vnotes/cq;->a(IILandroid/app/Activity;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {v0, v2}, Lcom/coremobility/app/vnotes/cq;->a(II)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->c(II)I

    move-result v1

    move-object v0, p0

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {v0, v2}, Lcom/coremobility/app/vnotes/cq;->b(II)I

    move-result v0

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    if-eqz v0, :cond_6

    move-object v0, p0

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->d(II)I

    move-result v1

    move-object v0, p0

    goto/16 :goto_1
.end method

.method static synthetic n(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    return-object v0
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->o()V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    if-nez v1, :cond_1

    const/4 v0, 0x5

    goto :goto_1
.end method

.method private n(I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private o()V
    .locals 3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->finish()V

    goto :goto_0
.end method

.method static synthetic o(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->L()V

    return-void
.end method

.method private p()V
    .locals 12

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x0

    :try_start_0
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Y:I

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->l(I)I

    move-result v3

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bw:Z

    if-eqz v0, :cond_0

    move v6, v9

    :goto_0
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "smvvm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x6

    const-string v2, "path = %s, filename = %s, audioFormat = %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->W:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v0, v2, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/integration/d/c;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->W:Ljava/lang/String;

    const/16 v5, 0xc8

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v7

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/cf;->a()Lcom/coremobility/integration/b;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v0 .. v8}, Lcom/coremobility/integration/d/c;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x6

    const-string v1, "filename = %s, audioFormat = %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->W:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/integration/d/c;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->W:Ljava/lang/String;

    const/16 v5, 0xc8

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v7

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->a()Lcom/coremobility/integration/b;

    move-result-object v8

    move-object v4, p0

    invoke-direct/range {v1 .. v8}, Lcom/coremobility/integration/d/c;-><init>(Ljava/lang/String;ILcom/coremobility/integration/i;IZILcom/coremobility/integration/b;)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in preparePlayer()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v11, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v10}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_1
.end method

.method static synthetic p(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->M()V

    return-void
.end method

.method private q()V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aE:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->an:Landroid/widget/TextView;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aE:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic q(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bv:Z

    return v0
.end method

.method private r()V
    .locals 3

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->am:Landroid/widget/TextView;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/coremobility/j/p;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic r(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->o()V

    return-void
.end method

.method static synthetic s(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    return-object v0
.end method

.method private s()V
    .locals 2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aD:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method static synthetic t(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    return-object v0
.end method

.method private t()V
    .locals 2

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cq;->f(Landroid/content/Context;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I:Z

    :cond_0
    return-void
.end method

.method static synthetic u(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f:Ljava/lang/String;

    return-object v0
.end method

.method private u()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/cf;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J()V

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->v()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in startPlayer()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    :goto_1
    new-instance v1, Lcom/coremobility/k/bo;

    invoke-direct {v1, v0}, Lcom/coremobility/k/bo;-><init>(Z)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    add-int/lit16 v2, v2, 0xc8

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aE:I

    if-le v2, v3, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->w()V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/coremobility/k/aj;

    invoke-direct {v2}, Lcom/coremobility/k/aj;-><init>()V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bw:Z

    if-eqz v2, :cond_5

    move v2, v1

    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->p()V

    :cond_4
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/coremobility/integration/d/c;->a(II)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v0, Lcom/coremobility/k/bo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/coremobility/k/bo;-><init>(Z)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v2

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v3, v2}, Lcom/coremobility/integration/d/c;->c(Z)V

    :cond_7
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private v()V
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Lcom/coremobility/k/ah;

    invoke-direct {v2}, Lcom/coremobility/k/ah;-><init>()V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :try_start_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/cf;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J()V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->p()V

    :cond_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bw:Z

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    add-int/lit16 v4, v4, 0xc8

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aE:I

    if-le v4, v5, :cond_2

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->w()V

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/cf;->D()Z

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v4, v3}, Lcom/coremobility/integration/d/c;->a(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/coremobility/integration/d/c;->a(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_2
    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(I)Z

    new-instance v1, Lcom/coremobility/k/bm;

    invoke-direct {v1, v0}, Lcom/coremobility/k/bm;-><init>(Z)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/cf;->W()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/coremobility/integration/d/c;->a(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception thrown in pausePlayer(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method static synthetic v(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->n()V

    return-void
.end method

.method private w()V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Lcom/coremobility/k/al;

    invoke-direct {v2}, Lcom/coremobility/k/al;-><init>()V

    invoke-static {v2}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2}, Lcom/coremobility/integration/d/c;->c()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    :cond_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->s()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(I)Z

    new-instance v1, Lcom/coremobility/k/bq;

    invoke-direct {v1, v0}, Lcom/coremobility/k/bq;-><init>(Z)V

    invoke-static {v1}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown in stopPlayer(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_0
.end method

.method private x()Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aZ:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aZ:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aZ:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bu:Lcom/coremobility/app/customui/k;

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/2addr v2, v4

    const/4 v4, 0x2

    const/16 v5, 0x1f4

    invoke-virtual {v3, v2, v4, v5}, Lcom/coremobility/app/customui/k;->a(III)V

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    invoke-direct {p0, v0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(ZI)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x6

    const-string v2, "goToNextUnheardMsg - No unheard messages left"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->F()V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bn:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->v()V

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private y()I
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->F:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ah:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ao:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v2

    sub-int v2, v3, v4

    if-gt v1, v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private z()V
    .locals 13

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/kb;->c()I

    move-result v5

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-wide v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    invoke-static {v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(Ljava/lang/String;)Z

    move-result v7

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->b()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->j()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v8

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->e(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_21

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_2
    :pswitch_0
    if-eqz v0, :cond_22

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_3
    if-eqz v7, :cond_3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->j()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_26

    const/4 v0, 0x1

    :goto_4
    packed-switch v5, :pswitch_data_1

    :cond_3
    :goto_5
    :pswitch_1
    return-void

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v3, 0x7f0c0109

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    goto :goto_2

    :pswitch_4
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    if-eqz v0, :cond_6

    const/16 v2, 0x8

    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v3, 0x7f0c0109

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_6

    :cond_7
    if-lez v8, :cond_8

    const/4 v2, 0x1

    :goto_7
    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    if-eqz v0, :cond_9

    const/16 v3, 0x8

    :goto_8
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v2, :cond_a

    const/4 v3, 0x0

    :goto_9
    invoke-virtual {v4, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    invoke-virtual {v3, v2}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v3, 0x7f0c010a

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    goto :goto_8

    :cond_a
    const/16 v3, 0x8

    goto :goto_9

    :pswitch_5
    iget-object v2, v6, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    if-eqz v2, :cond_b

    iget v2, v2, Lcom/coremobility/app/vnotes/ke;->c:I

    if-nez v2, :cond_b

    const/4 v2, 0x1

    :goto_a
    iget-wide v3, v6, Lcom/coremobility/app/vnotes/kd;->d:J

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v9

    sub-long/2addr v3, v9

    const-wide/16 v9, 0x0

    cmp-long v3, v3, v9

    if-gtz v3, :cond_c

    const/4 v3, 0x1

    :goto_b
    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v4, :cond_0

    if-eqz v2, :cond_10

    if-lez v8, :cond_d

    const/4 v2, 0x1

    :goto_c
    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    invoke-virtual {v4, v2}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v2, :cond_e

    const/4 v4, 0x0

    :goto_d
    invoke-virtual {v8, v4}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    if-eqz v1, :cond_f

    if-eqz v2, :cond_f

    if-nez v3, :cond_f

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v3, 0x7f0c010a

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const v3, 0x7f0c010d

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v9

    iget-wide v11, v6, Lcom/coremobility/app/vnotes/kd;->d:J

    invoke-static {p0, v9, v10, v11, v12}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_b
    const/4 v2, 0x0

    goto :goto_a

    :cond_c
    const/4 v3, 0x0

    goto :goto_b

    :cond_d
    const/4 v2, 0x0

    goto :goto_c

    :cond_e
    const/16 v4, 0x8

    goto :goto_d

    :cond_f
    const/16 v2, 0x8

    goto :goto_e

    :cond_10
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_6
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    if-eqz v0, :cond_12

    const/16 v2, 0x8

    :goto_f
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v3, 0x7f0c0109

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    if-nez v1, :cond_11

    if-eqz v0, :cond_13

    :cond_11
    const v2, 0x7f0c010f

    :goto_10
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_12
    const/4 v2, 0x0

    goto :goto_f

    :cond_13
    const v2, 0x7f0c0110

    goto :goto_10

    :pswitch_7
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->h()Z

    move-result v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_15

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    if-eqz v0, :cond_14

    const/16 v2, 0x8

    :goto_11
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v3, 0x7f0c010a

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const v3, 0x7f0c0113

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_14
    const/4 v2, 0x0

    goto :goto_11

    :cond_15
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    if-eqz v0, :cond_17

    const/16 v2, 0x8

    :goto_12
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v1, :cond_18

    const/4 v2, 0x0

    :goto_13
    invoke-virtual {v3, v2}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    if-eqz v1, :cond_19

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v3, 0x7f0c010a

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    if-nez v1, :cond_16

    if-eqz v0, :cond_1a

    :cond_16
    const v2, 0x7f0c0111

    :goto_15
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    :cond_17
    const/4 v2, 0x0

    goto :goto_12

    :cond_18
    const/16 v2, 0x8

    goto :goto_13

    :cond_19
    const/16 v2, 0x8

    goto :goto_14

    :cond_1a
    const v2, 0x7f0c0112

    goto :goto_15

    :pswitch_8
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v2, :cond_0

    iget-wide v2, v6, Lcom/coremobility/app/vnotes/kd;->d:J

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v9

    sub-long/2addr v2, v9

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    if-gtz v2, :cond_1b

    const/4 v2, 0x1

    move v4, v2

    :goto_16
    if-lez v8, :cond_1c

    const/4 v2, 0x1

    :goto_17
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    invoke-virtual {v3, v2}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    if-eqz v1, :cond_1d

    if-eqz v2, :cond_1d

    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v2, :cond_1e

    const/4 v3, 0x0

    :goto_19
    invoke-virtual {v8, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v8, 0x7f0c010a

    invoke-virtual {v3, v8}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    if-eqz v4, :cond_1f

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_1b
    const/4 v2, 0x0

    move v4, v2

    goto :goto_16

    :cond_1c
    const/4 v2, 0x0

    goto :goto_17

    :cond_1d
    const/16 v3, 0x8

    goto :goto_18

    :cond_1e
    const/16 v3, 0x8

    goto :goto_19

    :cond_1f
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    if-eqz v1, :cond_20

    if-eqz v2, :cond_20

    if-nez v4, :cond_20

    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const v3, 0x7f0c0115

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {}, Lcom/coremobility/g/m;->d()J

    move-result-wide v9

    iget-wide v11, v6, Lcom/coremobility/app/vnotes/kd;->d:J

    invoke-static {p0, v9, v10, v11, v12}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_20
    const/16 v2, 0x8

    goto :goto_1a

    :pswitch_9
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_21
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_22
    iget-wide v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_23

    const/4 v0, 0x1

    :goto_1b
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const-wide/32 v1, 0x8000

    iget-wide v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->H:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_24

    const/4 v1, 0x1

    :goto_1c
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->d(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    :goto_1d
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    :cond_23
    const/4 v0, 0x0

    goto :goto_1b

    :cond_24
    const/4 v1, 0x0

    goto :goto_1c

    :cond_25
    const/16 v0, 0x8

    goto :goto_1d

    :cond_26
    const/4 v0, 0x0

    goto/16 :goto_4

    :pswitch_a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    goto/16 :goto_5

    :pswitch_b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    goto/16 :goto_5

    :pswitch_c
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v2, 0x7f0c010a

    invoke-virtual {v1, v2}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {v1, v0}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    goto/16 :goto_5

    :cond_27
    const/16 v0, 0x8

    goto :goto_1e

    :pswitch_d
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->k()Z

    move-result v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v3, 0x7f0c010a

    invoke-virtual {v2, v3}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v1, :cond_28

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {v2, v0}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    goto/16 :goto_5

    :cond_28
    const/16 v0, 0x8

    goto :goto_1f

    :pswitch_e
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v1, 0x7f0c0109

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const v1, 0x7f0c010f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    goto/16 :goto_5

    :pswitch_f
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ar:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setText(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bB:Landroid/widget/TextView;

    const v1, 0x7f0c0111

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_SubscribeButton;->setVisibility(I)V

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bs:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    sget-object v0, Lcom/coremobility/app/vnotes/hn;->b:Lcom/coremobility/app/vnotes/hn;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/hn;)Lcom/coremobility/app/vnotes/ki;

    move-result-object v4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ki;

    if-lez v3, :cond_0

    if-eq v0, v4, :cond_2

    :cond_0
    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->y()I

    move-result v0

    iget-object v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v6, v2, v0}, Landroid/widget/ScrollView;->scrollTo(II)V

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Lcom/coremobility/app/vnotes/ki;)V

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bs:Z

    :cond_4
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bt:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Z)V

    :cond_5
    return-void
.end method

.method public final a(I)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnAudioPlayerError - ErrorType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->w()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file deleted by Outbox sent message ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c()V

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->w()V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c023c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public final a(II)V
    .locals 4

    const/4 v2, 0x0

    new-instance v0, Lcom/coremobility/k/ak;

    invoke-direct {v0, p1, p2}, Lcom/coremobility/k/ak;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    new-instance v0, Lcom/coremobility/k/bp;

    invoke-direct {v0}, Lcom/coremobility/k/bp;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void

    :pswitch_0
    iput p2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->s()V

    goto :goto_0

    :pswitch_1
    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bn:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->t()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->x()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->finish()V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(ILcom/coremobility/app/vnotes/cb;)V
    .locals 4

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSocialStatusUpdateError StatusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x67

    if-eq p1, v0, :cond_0

    const/16 v0, 0x66

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget v1, p2, Lcom/coremobility/app/vnotes/cb;->a:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    const-string v1, "post message is empty"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8c

    if-le v0, v1, :cond_1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d:I

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->e()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/app/Activity;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->n(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/coremobility/app/vnotes/bw;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(IJJLjava/lang/Object;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return v3

    :sswitch_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->A()V

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    int-to-long v0, v0

    cmp-long v0, p4, v0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    const-string v1, "Message was deleted while in Playback screen."

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->w()V

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->A()V

    goto :goto_0

    :sswitch_3
    sget-boolean v0, Lcom/coremobility/a/b;->b:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_0

    :cond_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    int-to-long v4, v0

    cmp-long v0, v4, p4

    if-nez v0, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/ka;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->l()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/ka;->q()Lcom/coremobility/l/an;

    move-result-object v0

    array-length v5, v4

    if-le v5, v2, :cond_3

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    iput-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->a(Lcom/coremobility/l/an;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_c

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->y()I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ScrollView;->scrollTo(II)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v1, v3, v0}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    :cond_6
    const v0, 0x7f0c00fa

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->z()V

    goto/16 :goto_0

    :cond_7
    check-cast p6, Lcom/coremobility/k/de;

    if-eqz p6, :cond_8

    invoke-virtual {p6}, Lcom/coremobility/k/de;->z()Lcom/coremobility/l/an;

    move-result-object v4

    :goto_4
    if-eqz p6, :cond_9

    invoke-virtual {p6}, Lcom/coremobility/k/de;->z()Lcom/coremobility/l/an;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->X:Lcom/coremobility/l/an;

    if-eqz p6, :cond_a

    invoke-virtual {p6}, Lcom/coremobility/k/de;->f()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    move-object v0, v4

    goto :goto_1

    :cond_8
    move-object v4, v1

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_5

    :cond_a
    const-string v0, ""

    goto :goto_6

    :cond_b
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Ljava/lang/String;)Z

    goto :goto_2

    :cond_c
    move v2, v3

    goto :goto_3

    :sswitch_4
    invoke-static {}, Lcom/coremobility/integration/d/h;->a()I

    move-result v0

    if-ne v0, v2, :cond_d

    move v0, v2

    :goto_7
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->i()Z

    move-result v1

    const-wide/16 v4, 0x1

    cmp-long v4, p2, v4

    if-eqz v4, :cond_10

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bw:Z

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    if-eqz v1, :cond_e

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bx:Z

    :goto_8
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bx:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    if-eqz v1, :cond_f

    const v1, 0x7f020043

    :goto_9
    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    invoke-virtual {v1, v2}, Lcom/coremobility/app/vnotes/cf;->c(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/d/c;->c(Z)V

    goto/16 :goto_0

    :cond_d
    move v0, v3

    goto :goto_7

    :cond_e
    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bx:Z

    goto :goto_8

    :cond_f
    const v1, 0x7f020044

    goto :goto_9

    :cond_10
    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bw:Z

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bx:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bx:Z

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/d/c;->c(Z)V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I()V

    goto/16 :goto_0

    :sswitch_6
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P()V

    goto/16 :goto_0

    :sswitch_7
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->j(Landroid/content/Context;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x73 -> :sswitch_0
        0x76 -> :sswitch_5
        0x78 -> :sswitch_3
        0x7a -> :sswitch_4
        0x7c -> :sswitch_0
        0x7d -> :sswitch_0
        0x7e -> :sswitch_0
        0x7f -> :sswitch_6
        0x80 -> :sswitch_7
    .end sparse-switch
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x6

    const-string v1, "dispatchTouchEventToHorizontalScrollView through"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    invoke-virtual {p0, v0, p1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final a_()V
    .locals 3

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSocialStatusOAuthSuccess StatusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/app/vnotes/he;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/he;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a_(I)V
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onScrollDone "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    if-eqz v0, :cond_0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->be:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->be:I

    if-le v0, v5, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(II)V

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aL:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aL:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/d/c;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/d/c;->b(Z)V

    :cond_2
    iput-boolean v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bs:Z

    goto :goto_0

    :pswitch_1
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    if-eqz v0, :cond_7

    iput v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iput v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    iput v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->be:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-le v0, v5, :cond_3

    invoke-direct {p0, v6, v5}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(II)V

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hm;

    :goto_1
    if-eqz v0, :cond_4

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/hm;->b(I)V

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/customui/CM_LinearLayout;->removeViewAt(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildCount()I

    move-result v4

    move v2, v3

    :goto_2
    if-ge v2, v4, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ge v2, v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hm;

    :goto_3
    if-eqz v0, :cond_5

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v0, v5}, Lcom/coremobility/app/vnotes/hm;->b(I)V

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {v0, v1, v6}, Lcom/coremobility/app/customui/CM_HorizontalScrollView;->scrollTo(II)V

    iput-boolean v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bs:Z

    :goto_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/d/c;->a(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v3}, Lcom/coremobility/integration/d/c;->b(Z)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    div-int/2addr v1, v2

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->be:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->be:I

    if-le v0, v5, :cond_8

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bf:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(II)V

    :cond_8
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aK:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h(I)V

    iput-boolean v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bs:Z

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_3

    :cond_a
    move-object v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPhoneStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b_(I)V
    .locals 5

    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSocialStatusUpdateDone StatusMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R()V

    if-eq p1, v3, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    if-ne p1, v3, :cond_3

    const/16 v0, 0x65

    :goto_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput v0, v1, Landroid/os/Message;->arg2:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    :cond_3
    const/16 v0, 0x64

    goto :goto_0
.end method

.method protected final c()V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Y:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->p()V

    :cond_0
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->u()V

    :cond_1
    return-void
.end method

.method public final c_(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v0, "Transcription view is null"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "sending transcriptio to Facebook wall"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    iput v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d:I

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/coremobility/app/vnotes/bw;->b(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d:I

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->n(I)V

    goto :goto_0

    :cond_2
    const-string v0, "Oops !!! :: Facebook status Transcription is empty"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    :try_start_0
    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final e()V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->w()V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->finish()V

    :cond_0
    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    return v0
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v1, 0x5

    const/4 v0, -0x1

    const/4 v4, 0x6

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-nez p2, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->removeDialog(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    const v0, 0x7f0c014a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    if-ne p2, v1, :cond_2

    const v0, 0x7f0c014b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    const v0, 0x7f0c014c

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    if-ne p2, v4, :cond_4

    const v0, 0x7f0c014d

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x7

    if-ne p2, v0, :cond_0

    const v0, 0x7f0c014e

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->e()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    new-instance v1, Lcom/coremobility/integration/h/c;

    invoke-direct {v1, v3}, Lcom/coremobility/integration/h/c;-><init>(B)V

    invoke-direct {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(ILcom/coremobility/integration/h/c;)Lcom/coremobility/app/vnotes/ka;

    move-result-object v2

    iget v0, v1, Lcom/coremobility/integration/h/c;->a:I

    if-nez v0, :cond_5

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->e()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/ka;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->T:Ljava/lang/String;

    :cond_5
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j()V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R:Ljava/lang/String;

    goto :goto_1

    :pswitch_4
    if-ne p2, v0, :cond_0

    const-string v0, "ACTIVITY_RESULT_FACEBOOK_OAUTH"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bw;->d()Lcom/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/a/a/e;->a(IILandroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_5
    if-ne p2, v0, :cond_8

    if-eqz p3, :cond_7

    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/bw;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    const/16 v2, 0x8b

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Exception in onActivityResult "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_8
    if-nez p2, :cond_0

    const-string v0, "Twitter login activity cancelled "

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "phone"

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v5, 0x7f0b009a

    if-ne v0, v5, :cond_2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "vnote_id"

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "vnote_dir"

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const v5, 0x7f0b0067

    if-ne v0, v5, :cond_5

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->v()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->u()V

    goto :goto_0

    :cond_5
    const v5, 0x7f0b002c

    if-ne v0, v5, :cond_a

    const-string v0, ""

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-eq v5, v6, :cond_6

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-eq v5, v4, :cond_6

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v4, v3, :cond_9

    :cond_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    :cond_7
    :goto_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v1, v2, :cond_8

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_8
    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :cond_9
    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v3, v2, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_a
    const v5, 0x7f0b002e

    if-ne v0, v5, :cond_d

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    if-eqz v0, :cond_b

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ae:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    if-eqz v0, :cond_c

    const v0, 0x7f020043

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/cf;->c(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aI:Z

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/d/c;->c(Z)V

    goto :goto_0

    :cond_b
    move v0, v2

    goto :goto_2

    :cond_c
    const v0, 0x7f020044

    goto :goto_3

    :cond_d
    const v5, 0x7f0b002f

    if-ne v0, v5, :cond_14

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v2, :cond_e

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_e
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P:Ljava/lang/String;

    const-string v1, "activate@vvm.sprint.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v0, v6, :cond_10

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->n()V

    goto/16 :goto_0

    :cond_10
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-eq v0, v4, :cond_11

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v0, v3, :cond_12

    :cond_11
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_0

    :cond_12
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    if-eqz v0, :cond_13

    move v0, v3

    :goto_4
    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_0

    :cond_13
    move v0, v4

    goto :goto_4

    :cond_14
    const v3, 0x7f0b002d

    if-ne v0, v3, :cond_16

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v2, :cond_15

    move v1, v2

    :cond_15
    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e(Z)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    goto/16 :goto_0

    :cond_16
    const v3, 0x7f0b0034

    if-ne v0, v3, :cond_17

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    goto/16 :goto_0

    :cond_17
    const v3, 0x7f0b0042

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bA:Lcom/coremobility/app/customui/CM_SubscribeButton;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_SubscribeButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0c0109

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v2

    :goto_5
    if-eqz v0, :cond_1a

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :cond_18
    :goto_6
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    goto/16 :goto_0

    :cond_19
    move v0, v1

    goto :goto_5

    :cond_1a
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ab()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_18

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_6
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bu:Lcom/coremobility/app/customui/k;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/k;->a()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bu:Lcom/coremobility/app/customui/k;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/k;->b()V

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->D()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->g(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->l()Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->C()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->finish()V

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bt:Z

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x6

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v1, v0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->L()V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->M()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0c0117

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0c0118

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_3
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v2}, Lcom/coremobility/app/vnotes/cq;->c(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v2, "send sms text message"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v1, :cond_4

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_4
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0, v2}, Lcom/coremobility/app/vnotes/cq;->d(Landroid/app/Activity;Ljava/lang/String;)Z

    const-string v2, "send email message with only transcription"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v1, :cond_5

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d()V

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v1, :cond_6

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_6
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "Oops !!! :: Post Twitter Transcription is empty"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v4, v2, v0}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v1, :cond_8

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_8
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aH:Ljava/lang/String;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->e(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    :cond_9
    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->z()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_Form;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aV:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->g(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->D()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->Z()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->V:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_5

    const-string v0, "autoplay"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    const-string v0, "vnoteid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    const-string v0, "vnotedir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const-string v0, "is_read"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I:Z

    const-string v0, "play_all_new"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    const-string v0, "state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    const-string v0, "single_view"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    const-string v0, "use_filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-nez v0, :cond_2

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "dir_id"

    aput-object v1, v0, v3

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-static {p0, v1, v2, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_0
    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/kb;->a(Lcom/coremobility/app/vnotes/kc;)V

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_4

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_4

    const v1, 0x20000006

    const-string v2, "VnotePlaybackActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_4
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    if-lez v0, :cond_6

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->l()Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(I)Z

    iput v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-direct {p0, v4, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(ZI)Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->E()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->C()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_1
    return-void

    :cond_5
    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->setResult(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->finish()V

    goto :goto_1
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10

    const/4 v4, 0x6

    const/4 v3, 0x5

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ax:Landroid/view/View;

    if-ne p2, v0, :cond_2

    const v0, 0x7f0c0036

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    const v0, 0x7f0c0022

    invoke-interface {p1, v6, v2, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b([I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v8, v0, Lcom/coremobility/integration/f/b;->d:J

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "data1"

    aput-object v3, v2, v7

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/email_v2\'"

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0c0021

    invoke-interface {p1, v6, v7, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->M:Ljava/lang/String;

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ay:Landroid/view/View;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v6

    :goto_1
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->T:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_3
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v7, :cond_4

    invoke-direct {p0, v6}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_4
    const v0, 0x7f0c0116

    invoke-interface {p1, v6, v3, v6, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f0c0275

    invoke-interface {p1, v0, v4, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x4

    const/16 v1, 0xa

    const v2, 0x7f0c0277

    invoke-interface {p1, v0, v1, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x9

    const v1, 0x7f0c0276

    invoke-interface {p1, v3, v0, v6, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/kb;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_6
    :pswitch_0
    move v0, v6

    :goto_2
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->T:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    :cond_7
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v7, :cond_8

    invoke-direct {p0, v6}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_8
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->h()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v0

    if-nez v0, :cond_c

    :cond_9
    const v0, 0x7f0c0279

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/16 v1, 0xb

    invoke-interface {p1, v4, v1, v6, v0}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_a
    move v0, v7

    goto/16 :goto_1

    :pswitch_1
    move v0, v7

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_4
    :pswitch_3
    move v0, v7

    goto :goto_2

    :pswitch_4
    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->a()Lcom/coremobility/app/vnotes/kd;

    move-result-object v0

    iget-object v0, v0, Lcom/coremobility/app/vnotes/kd;->f:Lcom/coremobility/app/vnotes/ke;

    if-eqz v0, :cond_b

    iget v0, v0, Lcom/coremobility/app/vnotes/ke;->c:I

    if-nez v0, :cond_b

    move v0, v7

    :goto_5
    if-eqz v0, :cond_6

    goto :goto_4

    :cond_b
    move v0, v6

    goto :goto_5

    :cond_c
    const v0, 0x7f0c0278

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_d
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->k()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    invoke-static {}, Lcom/coremobility/app/vnotes/kb;->f()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    const v0, 0x7f0c027b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_f
    const v0, 0x7f0c027a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 9

    const v2, 0x7f0c003c

    const v8, 0x7f0c00f3

    const v3, 0x7f0c00f2

    const v7, 0x1080027

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v1}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILcom/coremobility/app/vnotes/be;)Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c00df

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f070010

    new-instance v3, Lcom/coremobility/app/vnotes/hh;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/hh;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bv:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c0027

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :goto_1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v3, 0x7f0c0220

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const v3, 0x7f0c0221

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const v3, 0x7f0c0222

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const v4, 0x7f0c0220

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const v4, 0x7f0c0221

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_2
    new-instance v1, Lcom/coremobility/app/vnotes/hi;

    invoke-direct {v1, p0, v0}, Lcom/coremobility/app/vnotes/hi;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;[Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/coremobility/app/vnotes/hj;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/hj;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v2, v8, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/coremobility/app/vnotes/hk;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/hk;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f0c0026

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c020a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/hl;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/hl;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0241

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bC:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bC:Landroid/app/AlertDialog;

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0240

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c023e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c023f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0224

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    const v0, 0x7f0c00e8

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const v0, 0x7f0c00d8

    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0c003d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c005c

    new-instance v3, Lcom/coremobility/app/vnotes/gm;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/gm;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    const/4 v0, -0x1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    const v0, 0x7f0c00ca

    :cond_3
    :goto_3
    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    move-object v0, v1

    goto/16 :goto_0

    :cond_4
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    if-eqz v0, :cond_5

    const v0, 0x7f0c00d5

    goto :goto_3

    :cond_5
    const v0, 0x7f0c00d4

    goto :goto_3

    :cond_6
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c00c9

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00cb

    new-instance v3, Lcom/coremobility/app/vnotes/gn;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/gn;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c003d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00ea

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c005c

    new-instance v3, Lcom/coremobility/app/vnotes/go;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/go;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c023c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/gp;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gp;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/gq;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gq;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0243

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/gr;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gr;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c024e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0245

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0246

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_11
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c024e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0248

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_12
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c024e

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c024d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/coremobility/app/vnotes/gs;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/gs;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0298

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_14
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const v0, 0x7f0c0288

    :goto_4
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e:Landroid/app/ProgressDialog;

    const v2, 0x7f0c01e7

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e:Landroid/app/ProgressDialog;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/coremobility/app/vnotes/gt;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gt;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    :cond_7
    const v0, 0x7f0c0287

    goto :goto_4

    :pswitch_15
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0c0045

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f:Ljava/lang/String;

    invoke-static {v6}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const v3, 0x7f0c0046

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const v3, 0x7f0c0047

    invoke-virtual {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->g:[Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->g:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c0043

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/gv;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/gv;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v8}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/gu;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/gu;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    :pswitch_16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0048

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x7f0d

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c0049

    new-instance v3, Lcom/coremobility/app/vnotes/gx;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/gx;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_17
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00c6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00c7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c00c8

    new-instance v3, Lcom/coremobility/app/vnotes/gy;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/gy;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_18
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0049

    new-instance v2, Lcom/coremobility/app/vnotes/hb;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/hb;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/ha;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ha;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/gz;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gz;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_19
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c8

    new-instance v2, Lcom/coremobility/app/vnotes/hd;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/hd;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/hc;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/hc;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_d
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_11
        :pswitch_2
        :pswitch_13
        :pswitch_14
        :pswitch_a
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_12
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onDestroy()V

    const-string v0, "Calling Destory() in PlaybackForm ***"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j:Landroid/os/PowerManager$WakeLock;

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Q()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->w()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bu:Lcom/coremobility/app/customui/k;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/k;->a()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_LinearLayout;->removeAllViews()V

    const/4 v0, 0x0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-direct {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->a(ZI)Z

    invoke-static {}, Lcom/coremobility/integration/d/a;->a()Lcom/coremobility/integration/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/integration/d/a;->g()V

    invoke-static {}, Lcom/coremobility/integration/d/a;->h()V

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->b()Lcom/coremobility/app/vnotes/kb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/kb;->b(Lcom/coremobility/app/vnotes/kc;)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bz:Ljava/util/ArrayList;

    :cond_2
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aV:Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown in onDestroy(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/16 v4, 0xfa

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    cmpl-float v3, v2, v3

    if-lez v3, :cond_3

    move v1, v0

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bk:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bl:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_4

    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->t()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bk:I

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_5

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bl:I

    int-to-float v1, v1

    cmpl-float v1, v2, v1

    if-lez v1, :cond_5

    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->i(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->t()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->B()Z

    goto :goto_0
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 v4, 0x1f4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/coremobility/integration/app/CM_Form;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    sparse-switch p1, :sswitch_data_0

    move v0, v2

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->j(I)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v3, 0x42

    invoke-virtual {v2, v3}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->i(I)Z

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2}, Lcom/coremobility/integration/d/c;->a()I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->X()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v2}, Lcom/coremobility/integration/d/c;->a()I

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/cf;->Y()V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->t()V

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->setResult(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "autoplay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    const-string v1, "vnoteid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    const-string v1, "vnotedir"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const-string v1, "use_filter"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->w()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->A()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aZ:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aZ:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aZ:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cq;->g(Landroid/content/Context;II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c()V

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "voicemail://tweet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "oauth_verifier"

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/bw;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    goto :goto_0

    :pswitch_1
    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    if-nez v2, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    iget-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    invoke-static {p0, v0, v2, v3}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;IIZ)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->k()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->M()V

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v1, :cond_5

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_5
    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v1, :cond_6

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_6
    invoke-direct {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->e(Z)V

    goto :goto_0

    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/coremobility/app/vnotes/CM_VnoteRecipientsForm;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "vnote_id"

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "vnote_dir"

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->startActivity(Landroid/content/Intent;)V

    move v1, v0

    goto :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v2, v1, :cond_7

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_7
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->d(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    if-eqz v2, :cond_9

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_0

    :cond_8
    const-string v0, ""

    goto :goto_1

    :cond_9
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N()V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "playback menu subscribe"

    const-string v2, "subscribe to MRC"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->ab()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_0

    :pswitch_8
    const-string v0, "playback menu subscribe"

    const-string v2, "subscribe to free trial"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected final onPause()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onPause()V

    iput-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bu:Lcom/coremobility/app/customui/k;

    invoke-virtual {v0}, Lcom/coremobility/app/customui/k;->a()V

    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->c(Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Q()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v0, v4}, Lcom/coremobility/integration/d/c;->b(Z)V

    :cond_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->s()V

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CM_VnotesPlaybackFrom onPause() called "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/app/vnotes/bm;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->t()V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v0, v4, :cond_2

    invoke-direct {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->R()V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    invoke-static {p0}, Lcom/coremobility/app/vnotes/bw;->b(Lcom/coremobility/app/vnotes/cc;)V

    return-void
.end method

.method protected final onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    const v0, 0x7f0c00f2

    sparse-switch p1, :sswitch_data_0

    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILandroid/app/Dialog;)V

    :goto_0
    return-void

    :sswitch_0
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/gw;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gw;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :sswitch_1
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/hf;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/hf;-><init>(Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const v0, 0x7f0c0288

    :goto_1
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0287

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x68 -> :sswitch_0
        0x6b -> :sswitch_1
        0x6d -> :sswitch_1
    .end sparse-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->U:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->S:Ljava/lang/String;

    invoke-static {v3}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(Ljava/lang/String;)Z

    move-result v6

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-eq v3, v8, :cond_0

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-eq v3, v10, :cond_0

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v3, v9, :cond_12

    :cond_0
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    if-eqz v3, :cond_12

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "preference_send_fail_addr"

    const-string v5, "sendfailure@"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    const-string v5, "unknown@"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    move v3, v1

    :goto_1
    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_1
    move v4, v3

    move v3, v1

    :goto_2
    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-eq v5, v8, :cond_2

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v5, v9, :cond_b

    :cond_2
    iget-boolean v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->J:Z

    if-eqz v5, :cond_9

    const v5, 0x7f0c00dd

    :goto_3
    invoke-interface {p1, v2, v1, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v7, 0x7f020073

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    if-nez v4, :cond_3

    if-nez v0, :cond_3

    if-nez v3, :cond_3

    if-nez v6, :cond_3

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const v5, 0x7f0c0026

    invoke-interface {p1, v2, v8, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v7, 0x7f020077

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->az:I

    if-le v5, v1, :cond_3

    const v5, 0x7f0c0027

    invoke-interface {p1, v2, v9, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v7, 0x7f020078

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_3
    if-nez v0, :cond_4

    if-nez v6, :cond_4

    const/4 v5, 0x4

    const v7, 0x7f0c00df

    invoke-interface {p1, v2, v5, v2, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v7, 0x7f020072

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_4
    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-eq v5, v8, :cond_5

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v5, v9, :cond_6

    :cond_5
    if-nez v0, :cond_6

    if-nez v6, :cond_6

    invoke-static {}, Lcom/coremobility/app/vnotes/cq;->m()I

    move-result v5

    const v7, 0x7f0c00e0

    if-ne v5, v7, :cond_a

    const/16 v7, 0x8

    invoke-interface {p1, v2, v7, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v7, 0x7f020068

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_6
    :goto_4
    if-nez v0, :cond_7

    if-nez v4, :cond_7

    if-nez v3, :cond_7

    if-nez v6, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    if-nez v0, :cond_7

    const v0, 0x7f0c0032

    invoke-interface {p1, v2, v10, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f020059

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_7
    :goto_5
    return v1

    :cond_8
    move v0, v2

    goto/16 :goto_0

    :cond_9
    const v5, 0x7f0c00dc

    goto/16 :goto_3

    :cond_a
    const v7, 0x7f0c00e1

    if-ne v5, v7, :cond_6

    const/16 v7, 0x9

    invoke-interface {p1, v2, v7, v2, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const v7, 0x7f02005e

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    :cond_b
    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v5, v10, :cond_d

    if-nez v4, :cond_c

    if-nez v0, :cond_c

    if-nez v3, :cond_c

    if-nez v6, :cond_c

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->Z:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    const v3, 0x7f0c0026

    invoke-interface {p1, v2, v8, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020077

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->az:I

    if-le v3, v1, :cond_c

    const v3, 0x7f0c0027

    invoke-interface {p1, v2, v9, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020078

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_c
    if-nez v0, :cond_7

    if-nez v6, :cond_7

    const/4 v0, 0x4

    const v3, 0x7f0c00df

    invoke-interface {p1, v2, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f020072

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    :cond_d
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->az:I

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->P:Ljava/lang/String;

    const-string v3, "activate@vvm.sprint.com"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_6
    if-nez v0, :cond_e

    const/4 v3, 0x2

    const v4, 0x7f0c00de

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f02005b

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_e
    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->N:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v0

    if-nez v0, :cond_7

    const v0, 0x7f0c0032

    invoke-interface {p1, v2, v10, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x7f020059

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_5

    :cond_f
    move v0, v2

    goto :goto_6

    :cond_10
    move v4, v3

    move v3, v2

    goto/16 :goto_2

    :cond_11
    move v3, v2

    goto/16 :goto_1

    :cond_12
    move v3, v2

    move v4, v2

    goto/16 :goto_2
.end method

.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-eqz p3, :cond_0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput p2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->s()V

    :cond_0
    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    const-string v1, "vnoteid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    const-string v1, "vnotedir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    const-string v1, "vnotetype"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    const-string v1, "is_read"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I:Z

    const-string v1, "autoplay"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    const-string v1, "play_all_new"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    const-string v1, "state"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    const-string v1, "state_dis"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->i:I

    const-string v1, "orientation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->F:I

    const-string v1, "single_view"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    const-string v1, "ppos"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    const-string v1, "use_filter"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    :cond_0
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->f(I)Z

    :cond_1
    return-void
.end method

.method protected final onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->onResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->requestFocus()Z

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/app/vnotes/bm;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/bw;->a()Lcom/coremobility/app/vnotes/bw;

    invoke-static {p0}, Lcom/coremobility/app/vnotes/bw;->a(Lcom/coremobility/app/vnotes/cc;)V

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aT:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->showDialog(I)V

    :goto_0
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/cf;->Z()I

    move-result v0

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->V:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->V:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I()V

    :cond_0
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->j(Landroid/content/Context;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->U()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->d(Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G()V

    goto :goto_0
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "vnoteid"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aJ:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vnotedir"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aM:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "vnotetype"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aN:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "is_read"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->I:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "autoplay"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->G:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "play_all_new"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aB:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "state"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "state_dis"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->i:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "orientation"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->F:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "single_view"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->by:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "ppos"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "use_filter"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aQ:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final onStart()V
    .locals 1

    const/16 v0, 0x65

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_Form;->e(I)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aD:Z

    return-void
.end method

.method protected final onStop()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_Form;->i()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aD:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aC:I

    invoke-virtual {v0, v1}, Lcom/coremobility/integration/d/c;->a(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->r()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->s()V

    goto :goto_0
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 v8, 0x2

    const/4 v10, 0x3

    const/4 v9, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v4, v0, 0xff

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_1

    if-eq v4, v1, :cond_0

    if-ne v4, v10, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aq:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    if-nez v4, :cond_2

    iput v10, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v9, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    move v0, v2

    :cond_3
    :goto_1
    return v0

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    if-ne p1, v0, :cond_a

    if-nez v4, :cond_5

    iput v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bo:F

    iput v10, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :try_start_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aU:Landroid/view/GestureDetector;

    invoke-virtual {v1, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v9, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v9, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    if-ne v4, v8, :cond_9

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bo:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    if-ne v3, v10, :cond_7

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->br:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-gez v3, :cond_6

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->br:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_7

    :cond_6
    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    :cond_7
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bq:I

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-gez v1, :cond_8

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bq:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    :cond_8
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_9
    if-ne v4, v10, :cond_2

    move v0, v1

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    if-ne p1, v0, :cond_18

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bc:Z

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_1

    :cond_b
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    if-ne v0, v10, :cond_12

    :try_start_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aU:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_3
    if-nez v0, :cond_f

    if-eq v4, v1, :cond_c

    if-ne v4, v10, :cond_d

    :cond_c
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->B()Z

    move-result v0

    :cond_d
    iget v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    if-ne v6, v8, :cond_14

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v8

    neg-int v8, v8

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v7, v6}, Landroid/widget/SeekBar;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-ltz v3, :cond_e

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v5, v3

    if-ltz v3, :cond_e

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v3

    iget-object v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v3, v6

    int-to-float v3, v3

    cmpl-float v3, v5, v3

    if-lez v3, :cond_f

    :cond_e
    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aD:Z

    :cond_f
    :goto_4
    if-eq v4, v1, :cond_10

    if-eq v4, v10, :cond_10

    if-ne v4, v9, :cond_11

    :cond_10
    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bn:Z

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    :cond_11
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    if-eq v2, v10, :cond_3

    move v0, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v9, v0, v6}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto/16 :goto_3

    :cond_12
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_13

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-ltz v0, :cond_13

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v0

    iget-object v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v6}, Landroid/widget/SeekBar;->getRight()I

    move-result v6

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ag:Landroid/widget/SeekBar;

    invoke-virtual {v7}, Landroid/widget/SeekBar;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v0, v6

    int-to-float v0, v0

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_13

    iput v8, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    :cond_13
    move v0, v2

    goto/16 :goto_3

    :cond_14
    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    if-ne v3, v1, :cond_15

    :try_start_2
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getTop()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v3, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v5, v3}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v9, v3, v5}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_15
    if-ne v4, v8, :cond_f

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bD:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bn:Z

    if-nez v3, :cond_f

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->h:I

    if-ne v3, v1, :cond_f

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aY:Lcom/coremobility/app/customui/CM_HorizontalScrollView;

    invoke-virtual {v3}, Lcom/coremobility/app/customui/CM_HorizontalScrollView;->getScrollX()I

    move-result v3

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->ba:Lcom/coremobility/app/customui/CM_LinearLayout;

    invoke-virtual {v5}, Lcom/coremobility/app/customui/CM_LinearLayout;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    if-lez v3, :cond_f

    iget v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bi:I

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v6

    if-ge v3, v5, :cond_f

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bm:I

    add-int/2addr v5, v6

    if-gt v3, v5, :cond_16

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bd:I

    iget v6, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bm:I

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_f

    :cond_16
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    if-eqz v3, :cond_17

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aA:Lcom/coremobility/integration/d/c;

    invoke-virtual {v3, v2}, Lcom/coremobility/integration/d/c;->b(Z)V

    :cond_17
    invoke-direct {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->b(Z)V

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bn:Z

    goto/16 :goto_4

    :cond_18
    if-nez v4, :cond_1a

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->aX:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_19

    iput v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bo:F

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    :try_start_3
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_19
    :goto_5
    move v0, v1

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :cond_1a
    if-ne v4, v8, :cond_19

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    if-nez v0, :cond_19

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bo:F

    sub-float v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->br:I

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-gez v3, :cond_1b

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->br:I

    neg-int v3, v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1c

    :cond_1b
    iput v1, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    :cond_1c
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->bp:I

    if-ne v0, v1, :cond_19

    :try_start_4
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnotePlaybackForm;->as:Landroid/widget/ScrollView;

    invoke-virtual {v3, v0}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5
.end method
