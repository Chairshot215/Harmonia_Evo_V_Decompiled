.class public Lcom/android/htccontacts/ui/widget/DropdownEditorView;
.super Landroid/widget/RelativeLayout;
.source "DropdownEditorView.java"

# interfaces
.implements Lcom/android/htccontacts/model/Editor;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/htccontacts/ui/widget/EditorElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/TextView;

.field mCallback:Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;

.field private mDefaultTextRes:I

.field protected mDisplayer:Lcom/android/htccontacts/ui/widget/EditorItemDisplay;

.field protected mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

.field protected mEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation
.end field

.field protected mKind:Lcom/android/htccontacts/model/DataKind;

.field private mPendingType:Lcom/android/htccontacts/model/AccountType$EditType;

.field protected mState:Lcom/android/htccontacts/model/EntityDelta;

.field protected mType:Lcom/android/htccontacts/model/AccountType$EditType;

.field type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->type:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntryList:Ljava/util/ArrayList;

    .line 41
    const v0, 0x7f0a0276

    iput v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mDefaultTextRes:I

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->type:I

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntryList:Ljava/util/ArrayList;

    .line 41
    const v0, 0x7f0a0276

    iput v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mDefaultTextRes:I

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/ui/widget/DropdownEditorView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setButtonText(Ljava/lang/String;)V

    return-void
.end method

.method private resetButton()V
    .locals 2

    .prologue
    .line 185
    iget v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mDefaultTextRes:I

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mDefaultTextRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setButtonText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 146
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 148
    .local v0, view:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->resetButton()V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public appendDisplayText(Ljava/lang/String;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 174
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 175
    .local v1, seq:Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .line 176
    .local v0, result:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void

    .line 180
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public getDisplayText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getElementType()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->type:I

    return v0
.end method

.method public getState()Lcom/android/htccontacts/model/EntityDelta;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    return-object v0
.end method

.method public isEmpty(Z)Z
    .locals 4
    .parameter "shouldVisible"

    .prologue
    .line 205
    if-nez p1, :cond_1

    .line 206
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 216
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    const/4 v2, 0x1

    .line 210
    .local v2, isEmpty:Z
    iget-object v3, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 211
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 212
    const/4 v2, 0x0

    .line 213
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 202
    return-void
.end method

.method public onFieldChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "column"
    .parameter "value"

    .prologue
    .line 74
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 61
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/16 v1, 0x19

    if-ne v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09013b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v3, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 68
    :cond_0
    return-void
.end method

.method public requestFocusEditableView()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 232
    :cond_0
    return-void
.end method

.method public setDefaultDisplay(I)V
    .locals 0
    .parameter "defaultTextRes"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mDefaultTextRes:I

    .line 78
    return-void
.end method

.method public setDeletable(Z)V
    .locals 0
    .parameter "deletable"

    .prologue
    .line 157
    return-void
.end method

.method public setDisplayText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "sequence"

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public setEditorDispaly(Lcom/android/htccontacts/ui/widget/EditorItemDisplay;)V
    .locals 0
    .parameter "display"

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mDisplayer:Lcom/android/htccontacts/ui/widget/EditorItemDisplay;

    .line 224
    return-void
.end method

.method public setEditorListener(Lcom/android/htccontacts/model/Editor$EditorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 161
    return-void
.end method

.method public setEditorMonitor(Lcom/android/htccontacts/ui/widget/EditorMonitor;)V
    .locals 0
    .parameter "monitor"

    .prologue
    .line 237
    return-void
.end method

.method public setOnActionListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method public setValues(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;)V
    .locals 12
    .parameter "kind"
    .parameter "entry"
    .parameter "state"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    .line 83
    iput-object p2, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 84
    iput-object p3, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    .line 85
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 87
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    if-nez v10, :cond_3

    .line 89
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v11, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v11, v11, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/htccontacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 90
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mState:Lcom/android/htccontacts/model/EntityDelta;

    iget-object v11, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mKind:Lcom/android/htccontacts/model/DataKind;

    iget-object v11, v11, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 91
    .local v3, e:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 94
    .end local v3           #e:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->resetButton()V

    .line 101
    :cond_1
    :goto_1
    if-eqz p2, :cond_5

    .line 102
    invoke-virtual {p2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v10

    if-nez v10, :cond_4

    .line 104
    const/16 v10, 0x8

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setVisibility(I)V

    .line 142
    :cond_2
    :goto_2
    return-void

    .line 98
    :cond_3
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntryList:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setVisibility(I)V

    .line 113
    :cond_5
    const/4 v5, 0x0

    .line 115
    .local v5, hidePossible:Z
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 117
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, displayString:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mDisplayer:Lcom/android/htccontacts/ui/widget/EditorItemDisplay;

    if-eqz v10, :cond_7

    .line 119
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mCallback:Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;

    if-nez v10, :cond_6

    .line 120
    new-instance v10, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;

    invoke-direct {v10, p0}, Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;-><init>(Lcom/android/htccontacts/ui/widget/DropdownEditorView;)V

    iput-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mCallback:Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;

    .line 122
    :cond_6
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mDisplayer:Lcom/android/htccontacts/ui/widget/EditorItemDisplay;

    iget-object v11, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mCallback:Lcom/android/htccontacts/ui/widget/DropdownEditorView$DropDownDelayStringCallback;

    invoke-interface {v10, p1, p2, p3, v11}, Lcom/android/htccontacts/ui/widget/EditorItemDisplay;->obtainDisplayStringDelayed(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/ui/widget/DelayStringCallback;)Ljava/lang/String;

    move-result-object v2

    .line 137
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->setButtonText(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p3}, Lcom/android/htccontacts/model/EntityDelta;->isReadyOnly()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 140
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mButton:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2

    .line 125
    :cond_7
    iget-object v10, p0, Lcom/android/htccontacts/ui/widget/DropdownEditorView;->mEntryList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 126
    .local v9, valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    iget-object v10, p1, Lcom/android/htccontacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_9
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/AccountType$EditField;

    .line 127
    .local v4, field:Lcom/android/htccontacts/model/AccountType$EditField;
    iget-object v1, v4, Lcom/android/htccontacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 128
    .local v1, column:Ljava/lang/String;
    invoke-virtual {v9, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, value:Ljava/lang/String;
    if-eqz v8, :cond_9

    .line 130
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v10, ", "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 135
    .end local v1           #column:Ljava/lang/String;
    .end local v4           #field:Lcom/android/htccontacts/model/AccountType$EditField;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #value:Ljava/lang/String;
    .end local v9           #valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3
.end method
