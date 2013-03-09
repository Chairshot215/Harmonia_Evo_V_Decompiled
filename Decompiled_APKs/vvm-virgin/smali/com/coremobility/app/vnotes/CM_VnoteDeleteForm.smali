.class public Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;
.super Lcom/coremobility/integration/app/CM_ListForm;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field a:Ljava/util/ArrayList;

.field private b:I

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/CheckBox;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Lcom/coremobility/app/vnotes/fx;

.field private j:Lcom/coremobility/app/vnotes/be;

.field private k:Landroid/os/Handler;

.field private l:Landroid/widget/CursorAdapter;

.field private m:Lcom/coremobility/app/vnotes/bi;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_ListForm;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->h:I

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a:Ljava/util/ArrayList;

    new-instance v0, Lcom/coremobility/app/vnotes/de;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/de;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->k:Landroid/os/Handler;

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;I)I
    .locals 0

    iput p1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->b:I

    return p1
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)Landroid/widget/CursorAdapter;
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "requerying Delete form list started"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    const-string v0, "requerying Delete form list ended"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->m:Lcom/coremobility/app/vnotes/bi;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c()V

    return-void
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->h:I

    return v0
.end method

.method private b()V
    .locals 14

    const/4 v4, 0x0

    const/4 v13, 0x6

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->f:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a()Lcom/coremobility/app/vnotes/CM_VnoteInbox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v5, "out_timestamp DESC,_id DESC"

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    move-object v3, v0

    :goto_1
    const-string v0, "onResume query started"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v13, v0, v6}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "onResume query ended"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v13, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    if-ne v1, v12, :cond_1

    new-instance v1, Lcom/coremobility/app/vnotes/gj;

    const v2, 0x7f03003f

    invoke-direct {v1, p0, v2, v0, v12}, Lcom/coremobility/app/vnotes/gj;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    :goto_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->m:Lcom/coremobility/app/vnotes/bi;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c()V

    return-void

    :cond_0
    const-string v0, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0"

    goto :goto_0

    :pswitch_0
    const-string v10, "dir_id=1 AND is_deleted=0"

    const-string v9, "out_timestamp DESC,_id DESC"

    sget-object v8, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->b:[Ljava/lang/String;

    sget-object v7, Lcom/coremobility/integration/app/k;->l:Landroid/net/Uri;

    const/4 v6, -0x1

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "recipient_emails"

    aput-object v0, v2, v11

    const-string v0, "_id"

    aput-object v0, v2, v12

    new-instance v3, Ljava/lang/String;

    const-string v0, "dir_id=1 AND recipient_emails=\"activate@vvm.sprint.com\" AND is_deleted=0"

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v0, "getProvisionMessageId query started"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v13, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/integration/app/k;->l:Landroid/net/Uri;

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "getProvisionMessageId query ended"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {v13, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_4
    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->h:I

    move-object v1, v7

    move-object v2, v8

    move-object v5, v9

    move-object v3, v10

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/coremobility/app/vnotes/fy;

    const v2, 0x7f03002b

    invoke-direct {v1, p0, v2, v0, v12}, Lcom/coremobility/app/vnotes/fy;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_3

    :cond_3
    move v0, v6

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private c()V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {v3, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->e:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->e:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->k()V

    return-void
.end method

.method static synthetic d(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    return v0
.end method

.method private d()V
    .locals 11

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v6

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_2

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v7, v0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->getItemId(I)J

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
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c()V

    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)I
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->f()I

    move-result v0

    return v0
.end method

.method private f()I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    move v1, v0

    :goto_0
    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v3

    long-to-int v3, v3

    iget v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->h:I

    if-eq v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static synthetic f(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a()V

    return-void
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput v4, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->k:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->showDialog(I)V

    return-void
.end method

.method static synthetic g(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->h()V

    return-void
.end method

.method private h()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c()V

    return-void
.end method

.method static synthetic h(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->d()V

    return-void
.end method

.method private i()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

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

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method static synthetic i(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g()V

    return-void
.end method

.method private j()V
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x6

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    if-ne v0, v9, :cond_1

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->showDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    if-ne v0, v9, :cond_6

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_4

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, 0x10

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    move v0, v3

    :goto_2
    if-eqz v0, :cond_4

    move v2, v3

    :cond_2
    if-eqz v2, :cond_5

    invoke-virtual {p0, v9}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->showDialog(I)V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g()V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    if-ne v0, v3, :cond_0

    invoke-virtual {p0, v10}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->showDialog(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->j()V

    return-void
.end method

.method private k()V
    .locals 9

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-nez v2, :cond_0

    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a:Ljava/util/ArrayList;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v7, v1}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v5, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private l()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->removeDialog(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onBackPressed()V

    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->overridePendingTransition(II)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v0, 0x6

    const-string v1, "dialog got canceled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->k:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->j()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->d:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->onBackPressed()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->e:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v2, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->h:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->showDialog(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c()V

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->h()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->m:Lcom/coremobility/app/vnotes/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->m:Lcom/coremobility/app/vnotes/bi;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->b(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->setContentView(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "vnotedir"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    const-string v0, "usefilter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->f:Z

    :goto_0
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i()V

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/bi;

    iget v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    invoke-direct {v1, p0, v0, v2}, Lcom/coremobility/app/vnotes/bi;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->m:Lcom/coremobility/app/vnotes/bi;

    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->e:Landroid/widget/CheckBox;

    new-instance v0, Lcom/coremobility/app/vnotes/be;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/be;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->j:Lcom/coremobility/app/vnotes/be;

    return-void

    :cond_1
    const/4 v0, 0x6

    const-string v1, "Could not get extras bundle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const v5, 0x7f0c005c

    const v2, 0x7f0c003d

    const/4 v4, 0x0

    const v3, 0x7f0c00f3

    const v1, 0x1080027

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->j:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, p0, p1, v1}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILcom/coremobility/app/vnotes/be;)Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/dk;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dk;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/dl;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dl;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/dm;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dm;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/dn;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dn;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/do;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/do;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c003c

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c020a

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f2

    new-instance v2, Lcom/coremobility/app/vnotes/dp;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/dp;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/dq;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dq;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0049

    new-instance v2, Lcom/coremobility/app/vnotes/dr;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/dr;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c8

    new-instance v2, Lcom/coremobility/app/vnotes/df;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/df;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0048

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0049

    new-instance v2, Lcom/coremobility/app/vnotes/dg;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/dg;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c8

    new-instance v2, Lcom/coremobility/app/vnotes/di;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/di;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/dh;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dh;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0213

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    new-instance v1, Lcom/coremobility/app/vnotes/dj;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/dj;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->isFinishing()Z

    move-result v0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onDestroy()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i:Lcom/coremobility/app/vnotes/fx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i:Lcom/coremobility/app/vnotes/fx;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i:Lcom/coremobility/app/vnotes/fx;

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/fx;

    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_1
    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i:Lcom/coremobility/app/vnotes/fx;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    long-to-int v0, p4

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->h:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/widget/ListView;->setItemChecked(IZ)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->showDialog(I)V

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->c()V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i:Lcom/coremobility/app/vnotes/fx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i:Lcom/coremobility/app/vnotes/fx;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->i:Lcom/coremobility/app/vnotes/fx;

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

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l()V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    new-instance v3, Lcom/coremobility/integration/h/c;

    invoke-direct {v3, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

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
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->k()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    :cond_2
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    const/high16 v1, 0x7f0d

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->b()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->d()V

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->f()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0d0012

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0d0013

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0d0014

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0c00ee

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_5
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0d0015

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_6
    check-cast p2, Landroid/app/AlertDialog;

    const v1, 0x7f0d0016

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_7
    check-cast p2, Landroid/app/AlertDialog;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    :goto_1
    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_8
    check-cast p2, Landroid/app/AlertDialog;

    const v0, 0x7f0d0001

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->b:I

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_9
    check-cast p2, Landroid/app/ProgressDialog;

    const v0, 0x7f0c0208

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_8
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

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    const-string v0, "usefilter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->f:Z

    const-string v0, "checkedlist"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a:Ljava/util/ArrayList;

    return-void
.end method

.method protected onResume()V
    .locals 8

    const/4 v3, 0x1

    const/4 v7, 0x6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    const-string v0, "populating list"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v7, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->b()V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->d()V

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/coremobility/integration/h/c;

    invoke-direct {v2, v1}, Lcom/coremobility/integration/h/c;-><init>(B)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->l:Landroid/widget/CursorAdapter;

    invoke-virtual {v4, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    iget v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

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

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-static {p0, v7}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->j:Lcom/coremobility/app/vnotes/be;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/be;->a(I)V

    :cond_2
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->k()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "vnotedir"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "usefilter"

    iget-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->f:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->k()V

    const-string v0, "checkedlist"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteDeleteForm;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/16 v0, 0x68

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_ListForm;->b(I)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->e()V

    return-void
.end method
