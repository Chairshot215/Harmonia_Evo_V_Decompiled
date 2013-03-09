.class Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$1;
.super Ljava/lang/Object;
.source "MakecallSelectPeopleActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;


# direct methods
.method constructor <init>(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2108
    iput-object p1, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$1;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "v"
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
    .line 2111
    .local p1, a:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    if-ltz p3, :cond_4

    move-object v4, p2

    .line 2113
    check-cast v4, Landroid/view/ViewGroup;

    .line 2115
    .local v4, vg:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 2117
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b0036

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/htcdialer/carhome/SubButton;

    .line 2118
    .local v2, lContactImage:Lcom/android/htcdialer/carhome/SubButton;
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b0037

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/htcdialer/carhome/SubButton;

    .line 2121
    .local v3, lPhotoBtn:Lcom/android/htcdialer/carhome/SubButton;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/htcdialer/carhome/SubButton;->isTouched()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/htcdialer/carhome/SubButton;->isTouched()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2124
    :cond_1
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_3

    .line 2115
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2127
    :cond_3
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;

    iget v5, v6, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$tagInfo;->index_:I

    .line 2128
    .local v5, which_item:I
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$1;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    #getter for: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->mAdapter:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;
    invoke-static {v6}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->access$3500(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;

    move-result-object v6

    invoke-virtual {v6, p3, v5}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$MyAdapter;->getContact(II)Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;

    move-result-object v0

    .line 2130
    .local v0, contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    if-nez v0, :cond_5

    .line 2147
    .end local v0           #contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .end local v1           #i:I
    .end local v2           #lContactImage:Lcom/android/htcdialer/carhome/SubButton;
    .end local v3           #lPhotoBtn:Lcom/android/htcdialer/carhome/SubButton;
    .end local v4           #vg:Landroid/view/ViewGroup;
    .end local v5           #which_item:I
    :cond_4
    return-void

    .line 2133
    .restart local v0       #contact:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;
    .restart local v1       #i:I
    .restart local v2       #lContactImage:Lcom/android/htcdialer/carhome/SubButton;
    .restart local v3       #lPhotoBtn:Lcom/android/htcdialer/carhome/SubButton;
    .restart local v4       #vg:Landroid/view/ViewGroup;
    .restart local v5       #which_item:I
    :cond_5
    iget-boolean v6, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->bIsTouch:Z

    if-eqz v6, :cond_4

    .line 2136
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/htcdialer/carhome/SubButton;->isTouched()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/htcdialer/carhome/SubButton;->isTouched()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2141
    :cond_7
    iget-object v6, p0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView$1;->this$1:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;

    iget-object v6, v6, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$MyListView;->this$0:Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;

    iget-object v7, v0, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;->action:Ljava/lang/String;

    #calls: Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->launchDefaultAction(Ljava/lang/String;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V
    invoke-static {v6, v7, v0}, Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;->access$3600(Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity;Ljava/lang/String;Lcom/android/htcdialer/carhome/MakecallSelectPeopleActivity$ContactInfo;)V

    goto :goto_1
.end method
