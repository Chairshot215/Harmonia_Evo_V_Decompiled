.class public Lcom/android/htccontacts/widget/RosieLinearExpandableListAdapter;
.super Lcom/android/htccontacts/widget/LinearExpandableListAdapter;
.source "RosieLinearExpandableListAdapter.java"


# instance fields
.field protected mSeparaterType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;Ljava/lang/String;)V
    .locals 0
    .parameter "adapter"
    .parameter "separaterType"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;-><init>(Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;)V

    .line 39
    iput-object p2, p0, Lcom/android/htccontacts/widget/RosieLinearExpandableListAdapter;->mSeparaterType:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/widget/LinearExpandableListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    iget-object v2, p0, Lcom/android/htccontacts/widget/RosieLinearExpandableListAdapter;->mSeparaterType:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    :cond_0
    return-object v0
.end method
