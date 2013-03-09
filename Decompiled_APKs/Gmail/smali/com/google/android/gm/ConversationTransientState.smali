.class public Lcom/google/android/gm/ConversationTransientState;
.super Ljava/lang/Object;
.source "ConversationTransientState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/ConversationTransientState$MessageState;
    }
.end annotation


# instance fields
.field private final mMessageStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/google/android/gm/ConversationTransientState$MessageState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/google/common/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gm/ConversationTransientState;->mMessageStates:Ljava/util/Map;

    return-void
.end method

.method private addMessageState(JLcom/google/android/gm/ConversationTransientState$MessageState;)V
    .locals 2
    .parameter "localId"
    .parameter "state"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/gm/ConversationTransientState;->mMessageStates:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public static create(Lcom/google/android/gm/provider/Gmail$MessageCursor;)Lcom/google/android/gm/ConversationTransientState;
    .locals 8
    .parameter "cursor"

    .prologue
    .line 61
    new-instance v1, Lcom/google/android/gm/ConversationTransientState;

    invoke-direct {v1}, Lcom/google/android/gm/ConversationTransientState;-><init>()V

    .line 63
    .local v1, state:Lcom/google/android/gm/ConversationTransientState;
    const/4 v0, -0x1

    .line 64
    .local v0, i:I
    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->moveTo(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getLocalId()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gm/ConversationTransientState$MessageState;

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsDraft()Z

    move-result v5

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getIsInOutbox()Z

    move-result v6

    invoke-virtual {p0}, Lcom/google/android/gm/provider/Gmail$MessageCursor;->getFromAddress()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gm/ConversationTransientState$MessageState;-><init>(ZZLjava/lang/String;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gm/ConversationTransientState;->addMessageState(JLcom/google/android/gm/ConversationTransientState$MessageState;)V

    goto :goto_0

    .line 70
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getLocalIdSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/gm/ConversationTransientState;->mMessageStates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public getSender(J)Ljava/lang/String;
    .locals 3
    .parameter "localId"

    .prologue
    .line 52
    iget-object v1, p0, Lcom/google/android/gm/ConversationTransientState;->mMessageStates:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationTransientState$MessageState;

    .line 53
    .local v0, foundState:Lcom/google/android/gm/ConversationTransientState$MessageState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gm/ConversationTransientState$MessageState;->mSender:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasRenderedMessage(J)Z
    .locals 2
    .parameter "localId"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/gm/ConversationTransientState;->mMessageStates:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public inOutbox(J)Z
    .locals 3
    .parameter "localId"

    .prologue
    .line 42
    iget-object v1, p0, Lcom/google/android/gm/ConversationTransientState;->mMessageStates:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationTransientState$MessageState;

    .line 43
    .local v0, foundState:Lcom/google/android/gm/ConversationTransientState$MessageState;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gm/ConversationTransientState$MessageState;->mIsSending:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDraft(J)Z
    .locals 3
    .parameter "localId"

    .prologue
    .line 47
    iget-object v1, p0, Lcom/google/android/gm/ConversationTransientState;->mMessageStates:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/ConversationTransientState$MessageState;

    .line 48
    .local v0, foundState:Lcom/google/android/gm/ConversationTransientState$MessageState;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gm/ConversationTransientState$MessageState;->mIsDraft:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
