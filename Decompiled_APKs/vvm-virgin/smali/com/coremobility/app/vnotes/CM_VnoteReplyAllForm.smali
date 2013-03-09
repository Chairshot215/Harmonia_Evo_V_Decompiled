.class public Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;
.super Lcom/coremobility/integration/app/CM_ListForm;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Lcom/coremobility/app/vnotes/hs;

.field private b:Ljava/util/Vector;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_ListForm;-><init>()V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->a:Lcom/coremobility/app/vnotes/hs;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->b:Ljava/util/Vector;

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->a:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {v1}, Lcom/coremobility/app/vnotes/hs;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->b()V

    return-void
.end method

.method private b()V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->getListView()Landroid/widget/ListView;

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

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->f:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->f:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->f:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    const-string v1, ""

    move v2, v3

    :goto_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->a:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hs;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_0

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremobility/app/vnotes/hr;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hr;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "record_form_display_mode"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "reply_vnoteid"

    iget v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->e:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "reply_to_guid"

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->d:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "reply_to_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "auto_record"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->finish()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->g:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->finish()V

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c021f

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->setTitle(I)V

    const v0, 0x7f030049

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->setContentView(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "recip_addr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->c:Ljava/lang/String;

    const-string v0, "reply_vnoteid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->e:I

    const-string v0, "reply_to_guid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->d:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setFocusable(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->f:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0018

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->g:Landroid/widget/Button;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->a:Lcom/coremobility/app/vnotes/hs;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->c:Ljava/lang/String;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, ", "

    invoke-direct {v2, v0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->g(Ljava/lang/String;)Lcom/coremobility/app/vnotes/hr;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    const-string v1, "Could not get extras bundle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->b:Ljava/util/Vector;

    new-instance v0, Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->b:Ljava/util/Vector;

    const v3, 0x7f030046

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/coremobility/app/vnotes/hs;-><init>(Landroid/content/Context;Ljava/util/Vector;IZZ)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->a:Lcom/coremobility/app/vnotes/hs;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->a:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_3
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->b()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->a()V

    goto :goto_0

    :pswitch_1
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->a:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {v2}, Lcom/coremobility/app/vnotes/hs;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->b()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onPause()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->a:Lcom/coremobility/app/vnotes/hs;

    invoke-virtual {v0}, Lcom/coremobility/app/vnotes/hs;->getCount()I

    move-result v4

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v5

    move v2, v1

    move v0, v3

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    const v2, 0x7f0c0205

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :goto_1
    return v3

    :cond_2
    const v0, 0x7f0c0204

    invoke-interface {p1, v1, v3, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020067

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "recip_addr"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "reply_vnoteid"

    iget v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "reply_to_guid"

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_VnoteReplyAllForm;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

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
