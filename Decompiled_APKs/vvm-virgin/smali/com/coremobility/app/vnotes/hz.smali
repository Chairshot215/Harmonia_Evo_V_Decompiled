.class final Lcom/coremobility/app/vnotes/hz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;


# direct methods
.method constructor <init>(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)V
    .locals 0

    iput-object p1, p0, Lcom/coremobility/app/vnotes/hz;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v4

    const-string v2, ""

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremobility/app/vnotes/kg;

    iget-object v1, v1, Lcom/coremobility/app/vnotes/kg;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hz;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)Lcom/coremobility/app/customui/CM_RecipientEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/app/customui/CM_RecipientEditor;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/coremobility/app/vnotes/hz;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)Lcom/coremobility/app/customui/CM_RecipientEditor;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->append(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/coremobility/app/vnotes/hz;->a:Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;

    invoke-static {v0}, Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;->f(Lcom/coremobility/app/vnotes/CM_VnoteRecordForm;)Lcom/coremobility/app/customui/CM_RecipientEditor;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/coremobility/app/customui/CM_RecipientEditor;->append(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_3
    return-void

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method
