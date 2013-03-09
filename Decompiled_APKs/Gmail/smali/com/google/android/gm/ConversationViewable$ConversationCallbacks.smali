.class public interface abstract Lcom/google/android/gm/ConversationViewable$ConversationCallbacks;
.super Ljava/lang/Object;
.source "ConversationViewable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationViewable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConversationCallbacks"
.end annotation


# virtual methods
.method public abstract onConversationKeyDown(Lcom/google/android/gm/ConversationInfo;ILandroid/view/KeyEvent;)V
.end method

.method public abstract onConversationLoadError(Lcom/google/android/gm/ConversationInfo;)V
.end method

.method public abstract onConversationLoaded(Lcom/google/android/gm/ConversationInfo;)V
.end method
