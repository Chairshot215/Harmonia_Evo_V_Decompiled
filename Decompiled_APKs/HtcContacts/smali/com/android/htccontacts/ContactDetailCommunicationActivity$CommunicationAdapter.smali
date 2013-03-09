.class Lcom/android/htccontacts/ContactDetailCommunicationActivity$CommunicationAdapter;
.super Lcom/android/htccontacts/widget/LinearExpandableListAdapter;
.source "ContactDetailCommunicationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailCommunicationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommunicationAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/ContactDetailCommunicationActivity;Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;)V
    .locals 0
    .parameter
    .parameter "adapter"

    .prologue
    .line 1271
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailCommunicationActivity$CommunicationAdapter;->this$0:Lcom/android/htccontacts/ContactDetailCommunicationActivity;

    .line 1272
    invoke-direct {p0, p2}, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;-><init>(Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;)V

    .line 1274
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 1277
    iget-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getCount()I

    move-result v1

    .line 1278
    .local v1, count:I
    iget-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->getMaxShowingEntries()I

    move-result v0

    .line 1279
    .local v0, allowedCount:I
    if-le v1, v0, :cond_1

    .line 1280
    iget-object v2, p0, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;

    invoke-interface {v2}, Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;->isToggleViewAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1281
    add-int/lit8 v0, v0, 0x1

    .line 1286
    .end local v0           #allowedCount:I
    :cond_0
    :goto_0
    return v0

    .restart local v0       #allowedCount:I
    :cond_1
    move v0, v1

    goto :goto_0
.end method
