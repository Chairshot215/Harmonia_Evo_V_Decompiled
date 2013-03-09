.class public Lcom/google/android/gm/ConversationTransientState$MessageState;
.super Ljava/lang/Object;
.source "ConversationTransientState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/ConversationTransientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageState"
.end annotation


# instance fields
.field public final mIsDraft:Z

.field public final mIsSending:Z

.field public final mSender:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZZLjava/lang/String;)V
    .locals 0
    .parameter "isDraft"
    .parameter "isSending"
    .parameter "sender"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/google/android/gm/ConversationTransientState$MessageState;->mIsDraft:Z

    .line 26
    iput-boolean p2, p0, Lcom/google/android/gm/ConversationTransientState$MessageState;->mIsSending:Z

    .line 27
    iput-object p3, p0, Lcom/google/android/gm/ConversationTransientState$MessageState;->mSender:Ljava/lang/String;

    .line 28
    return-void
.end method
