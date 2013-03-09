.class Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;
.super Lcom/htc/widget/InsertNewListAdapter;
.source "SpeedDialListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htcdialer/SpeedDialListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeedDialAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htcdialer/SpeedDialListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htcdialer/SpeedDialListActivity;Lcom/htc/widget/InsertNewListAdapterInterface;Z)V
    .locals 0
    .parameter
    .parameter "adapter"
    .parameter "hasInsertView"

    .prologue
    .line 673
    iput-object p1, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    .line 674
    invoke-direct {p0, p2, p3}, Lcom/htc/widget/InsertNewListAdapter;-><init>(Lcom/htc/widget/InsertNewListAdapterInterface;Z)V

    .line 675
    return-void
.end method

.method static synthetic access$100(Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getPersistentTopViewCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 671
    invoke-direct {p0, p1}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->onTopViewClick(I)Z

    move-result v0

    return v0
.end method

.method private getAdatperView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 777
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v2}, Lcom/htc/widget/InsertNewListAdapterInterface;->getCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 778
    const/4 v1, 0x0

    .line 780
    .local v1, view:Landroid/view/View;
    :try_start_0
    iget-object v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v2, p1, p2, p3}, Lcom/htc/widget/InsertNewListAdapterInterface;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 786
    .end local v1           #view:Landroid/view/View;
    :goto_0
    return-object v1

    .line 781
    .restart local v1       #view:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 782
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SpeedDialListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #view:Landroid/view/View;
    :cond_0
    move-object v1, p2

    .line 786
    goto :goto_0
.end method

.method private getPersistentItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 790
    iget-boolean v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_0

    move v0, v1

    .line 791
    .local v0, addNewIdx:I
    :goto_0
    if-ne v0, p1, :cond_1

    .line 792
    invoke-super {p0, v1}, Lcom/htc/widget/InsertNewListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 803
    :goto_1
    return-object v1

    .line 790
    .end local v0           #addNewIdx:I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 794
    .restart local v0       #addNewIdx:I
    :cond_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v2, 0x28

    if-ne v1, v2, :cond_2

    .line 797
    if-lez p1, :cond_3

    sget v1, Lcom/android/htcdialer/SpeedDialListActivity;->MAX_SERVICE_NUMBER:I

    if-gt p1, v1, :cond_3

    .line 798
    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->access$1300()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    goto :goto_1

    .line 800
    :cond_2
    iget-object v1, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mHasVoicemail:Z
    invoke-static {v1}, Lcom/android/htcdialer/SpeedDialListActivity;->access$700(Lcom/android/htcdialer/SpeedDialListActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/android/htcdialer/SpeedDialListActivity;->MAX_SERVICE_NUMBER:I

    if-ne p1, v1, :cond_3

    .line 801
    iget-object v1, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mVoicemail:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/htcdialer/SpeedDialListActivity;->access$1100(Lcom/android/htcdialer/SpeedDialListActivity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 803
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getPersistentTopViewCount()I
    .locals 4

    .prologue
    .line 807
    const/4 v0, 0x0

    .line 808
    .local v0, count:I
    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->getServiceMap()Ljava/util/HashMap;

    move-result-object v1

    .line 809
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 810
    sget v0, Lcom/android/htcdialer/SpeedDialListActivity;->MAX_SERVICE_NUMBER:I

    .line 816
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mIsInsertNewViewShown:Z

    if-eqz v2, :cond_1

    .line 817
    add-int/lit8 v0, v0, 0x1

    .line 819
    :cond_1
    return v0

    .line 811
    :cond_2
    if-eqz v1, :cond_3

    .line 812
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 813
    :cond_3
    iget-object v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mHasVoicemail:Z
    invoke-static {v2}, Lcom/android/htcdialer/SpeedDialListActivity;->access$700(Lcom/android/htcdialer/SpeedDialListActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 814
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getPersistentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 754
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mIsInsertNewViewShown:Z

    if-eqz v3, :cond_1

    .line 755
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/InsertNewListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 773
    .end local p2
    :cond_0
    :goto_0
    return-object p2

    .line 758
    .restart local p2
    :cond_1
    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->getServiceMap()Ljava/util/HashMap;

    move-result-object v2

    .line 759
    .local v2, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    add-int/lit8 v1, p1, 0x1

    .line 760
    .local v1, keyPos:I
    if-nez v2, :cond_2

    const-string v0, ""

    .line 762
    .local v0, key:Ljava/lang/String;
    :goto_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v4, 0x28

    if-ne v3, v4, :cond_3

    .line 763
    sget v3, Lcom/android/htcdialer/SpeedDialListActivity;->MAX_SERVICE_NUMBER:I

    if-gt p1, v3, :cond_0

    .line 764
    iget-object v3, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity;->getServiceView(Landroid/view/View;I)Landroid/view/View;
    invoke-static {v3, p2, p1}, Lcom/android/htcdialer/SpeedDialListActivity;->access$900(Lcom/android/htcdialer/SpeedDialListActivity;Landroid/view/View;I)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 760
    .end local v0           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    aget-object v3, v3, v4

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v0, v3, v4

    goto :goto_1

    .line 766
    .restart local v0       #key:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 767
    iget-object v4, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity;->getServiceView(Landroid/view/View;[Ljava/lang/String;)Landroid/view/View;
    invoke-static {v4, p2, v3}, Lcom/android/htcdialer/SpeedDialListActivity;->access$1000(Lcom/android/htcdialer/SpeedDialListActivity;Landroid/view/View;[Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 769
    :cond_4
    const/4 v3, 0x1

    if-gt p1, v3, :cond_0

    iget-object v3, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mHasVoicemail:Z
    invoke-static {v3}, Lcom/android/htcdialer/SpeedDialListActivity;->access$700(Lcom/android/htcdialer/SpeedDialListActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 770
    iget-object v3, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    iget-object v4, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mVoicemail:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/htcdialer/SpeedDialListActivity;->access$1100(Lcom/android/htcdialer/SpeedDialListActivity;)Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/htcdialer/SpeedDialListActivity;->getVoicemailView(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    invoke-static {v3, v4, p2}, Lcom/android/htcdialer/SpeedDialListActivity;->access$1200(Lcom/android/htcdialer/SpeedDialListActivity;Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object p2

    goto :goto_0
.end method

.method private onTopViewClick(I)Z
    .locals 11
    .parameter "position"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x1000

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 823
    iget-boolean v5, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mIsInsertNewViewShown:Z

    if-eqz v5, :cond_0

    move v0, v6

    .line 824
    .local v0, addNewIdx:I
    :goto_0
    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->getServiceMap()Ljava/util/HashMap;

    move-result-object v4

    .line 825
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    if-ne v0, p1, :cond_1

    .line 826
    iget-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity;->addSpeedDial()V
    invoke-static {v5}, Lcom/android/htcdialer/SpeedDialListActivity;->access$000(Lcom/android/htcdialer/SpeedDialListActivity;)V

    .line 850
    :goto_1
    return v6

    .line 823
    .end local v0           #addNewIdx:I
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 828
    .restart local v0       #addNewIdx:I
    .restart local v4       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    :cond_1
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gt p1, v5, :cond_3

    .line 829
    add-int/lit8 v3, p1, 0x1

    .line 830
    .local v3, keyPos:I
    if-nez v4, :cond_2

    const-string v2, ""

    .line 831
    .local v2, key:Ljava/lang/String;
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v8, "tel"

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-static {v8, v5, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 834
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 835
    invoke-static {v1}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    move v6, v7

    .line 836
    goto :goto_1

    .line 830
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v8

    sub-int/2addr v8, v3

    aget-object v5, v5, v8

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    aget-object v2, v5, v6

    goto :goto_2

    .line 837
    .end local v3           #keyPos:I
    :cond_3
    sget v5, Lcom/android/htcdialer/SpeedDialListActivity;->MAX_SERVICE_NUMBER:I

    if-gt p1, v5, :cond_5

    .line 838
    const/4 v1, 0x0

    .line 839
    .restart local v1       #intent:Landroid/content/Intent;
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v6, 0x28

    if-ne v5, v6, :cond_4

    .line 842
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    const-string v6, "tel"

    invoke-static {}, Lcom/android/htcdialer/SpeedDialListActivity;->access$1300()[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, p1

    invoke-static {v6, v8, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 845
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 846
    invoke-static {v1}, Lcom/htc/util/phone/DialUtils;->callDirectly(Landroid/content/Intent;)Z

    move v6, v7

    .line 847
    goto :goto_1

    .line 848
    :cond_4
    iget-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mHasVoicemail:Z
    invoke-static {v5}, Lcom/android/htcdialer/SpeedDialListActivity;->access$700(Lcom/android/htcdialer/SpeedDialListActivity;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 849
    iget-object v5, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #calls: Lcom/android/htcdialer/SpeedDialListActivity;->callVoiceMail()V
    invoke-static {v5}, Lcom/android/htcdialer/SpeedDialListActivity;->access$1400(Lcom/android/htcdialer/SpeedDialListActivity;)V

    move v6, v7

    .line 850
    goto :goto_1

    .line 853
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onTopViewClick: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .prologue
    .line 679
    iget-object v1, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    invoke-interface {v1}, Lcom/htc/widget/InsertNewListAdapterInterface;->getCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getPersistentTopViewCount()I

    move-result v2

    add-int v0, v1, v2

    .line 681
    .local v0, count:I
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 686
    invoke-direct {p0}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getPersistentTopViewCount()I

    move-result v0

    .line 687
    .local v0, persistentTopCount:I
    if-ge p1, v0, :cond_0

    .line 688
    invoke-direct {p0, p1}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getPersistentItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 690
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    sub-int v2, p1, v0

    invoke-interface {v1, v2}, Lcom/htc/widget/InsertNewListAdapterInterface;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 745
    invoke-direct {p0}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getPersistentTopViewCount()I

    move-result v0

    .line 746
    .local v0, persistentTopCount:I
    if-le v0, p1, :cond_0

    .line 747
    int-to-long v1, p1

    .line 749
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    sub-int v2, p1, v0

    invoke-interface {v1, v2}, Lcom/htc/widget/InsertNewListAdapterInterface;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 696
    iget-boolean v4, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mIsInsertNewViewShown:Z

    if-eqz v4, :cond_2

    move v0, v2

    .line 697
    .local v0, addNewIdx:I
    :goto_0
    iget-object v4, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mHasVoicemail:Z
    invoke-static {v4}, Lcom/android/htcdialer/SpeedDialListActivity;->access$700(Lcom/android/htcdialer/SpeedDialListActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int v1, v0, v2

    .line 698
    .local v1, voicemailIdx:I
    if-ne v0, p1, :cond_3

    .line 699
    iget v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mInsertViewType:I

    if-ne v3, v2, :cond_1

    .line 700
    iget v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mInternalViewTypeCount:I

    iput v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mInsertViewType:I

    .line 702
    :cond_1
    iget v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mInsertViewType:I

    .line 710
    :goto_1
    return v2

    .end local v0           #addNewIdx:I
    .end local v1           #voicemailIdx:I
    :cond_2
    move v0, v3

    .line 696
    goto :goto_0

    .line 703
    .restart local v0       #addNewIdx:I
    .restart local v1       #voicemailIdx:I
    :cond_3
    if-ne v1, p1, :cond_5

    .line 704
    iget-object v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mSpeedDialViewType:I
    invoke-static {v2}, Lcom/android/htcdialer/SpeedDialListActivity;->access$800(Lcom/android/htcdialer/SpeedDialListActivity;)I

    move-result v2

    if-ne v3, v2, :cond_4

    .line 705
    iget-object v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    iget v3, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mInternalViewTypeCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mInternalViewTypeCount:I

    #setter for: Lcom/android/htcdialer/SpeedDialListActivity;->mSpeedDialViewType:I
    invoke-static {v2, v3}, Lcom/android/htcdialer/SpeedDialListActivity;->access$802(Lcom/android/htcdialer/SpeedDialListActivity;I)I

    .line 707
    :cond_4
    iget-object v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mSpeedDialViewType:I
    invoke-static {v2}, Lcom/android/htcdialer/SpeedDialListActivity;->access$800(Lcom/android/htcdialer/SpeedDialListActivity;)I

    move-result v2

    goto :goto_1

    .line 710
    :cond_5
    iget-object v2, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->this$0:Lcom/android/htcdialer/SpeedDialListActivity;

    #getter for: Lcom/android/htcdialer/SpeedDialListActivity;->mSpeedDialViewType:I
    invoke-static {v2}, Lcom/android/htcdialer/SpeedDialListActivity;->access$800(Lcom/android/htcdialer/SpeedDialListActivity;)I

    move-result v2

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 724
    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    .line 728
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 729
    .local v1, tag:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 730
    new-instance v2, Lcom/htc/widget/HtcListItemSeparableType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 735
    .end local v1           #tag:Ljava/lang/Object;
    :cond_0
    invoke-direct {p0}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getPersistentTopViewCount()I

    move-result v0

    .line 736
    .local v0, persistentTopCount:I
    if-le v0, p1, :cond_1

    .line 737
    invoke-direct {p0, p1, p2, p3}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getPersistentView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 740
    :goto_0
    return-object v2

    :cond_1
    sub-int v2, p1, v0

    invoke-direct {p0, v2, p2, p3}, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->getAdatperView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/htcdialer/SpeedDialListActivity$SpeedDialAdapter;->mAdapter:Lcom/htc/widget/InsertNewListAdapterInterface;

    if-nez v0, :cond_0

    .line 716
    const/4 v0, 0x1

    .line 718
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method
