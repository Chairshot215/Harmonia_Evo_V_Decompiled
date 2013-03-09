.class public Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;
.super Lcom/htc/opensense/plugin/AmortizedHostAdapter;
.source "ContactDetailUpdatesAndEventsActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/ISNBaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AmortizedUpdateAdapter"
.end annotation


# instance fields
.field protected mHasAdapterLoadingCompleted:Z

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 802
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    .line 803
    invoke-direct {p0, p2}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;-><init>(Landroid/content/Context;)V

    .line 804
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->mHasAdapterLoadingCompleted:Z

    .line 805
    return-void
.end method


# virtual methods
.method public getActiveUserRowId()J
    .locals 2

    .prologue
    .line 906
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 875
    if-nez p1, :cond_0

    .line 877
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->this$0:Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;

    iget-object v3, v3, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030056

    invoke-virtual {v3, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 878
    new-instance v3, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;

    const-string v4, "update"

    invoke-direct {v3, v4}, Lcom/android/htccontacts/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 882
    :cond_0
    const v3, 0x7f07001f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 883
    .local v1, root:Landroid/view/View;
    const v3, 0x102000d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 884
    .local v0, progressView:Landroid/view/View;
    const v3, 0x7f0700dc

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 886
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 887
    iget-boolean v3, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->mHasAdapterLoadingCompleted:Z

    if-nez v3, :cond_2

    .line 888
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 889
    const v3, 0x7f0a0034

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 896
    :goto_0
    invoke-virtual {v1, v5}, Landroid/view/View;->setDuplicateParentStateEnabled(Z)V

    .line 897
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 899
    :cond_1
    return-object p1

    .line 892
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 893
    const v3, 0x7f0a01e6

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public getLoginView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 851
    return-object p1
.end method

.method public getMaxShowingEntries()I
    .locals 1

    .prologue
    .line 812
    const v0, 0x7fffffff

    return v0
.end method

.method public getNamePattern()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 910
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getToggleView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 820
    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 843
    invoke-super {p0, p1, p2, p3}, Lcom/htc/opensense/plugin/AmortizedHostAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 844
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 845
    const-string v1, "AmortizedUpdateAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmortizedUpdateAdapter - v is null ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_0
    return-object v0
.end method

.method public isClientLogin()Z
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x1

    return v0
.end method

.method public isLinked()Z
    .locals 1

    .prologue
    .line 839
    const/4 v0, 0x1

    return v0
.end method

.method public isToggleViewAvailable()Z
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public launchLinkFriend()V
    .locals 0

    .prologue
    .line 914
    return-void
.end method

.method public onEmptyViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 903
    return-void
.end method

.method public onLinkFriendEntryClick(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 917
    .local p1, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onLoginViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 855
    return-void
.end method

.method public onToggleViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 824
    return-void
.end method

.method public onToggleViewLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 827
    const/4 v0, 0x0

    return v0
.end method

.method public onToggleViewTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "mv"

    .prologue
    .line 831
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapterLoadingComplete(Z)V
    .locals 0
    .parameter "hasCompleted"

    .prologue
    .line 808
    iput-boolean p1, p0, Lcom/android/htccontacts/ContactDetailUpdatesAndEventsActivity$AmortizedUpdateAdapter;->mHasAdapterLoadingCompleted:Z

    .line 809
    return-void
.end method
