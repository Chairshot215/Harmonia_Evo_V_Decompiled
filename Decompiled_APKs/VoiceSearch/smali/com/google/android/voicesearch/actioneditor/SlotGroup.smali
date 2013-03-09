.class public Lcom/google/android/voicesearch/actioneditor/SlotGroup;
.super Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;
.source "SlotGroup.java"

# interfaces
.implements Lcom/google/android/voicesearch/actioneditor/SlotContainer;


# instance fields
.field private mActiveSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveSlotsView:Landroid/widget/LinearLayout;

.field private mContent:Landroid/widget/LinearLayout;

.field private mInactiveSlotButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/Button;",
            ">;"
        }
    .end annotation
.end field

.field private mInactiveSlots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView;",
            ">;"
        }
    .end annotation
.end field

.field private mInactiveSlotsView:Landroid/widget/LinearLayout;

.field private mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlots:Ljava/util/List;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotButtons:Ljava/util/List;

    .line 58
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->setFillViewport(Z)V

    .line 60
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 64
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f040014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    .line 65
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    const v2, 0x7f0e004d

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlotsView:Landroid/widget/LinearLayout;

    .line 66
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    const v2, 0x7f0e004f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    .line 67
    new-instance v1, Lcom/google/android/voicesearch/actioneditor/PopupManager;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    .line 68
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    invoke-virtual {v1, p0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->addFallthroughTouchView(Landroid/view/View;)V

    .line 69
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    invoke-virtual {v1, p0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->addFallthroughKeyView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method private createInactiveSlotView(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/widget/Button;
    .locals 5
    .parameter "slot"

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 179
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040013

    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 181
    .local v1, ret:Landroid/widget/Button;
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/SlotSpec;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 183
    new-instance v2, Lcom/google/android/voicesearch/actioneditor/SlotGroup$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/google/android/voicesearch/actioneditor/SlotGroup$2;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotGroup;Lcom/google/android/voicesearch/actioneditor/SlotView;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-object v1
.end method

.method private refreshLayout()V
    .locals 4

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->removeAllViews()V

    .line 95
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 96
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 99
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 100
    .local v2, slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 104
    .end local v2           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :cond_0
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 105
    .restart local v2       #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    invoke-direct {p0, v2}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->createInactiveSlotView(Lcom/google/android/voicesearch/actioneditor/SlotView;)Landroid/widget/Button;

    move-result-object v0

    .line 106
    .local v0, button:Landroid/widget/Button;
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotButtons:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 111
    .end local v0           #button:Landroid/widget/Button;
    .end local v2           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :cond_1
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->addView(Landroid/view/View;)V

    .line 112
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->getDefaultSlot()Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v2

    .line 113
    .restart local v2       #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    if-eqz v2, :cond_2

    .line 114
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSelected(Z)V

    .line 115
    invoke-virtual {v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->requestFocus()Z

    .line 117
    :cond_2
    return-void
.end method

.method private sortActiveSlots()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    new-instance v1, Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;

    invoke-direct {v1, p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup$1;-><init>(Lcom/google/android/voicesearch/actioneditor/SlotGroup;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    return-void
.end method


# virtual methods
.method public activateSlot(Lcom/google/android/voicesearch/actioneditor/SlotView;Landroid/widget/Button;)V
    .locals 2
    .parameter "slot"
    .parameter "button"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotButtons:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlotsView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 167
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->sortActiveSlots()V

    .line 169
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlotsView:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 172
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->requestFocus()Z

    .line 173
    return-void
.end method

.method public getActiveSlots()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultSlot()Lcom/google/android/voicesearch/actioneditor/SlotView;
    .locals 4

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->getActiveSlots()Ljava/util/List;

    move-result-object v2

    .line 236
    .local v2, slots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actioneditor/SlotView;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 237
    .local v1, slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/SlotSpec;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    .end local v1           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mPopupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;

    return-object v0
.end method

.method public getSlotWithIdentifier(Ljava/lang/String;)Lcom/google/android/voicesearch/actioneditor/SlotView;
    .locals 3
    .parameter "identifier"

    .prologue
    .line 246
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 247
    .local v1, slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    .end local v1           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :goto_0
    return-object v1

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 253
    .restart local v1       #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->getSlotSpec()Lcom/google/android/voicesearch/actions/SlotSpec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 258
    .end local v1           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 273
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/voicesearch/actioneditor/DragFriendlyScrollView;->onScrollChanged(IIII)V

    .line 275
    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/voicesearch/actioneditor/SlotView;

    .line 276
    .local v1, slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->onParentScrolled()V

    goto :goto_0

    .line 278
    .end local v1           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :cond_0
    return-void
.end method

.method public setAccountSelectorView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 229
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    const v2, 0x7f0e004c

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 230
    .local v0, accountsView:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 231
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 232
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 218
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mContent:Landroid/widget/LinearLayout;

    const v2, 0x7f0e004b

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 219
    .local v0, headerView:Landroid/widget/FrameLayout;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 220
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 221
    return-void
.end method

.method public setSlots(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/voicesearch/actioneditor/SlotView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, activeSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actioneditor/SlotView;>;"
    .local p2, inactiveSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actioneditor/SlotView;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mActiveSlots:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->mInactiveSlots:Ljava/util/List;

    .line 83
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->sortActiveSlots()V

    .line 85
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;->refreshLayout()V

    .line 86
    return-void
.end method
