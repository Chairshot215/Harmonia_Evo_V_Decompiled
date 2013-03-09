.class public Lcom/google/android/gm/ApplyRemoveLabelDialog;
.super Landroid/app/AlertDialog;
.source "ApplyRemoveLabelDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

.field private mCommandListener:Lcom/google/android/gm/CommandListener;

.field private final mContext:Landroid/content/Context;

.field private mConversationInfos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

.field private final mListView:Landroid/widget/ListView;

.field private final mMenuHandler:Lcom/google/android/gm/MenuHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gm/MenuHandler;)V
    .locals 7
    .parameter "context"
    .parameter "menuHandler"

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    .line 57
    const v0, 0x7f0c008d

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setTitle(I)V

    .line 58
    invoke-virtual {p0, p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 59
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mContext:Landroid/content/Context;

    const v3, 0x104000a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 61
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mContext:Landroid/content/Context;

    const/high16 v3, 0x104

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setInverseBackgroundForced(Z)V

    .line 65
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 66
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040005

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    .line 67
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->setView(Landroid/view/View;IIII)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gm/ApplyRemoveLabelDialog;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->onSelectLabel(I)V

    return-void
.end method

.method private onSelectLabel(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {v1, p1}, Lcom/google/android/gm/LabelSelectorAdapter;->getItem(I)Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationsLabelHandler;->update(Lcom/google/android/gm/LabelSelectorAdapter$LabelRow;)V

    .line 115
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 124
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    if-nez v0, :cond_0

    .line 129
    const-string v0, "Gmail"

    const-string v1, "null LabelHandler"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 138
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mCommandListener:Lcom/google/android/gm/CommandListener;

    invoke-virtual {v0, v1}, Lcom/google/android/gm/ConversationsLabelHandler;->commit(Lcom/google/android/gm/CommandListener;)V

    goto :goto_0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    invoke-virtual {v0}, Lcom/google/android/gm/ConversationsLabelHandler;->reset()V

    goto :goto_0
.end method

.method public onPrepare(Ljava/lang/String;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 5
    .parameter "account"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gm/provider/Label;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gm/ConversationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, currentLabels:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/Label;>;"
    .local p3, conversationInfos:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/google/android/gm/ConversationInfo;>;"
    const/4 v3, 0x0

    .line 82
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    :cond_0
    const-string v1, "Gmail"

    const-string v2, "No conversations, dismissing ApplyRemoveLabelDialog"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/provider/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->dismiss()V

    .line 109
    :goto_0
    return-void

    .line 88
    :cond_1
    iput-object p3, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mConversationInfos:Ljava/util/Collection;

    .line 90
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/google/android/gm/provider/LabelManager;->getLabelList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Z)Lcom/google/android/gm/provider/LabelList;

    move-result-object v0

    .line 92
    .local v0, labels:Lcom/google/android/gm/provider/LabelList;
    new-instance v1, Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gm/LabelSelectorAdapter;-><init>(Landroid/content/Context;Lcom/google/android/gm/provider/LabelList;Ljava/util/Set;)V

    iput-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    .line 93
    new-instance v1, Lcom/google/android/gm/ConversationsLabelHandler;

    iget-object v2, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mMenuHandler:Lcom/google/android/gm/MenuHandler;

    iget-object v3, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    iget-object v4, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mConversationInfos:Ljava/util/Collection;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gm/ConversationsLabelHandler;-><init>(Lcom/google/android/gm/MenuHandler;Lcom/google/android/gm/LabelSelectorAdapter;Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mLabelHandler:Lcom/google/android/gm/ConversationsLabelHandler;

    .line 99
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 100
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    const/high16 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDescendantFocusability(I)V

    .line 101
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/gm/ApplyRemoveLabelDialog$1;

    invoke-direct {v2, p0}, Lcom/google/android/gm/ApplyRemoveLabelDialog$1;-><init>(Lcom/google/android/gm/ApplyRemoveLabelDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 108
    iget-object v1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mAdapter:Lcom/google/android/gm/LabelSelectorAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setCommandListener(Lcom/google/android/gm/CommandListener;)V
    .locals 0
    .parameter "commandListener"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/gm/ApplyRemoveLabelDialog;->mCommandListener:Lcom/google/android/gm/CommandListener;

    .line 72
    return-void
.end method
