.class public Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;
.super Lcom/google/android/voicesearch/actioneditor/SlotGroup;
.source "VoiceActionEditor.java"


# instance fields
.field private mAccountBar:Landroid/view/View;

.field private final mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

.field private mAccounts:[Ljava/lang/String;

.field private mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

.field private mSelectedAccount:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/voicesearch/actioneditor/SlotGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    invoke-static {p1}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getAccountHelper()Lcom/google/android/voicesearch/util/AccountHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    .line 66
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->initHeader()V

    .line 67
    invoke-direct {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->initAccountSelector()V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)Lcom/google/android/voicesearch/actions/MultislotVoiceAction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->forwardAccountToSlot(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)Lcom/google/android/voicesearch/util/AccountHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    return-object v0
.end method

.method private createSlot(Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)Lcom/google/android/voicesearch/actioneditor/SlotView;
    .locals 10
    .parameter "spec"
    .parameter "value"
    .parameter "canDelete"

    .prologue
    const/4 v6, 0x1

    .line 132
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/SlotSpec;->getType()I

    move-result v9

    .line 133
    .local v9, type:I
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v2

    .line 134
    .local v2, popupManager:Lcom/google/android/voicesearch/actioneditor/PopupManager;
    move-object v3, p0

    .line 136
    .local v3, slotContainer:Lcom/google/android/voicesearch/actioneditor/SlotContainer;
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0c0002

    invoke-direct {v0, v1, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 137
    .local v0, wrappedContext:Landroid/content/Context;
    const/4 v1, 0x3

    if-ne v9, v1, :cond_1

    .line 138
    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->createTextSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)Lcom/google/android/voicesearch/actioneditor/TextSlot;

    move-result-object v8

    .line 153
    .local v8, slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :goto_0
    if-eqz v8, :cond_0

    .line 154
    new-instance v7, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$2;

    invoke-direct {v7, p0, v8, p1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$2;-><init>(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;Lcom/google/android/voicesearch/actioneditor/SlotView;Lcom/google/android/voicesearch/actions/SlotSpec;)V

    .line 161
    .local v7, listener:Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;
    invoke-virtual {v8, v7}, Lcom/google/android/voicesearch/actioneditor/SlotView;->addValueListener(Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;)V

    .line 163
    invoke-interface {v7, v8}, Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;->onValueChange(Lcom/google/android/voicesearch/actioneditor/SlotView;)V

    .line 165
    invoke-virtual {v8, p3}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setCanDelete(Z)V

    .line 168
    .end local v7           #listener:Lcom/google/android/voicesearch/actioneditor/SlotView$ValueListener;
    :cond_0
    return-object v8

    .line 140
    .end local v8           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :cond_1
    const/4 v1, 0x2

    if-ne v9, v1, :cond_2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 141
    invoke-static/range {v0 .. v6}, Lcom/google/android/voicesearch/actioneditor/TextSlot;->createTextSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)Lcom/google/android/voicesearch/actioneditor/TextSlot;

    move-result-object v8

    .restart local v8       #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    goto :goto_0

    .line 143
    .end local v8           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :cond_2
    if-eqz v9, :cond_3

    if-ne v9, v6, :cond_4

    :cond_3
    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 144
    invoke-static/range {v0 .. v5}, Lcom/google/android/voicesearch/actioneditor/ContactSlot;->createContactSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/ContactSlot;

    move-result-object v8

    .restart local v8       #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    goto :goto_0

    .line 146
    .end local v8           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :cond_4
    const/4 v1, 0x4

    if-ne v9, v1, :cond_5

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 147
    invoke-static/range {v0 .. v5}, Lcom/google/android/voicesearch/actioneditor/TimeSlot;->createTimeSlot(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/voicesearch/actioneditor/PopupManager;Lcom/google/android/voicesearch/actioneditor/SlotContainer;Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;)Lcom/google/android/voicesearch/actioneditor/TimeSlot;

    move-result-object v8

    .restart local v8       #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    goto :goto_0

    .line 150
    .end local v8           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :cond_5
    const/4 v8, 0x0

    .restart local v8       #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    goto :goto_0
.end method

.method private forwardAccountToSlot(Ljava/lang/String;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 303
    iget-object v3, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSlotToReceiveAccountSelection()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, additionalAccountSlotId:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 311
    :goto_0
    return-void

    .line 308
    :cond_0
    new-instance v0, Lcom/google/android/voicesearch/actions/Contact;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-direct {v0, v3, p1, v4, v5}, Lcom/google/android/voicesearch/actions/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 309
    .local v0, accountContact:Lcom/google/android/voicesearch/actions/Contact;
    new-instance v2, Lcom/google/android/voicesearch/actions/ContactsValue;

    invoke-direct {v2, v0}, Lcom/google/android/voicesearch/actions/ContactsValue;-><init>(Lcom/google/android/voicesearch/actions/Contact;)V

    .line 310
    .local v2, cv:Lcom/google/android/voicesearch/actions/ContactsValue;
    invoke-virtual {p0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getSlotWithIdentifier(Ljava/lang/String;)Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/voicesearch/actioneditor/SlotView;->setSlotValue(Lcom/google/android/voicesearch/actions/SlotValue;)V

    goto :goto_0
.end method

.method private initAccountSelector()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 73
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040001

    invoke-virtual {v3, v5, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 75
    .local v0, accountsSelector:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setAccountSelectorView(Landroid/view/View;)V

    .line 77
    const v5, 0x7f0e0002

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountBar:Landroid/view/View;

    .line 78
    const v5, 0x7f0e0004

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    .line 82
    const v5, 0x7f0e0003

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 83
    .local v1, fromLabel:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/voicesearch/VoiceSearchApplication;->getContainer(Landroid/content/Context;)Lcom/google/android/voicesearch/VoiceSearchContainer;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/voicesearch/VoiceSearchContainer;->getLanguagePrefManager()Lcom/google/android/voicesearch/LanguagePrefManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/voicesearch/LanguagePrefManager;->getLanguageSetting()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, lang:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "_slot_"

    const-string v7, "multislot"

    const-string v8, "from"

    invoke-static {v5, v4, v6, v7, v8}, Lcom/google/android/voicesearch/StringUtils;->getText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 93
    .local v2, fromLabelText:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a07de

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v9

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v5, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    new-instance v6, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;

    invoke-direct {v6, p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor$1;-><init>(Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    return-void
.end method

.method private initHeader()V
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 124
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    .local v0, header:Landroid/widget/LinearLayout;
    invoke-virtual {p0, v0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setHeaderView(Landroid/view/View;)V

    .line 127
    const v2, 0x7f0e0005

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mTitle:Landroid/widget/TextView;

    .line 128
    return-void
.end method


# virtual methods
.method public hidePopup()V
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getPopupManager()Lcom/google/android/voicesearch/actioneditor/PopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/voicesearch/actioneditor/PopupManager;->dismissCurrentPopup()V

    .line 244
    return-void
.end method

.method public setAccounts([Ljava/lang/String;)V
    .locals 4
    .parameter "accounts"

    .prologue
    const/4 v3, 0x0

    .line 277
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    .line 279
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->requiresMailAccount()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountHelper:Lcom/google/android/voicesearch/util/AccountHelper;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/util/AccountHelper;->getLastUsedGmailAccountIndex([Ljava/lang/String;)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 283
    .local v0, selectedItem:I
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->setAccount(Ljava/lang/String;)V

    .line 284
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->forwardAccountToSlot(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 287
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->requiresMailAccountSelector()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .end local v0           #selectedItem:I
    :cond_1
    return-void
.end method

.method public setAction(Lcom/google/android/voicesearch/actions/MultislotVoiceAction;)V
    .locals 12
    .parameter "action"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 172
    iput-object p1, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, activeSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actioneditor/SlotView;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v3, inactiveSlots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actioneditor/SlotView;>;"
    invoke-virtual {p1}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSlots()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 177
    .local v5, spec:Lcom/google/android/voicesearch/actions/SlotSpec;
    invoke-virtual {v5}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getSlotValue(Ljava/lang/String;)Lcom/google/android/voicesearch/actions/SlotValue;

    move-result-object v6

    .line 178
    .local v6, value:Lcom/google/android/voicesearch/actions/SlotValue;
    invoke-virtual {v5}, Lcom/google/android/voicesearch/actions/SlotSpec;->isMandatory()Z

    move-result v7

    if-nez v7, :cond_1

    move v7, v8

    :goto_1
    invoke-direct {p0, v5, v6, v7}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->createSlot(Lcom/google/android/voicesearch/actions/SlotSpec;Lcom/google/android/voicesearch/actions/SlotValue;Z)Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v4

    .line 179
    .local v4, slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    invoke-virtual {v4}, Lcom/google/android/voicesearch/actioneditor/SlotView;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/google/android/voicesearch/actions/SlotSpec;->isShownInitially()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 181
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :cond_1
    move v7, v9

    .line 178
    goto :goto_1

    .line 183
    .restart local v4       #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    :cond_2
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 187
    .end local v4           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    .end local v5           #spec:Lcom/google/android/voicesearch/actions/SlotSpec;
    .end local v6           #value:Lcom/google/android/voicesearch/actions/SlotValue;
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->setSlots(Ljava/util/List;Ljava/util/List;)V

    .line 189
    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v7

    const v10, 0x7f0a07dd

    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, format:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mTitle:Landroid/widget/TextView;

    new-array v10, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {p1, v11}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountBar:Landroid/view/View;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 194
    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v7}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->requiresMailAccount()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v7}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->requiresMailAccountSelector()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v7}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getAccount()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccounts:[Ljava/lang/String;

    array-length v7, v7

    if-le v7, v8, :cond_4

    .line 203
    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mSelectedAccount:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v8}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getAccount()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    iget-object v7, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAccountBar:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 206
    :cond_4
    return-void
.end method

.method public validateSlots()Z
    .locals 5

    .prologue
    .line 214
    iget-object v4, p0, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->mAction:Lcom/google/android/voicesearch/actions/MultislotVoiceAction;

    invoke-virtual {v4}, Lcom/google/android/voicesearch/actions/MultislotVoiceAction;->getInvalidSlots()Ljava/util/List;

    move-result-object v2

    .line 215
    .local v2, slots:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/voicesearch/actions/SlotSpec;>;"
    if-nez v2, :cond_0

    .line 216
    const/4 v4, 0x1

    .line 224
    :goto_0
    return v4

    .line 219
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/voicesearch/actions/SlotSpec;

    .line 220
    .local v3, spec:Lcom/google/android/voicesearch/actions/SlotSpec;
    invoke-virtual {v3}, Lcom/google/android/voicesearch/actions/SlotSpec;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/voicesearch/actioneditor/VoiceActionEditor;->getSlotWithIdentifier(Ljava/lang/String;)Lcom/google/android/voicesearch/actioneditor/SlotView;

    move-result-object v1

    .line 221
    .local v1, slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    invoke-virtual {v1}, Lcom/google/android/voicesearch/actioneditor/SlotView;->showInvalid()V

    goto :goto_1

    .line 224
    .end local v1           #slot:Lcom/google/android/voicesearch/actioneditor/SlotView;
    .end local v3           #spec:Lcom/google/android/voicesearch/actions/SlotSpec;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
