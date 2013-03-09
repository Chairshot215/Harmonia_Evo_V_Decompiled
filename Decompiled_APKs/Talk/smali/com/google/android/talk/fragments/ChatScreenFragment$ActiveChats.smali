.class interface abstract Lcom/google/android/talk/fragments/ChatScreenFragment$ActiveChats;
.super Ljava/lang/Object;
.source "ChatScreenFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/fragments/ChatScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ActiveChats"
.end annotation


# virtual methods
.method public abstract foreachChatView(Lcom/google/android/talk/fragments/ChatScreenFragment$ViewRunnable;)V
.end method

.method public abstract getRootView()Landroid/view/View;
.end method

.method public abstract getSelectedChatView()Lcom/google/android/talk/ChatView;
.end method

.method public abstract getSelectedItemPosition()I
.end method

.method public abstract onHiddenChanged(Z)V
.end method

.method public abstract selectNext(ZLjava/lang/Runnable;)V
.end method

.method public abstract setAdapter(Lcom/google/android/talk/fragments/ChatScreenFragment$GalleryAdapter;)V
.end method

.method public abstract setSelection(I)V
.end method

.method public abstract stop()V
.end method
