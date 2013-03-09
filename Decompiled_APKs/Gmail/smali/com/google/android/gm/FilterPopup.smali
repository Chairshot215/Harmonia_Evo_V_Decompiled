.class public Lcom/google/android/gm/FilterPopup;
.super Ljava/lang/Object;
.source "FilterPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/FilterPopup$SearchWrapper;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLabel:Ljava/lang/String;

.field private final mPopup:Landroid/widget/ListPopupWindow;

.field private mUserLabelName:Ljava/lang/String;

.field private mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/google/android/gm/FilterPopup$SearchWrapper;Ljava/lang/String;Lcom/google/android/gm/provider/LabelList;)V
    .locals 8
    .parameter "context"
    .parameter "target"
    .parameter "account"
    .parameter "widget"
    .parameter "label"
    .parameter "labelsList"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/android/gm/FilterPopup;->mContext:Landroid/content/Context;

    .line 51
    iput-object p5, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    .line 53
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 56
    .local v3, resources:Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 57
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    invoke-virtual {p6, v5}, Lcom/google/android/gm/provider/LabelList;->get(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v2

    .line 58
    .local v2, l:Lcom/google/android/gm/provider/Label;
    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/gm/provider/GmailQuery;->getLabelSearchString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    .line 60
    invoke-virtual {v2}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/FilterPopup;->mUserLabelName:Ljava/lang/String;

    .line 64
    .end local v2           #l:Lcom/google/android/gm/provider/Label;
    :cond_0
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mUserLabelName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 65
    invoke-static {p1, p3}, Lcom/google/android/gm/persistence/Persistence;->getAccountInbox(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, inboxLabel:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/android/gm/provider/GmailQuery;->getLabelSearchString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    .line 67
    const-string v5, "^iim"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 68
    const v5, 0x7f0c00c1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/FilterPopup;->mUserLabelName:Ljava/lang/String;

    .line 74
    .end local v1           #inboxLabel:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/android/gm/provider/GmailQuery;->getCanonicalNameForLabelOperation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, canonicalName:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v5, "^iim"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "^i"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 77
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    invoke-interface {v5}, Lcom/google/android/gm/FilterPopup$SearchWrapper;->getQuery()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/android/gm/provider/GmailQuery;->getMatchingLabelOperation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 78
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    iget-object v6, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gm/provider/GmailQuery;->getLabelQueryOperationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/gm/FilterPopup$SearchWrapper;->addToQuery(Ljava/lang/String;)V

    .line 83
    :cond_2
    new-instance v5, Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/google/android/gm/FilterPopup;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/google/android/gm/FilterPopup;->mPopup:Landroid/widget/ListPopupWindow;

    .line 84
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 85
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v6, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 86
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mPopup:Landroid/widget/ListPopupWindow;

    const v6, 0x7f0e0017

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 87
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, p2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 88
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04002c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 89
    .local v4, v:Landroid/view/View;
    invoke-direct {p0, v4}, Lcom/google/android/gm/FilterPopup;->initializeCheckboxes(Landroid/view/View;)V

    .line 90
    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v5, v4}, Landroid/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 91
    return-void

    .line 70
    .end local v0           #canonicalName:Ljava/lang/String;
    .end local v4           #v:Landroid/view/View;
    .restart local v1       #inboxLabel:Ljava/lang/String;
    :cond_3
    const v5, 0x7f0c0117

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/android/gm/FilterPopup;->mUserLabelName:Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeCheckboxes(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v7, 0x7f0f0089

    const v6, 0x7f0f0079

    const v5, 0x7f0f0042

    const v4, 0x7f0f0012

    const/4 v8, 0x1

    .line 94
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    iget-object v3, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    invoke-interface {v3}, Lcom/google/android/gm/FilterPopup$SearchWrapper;->getQuery()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, query:Ljava/lang/String;
    invoke-static {v2}, Lcom/google/android/gm/provider/GmailQuery;->isUnreadQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 98
    .local v0, box:Landroid/widget/CheckBox;
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 100
    .end local v0           #box:Landroid/widget/CheckBox;
    :cond_0
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static {v2}, Lcom/google/android/gm/provider/GmailQuery;->isChatQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 103
    .restart local v0       #box:Landroid/widget/CheckBox;
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    .end local v0           #box:Landroid/widget/CheckBox;
    :cond_1
    const v3, 0x7f0f008a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-static {v2}, Lcom/google/android/gm/provider/GmailQuery;->isImportantQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const v3, 0x7f0f008a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 108
    .restart local v0       #box:Landroid/widget/CheckBox;
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    .end local v0           #box:Landroid/widget/CheckBox;
    :cond_2
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-static {v2}, Lcom/google/android/gm/provider/GmailQuery;->isAttachmentQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 112
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 113
    .restart local v0       #box:Landroid/widget/CheckBox;
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 115
    .end local v0           #box:Landroid/widget/CheckBox;
    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    invoke-static {v2}, Lcom/google/android/gm/provider/GmailQuery;->isStarQuery(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 117
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 118
    .restart local v0       #box:Landroid/widget/CheckBox;
    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 120
    .end local v0           #box:Landroid/widget/CheckBox;
    :cond_4
    const v3, 0x7f0f0011

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 121
    .local v1, labelBox:Landroid/widget/CheckBox;
    iget-object v3, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 122
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const-string v3, "%s %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gm/FilterPopup;->mContext:Landroid/content/Context;

    const v7, 0x7f0c003b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mUserLabelName:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v3, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gm/provider/GmailQuery;->getMatchingLabelOperation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 126
    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    :cond_5
    :goto_0
    return-void

    .line 129
    :cond_6
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method private onClickBinary(Landroid/view/View;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 5
    .parameter "v"
    .parameter "pattern"
    .parameter "attribute"

    .prologue
    .line 180
    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    .line 181
    .local v1, box:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    invoke-interface {v4}, Lcom/google/android/gm/FilterPopup$SearchWrapper;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 182
    .local v2, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    .line 183
    .local v0, add:Z
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 184
    if-eqz v0, :cond_1

    .line 185
    iget-object v4, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    invoke-interface {v4, p3}, Lcom/google/android/gm/FilterPopup$SearchWrapper;->addToQuery(Ljava/lang/String;)V

    .line 190
    :goto_1
    return-void

    .line 182
    .end local v0           #add:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 187
    .restart local v0       #add:Z
    :cond_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, toRemove:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    invoke-interface {v4, v3}, Lcom/google/android/gm/FilterPopup$SearchWrapper;->removeFromQuery(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/gm/FilterPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 139
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 174
    :goto_0
    return-void

    .line 145
    :sswitch_0
    sget-object v4, Lcom/google/android/gm/provider/GmailQuery;->UNREAD_PATTERN:Ljava/util/regex/Pattern;

    const-string v5, "is:unread"

    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gm/FilterPopup;->onClickBinary(Landroid/view/View;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :sswitch_1
    sget-object v4, Lcom/google/android/gm/provider/GmailQuery;->CHAT_PATTERN:Ljava/util/regex/Pattern;

    const-string v5, "is:chat"

    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gm/FilterPopup;->onClickBinary(Landroid/view/View;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :sswitch_2
    sget-object v4, Lcom/google/android/gm/provider/GmailQuery;->ATTACHMENT_QUERY_PATTERN:Ljava/util/regex/Pattern;

    const-string v5, "has:attachment"

    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gm/FilterPopup;->onClickBinary(Landroid/view/View;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :sswitch_3
    sget-object v4, Lcom/google/android/gm/provider/GmailQuery;->STAR_PATTERN:Ljava/util/regex/Pattern;

    const-string v5, "is:starred"

    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gm/FilterPopup;->onClickBinary(Landroid/view/View;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :sswitch_4
    sget-object v4, Lcom/google/android/gm/provider/GmailQuery;->IMPORTANT_PATTERN:Ljava/util/regex/Pattern;

    const-string v5, "is:important"

    invoke-direct {p0, p1, v4, v5}, Lcom/google/android/gm/FilterPopup;->onClickBinary(Landroid/view/View;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_5
    move-object v1, p1

    .line 160
    check-cast v1, Landroid/widget/CheckBox;

    .line 161
    .local v1, box:Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    invoke-interface {v4}, Lcom/google/android/gm/FilterPopup$SearchWrapper;->getQuery()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/google/android/gm/provider/GmailQuery;->getMatchingLabelOperation(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, labelOperationMatch:Ljava/lang/String;
    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 165
    .local v0, add:Z
    :goto_1
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/google/android/gm/FilterPopup;->mLabel:Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gm/provider/GmailQuery;->getLabelQueryOperationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    .local v2, labelAttribute:Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 168
    if-eqz v0, :cond_2

    .line 169
    iget-object v4, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    invoke-interface {v4, v2}, Lcom/google/android/gm/FilterPopup$SearchWrapper;->addToQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    .end local v0           #add:Z
    .end local v2           #labelAttribute:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0       #add:Z
    :cond_1
    move-object v2, v3

    .line 165
    goto :goto_2

    .line 171
    .restart local v2       #labelAttribute:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/google/android/gm/FilterPopup;->mWidget:Lcom/google/android/gm/FilterPopup$SearchWrapper;

    invoke-interface {v4, v2}, Lcom/google/android/gm/FilterPopup$SearchWrapper;->removeFromQuery(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0011 -> :sswitch_5
        0x7f0f0012 -> :sswitch_0
        0x7f0f0042 -> :sswitch_3
        0x7f0f0079 -> :sswitch_2
        0x7f0f0089 -> :sswitch_1
        0x7f0f008a -> :sswitch_4
    .end sparse-switch
.end method

.method public show()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/google/android/gm/FilterPopup;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 135
    return-void
.end method
