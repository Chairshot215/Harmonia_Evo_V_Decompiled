.class public Lcom/google/android/gm/ConversationsLabelHandler;
.super Ljava/lang/Object;
.source "ConversationsLabelHandler.java"


# instance fields
.field private final mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

.field private final mChangeList:Lcom/google/android/gm/LabelOperations;

.field private final mConversationInfos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuHandler:Lcom/google/android/gm/MenuHandler;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/LabelSelectorAdapter;Ljava/util/Collection;)V
    .locals 1
    .parameter "menuHandler"
    .parameter "adapter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gm/MenuHandler;",
            "Lcom/google/android/gm/LabelSelectorAdapter;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p3, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 27
    iput-object p2, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    .line 28
    new-instance v0, Lcom/google/android/gm/LabelOperations;

    invoke-direct {v0}, Lcom/google/android/gm/LabelOperations;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mChangeList:Lcom/google/android/gm/LabelOperations;

    .line 29
    iput-object p3, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mConversationInfos:Ljava/util/Collection;

    .line 30
    return-void
.end method


# virtual methods
.method public commit(Lcom/google/android/gm/CommandListener;)V
    .locals 7
    .parameter "commandListener"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v1, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mChangeList:Lcom/google/android/gm/LabelOperations;

    iget-object v2, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mConversationInfos:Ljava/util/Collection;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const v5, 0x7f0f00ee

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gm/MenuHandler;->addOrRemoveLabel(Lcom/google/android/gm/LabelOperations;Ljava/util/Collection;ZLcom/google/android/gm/LabelOperations;ILcom/google/android/gm/CommandListener;)V

    .line 74
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mChangeList:Lcom/google/android/gm/LabelOperations;

    invoke-virtual {v0}, Lcom/google/android/gm/LabelOperations;->clear()V

    .line 64
    return-void
.end method

.method public update(Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;)V
    .locals 3
    .parameter "row"

    .prologue
    .line 40
    invoke-virtual {p1}, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->isPresent()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 41
    .local v0, add:Z
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->getLabel()Lcom/google/android/gm/provider/Label;

    move-result-object v1

    .line 43
    .local v1, label:Lcom/google/android/gm/provider/Label;
    invoke-virtual {p1, v0}, Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;->setIsPresent(Z)V

    .line 44
    iget-object v2, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {v2}, Lcom/google/android/gm/LabelSelectorAdapter;->notifyDataSetChanged()V

    .line 56
    iget-object v2, p0, Lcom/google/android/gm/ConversationsLabelHandler;->mChangeList:Lcom/google/android/gm/LabelOperations;

    invoke-virtual {v2, v1, v0}, Lcom/google/android/gm/LabelOperations;->add(Lcom/google/android/gm/provider/Label;Z)V

    .line 57
    return-void

    .line 40
    .end local v0           #add:Z
    .end local v1           #label:Lcom/google/android/gm/provider/Label;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
