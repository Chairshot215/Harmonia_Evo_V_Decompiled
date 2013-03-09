.class public Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;
.super Lcom/coremobility/integration/app/CM_ListForm;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/coremobility/integration/b/e;
.implements Lcom/coremobility/k/dg;


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field private static u:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;


# instance fields
.field a:Landroid/app/ProgressDialog;

.field b:Ljava/util/ArrayList;

.field c:Landroid/widget/ListView;

.field private f:I

.field private g:I

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/CheckBox;

.field private k:Z

.field private l:I

.field private m:Lcom/coremobility/app/vnotes/il;

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/database/Cursor;

.field private r:I

.field private s:Z

.field private t:Lcom/coremobility/app/vnotes/be;

.field private v:Landroid/os/Handler;

.field private w:Lcom/coremobility/app/vnotes/im;

.field private x:Lcom/coremobility/app/vnotes/bi;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->u:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->d:[Ljava/lang/String;

    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "recipient_mdns"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "recv_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "out_timestamp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sender_mdn"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "sender_email"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sender_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "previous_sender"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "recipient_emails"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "txt_summary"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "record_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "file_type"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "filename_only"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "file_size"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "file_order"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "transcribe_rate"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "mime_guid"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dir_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_ListForm;-><init>()V

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->n:I

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->o:I

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->p:I

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->q:Landroid/database/Cursor;

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->s:Z

    new-instance v0, Lcom/coremobility/app/vnotes/iy;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/iy;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->v:Landroid/os/Handler;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;I)I
    .locals 0

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->o:I

    return p1
.end method

.method public static a()Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;
    .locals 1

    sget-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->u:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    return-object v0
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)Lcom/coremobility/app/vnotes/im;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    return-object v0
.end method

.method private a(II)V
    .locals 2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    sget-object v0, Lcom/coremobility/integration/app/CM_App;->b:Lcom/coremobility/integration/app/e;

    invoke-virtual {v0}, Lcom/coremobility/integration/app/e;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->v:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->s:Z

    return p1
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    return v0
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;I)I
    .locals 0

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->p:I

    return p1
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    return v0
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;I)I
    .locals 0

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->n:I

    return p1
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->n:I

    return v0
.end method

.method private d()V
    .locals 7

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v6

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/k;->x:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->d:[Ljava/lang/String;

    const-string v3, "dir_id=5 AND is_deleted=0"

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v6, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coremobility/app/vnotes/im;

    const v1, 0x7f03002b

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/coremobility/app/vnotes/im;-><init>(Landroid/content/Context;ILcom/coremobility/app/vnotes/da;Z)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V
    .locals 3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d000b

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    invoke-static {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00cf

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic f(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->d()V

    return-void
.end method

.method private g()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->q:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->q:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->q:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    iput-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->q:Landroid/database/Cursor;

    :cond_1
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/k;->B:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->e:[Ljava/lang/String;

    const-string v3, "dir_id=5 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->q:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->q:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->q:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/im;->a(Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->b()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->c()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->x:Lcom/coremobility/app/vnotes/bi;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->f()V

    return-void
.end method

.method static synthetic g(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l()V

    return-void
.end method

.method private h()V
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    move-result-wide v9

    cmp-long v0, v7, v9

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v4, v1, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->f()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m()V

    :cond_3
    return-void
.end method

.method static synthetic h(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j()V

    return-void
.end method

.method private i()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v3}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic i(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->p()V

    return-void
.end method

.method static synthetic j(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->v:Landroid/os/Handler;

    return-object v0
.end method

.method private j()V
    .locals 5

    const/4 v4, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x96

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->i()I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->s:Z

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->v:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->showDialog(I)V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m()V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->f()V

    return-void
.end method

.method private m()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method private n()V
    .locals 7

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v1, :cond_0

    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v0

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    add-int/2addr v3, v0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->n:I

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    add-int/2addr v0, v4

    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/Integer;

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    iget v6, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    sub-int v6, v0, v6

    invoke-virtual {v5, v6}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private o()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->v:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->v:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->removeDialog(I)V

    :cond_1
    return-void
.end method

.method private p()V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->s:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->removeDialog(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->n()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "requerying Move form list started"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->d()V

    const-string v0, "requerying Move form list ended"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(IJJLjava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    move v0, v1

    :goto_1
    return v0

    :pswitch_0
    check-cast p6, Lcom/coremobility/integration/h/c;

    iget v2, p6, Lcom/coremobility/integration/h/c;->a:I

    if-nez v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    :cond_0
    iget-boolean v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->s:Z

    if-eqz v2, :cond_2

    iget v2, p6, Lcom/coremobility/integration/h/c;->a:I

    if-nez v2, :cond_2

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    if-ge v0, v2, :cond_1

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->showDialog(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->p()V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0d001f

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    add-int/lit8 v5, v5, 0x1

    iget v6, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_3
    iget v2, p6, Lcom/coremobility/integration/h/c;->a:I

    if-nez v2, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->v:Landroid/os/Handler;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->removeDialog(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->n()V

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/im;->a()Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v2, "requerying Move form list started"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->d()V

    const-string v2, "requerying Move form list ended"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v7, v2, v3}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget v2, p6, Lcom/coremobility/integration/h/c;->a:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_6

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->f:I

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->showDialog(I)V

    :goto_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h()V

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->s:Z

    goto/16 :goto_1

    :cond_6
    const/16 v2, 0x81

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->showDialog(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x8b
        :pswitch_0
    .end packed-switch
.end method

.method final b()V
    .locals 5

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->p:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->o:I

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->q:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/coremobility/app/vnotes/da;->a(ILandroid/database/Cursor;Lcom/coremobility/app/vnotes/ka;Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->o:I

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->p:I

    invoke-direct {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a(II)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->notifyDataSetChanged()V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->finish()V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onBackPressed()V

    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->overridePendingTransition(II)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    const-string v0, "dialog got canceled"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->v:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "onCancel query started"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->a()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    const-string v0, "onCancel query ended"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->x:Lcom/coremobility/app/vnotes/bi;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    const-string v0, ""

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v4}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v4, v1}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_2
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iput v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->n:I

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->onBackPressed()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->k()V

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l()V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->x:Lcom/coremobility/app/vnotes/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->x:Lcom/coremobility/app/vnotes/bi;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->b(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->u:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    new-instance v0, Lcom/coremobility/app/vnotes/be;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/be;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->t:Lcom/coremobility/app/vnotes/be;

    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->setContentView(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, "vnotedir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    const-string v0, "usefilter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->k:Z

    const-string v0, "movecount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    :goto_0
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h:Landroid/widget/Button;

    const v1, 0x7f0c0217

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->i:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->i:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v6

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coremobility/integration/app/k;->x:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->d:[Ljava/lang/String;

    const-string v3, "dir_id=5 AND is_deleted=0"

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6, v0}, Lcom/coremobility/app/vnotes/da;->a(Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    new-instance v0, Lcom/coremobility/app/vnotes/im;

    const v1, 0x7f03002b

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v7}, Lcom/coremobility/app/vnotes/im;-><init>(Landroid/content/Context;ILcom/coremobility/app/vnotes/da;Z)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->c:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m()V

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/bi;

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    invoke-direct {v1, p0, v0, v2}, Lcom/coremobility/app/vnotes/bi;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->x:Lcom/coremobility/app/vnotes/bi;

    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->j:Landroid/widget/CheckBox;

    return-void

    :cond_2
    const/4 v0, 0x6

    const-string v1, "Could not get extras bundle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const v5, 0x7f0c00f2

    const v4, 0x7f0c005d

    const v3, 0x7f0c004b

    const/4 v2, 0x0

    const v1, 0x1080027

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->t:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, p0, p1, v1}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILcom/coremobility/app/vnotes/be;)Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0218

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/iz;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/iz;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f3

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c021d

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/jc;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/jc;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005e

    new-instance v2, Lcom/coremobility/app/vnotes/jb;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/jb;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/ja;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/ja;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    const v1, 0x7f0c0219

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/coremobility/app/vnotes/jd;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/jd;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/coremobility/app/vnotes/je;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/je;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->isFinishing()Z

    move-result v0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onDestroy()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->o()V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->u:Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;

    :cond_1
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m:Lcom/coremobility/app/vnotes/il;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m:Lcom/coremobility/app/vnotes/il;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m:Lcom/coremobility/app/vnotes/il;

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/il;

    iget-object v1, v0, Lcom/coremobility/app/vnotes/il;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m:Lcom/coremobility/app/vnotes/il;

    return-void

    :cond_1
    iget-object v1, v0, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->f()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m:Lcom/coremobility/app/vnotes/il;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m:Lcom/coremobility/app/vnotes/il;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/il;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->m:Lcom/coremobility/app/vnotes/il;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 8

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onPause()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->o()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v2

    new-instance v3, Lcom/coremobility/integration/h/c;

    invoke-direct {v3, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v4, v0}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    invoke-static {v4, v5}, Lcom/coremobility/integration/app/j;->b(II)V

    iget v5, v3, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v5, :cond_0

    const/4 v5, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "VnoteResumeSend "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "failed with error:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v3, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->n()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    :cond_2
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->t:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, p1, p2}, Lcom/coremobility/app/vnotes/be;->a(ILandroid/app/Dialog;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->i()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    invoke-static {p0, p1, p2}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILandroid/app/Dialog;)V

    :goto_1
    return-void

    :pswitch_1
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0d0005

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->f:I

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0d0004

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_3
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0d0020

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_4
    check-cast p2, Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0d0021

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_5
    move-object v0, p2

    check-cast v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d001f

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->r:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "vnotedir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    const-string v0, "usefilter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->k:Z

    const-string v0, "movecount"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    const-string v0, "checkedlist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v7, 0x6

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onResume()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/16 v2, 0xf

    invoke-virtual {v0, p0, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    const-string v0, "populating list"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    if-nez v0, :cond_1

    new-instance v0, Lcom/coremobility/app/vnotes/im;

    const v2, 0x7f03002b

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->j()Lcom/coremobility/app/vnotes/da;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/coremobility/app/vnotes/im;-><init>(Landroid/content/Context;ILcom/coremobility/app/vnotes/da;Z)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->h()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/coremobility/integration/h/c;

    invoke-direct {v2, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/im;->getCount()I

    move-result v3

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_2

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    invoke-virtual {v4, v0}, Lcom/coremobility/app/vnotes/im;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    invoke-static {v4, v5}, Lcom/coremobility/integration/app/j;->a(II)V

    iget v5, v2, Lcom/coremobility/integration/h/c;->a:I

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VnoteSuspendSend "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "failed with error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Lcom/coremobility/integration/h/c;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v7, v4, v5}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->w:Lcom/coremobility/app/vnotes/im;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->q:Landroid/database/Cursor;

    invoke-virtual {v0, v2}, Lcom/coremobility/app/vnotes/im;->a(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->n()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "vnotedir"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "usefilter"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->k:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "movecount"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->n()V

    const-string v0, "checkedlist"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/coremobility/app/vnotes/CM_VnoteSavedMoveForm;->a(II)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/16 v0, 0x72

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_ListForm;->b(I)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->e()V

    return-void
.end method
