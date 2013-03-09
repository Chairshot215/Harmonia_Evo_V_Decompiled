.class public final Lcom/coremobility/app/vnotes/CM_VnoteOutbox;
.super Lcom/coremobility/integration/app/CM_ListForm;

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/coremobility/k/dg;


# static fields
.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# instance fields
.field a:Lcom/coremobility/app/vnotes/bi;

.field private d:Lcom/coremobility/app/vnotes/gj;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "recipient_mdns"

    aput-object v1, v0, v4

    const-string v1, "recipient_emails"

    aput-object v1, v0, v5

    const-string v1, "sent_timestamp"

    aput-object v1, v0, v6

    const-string v1, "out_timestamp"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "sender_mdn"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sender_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->b:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "duration"

    aput-object v1, v0, v3

    const-string v1, "record_id"

    aput-object v1, v0, v4

    const-string v1, "file_type"

    aput-object v1, v0, v5

    const-string v1, "filename_only"

    aput-object v1, v0, v6

    const-string v1, "file_size"

    aput-object v1, v0, v7

    sput-object v0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_ListForm;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    const/4 v0, 0x0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->e:I

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_VnoteOutbox;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->e:I

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 3

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ","

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    if-eqz v0, :cond_0

    const-string v0, "requery started"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/gj;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/gj;->notifyDataSetChanged()V

    const-string v0, "requery ended"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a:Lcom/coremobility/app/vnotes/bi;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/gj;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 4

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v0, p1}, Lcom/coremobility/app/vnotes/gj;->getItemId(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->m(I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3, p0}, Lcom/coremobility/app/vnotes/cq;->a(IIZZLandroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public final a(IJJLjava/lang/Object;)Z
    .locals 5

    const-wide/16 v2, 0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    if-eqz p6, :cond_0

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NEW VNOTE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a()V

    goto :goto_0

    :sswitch_1
    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a()V

    goto :goto_0

    :sswitch_3
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a()V

    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x75 -> :sswitch_2
        0x76 -> :sswitch_3
    .end sparse-switch
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/coremobility/integration/app/CM_ListForm;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->showDialog(I)V

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a:Lcom/coremobility/app/vnotes/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a:Lcom/coremobility/app/vnotes/bi;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->b(I)V

    :cond_0
    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/gj;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    if-gez v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v0, -0x1

    if-eq v3, v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v0, v3}, Lcom/coremobility/app/vnotes/gj;->getItemId(I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->e:I

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->showDialog(I)V

    :cond_3
    move v0, v2

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v3}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a(I)V

    move v0, v2

    goto :goto_0

    :pswitch_3
    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;Landroid/app/Activity;)V

    move v0, v2

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v1, v3}, Lcom/coremobility/app/vnotes/gj;->getItemId(I)J

    invoke-static {v0, p0}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;Landroid/app/Activity;)Z

    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->setContentView(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setFocusable(Z)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/bi;

    invoke-direct {v1, p0, v0, v2}, Lcom/coremobility/app/vnotes/bi;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a:Lcom/coremobility/app/vnotes/bi;

    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 12

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v3, v0}, Lcom/coremobility/app/vnotes/gj;->getItemId(I)J

    move-result-wide v3

    iget-object v5, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v5, v0}, Lcom/coremobility/app/vnotes/gj;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_11

    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v7

    long-to-int v0, v3

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/content/Context;I)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ne v3, v6, :cond_10

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_10

    move v8, v6

    :goto_0
    if-lez v7, :cond_f

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v6, :cond_6

    move v3, v1

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move v7, v3

    move-object v3, v0

    :goto_2
    if-nez v7, :cond_e

    invoke-static {v3}, Lcom/coremobility/j/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "activate@vvm.sprint.com"

    invoke-virtual {v3, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    move v0, v6

    move v5, v6

    :goto_3
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v6

    :goto_4
    const/4 v9, 0x0

    invoke-static {v3, v9}, Lcom/coremobility/app/vnotes/cq;->a(Ljava/lang/String;[I)Lcom/coremobility/integration/f/b;

    move-result-object v9

    if-eqz v9, :cond_a

    :goto_5
    if-eqz v4, :cond_1

    const-string v9, "+1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v3}, Lcom/coremobility/app/vnotes/cq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-static {v2}, Lcom/coremobility/app/vnotes/cq;->i(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    const v2, 0x7f0c00db

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    :goto_6
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_9

    const v2, 0x7f0c0030

    :goto_7
    invoke-interface {p1, v7, v9, v10, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    if-eqz v4, :cond_2

    const/4 v2, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const v11, 0x7f0c0023

    invoke-virtual {p0, v11}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v2, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v7, 0x2

    const v8, 0x7f0c0029

    invoke-interface {p1, v2, v3, v7, v8}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    if-nez v6, :cond_4

    if-nez v5, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x3

    const v5, 0x7f0c0032

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_4
    :goto_8
    if-eqz v0, :cond_5

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->removeItem(I)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f0c0030

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_5
    :goto_9
    return-void

    :cond_6
    move v3, v6

    goto/16 :goto_1

    :cond_7
    if-nez v7, :cond_8

    :goto_a
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bad menuInfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_8
    const v2, 0x7f0c012f

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_a

    :cond_9
    const v2, 0x7f0c0024

    goto/16 :goto_7

    :cond_a
    move v6, v1

    goto/16 :goto_5

    :cond_b
    move v4, v1

    goto/16 :goto_4

    :cond_c
    move v0, v1

    move v5, v6

    goto/16 :goto_3

    :cond_d
    move v0, v1

    move v5, v1

    goto/16 :goto_3

    :cond_e
    move v0, v1

    move v4, v1

    move v5, v1

    move v6, v1

    goto/16 :goto_5

    :cond_f
    move v7, v1

    move-object v3, v2

    goto/16 :goto_2

    :cond_10
    move v8, v1

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto :goto_8
.end method

.method protected final onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    const v5, 0x7f0c00f2

    const v4, 0x7f0c005c

    const v3, 0x7f0c003c

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

    const v2, 0x7f0c023c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00d9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/gg;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gg;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteOutbox;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/gh;

    invoke-direct {v1, p0}, Lcom/coremobility/app/vnotes/gh;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteOutbox;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    :pswitch_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c003d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00d8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coremobility/app/vnotes/gi;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/gi;-><init>(Lcom/coremobility/app/vnotes/CM_VnoteOutbox;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c00f3

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0068

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->isFinishing()Z

    move-result v0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onDestroy()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/gj;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method protected final onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a(I)V

    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-static {}, Lcom/coremobility/integration/app/j;->a()Lcom/coremobility/integration/app/j;

    invoke-static {}, Lcom/coremobility/integration/app/j;->d()V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->d(Landroid/app/Activity;)V

    const/high16 v0, 0x10a

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->overridePendingTransition(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final onPause()V
    .locals 3

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onPause()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/gj;->getCount()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v0, 0x2

    const v1, 0x7f0c002c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020065

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f0c0028

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020070

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    return v3

    :cond_1
    invoke-static {p0, v3}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "vnote_id_to_delete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->e:I

    return-void
.end method

.method protected final onResume()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    if-nez v0, :cond_1

    const-string v0, "executing run query "

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v1}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/coremobility/integration/app/CM_VnotesContentProvider;->l:Landroid/net/Uri;

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->b:[Ljava/lang/String;

    const-string v3, "dir_id=1 AND is_deleted=0"

    const/4 v4, 0x0

    const-string v5, "out_timestamp DESC,_id DESC"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "run query completed"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/coremobility/app/vnotes/gj;

    const v2, 0x7f03003e

    invoke-direct {v1, p0, v2, v0, v6}, Lcom/coremobility/app/vnotes/gj;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {p0, v1}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/gj;->a()V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/gj;->getCount()I

    move-result v0

    :goto_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->a:Lcom/coremobility/app/vnotes/bi;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/gj;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->d:Lcom/coremobility/app/vnotes/gj;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/gj;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "vnote_id_to_delete"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteOutbox;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected final onStart()V
    .locals 1

    const/16 v0, 0x6a

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_ListForm;->b(I)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    return-void
.end method

.method protected final onStop()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->e()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    return-void
.end method
