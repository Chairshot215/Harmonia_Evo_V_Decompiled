.class final Lcom/htc/sdcardwizard/SDCardItemsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SDCardItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/SDCardItemsAdapter$1;,
        Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/htc/sdcardwizard/handler/SDCardItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final deleteButton:Landroid/widget/Button;

.field private final inflater:Landroid/view/LayoutInflater;

.field private final items:Lcom/htc/sdcardwizard/handler/SDCardItems;

.field private final moveButton:Landroid/widget/Button;

.field private final selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/widget/Button;Landroid/widget/Button;Lcom/htc/sdcardwizard/handler/SDCardItems;Lcom/htc/sdcardwizard/handler/SDCardItem;)V
    .locals 1
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter "deleteButton"
    .parameter "moveButton"
    .parameter "items"
    .parameter "selectAll_item"

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 29
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 30
    iput-object p3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->deleteButton:Landroid/widget/Button;

    .line 31
    iput-object p4, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->moveButton:Landroid/widget/Button;

    .line 32
    iput-object p5, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    .line 33
    iput-object p6, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 34
    return-void
.end method

.method private checkSelectAllValidity(Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;)V
    .locals 3
    .parameter "itemCheckState"

    .prologue
    .line 134
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    if-eqz v1, :cond_1

    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, value:Ljava/lang/Boolean;
    sget-object v1, Lcom/htc/sdcardwizard/SDCardItemsAdapter$1;->$SwitchMap$com$htc$sdcardwizard$handler$SDCardItems$CheckState:[I

    invoke-virtual {p1}, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 150
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 151
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/sdcardwizard/handler/SDCardItem;->setChecked(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->notifyDataSetInvalidated()V

    .line 155
    .end local v0           #value:Ljava/lang/Boolean;
    :cond_1
    return-void

    .line 139
    .restart local v0       #value:Ljava/lang/Boolean;
    :pswitch_0
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/Boolean;

    .end local v0           #value:Ljava/lang/Boolean;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .restart local v0       #value:Ljava/lang/Boolean;
    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v1, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    invoke-virtual {v1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    new-instance v0, Ljava/lang/Boolean;

    .end local v0           #value:Ljava/lang/Boolean;
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .restart local v0       #value:Ljava/lang/Boolean;
    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getHolder(Landroid/view/View;)Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;
    .locals 1
    .parameter "itemView"

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-virtual {v0}, Lcom/htc/sdcardwizard/handler/SDCardItems;->size()I

    move-result v1

    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeletableItems()Lcom/htc/sdcardwizard/handler/SDCardItems;
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-direct {v0}, Lcom/htc/sdcardwizard/handler/SDCardItems;-><init>()V

    .line 125
    .local v0, deletableItems:Lcom/htc/sdcardwizard/handler/SDCardItems;
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItems;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 126
    .local v2, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    invoke-virtual {v2}, Lcom/htc/sdcardwizard/handler/SDCardItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v0, v2}, Lcom/htc/sdcardwizard/handler/SDCardItems;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    .end local v2           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    :cond_1
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 53
    const/4 v1, 0x0

    .line 54
    .local v1, holder:Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 55
    iget-object v6, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->inflater:Landroid/view/LayoutInflater;

    const v9, 0x7f030002

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 57
    const v6, 0x7f060006

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorIcon;

    .line 58
    .local v2, icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v6, 0x7f060007

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    .line 59
    .local v5, text:Lcom/htc/widget/HtcListItem2LineText;
    const v6, 0x7f060009

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListItemCheckBox;

    .line 61
    .local v0, checkbox:Lcom/htc/widget/HtcListItemCheckBox;
    new-instance v1, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;

    .end local v1           #holder:Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;
    invoke-direct {v1, v2, v5, v0}, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;-><init>(Lcom/htc/widget/HtcListItemColorIcon;Lcom/htc/widget/HtcListItem2LineText;Lcom/htc/widget/HtcListItemCheckBox;)V

    .line 62
    .restart local v1       #holder:Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    .end local v0           #checkbox:Lcom/htc/widget/HtcListItemCheckBox;
    .end local v2           #icon:Lcom/htc/widget/HtcListItemColorIcon;
    .end local v5           #text:Lcom/htc/widget/HtcListItem2LineText;
    :goto_0
    const/4 v3, 0x0

    .line 68
    .local v3, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    iget-object v6, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    if-eqz v6, :cond_3

    .line 69
    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    .line 74
    :goto_1
    invoke-virtual {v1, v3}, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->setItem(Lcom/htc/sdcardwizard/handler/SDCardItem;)V

    .line 76
    iget-object v6, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-virtual {v6}, Lcom/htc/sdcardwizard/handler/SDCardItems;->size()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    .line 77
    .local v4, lastIndex:I
    iget-object v6, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    if-eqz v6, :cond_0

    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 80
    :cond_0
    if-nez p1, :cond_4

    move v9, v7

    :goto_2
    if-ne p1, v4, :cond_5

    move v6, v7

    :goto_3
    invoke-virtual {p2, v9, v6}, Landroid/view/View;->setRoundedCornerEnabled(ZZ)V

    .line 82
    return-object p2

    .line 64
    .end local v3           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    .end local v4           #lastIndex:I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #holder:Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;
    check-cast v1, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;
    goto :goto_0

    .line 69
    .restart local v3       #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    :cond_2
    iget-object v6, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    add-int/lit8 v9, p1, -0x1

    invoke-virtual {v6, v9}, Lcom/htc/sdcardwizard/handler/SDCardItems;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/sdcardwizard/handler/SDCardItem;

    move-object v3, v6

    goto :goto_1

    .line 71
    :cond_3
    iget-object v6, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-virtual {v6, p1}, Lcom/htc/sdcardwizard/handler/SDCardItems;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    check-cast v3, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .restart local v3       #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    goto :goto_1

    .restart local v4       #lastIndex:I
    :cond_4
    move v9, v8

    .line 80
    goto :goto_2

    :cond_5
    move v6, v8

    goto :goto_3
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(Landroid/view/View;I)V
    .locals 7
    .parameter "itemView"
    .parameter "position"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    if-eqz v3, :cond_3

    .line 88
    if-nez p2, :cond_2

    .line 89
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItem;->reverseChecked()V

    .line 90
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->selectAll_item:Lcom/htc/sdcardwizard/handler/SDCardItem;

    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItem;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->setChecked(Z)V

    .line 98
    :goto_0
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->reverseChecked()V

    .line 100
    invoke-direct {p0, p1}, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->getHolder(Landroid/view/View;)Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;

    move-result-object v0

    .line 101
    .local v0, holder:Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v1}, Lcom/htc/sdcardwizard/handler/SDCardItem;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;->setChecked(Z)V

    .line 106
    .end local v0           #holder:Lcom/htc/sdcardwizard/SDCardItemsAdapter$ViewHolder;
    :cond_0
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-virtual {v3}, Lcom/htc/sdcardwizard/handler/SDCardItems;->getCheckState()Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    move-result-object v2

    .line 107
    .local v2, itemCheckState:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;
    iget-object v6, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->deleteButton:Landroid/widget/Button;

    sget-object v3, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->NO_ONE:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    if-eq v2, v3, :cond_4

    move v3, v4

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->moveButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->moveButton:Landroid/widget/Button;

    sget-object v6, Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;->NO_ONE:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;

    if-eq v2, v6, :cond_5

    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    :cond_1
    invoke-direct {p0, v2}, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->checkSelectAllValidity(Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;)V

    .line 112
    return-void

    .line 92
    .end local v2           #itemCheckState:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;
    :cond_2
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    add-int/lit8 v6, p2, -0x1

    invoke-virtual {v3, v6}, Lcom/htc/sdcardwizard/handler/SDCardItems;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    check-cast v1, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .restart local v1       #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    goto :goto_0

    .line 95
    :cond_3
    iget-object v3, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-virtual {v3, p2}, Lcom/htc/sdcardwizard/handler/SDCardItems;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    check-cast v1, Lcom/htc/sdcardwizard/handler/SDCardItem;

    .restart local v1       #item:Lcom/htc/sdcardwizard/handler/SDCardItem;
    goto :goto_0

    .restart local v2       #itemCheckState:Lcom/htc/sdcardwizard/handler/SDCardItems$CheckState;
    :cond_4
    move v3, v5

    .line 107
    goto :goto_1

    :cond_5
    move v4, v5

    .line 109
    goto :goto_2
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->items:Lcom/htc/sdcardwizard/handler/SDCardItems;

    invoke-virtual {v0, p1}, Lcom/htc/sdcardwizard/handler/SDCardItems;->setChecked(Z)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->notifyDataSetInvalidated()V

    .line 117
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->deleteButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->moveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/htc/sdcardwizard/SDCardItemsAdapter;->moveButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 121
    :cond_0
    return-void
.end method
