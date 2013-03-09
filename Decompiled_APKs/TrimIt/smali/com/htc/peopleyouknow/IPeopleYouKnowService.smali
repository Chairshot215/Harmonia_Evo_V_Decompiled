.class public interface abstract Lcom/htc/peopleyouknow/IPeopleYouKnowService;
.super Ljava/lang/Object;
.source "IPeopleYouKnowService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/peopleyouknow/IPeopleYouKnowService$Stub;
    }
.end annotation


# virtual methods
.method public abstract IgnoreFriendRequest(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract confirmFriendRequest(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFriendRequest([I)[Lcom/htc/peopleyouknow/FriendRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFriendSuggestion([Lcom/htc/peopleyouknow/ContactData;[I)[Lcom/htc/peopleyouknow/FriendSuggestion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestFriend(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
