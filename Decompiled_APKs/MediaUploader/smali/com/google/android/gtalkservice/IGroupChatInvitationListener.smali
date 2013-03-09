.class public interface abstract Lcom/google/android/gtalkservice/IGroupChatInvitationListener;
.super Ljava/lang/Object;
.source "IGroupChatInvitationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gtalkservice/IGroupChatInvitationListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onInvitationReceived(Lcom/google/android/gtalkservice/GroupChatInvitation;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
