.class public interface abstract Lcom/google/android/talk/fragments/ChatScreenFragment$ChatHost;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChatHost"
.end annotation


# virtual methods
.method public abstract cacheContactId(Ljava/lang/String;J)V
.end method

.method public abstract convertedToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
.end method

.method public abstract getCachedContactId(Ljava/lang/String;)J
.end method

.method public abstract getMessageBar()Landroid/view/View;
.end method

.method public abstract handleMenuItem(Lcom/google/android/talk/ChatView;Landroid/view/MenuItem;I)Z
.end method

.method public abstract invalidateImSession()V
.end method

.method public abstract startActivityForResult(Landroid/content/Intent;I)V
.end method

.method public abstract startVideoChatAnimation()Z
.end method

.method public abstract update(Landroid/view/View;)V
.end method

.method public abstract willConvertToGroupChat(Lcom/google/android/talk/ChatView;Ljava/lang/String;)V
.end method
