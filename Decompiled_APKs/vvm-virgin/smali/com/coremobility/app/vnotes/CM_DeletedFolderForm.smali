.class public Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;
.super Lcom/coremobility/integration/app/CM_ListForm;

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/coremobility/integration/b/e;
.implements Lcom/coremobility/k/dg;


# instance fields
.field a:Lcom/coremobility/app/vnotes/bi;

.field private b:I

.field private c:I

.field private d:Lcom/coremobility/app/vnotes/be;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/CursorAdapter;

.field private g:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/coremobility/integration/app/CM_ListForm;-><init>()V

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->b:I

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    return-void
.end method

.method private a()V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x6

    const/4 v6, 0x0

    const-string v3, "dir_id=6 AND _id=record_id AND file_type!=2 AND is_deleted!=2"

    const-string v5, "out_timestamp DESC,_id DESC"

    sget-object v2, Lcom/coremobility/app/vnotes/CM_VnoteInbox;->a:[Ljava/lang/String;

    sget-object v1, Lcom/coremobility/integration/app/k;->r:Landroid/net/Uri;

    const-string v0, "DeletedFolder: onResume query started"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v7, v0, v4}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "onResume query ended"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v7, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/coremobility/app/vnotes/fy;

    const v2, 0x7f03002a

    invoke-direct {v1, p0, v2, v0, v6}, Lcom/coremobility/app/vnotes/fy;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->setListAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a:Lcom/coremobility/app/vnotes/bi;

    invoke-virtual {v1, v0}, Lcom/coremobility/app/vnotes/bi;->a(I)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const v1, 0x7f0d0007

    invoke-static {p0, v1, v0}, Lcom/coremobility/app/vnotes/cf;->b(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c005b

    invoke-virtual {p0, v2}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x96

    if-lt v0, v1, :cond_0

    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->showDialog(I)V

    :cond_0
    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)V
    .locals 0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a()V

    return-void
.end method

.method static synthetic a(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a(I)V

    return-void
.end method

.method static synthetic b(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->b:I

    return v0
.end method

.method static synthetic c(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)I
    .locals 1

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->c:I

    return v0
.end method


# virtual methods
.method public final a(IJJLjava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->c(ILjava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x6

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a:Lcom/coremobility/app/vnotes/bi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a:Lcom/coremobility/app/vnotes/bi;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/coremobility/app/vnotes/bi;->b(I)V

    :cond_0
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v3

    :catch_0
    move-exception v0

    const/4 v0, 0x6

    const-string v1, "bad menuInfo"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->a(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->b:I

    invoke-virtual {p0, v4}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->showDialog(I)V

    goto :goto_0

    :pswitch_2
    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x96

    if-lt v1, v2, :cond_1

    const/16 v0, 0x8b

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->showDialog(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v0}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->c:I

    iget v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->c:I

    invoke-direct {p0, v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->setContentView(I)V

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->g:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->g:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->e:Landroid/widget/TextView;

    const v0, 0x7f0b0014

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/coremobility/app/vnotes/bi;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v0, v2}, Lcom/coremobility/app/vnotes/bi;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a:Lcom/coremobility/app/vnotes/bi;

    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    new-instance v0, Lcom/coremobility/app/vnotes/be;

    invoke-direct {v0, p0}, Lcom/coremobility/app/vnotes/be;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->d:Lcom/coremobility/app/vnotes/be;

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    :try_start_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-object v3, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "preference_send_fail_addr"

    const-string v6, "sendfailure@"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "unknown@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :goto_0
    if-eqz v2, :cond_1

    const v0, 0x7f0c000d

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f0c0039

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    const/4 v0, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const v4, 0x7f0c002a

    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :goto_2
    return-void

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    move v2, v1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const v0, 0x7f0c000e

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    goto :goto_2

    :cond_2
    :try_start_1
    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5

    const v4, 0x7f0c00f3

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lcom/coremobility/app/vnotes/a;->a()Lcom/coremobility/app/vnotes/a;

    move-result-object v0

    iget-object v1, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->d:Lcom/coremobility/app/vnotes/be;

    invoke-virtual {v0, p0, p1, v1}, Lcom/coremobility/app/vnotes/a;->a(Landroid/app/Activity;ILcom/coremobility/app/vnotes/be;)Landroid/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00c6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00c8

    new-instance v2, Lcom/coremobility/app/vnotes/au;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/au;-><init>(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c00c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00ca

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00cb

    new-instance v2, Lcom/coremobility/app/vnotes/av;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/av;-><init>(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c003e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00cc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c005f

    new-instance v2, Lcom/coremobility/app/vnotes/aw;

    invoke-direct {v2, p0}, Lcom/coremobility/app/vnotes/aw;-><init>(Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c00f2

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->isFinishing()Z

    move-result v0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onDestroy()V

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

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

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    if-ltz p3, :cond_0

    if-ge p3, v0, :cond_0

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/CursorAdapter;->getItemId(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Lcom/coremobility/app/vnotes/cq;->m(I)Z

    move-result v1

    sget-boolean v2, Lcom/coremobility/app/vnotes/cf;->d:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-static {v0, v3, v1, v2, p0}, Lcom/coremobility/app/vnotes/cq;->a(IIZZLandroid/app/Activity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v3, v1, v2, p0}, Lcom/coremobility/app/vnotes/cq;->a(IIZZLandroid/app/Activity;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/coremobility/integration/app/CM_ListForm;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->showDialog(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->k(Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/coremobility/app/vnotes/cq;->b(Landroid/content/Context;I)I

    move-result v0

    const/16 v1, 0x96

    if-lt v0, v1, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->showDialog(I)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/coremobility/app/vnotes/cq;->e(Landroid/app/Activity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    iget-object v0, p0, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->f:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0c0039

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020063

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f0c0038

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02005d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x3

    const v1, 0x7f0c002f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v3
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->onResume()V

    invoke-static {}, Lcom/coremobility/app/vnotes/cf;->p()Lcom/coremobility/app/vnotes/cf;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1}, Lcom/coremobility/app/vnotes/cf;->a(Landroid/app/Activity;I)V

    invoke-direct {p0}, Lcom/coremobility/app/vnotes/CM_DeletedFolderForm;->a()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    const/16 v0, 0x6e

    invoke-super {p0, v0}, Lcom/coremobility/integration/app/CM_ListForm;->b(I)V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->a(Lcom/coremobility/k/dg;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Lcom/coremobility/integration/app/CM_ListForm;->e()V

    invoke-static {p0}, Lcom/coremobility/app/vnotes/cf;->b(Lcom/coremobility/k/dg;)V

    return-void
.end method
