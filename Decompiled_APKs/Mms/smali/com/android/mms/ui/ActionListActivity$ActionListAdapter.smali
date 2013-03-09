.class Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActionListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ActionListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionListAdapter"
.end annotation


# instance fields
.field private mActionArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/mms/ui/ActionListActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ActionListActivity;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    .line 605
    iput-object p1, p0, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;->this$0:Lcom/android/mms/ui/ActionListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;->mActionArrayList:Ljava/util/ArrayList;

    .line 606
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 607
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;->mActionArrayList:Ljava/util/ArrayList;

    #calls: Lcom/android/mms/ui/ActionListActivity;->bulidListItems(Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V
    invoke-static {p1, v0, v1}, Lcom/android/mms/ui/ActionListActivity;->access$500(Lcom/android/mms/ui/ActionListActivity;Landroid/view/LayoutInflater;Ljava/util/ArrayList;)V

    .line 608
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;->mActionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;->mActionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 614
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 620
    new-instance v0, Lcom/android/mms/ui/ActionListActivity$ViewHolder;

    iget-object v7, p0, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;->this$0:Lcom/android/mms/ui/ActionListActivity;

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Lcom/android/mms/ui/ActionListActivity$ViewHolder;-><init>(Lcom/android/mms/ui/ActionListActivity;Lcom/android/mms/ui/ActionListActivity$1;)V

    .line 621
    .local v0, cache:Lcom/android/mms/ui/ActionListActivity$ViewHolder;
    const/4 v1, 0x0

    .line 622
    .local v1, group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;
    const/4 v2, 0x0

    .line 623
    .local v2, icon:Lcom/htc/widget/HtcListItemImageButton;
    const/4 v5, 0x0

    .line 625
    .local v5, text:Lcom/htc/widget/HtcListItem2LineText;
    if-nez p2, :cond_0

    .line 626
    iget-object v7, p0, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;->this$0:Lcom/android/mms/ui/ActionListActivity;

    #getter for: Lcom/android/mms/ui/ActionListActivity;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/mms/ui/ActionListActivity;->access$200(Lcom/android/mms/ui/ActionListActivity;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/mms/ui/HtcListItemComposer;->createImageButtonListItem(Landroid/content/Context;)Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    move-result-object v1

    .line 627
    iput-object v1, v0, Lcom/android/mms/ui/ActionListActivity$ViewHolder;->group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    .line 628
    iget-object p2, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->ListItem:Landroid/view/View;

    .line 629
    iget-object v7, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Photo:Lcom/htc/widget/HtcListItemImageButton;

    const v8, 0x7f0200d5

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 630
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 636
    :goto_0
    iget-object v2, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Photo:Lcom/htc/widget/HtcListItemImageButton;

    .line 637
    iget-object v5, v1, Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;->Text:Lcom/htc/widget/HtcListItem2LineText;

    .line 639
    iget-object v7, p0, Lcom/android/mms/ui/ActionListActivity$ActionListAdapter;->mActionArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 640
    .local v6, type:I
    iput v6, v0, Lcom/android/mms/ui/ActionListActivity$ViewHolder;->type:I

    .line 642
    const/4 v4, 0x0

    .line 643
    .local v4, resId:I
    const/4 v3, 0x0

    .line 644
    .local v3, photoId:I
    packed-switch v6, :pswitch_data_0

    .line 678
    :goto_1
    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 679
    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListItemImageButton;->setImageResource(I)V

    .line 680
    return-object p2

    .line 633
    .end local v3           #photoId:I
    .end local v4           #resId:I
    .end local v6           #type:I
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cache:Lcom/android/mms/ui/ActionListActivity$ViewHolder;
    check-cast v0, Lcom/android/mms/ui/ActionListActivity$ViewHolder;

    .line 634
    .restart local v0       #cache:Lcom/android/mms/ui/ActionListActivity$ViewHolder;
    iget-object v1, v0, Lcom/android/mms/ui/ActionListActivity$ViewHolder;->group:Lcom/android/mms/ui/HtcListItemComposer$HtcListItemGroup;

    goto :goto_0

    .line 646
    .restart local v3       #photoId:I
    .restart local v4       #resId:I
    .restart local v6       #type:I
    :pswitch_0
    const v4, 0x7f0901b9

    .line 647
    const v3, 0x7f0200ec

    .line 648
    goto :goto_1

    .line 650
    :pswitch_1
    const v4, 0x7f0901ba

    .line 651
    const v3, 0x7f0200ee

    .line 652
    goto :goto_1

    .line 654
    :pswitch_2
    const v4, 0x7f0901bf

    .line 655
    const v3, 0x7f020145

    .line 656
    goto :goto_1

    .line 658
    :pswitch_3
    const v4, 0x7f0901bb

    .line 659
    const v3, 0x7f0200ea

    .line 660
    goto :goto_1

    .line 662
    :pswitch_4
    const v4, 0x7f0901c1

    .line 663
    const v3, 0x7f0200e9

    .line 664
    goto :goto_1

    .line 666
    :pswitch_5
    const v4, 0x7f0901c0

    .line 667
    const v3, 0x7f0200ed

    .line 668
    goto :goto_1

    .line 671
    :pswitch_6
    const v4, 0x7f090018

    .line 672
    const v3, 0x7f0200ef

    goto :goto_1

    .line 644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
