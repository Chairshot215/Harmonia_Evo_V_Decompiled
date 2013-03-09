.class public abstract Lcom/android/htccontacts/app/SNBaseListActivity$SNAdapter;
.super Landroid/widget/BaseAdapter;
.source "SNBaseListActivity.java"

# interfaces
.implements Lcom/android/htccontacts/widget/ISNBaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/app/SNBaseListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "SNAdapter"
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mMaxShowingEntries:I

.field final synthetic this$0:Lcom/android/htccontacts/app/SNBaseListActivity;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/app/SNBaseListActivity;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/htccontacts/app/SNBaseListActivity$SNAdapter;->this$0:Lcom/android/htccontacts/app/SNBaseListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 452
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity$SNAdapter;->mMaxShowingEntries:I

    .line 456
    iput-object p2, p0, Lcom/android/htccontacts/app/SNBaseListActivity$SNAdapter;->mContext:Landroid/content/Context;

    .line 457
    return-void
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getHintView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 486
    if-nez p1, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/htccontacts/app/SNBaseListActivity$SNAdapter;->this$0:Lcom/android/htccontacts/app/SNBaseListActivity;

    iget-object v1, v1, Lcom/android/htccontacts/app/SNBaseListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030040

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 488
    new-instance v1, Ljava/lang/String;

    const-string v2, "HintView"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 490
    :cond_0
    const v1, 0x7f070066

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 491
    .local v0, textView:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 492
    const v1, 0x7f0a01dd

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 493
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDuplicateParentStateEnabled(Z)V

    .line 495
    :cond_1
    return-object p1
.end method

.method public abstract getLoginView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getMaxShowingEntries()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity$SNAdapter;->mMaxShowingEntries:I

    return v0
.end method

.method public getSearchName()Ljava/util/List;
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
    .line 513
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract isClientLogin()Z
.end method

.method public isHintViewAvailable()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isLinked()Z
.end method

.method public abstract launchLinkFriend()V
.end method

.method public onEmptyViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 510
    return-void
.end method

.method public onHintViewClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 503
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/htccontacts/app/SNBaseListActivity$SNAdapter;->mMaxShowingEntries:I

    .line 504
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
    .line 519
    .local p1, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public onLoginViewClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 506
    return-void
.end method

.method public setMaxShowingEntries(I)V
    .locals 0
    .parameter "showingEntries"

    .prologue
    .line 460
    iput p1, p0, Lcom/android/htccontacts/app/SNBaseListActivity$SNAdapter;->mMaxShowingEntries:I

    .line 461
    return-void
.end method
