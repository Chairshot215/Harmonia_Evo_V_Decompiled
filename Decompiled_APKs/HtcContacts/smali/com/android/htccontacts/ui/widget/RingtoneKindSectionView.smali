.class public Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;
.super Landroid/widget/LinearLayout;
.source "RingtoneKindSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/htccontacts/model/Editor$EditorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KindSectionView"


# instance fields
.field private mAdd:Landroid/view/View;

.field private mEditors:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKind:Lcom/android/htccontacts/model/DataKind;

.field private mState:Lcom/android/htccontacts/model/EntityDelta;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getEditorElement()Lcom/android/htccontacts/ui/widget/EditorElement;
    .locals 5

    .prologue
    const v4, 0x7f030048

    const/4 v3, 0x0

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, element:Lcom/android/htccontacts/ui/widget/EditorElement;
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v1, v1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/group_membership"

    if-ne v1, v2, :cond_0

    .line 140
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #element:Lcom/android/htccontacts/ui/widget/EditorElement;
    check-cast v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;

    .line 147
    .restart local v0       #element:Lcom/android/htccontacts/ui/widget/EditorElement;
    :goto_0
    return-object v0

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #element:Lcom/android/htccontacts/ui/widget/EditorElement;
    check-cast v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;

    .restart local v0       #element:Lcom/android/htccontacts/ui/widget/EditorElement;
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 165
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->rebuildFromState()V

    .line 166
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->updateAddEnabled()V

    .line 167
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->updateEditorsVisible()V

    .line 168
    return-void
.end method

.method public onDeleted(Lcom/android/htccontacts/model/Editor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->updateAddEnabled()V

    .line 68
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->updateEditorsVisible()V

    .line 69
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 50
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->setDrawingCacheEnabled(Z)V

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 56
    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 58
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mAdd:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mTitle:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method public onRequest(I)V
    .locals 0
    .parameter "request"

    .prologue
    .line 74
    return-void
.end method

.method public rebuildFromState()V
    .locals 6

    .prologue
    .line 93
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 96
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v5, v5, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 132
    :cond_0
    return-void

    .line 101
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v4, v4, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/group_membership"

    if-eq v4, v5, :cond_0

    .line 114
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v5, v5, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 116
    .local v2, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 121
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->getEditorElement()Lcom/android/htccontacts/ui/widget/EditorElement;

    move-result-object v1

    .line 122
    .local v1, elementView:Lcom/android/htccontacts/ui/widget/EditorElement;
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v5, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-interface {v1, v4, v2, v5}, Lcom/android/htccontacts/ui/widget/EditorElement;->setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 123
    invoke-interface {v1, p0}, Lcom/android/htccontacts/ui/widget/EditorElement;->setEditorListener(Lcom/android/htccontacts/model/Editor$EditorListener;)V

    .line 125
    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_2

    move-object v0, v1

    .line 126
    check-cast v0, Landroid/view/View;

    .line 127
    .local v0, editor:Landroid/view/View;
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getViewId()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setId(I)V

    .line 128
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V
    .locals 2
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    .line 78
    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    .line 81
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mTitle:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/htccontacts/model/DataKind;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->rebuildFromState()V

    .line 84
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->updateAddEnabled()V

    .line 85
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->updateEditorsVisible()V

    .line 86
    return-void
.end method

.method protected updateAddEnabled()V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    invoke-static {v1, v2}, Lcom/android/htccontacts/model/EntityModifier;->canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v0

    .line 158
    .local v0, canInsert:Z
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mAdd:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 159
    return-void
.end method

.method protected updateEditorsVisible()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 152
    .local v0, hasChildren:Z
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/RingtoneKindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 153
    return-void

    .end local v0           #hasChildren:Z
    :cond_0
    move v0, v1

    .line 151
    goto :goto_0

    .line 152
    .restart local v0       #hasChildren:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method
