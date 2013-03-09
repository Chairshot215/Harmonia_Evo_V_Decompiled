.class public Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactPhoneMailSelectionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EntryAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 452
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    #getter for: Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->access$500(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    #getter for: Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->access$500(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    #getter for: Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->mEntryDataList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->access$500(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/AddressEntryDataItem;

    .line 465
    .local v0, data:Lcom/android/htccontacts/widget/AddressEntryDataItem;
    iget v1, v0, Lcom/android/htccontacts/widget/AddressEntryDataItem;->keyId:I

    int-to-long v1, v1

    return-wide v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;->this$0:Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity$EntryAdapter;->getCount()I

    move-result v1

    #calls: Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->genertateEntryView(ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
    invoke-static {v0, p1, p2, p3, v1}, Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;->access$600(Lcom/android/htccontacts/ContactPhoneMailSelectionListActivity;ILandroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
