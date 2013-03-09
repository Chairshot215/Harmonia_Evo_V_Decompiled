.class Lcom/android/htccontacts/DeDuplicationActivity$1;
.super Ljava/lang/Object;
.source "DeDuplicationActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/DeDuplicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/DeDuplicationActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/DeDuplicationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/htccontacts/DeDuplicationActivity$1;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    iget-object v4, p0, Lcom/android/htccontacts/DeDuplicationActivity$1;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v4}, Lcom/android/htccontacts/DeDuplicationActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/widget/HtcListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v1, p3, v4

    .line 136
    .local v1, cur_pos:I
    if-gez v1, :cond_0

    .line 137
    iget-object v4, p0, Lcom/android/htccontacts/DeDuplicationActivity$1;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mHeaderView:Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;
    invoke-static {v4}, Lcom/android/htccontacts/DeDuplicationActivity;->access$000(Lcom/android/htccontacts/DeDuplicationActivity;)Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/widget/HeaderSelectedControlLayout;->onItemClick(Z)V

    .line 150
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/android/htccontacts/DeDuplicationActivity$1;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    #getter for: Lcom/android/htccontacts/DeDuplicationActivity;->mListItemDatas:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/htccontacts/DeDuplicationActivity;->access$100(Lcom/android/htccontacts/DeDuplicationActivity;)Ljava/util/ArrayList;

    move-result-object v4

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;

    .line 142
    .local v2, data:Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v3, intent:Landroid/content/Intent;
    const-string v4, "com.android.htccontacts"

    const-string v5, "com.android.htccontacts.link.widget.ShowContactInfoDialog"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, v2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->raw_contact_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 145
    .local v0, contactUri:Landroid/net/Uri;
    const-string v4, "data"

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 146
    const-string v4, "display_name"

    iget-object v5, v2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->primaryText:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v4, "photo_id"

    iget-wide v5, v2, Lcom/android/htccontacts/DeDuplicationActivity$ListItemData;->photo_id:J

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    iget-object v4, p0, Lcom/android/htccontacts/DeDuplicationActivity$1;->this$0:Lcom/android/htccontacts/DeDuplicationActivity;

    invoke-virtual {v4, v3}, Lcom/android/htccontacts/DeDuplicationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
