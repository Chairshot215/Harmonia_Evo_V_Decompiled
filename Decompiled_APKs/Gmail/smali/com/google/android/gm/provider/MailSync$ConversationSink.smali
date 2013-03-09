.class public interface abstract Lcom/google/android/gm/provider/MailSync$ConversationSink;
.super Ljava/lang/Object;
.source "MailSync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/provider/MailSync;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ConversationSink"
.end annotation


# virtual methods
.method public abstract finalizeSink()V
.end method

.method public abstract handleConversation(Lcom/google/android/gm/provider/MailSync$Conversation;)V
.end method

.method public abstract prepareSink()V
.end method
