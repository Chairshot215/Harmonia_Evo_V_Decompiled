.class Lcom/android/htccontacts/BrowseContactsAllActivity2$13;
.super Ljava/lang/Object;
.source "BrowseContactsAllActivity2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;->displayImportExportDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

.field final synthetic val$adapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3216
    iput-object p1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$13;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    iput-object p2, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$13;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3218
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 3220
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$13;->val$adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3221
    .local v0, resId:I
    sparse-switch v0, :sswitch_data_0

    .line 3246
    const-string v1, "BrowseContactsAllActivity2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$13;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    invoke-virtual {v3}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3250
    :goto_0
    return-void

    .line 3227
    :sswitch_0
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$13;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->handleImportRequest(I)V
    invoke-static {v1, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7400(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)V

    goto :goto_0

    .line 3232
    :sswitch_1
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$13;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->handleExportRequest(I)V
    invoke-static {v1, v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7500(Lcom/android/htccontacts/BrowseContactsAllActivity2;I)V

    goto :goto_0

    .line 3238
    :sswitch_2
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$13;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->saveContactsPhoneToSIM()V
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7600(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    goto :goto_0

    .line 3242
    :sswitch_3
    iget-object v1, p0, Lcom/android/htccontacts/BrowseContactsAllActivity2$13;->this$0:Lcom/android/htccontacts/BrowseContactsAllActivity2;

    #calls: Lcom/android/htccontacts/BrowseContactsAllActivity2;->doShareVisibleContacts()V
    invoke-static {v1}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$7700(Lcom/android/htccontacts/BrowseContactsAllActivity2;)V

    goto :goto_0

    .line 3221
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0a028b -> :sswitch_0
        0x7f0a028c -> :sswitch_0
        0x7f0a028d -> :sswitch_0
        0x7f0a028e -> :sswitch_2
        0x7f0a028f -> :sswitch_2
        0x7f0a0290 -> :sswitch_2
        0x7f0a0291 -> :sswitch_0
        0x7f0a0292 -> :sswitch_0
        0x7f0a0293 -> :sswitch_1
        0x7f0a0294 -> :sswitch_1
        0x7f0a03ea -> :sswitch_3
    .end sparse-switch
.end method
