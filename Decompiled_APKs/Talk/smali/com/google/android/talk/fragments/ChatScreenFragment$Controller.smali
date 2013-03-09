.class public interface abstract Lcom/google/android/talk/fragments/ChatScreenFragment$Controller;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Controller"
.end annotation


# virtual methods
.method public abstract onLastChatClosed()V
.end method

.method public abstract onShowContactInfo(Lcom/google/android/talk/fragments/BuddyListFragment$ListItemInfo;)V
.end method

.method public abstract onVideoChatStarted()Z
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;IILandroid/graphics/drawable/Drawable;)V
.end method

.method public abstract updateOtrStatus(Z)V
.end method
