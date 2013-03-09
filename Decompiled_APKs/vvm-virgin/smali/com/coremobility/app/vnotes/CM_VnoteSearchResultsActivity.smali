.class public Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;
.super Lcom/coremobility/integration/app/CM_ListForm;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/coremobility/app/vnotes/at;
.implements Lcom/coremobility/k/dg;


# instance fields
.field private a:Lcom/coremobility/app/vnotes/fy;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Lcom/coremobility/app/vnotes/fx;

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_ListForm;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->d:I

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->d:I

    return v0
.end method

.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x6

    const/4 v7, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "searchInbox searching for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v0, "-+"

    invoke-static {v2, v0}, Lcom/coremobility/j/r;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->Q()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(sender_mdn LIKE \'%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OR "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(LOWER(txt_summary) LIKE \'%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OR "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(LOWER(sender_name) LIKE \'%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dir_id=3 AND _id=record_id AND file_type!=2 AND is_deleted=0 AND ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->r:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    const-string v5, "out_timestamp DESC,_id DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchInbox found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " matches."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v8, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(sender_mdn LIKE \'%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OR "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_4
    invoke-static {v2}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(LOWER(sender_email) LIKE \'%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%\')"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OR "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/bl;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bl;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(_id IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/bl;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ") )"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OR "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private a(IZ)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/fy;->getItemId(I)J

    move-result-wide v0

    long-to-int v0, v0

    if-nez p2, :cond_1

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->m(I)Z

    move-result v2

    :goto_1
    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/coremobility/app/vnotes/cq;->a(IIZZZLandroid/app/Activity;)V

    goto :goto_0

    :cond_1
    move v2, p2

    goto :goto_1
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6

    const/4 v0, -0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->m(I)Z

    move-result v2

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->h:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/coremobility/app/vnotes/cq;->a(IIZZZLandroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->l:Landroid/net/Uri;

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/fy;->changeCursor(Landroid/database/Cursor;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->b()V

    goto :goto_0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const v1, 0x7f0c0155

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->c:Ljava/lang/String;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0c0156

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;)V
    .locals 1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->b()V

    return-void
.end method

.method public final a(IJJLjava/lang/Object;)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->b()V

    :pswitch_1
    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->f:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x75
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 13

    const-wide/16 v11, 0x0

    const/4 v10, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v1, v2

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const/4 v0, 0x6

    const-string v1, "bad menuInfo"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :pswitch_1
    const/4 v0, -0x1

    if-eq v3, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/fy;->getItemId(I)J

    move-result-wide v4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v6, v3

    const-wide/16 v8, 0x10

    and-long/2addr v6, v8

    cmp-long v0, v6, v11

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    int-to-long v6, v3

    const-wide/16 v8, 0x2

    and-long/2addr v6, v8

    cmp-long v3, v6, v11

    if-nez v3, :cond_1

    move v2, v1

    :cond_1
    if-eqz v0, :cond_3

    long-to-int v0, v4

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->d:I

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->showDialog(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    long-to-int v0, v4

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->d:I

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->showDialog(I)V

    goto :goto_0

    :cond_4
    long-to-int v0, v4

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->d:I

    invoke-virtual {p0, v10}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v10, :cond_5

    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(IZ)V

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v2, v3}, Lcom/coremobility/app/vnotes/fy;->getItemId(I)J

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;ZLandroid/app/Activity;)Z

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->G()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->showDialog(I)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c0074

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0b0076

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Lcom/coremobility/app/vnotes/fy;

    const v1, 0x7f03002a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/coremobility/app/vnotes/fy;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0, p0}, Lcom/coremobility/app/vnotes/fy;->a(Lcom/coremobility/app/vnotes/at;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->h:I

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 14

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object/from16 v0, p3

    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v9, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v9, v1}, Lcom/coremobility/app/vnotes/fy;->getItemId(I)J

    move-result-wide v9

    long-to-int v9, v9

    iget-object v10, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v10, v1}, Lcom/coremobility/app/vnotes/fy;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v6, 0x1

    :cond_1
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v8, 0x1

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v11, "preference_send_fail_addr"

    const-string v12, "sendfailure@"

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "unknown@"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v4, 0x1

    :cond_3
    :goto_0
    invoke-static {p0, v9}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v1, v9}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v1

    if-nez v1, :cond_4

    const/4 v5, 0x1

    :cond_4
    if-eqz v6, :cond_6

    const-string v1, "+1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_6
    if-eqz v4, :cond_b

    const v1, 0x7f0c000d

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v5, :cond_d

    const/4 v5, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v1, 0x1

    const v11, 0x7f0c0030

    invoke-interface {p1, v5, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_2
    if-eqz v7, :cond_e

    if-nez v4, :cond_e

    if-nez v3, :cond_e

    const/4 v5, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x1

    const/4 v1, 0x2

    const v11, 0x7f0c0031

    invoke-virtual {p0, v11}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v5, v9, v10, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_7
    :goto_3
    const/4 v2, 0x0

    const/16 v5, 0x9

    add-int/lit8 v9, v1, 0x1

    const v10, 0x7f0c0029

    invoke-interface {p1, v2, v5, v1, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    if-nez v8, :cond_9

    if-nez v4, :cond_9

    if-nez v3, :cond_9

    if-nez v7, :cond_8

    if-eqz v6, :cond_9

    :cond_8
    const/4 v1, 0x0

    const/4 v2, 0x6

    const v3, 0x7f0c0032

    invoke-interface {p1, v1, v2, v9, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_9
    return-void

    :cond_a
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    goto/16 :goto_0

    :cond_b
    if-eqz v3, :cond_c

    const v1, 0x7f0c000e

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bad menuInfo"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v9, v1, v10}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_c
    :try_start_2
    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_d
    const/4 v5, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v1, 0x1

    const v11, 0x7f0c0024

    invoke-interface {p1, v5, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    :cond_e
    if-eqz v6, :cond_7

    if-nez v4, :cond_7

    const/4 v5, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x1

    const/4 v1, 0x2

    new-instance v11, Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f0c0023

    invoke-virtual {p0, v13}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v5, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const v5, 0x7f0c00f2

    const v3, 0x7f0c003d

    const v4, 0x7f0c00f3

    const v2, 0x1080027

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00e8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/jf;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/jf;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00ec

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/jg;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/jg;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00ea

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/jh;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/jh;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0073

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c006d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0060

    new-instance v3, Lcom/coremobility/app/vnotes/ji;

    invoke-direct {v3, p0}, Lcom/coremobility/app/vnotes/ji;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->isFinishing()Z

    move-result v0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onDestroy()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a:Lcom/coremobility/app/vnotes/fy;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/fy;->getCursor()Landroid/database/Cursor;

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

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->g:Lcom/coremobility/app/vnotes/fx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->g:Lcom/coremobility/app/vnotes/fx;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->g:Lcom/coremobility/app/vnotes/fx;

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

    :goto_0
    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->g:Lcom/coremobility/app/vnotes/fx;

    return-void

    :cond_1
    iget-object v1, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(IZ)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->g:Lcom/coremobility/app/vnotes/fx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->g:Lcom/coremobility/app/vnotes/fx;

    iget-object v0, v0, Lcom/coremobility/app/vnotes/fx;->a:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->g:Lcom/coremobility/app/vnotes/fx;

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_1
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/app/Activity;II)V

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->j(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->k(Landroid/app/Activity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->e:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onResume()V

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->e:Z

    iget-boolean v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->f:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->f:Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteSearchResultsActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
