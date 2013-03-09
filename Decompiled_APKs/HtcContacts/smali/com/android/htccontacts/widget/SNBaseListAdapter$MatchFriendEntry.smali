.class public Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;
.super Ljava/util/HashMap;
.source "SNBaseListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/widget/SNBaseListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MatchFriendEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;


# direct methods
.method public constructor <init>(Lcom/android/htccontacts/widget/SNBaseListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;->this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;

    .line 519
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 520
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "obj"

    .prologue
    .line 528
    const/4 v2, 0x0

    .line 529
    .local v2, result:Z
    instance-of v4, p1, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 530
    check-cast v0, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;

    .line 531
    .local v0, entry:Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;
    const-string v4, "_id"

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 532
    .local v3, selfId:Ljava/lang/String;
    const-string v4, "_id"

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 533
    .local v1, entryId:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 534
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 537
    .end local v0           #entry:Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;
    .end local v1           #entryId:Ljava/lang/String;
    .end local v3           #selfId:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/htccontacts/widget/SNBaseListAdapter$MatchFriendEntry;->this$0:Lcom/android/htccontacts/widget/SNBaseListAdapter;

    iget-object v0, v0, Lcom/android/htccontacts/widget/SNBaseListAdapter;->mAdapter:Lcom/android/htccontacts/widget/ISNBaseListAdapter;

    invoke-interface {v0, p0}, Lcom/android/htccontacts/widget/ISNBaseListAdapter;->onLinkFriendEntryClick(Ljava/util/HashMap;)V

    .line 525
    return-void
.end method
