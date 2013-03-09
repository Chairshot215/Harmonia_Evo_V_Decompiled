.class public Lcom/android/htccontacts/ui/widget/KindSectionView;
.super Landroid/widget/LinearLayout;
.source "KindSectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/htccontacts/model/Editor$EditorListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "KindSectionView"


# instance fields
.field private mAdd:Landroid/view/View;

.field private mEditorItemDisplay:Lcom/android/htccontacts/ui/widget/EditorItemDisplay;

.field private mEditors:Landroid/view/ViewGroup;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mKind:Lcom/android/htccontacts/model/DataKind;

.field private mMonitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;

.field private mState:Lcom/android/htccontacts/model/EntityDelta;

.field private mTitle:Landroid/widget/TextView;

.field private mUpdateListener:Lcom/android/htccontacts/model/KindSectionViewUpdate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method private ensureNewInsertedItem(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Landroid/view/View;)V
    .locals 4
    .parameter "entry"
    .parameter "view"

    .prologue
    .line 227
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 228
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getNewInsertTime()J

    move-result-wide v1

    .line 229
    .local v1, time:J
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;

    .line 230
    .local v0, tag:Lcom/android/htccontacts/ui/widget/ItemDataViewTag;
    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;

    .end local v0           #tag:Lcom/android/htccontacts/ui/widget/ItemDataViewTag;
    invoke-direct {v0}, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;-><init>()V

    .line 233
    .restart local v0       #tag:Lcom/android/htccontacts/ui/widget/ItemDataViewTag;
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;->isInsert:Z

    .line 234
    iput-wide v1, v0, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;->mNewInsertTime:J

    .line 235
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 237
    .end local v0           #tag:Lcom/android/htccontacts/ui/widget/ItemDataViewTag;
    .end local v1           #time:J
    :cond_1
    return-void
.end method


# virtual methods
.method protected getEditorElement()Lcom/android/htccontacts/ui/widget/EditorElement;
    .locals 5

    .prologue
    const v4, 0x7f030048

    const/4 v3, 0x0

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, element:Lcom/android/htccontacts/ui/widget/EditorElement;
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v1, v1, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/group_membership"

    if-ne v1, v2, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #element:Lcom/android/htccontacts/ui/widget/EditorElement;
    check-cast v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;

    .line 264
    .restart local v0       #element:Lcom/android/htccontacts/ui/widget/EditorElement;
    :goto_0
    return-object v0

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .end local v0           #element:Lcom/android/htccontacts/ui/widget/EditorElement;
    check-cast v0, Lcom/android/htccontacts/ui/widget/GenericEditorView;

    .restart local v0       #element:Lcom/android/htccontacts/ui/widget/EditorElement;
    goto :goto_0
.end method

.method public getLastInsertedElement()Landroid/view/View;
    .locals 10

    .prologue
    .line 239
    iget-object v8, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 240
    .local v5, size:I
    const/4 v4, 0x0

    .line 241
    .local v4, lastView:Landroid/view/View;
    const-wide/16 v2, 0x0

    .line 242
    .local v2, lastTime:J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_1

    .line 243
    iget-object v8, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 244
    .local v7, view:Landroid/view/View;
    instance-of v8, v7, Lcom/android/htccontacts/ui/widget/EditorElement;

    if-eqz v8, :cond_0

    move-object v0, v7

    .line 245
    check-cast v0, Lcom/android/htccontacts/ui/widget/EditorElement;

    .line 246
    .local v0, element:Lcom/android/htccontacts/ui/widget/EditorElement;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;

    .line 247
    .local v6, tag:Lcom/android/htccontacts/ui/widget/ItemDataViewTag;
    if-eqz v6, :cond_0

    iget-boolean v8, v6, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;->isInsert:Z

    if-eqz v8, :cond_0

    iget-wide v8, v6, Lcom/android/htccontacts/ui/widget/ItemDataViewTag;->mNewInsertTime:J

    cmp-long v8, v8, v2

    if-lez v8, :cond_0

    move-object v4, v0

    .line 248
    check-cast v4, Landroid/view/View;

    .line 242
    .end local v0           #element:Lcom/android/htccontacts/ui/widget/EditorElement;
    .end local v6           #tag:Lcom/android/htccontacts/ui/widget/ItemDataViewTag;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    .end local v7           #view:Landroid/view/View;
    :cond_1
    return-object v4
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v0, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public hideTitle()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mAdd:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 312
    return-void
.end method

.method public insertNewEmpty()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 321
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->rebuildFromState()V

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->updateAddEnabled()V

    .line 324
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->updateEditorsVisible()V

    .line 325
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v2, v2, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v0

    .line 289
    .local v0, count:I
    if-nez v0, :cond_0

    .line 290
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    invoke-static {v1, v2}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 291
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->rebuildFromState()V

    .line 292
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->updateAddEnabled()V

    .line 293
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->updateEditorsVisible()V

    .line 296
    :cond_0
    return-void
.end method

.method public onDeleted(Lcom/android/htccontacts/model/Editor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->updateAddEnabled()V

    .line 102
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->updateEditorsVisible()V

    .line 103
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setDrawingCacheEnabled(Z)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 90
    const v0, 0x7f07008e

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    .line 92
    const v0, 0x7f07008c

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mAdd:Landroid/view/View;

    .line 93
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mTitle:Landroid/widget/TextView;

    .line 97
    return-void
.end method

.method public onRequest(I)V
    .locals 0
    .parameter "request"

    .prologue
    .line 108
    return-void
.end method

.method public rebuildFromState()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const v11, 0x7f030046

    const/4 v12, 0x0

    .line 127
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 134
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v9}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    .line 135
    .local v8, raw_contact_value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v9, "account_type"

    invoke-virtual {v8, v9}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, accountType:Ljava/lang/String;
    const-string v9, "custom_minetype"

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 141
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v9, v11, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    .line 144
    .local v3, editorView:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v9}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 145
    .local v1, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v3, v9, v1, v10}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 147
    const-string v9, "custom_minetype"

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setId(I)V

    .line 151
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditorItemDisplay:Lcom/android/htccontacts/ui/widget/EditorItemDisplay;

    invoke-virtual {v3, v9}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setEditorDispaly(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V

    .line 153
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 223
    .end local v1           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v3           #editorView:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v9, v9, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v10, "vnd.android.cursor.item/group_membership"

    if-ne v9, v10, :cond_2

    .line 157
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 160
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v9, v11, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ui/widget/DropdownEditorView;

    .line 164
    .restart local v3       #editorView:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v3, v9, v13, v10}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 166
    const-string v9, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setId(I)V

    .line 167
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditorItemDisplay:Lcom/android/htccontacts/ui/widget/EditorItemDisplay;

    invoke-virtual {v3, v9}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setEditorDispaly(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V

    .line 168
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v3, v9, v13, v10}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 169
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 170
    .end local v3           #editorView:Lcom/android/htccontacts/ui/widget/DropdownEditorView;
    :cond_2
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v9, v9, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v10, "vnd.android.cursor.item/contact_event"

    if-ne v9, v10, :cond_4

    .line 171
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 173
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 175
    .local v5, entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 177
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f030045

    iget-object v11, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/ui/widget/DateEditorView;

    .line 179
    .local v3, editorView:Lcom/android/htccontacts/ui/widget/DateEditorView;
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-virtual {v3, v9, v5, v10}, Lcom/android/htccontacts/ui/widget/DateEditorView;->setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 180
    invoke-virtual {v3, p0}, Lcom/android/htccontacts/ui/widget/DateEditorView;->setEditorListener(Lcom/android/htccontacts/model/Editor$EditorListener;)V

    .line 181
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getViewId()I

    move-result v9

    invoke-virtual {v3, v9}, Lcom/android/htccontacts/ui/widget/DateEditorView;->setId(I)V

    .line 182
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditorItemDisplay:Lcom/android/htccontacts/ui/widget/EditorItemDisplay;

    invoke-virtual {v3, v9}, Lcom/android/htccontacts/ui/widget/DateEditorView;->setEditorDispaly(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V

    .line 183
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v9, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 184
    invoke-direct {p0, v5, v3}, Lcom/android/htccontacts/ui/widget/KindSectionView;->ensureNewInsertedItem(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Landroid/view/View;)V

    goto :goto_1

    .line 187
    .end local v3           #editorView:Lcom/android/htccontacts/ui/widget/DateEditorView;
    .end local v5           #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_4
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 189
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 191
    .restart local v5       #entry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 193
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->getEditorElement()Lcom/android/htccontacts/ui/widget/EditorElement;

    move-result-object v4

    .line 194
    .local v4, elementView:Lcom/android/htccontacts/ui/widget/EditorElement;
    instance-of v9, v4, Landroid/view/View;

    if-eqz v9, :cond_8

    move-object v2, v4

    .line 195
    check-cast v2, Landroid/view/View;

    .line 196
    .local v2, editor:Landroid/view/View;
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getViewId()I

    move-result v9

    invoke-virtual {v2, v9}, Landroid/view/View;->setId(I)V

    .line 197
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    invoke-direct {p0, v5, v2}, Lcom/android/htccontacts/ui/widget/KindSectionView;->ensureNewInsertedItem(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Landroid/view/View;)V

    .line 200
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mMonitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;

    if-eqz v9, :cond_6

    .line 201
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mMonitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;

    invoke-interface {v4, v9}, Lcom/android/htccontacts/ui/widget/EditorElement;->setEditorMonitor(Lcom/android/htccontacts/ui/widget/EditorMonitor;)V

    .line 204
    :cond_6
    const-string v9, "vnd.android.cursor.item/phone_v2"

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "com.anddroid.contacts.sim"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 205
    instance-of v9, v4, Lcom/android/htccontacts/ui/widget/GenericEditorView;

    if-eqz v9, :cond_7

    move-object v9, v4

    .line 206
    check-cast v9, Lcom/android/htccontacts/ui/widget/GenericEditorView;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/htccontacts/util/ContactsUtils;->simSupportPhoneLength(Landroid/content/Context;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->setEditTextMaxLength(I)V

    .line 210
    :cond_7
    const-string v9, "vnd.android.cursor.item/email_v2"

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "com.anddroid.contacts.sim"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 211
    instance-of v9, v4, Lcom/android/htccontacts/ui/widget/GenericEditorView;

    if-eqz v9, :cond_8

    .line 212
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/htccontacts/util/ContactsUtils;->simSupportEmailLength(Landroid/content/Context;)I

    move-result v7

    .local v7, maxLen:I
    move-object v9, v4

    .line 213
    check-cast v9, Lcom/android/htccontacts/ui/widget/GenericEditorView;

    invoke-virtual {v9, v7}, Lcom/android/htccontacts/ui/widget/GenericEditorView;->setEditTextMaxLength(I)V

    .line 217
    .end local v2           #editor:Landroid/view/View;
    .end local v7           #maxLen:I
    :cond_8
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    invoke-interface {v4, v9, v5, v10}, Lcom/android/htccontacts/ui/widget/EditorElement;->setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V

    .line 218
    invoke-interface {v4, p0}, Lcom/android/htccontacts/ui/widget/EditorElement;->setEditorListener(Lcom/android/htccontacts/model/Editor$EditorListener;)V

    .line 219
    iget-object v9, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditorItemDisplay:Lcom/android/htccontacts/ui/widget/EditorItemDisplay;

    invoke-interface {v4, v9}, Lcom/android/htccontacts/ui/widget/EditorElement;->setEditorDispaly(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V

    goto/16 :goto_2
.end method

.method public setEditorItemDisplay(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditorItemDisplay:Lcom/android/htccontacts/ui/widget/EditorItemDisplay;

    .line 80
    return-void
.end method

.method public setEditorMonitor(Lcom/android/htccontacts/ui/widget/EditorMonitor;)V
    .locals 0
    .parameter "monitor"

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mMonitor:Lcom/android/htccontacts/ui/widget/EditorMonitor;

    .line 300
    return-void
.end method

.method public setEnableListener(Lcom/android/htccontacts/model/KindSectionViewUpdate;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mUpdateListener:Lcom/android/htccontacts/model/KindSectionViewUpdate;

    .line 308
    return-void
.end method

.method public setState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V
    .locals 2
    .parameter "kind"
    .parameter "state"

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    .line 112
    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    .line 115
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mTitle:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/htccontacts/model/DataKind;->titleRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->rebuildFromState()V

    .line 118
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->updateAddEnabled()V

    .line 119
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/KindSectionView;->updateEditorsVisible()V

    .line 120
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    return-void
.end method

.method protected updateAddEnabled()V
    .locals 3

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    invoke-static {v1, v2}, Lcom/android/htccontacts/model/EntityModifier;->canInsert(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Z

    move-result v0

    .line 277
    .local v0, canInsert:Z
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mAdd:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 279
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mUpdateListener:Lcom/android/htccontacts/model/KindSectionViewUpdate;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mUpdateListener:Lcom/android/htccontacts/model/KindSectionViewUpdate;

    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mKind:Lcom/android/htccontacts/model/DataKind;

    invoke-interface {v1, v2}, Lcom/android/htccontacts/model/KindSectionViewUpdate;->onUpdate(Lcom/android/htccontacts/model/DataKind;)V

    .line 283
    :cond_0
    return-void
.end method

.method protected updateEditorsVisible()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 268
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    .line 269
    .local v0, hasChildren:Z
    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/ui/widget/KindSectionView;->mEditors:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 271
    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/widget/KindSectionView;->setVisibility(I)V

    .line 272
    return-void

    .end local v0           #hasChildren:Z
    :cond_0
    move v0, v1

    .line 268
    goto :goto_0

    .restart local v0       #hasChildren:Z
    :cond_1
    move v2, v3

    .line 269
    goto :goto_1

    :cond_2
    move v1, v3

    .line 271
    goto :goto_2
.end method
