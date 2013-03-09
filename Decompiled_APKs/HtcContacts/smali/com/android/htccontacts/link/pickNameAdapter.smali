.class public Lcom/android/htccontacts/link/pickNameAdapter;
.super Landroid/widget/CursorAdapter;
.source "pickNameAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "pickNameAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "context"
    .parameter "c"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 37
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    .local v2, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    move-object v1, p1

    .line 44
    check-cast v1, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    .line 46
    .local v1, builderView:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const-string v6, "account_type"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, accountType:Ljava/lang/String;
    const/4 v3, 0x0

    .line 48
    .local v3, dataSet:Ljava/lang/String;
    const-string v6, "data_set"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 51
    .local v4, index:I
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {p2, v0, v3}, Lcom/android/htccontacts/util/LinkUtils;->getAccoutTypeLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, type:Ljava/lang/String;
    const-string v6, "display_name"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setListItem2Text(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 62
    new-instance v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;

    const-string v2, "name"

    invoke-direct {v1, v2}, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, cache:Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;
    new-instance v0, Lcom/android/htccontacts/widget/HtcListItemBuilder;

    iget-object v2, p0, Lcom/android/htccontacts/link/pickNameAdapter;->mContext:Landroid/content/Context;

    const/16 v3, 0x64

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/htccontacts/widget/HtcListItemBuilder;-><init>(Landroid/content/Context;III)V

    .line 64
    .local v0, builderViwe:Lcom/android/htccontacts/widget/HtcListItemBuilder;
    const/4 v2, 0x2

    iput v2, v1, Lcom/android/htccontacts/link/ContactLinkActivity$ListItemCache;->mType:I

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/HtcListItemBuilder;->setTag(Ljava/lang/Object;)V

    .line 66
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 72
    return-void
.end method
