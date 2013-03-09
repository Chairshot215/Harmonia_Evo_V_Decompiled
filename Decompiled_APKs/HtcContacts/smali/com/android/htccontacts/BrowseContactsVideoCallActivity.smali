.class public Lcom/android/htccontacts/BrowseContactsVideoCallActivity;
.super Lcom/android/htccontacts/app/ContactsListActivity;
.source "BrowseContactsVideoCallActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BrowseContactsVideoCallActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/htccontacts/app/ContactsListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContactSelection()Ljava/lang/String;
    .locals 3

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->getContactSelection()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, whereClause:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0
.end method

.method protected getContentViewLayoutId()I
    .locals 1

    .prologue
    .line 67
    const v0, 0x7f030006

    return v0
.end method

.method protected handleFilterUIAndTitle()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected isIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method protected obtainAdapter(Landroid/database/Cursor;)Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 55
    new-instance v0, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;

    const v1, 0x2090020

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/htccontacts/app/ContactsListActivity$ContactsItemListAdapter;-><init>(Lcom/android/htccontacts/app/ContactsListActivity;Landroid/content/Context;ILandroid/database/Cursor;)V

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstance"

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/ContactsListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/htccontacts/BrowseContactsVideoCallActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsVideoCallActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 38
    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/BrowseContactsVideoCallActivity;->setGenericTitleBar(I)V

    .line 39
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/htccontacts/app/ContactsListActivity;->onResume()V

    .line 44
    return-void
.end method

.method protected setEmptyText()V
    .locals 2

    .prologue
    .line 61
    const v1, 0x7f07001c

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/BrowseContactsVideoCallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 62
    .local v0, emptyTextView:Landroid/widget/TextView;
    const v1, 0x7f0a037a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    return-void
.end method
