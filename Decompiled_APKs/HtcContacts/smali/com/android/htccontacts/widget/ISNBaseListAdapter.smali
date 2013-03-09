.class public interface abstract Lcom/android/htccontacts/widget/ISNBaseListAdapter;
.super Ljava/lang/Object;
.source "ISNBaseListAdapter.java"

# interfaces
.implements Lcom/android/htccontacts/widget/ILinearExpandableListAdapter;


# virtual methods
.method public abstract getActiveUserRowId()J
.end method

.method public abstract getEmptyView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getLoginView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getNamePattern()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isClientLogin()Z
.end method

.method public abstract isLinked()Z
.end method

.method public abstract launchLinkFriend()V
.end method

.method public abstract onEmptyViewClick(Landroid/view/View;)V
.end method

.method public abstract onLinkFriendEntryClick(Ljava/util/HashMap;)V
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
.end method

.method public abstract onLoginViewClick(Landroid/view/View;)V
.end method
