.class public Lcom/htc/video/Common/SoundEffectAdapter;
.super Landroid/widget/BaseAdapter;
.source "SoundEffectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;,
        Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "[SoundEffectAdapter]"

.field private static mShowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/video/VideoUtility/SoundEffectItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListVisibleCount:I

.field private mResource:Landroid/content/res/Resources;

.field private mSelectedHolder:Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/video/Common/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 1
    .parameter "_context"
    .parameter "_resource"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/video/VideoUtility/SoundEffectItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, _items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/video/VideoUtility/SoundEffectItem;>;"
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;

    .line 34
    iput-object v0, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mContext:Landroid/content/Context;

    .line 35
    iput-object v0, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    .line 60
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    iput-object p3, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {p0}, Lcom/htc/video/Common/SoundEffectAdapter;->refineList()V

    .line 63
    iput-object p1, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mResource:Landroid/content/res/Resources;

    .line 66
    return-void
.end method

.method public static getRealListPos(I)I
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, -0x1

    .line 200
    sget-object v2, Lcom/htc/video/Common/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/video/Common/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v1

    .line 203
    :cond_1
    sget-object v2, Lcom/htc/video/Common/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 205
    .local v0, realPos:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, count:I
    iget-object v1, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 145
    iget v1, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mListVisibleCount:I

    if-ge v1, v0, :cond_0

    .line 146
    iget v0, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mListVisibleCount:I

    .line 148
    :cond_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-static {p1}, Lcom/htc/video/Common/SoundEffectAdapter;->getRealListPos(I)I

    move-result v0

    .line 153
    .local v0, realListPos:I
    if-ltz v0, :cond_0

    iget-object v2, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/video/VideoUtility/SoundEffectItem;

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 160
    int-to-long v0, p1

    return-wide v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-static {p1}, Lcom/htc/video/Common/SoundEffectAdapter;->getRealListPos(I)I

    move-result v0

    .line 165
    .local v0, realListPos:I
    if-gez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/video/VideoUtility/SoundEffectItem;

    invoke-virtual {v1}, Lcom/htc/video/VideoUtility/SoundEffectItem;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 69
    const-string v4, "[SoundEffectAdapter]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- getView, position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " +++"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-static {p1}, Lcom/htc/video/Common/SoundEffectAdapter;->getRealListPos(I)I

    move-result v3

    .line 73
    .local v3, realListPos:I
    if-ltz v3, :cond_0

    iget-object v4, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_1

    :cond_0
    move-object v0, p2

    .line 136
    .end local p2
    .local v0, convertView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 77
    .end local v0           #convertView:Landroid/view/View;
    .restart local p2
    :cond_1
    iget-object v4, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 80
    .local v2, item:Lcom/htc/video/VideoUtility/SoundEffectItem;
    if-nez p2, :cond_2

    .line 81
    iget-object v4, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030002

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 83
    new-instance v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;-><init>(Lcom/htc/video/Common/SoundEffectAdapter;)V

    .line 84
    .local v1, holder:Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;
    const v4, 0x7f09000c

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemColorIcon;

    iput-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    .line 85
    const v4, 0x7f09000d

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItem2LineText;

    iput-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->checked:Lcom/htc/widget/HtcListItem2LineText;

    .line 86
    const v4, 0x7f09000e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemRadioButton;

    iput-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcListItemRadioButton;

    .line 88
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_1
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    if-eqz v4, :cond_3

    iget v4, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEffectIconResId:I

    if-lez v4, :cond_3

    .line 97
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    iget v5, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mEffectIconResId:I

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageResource(I)V

    .line 98
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 105
    :goto_2
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->checked:Lcom/htc/widget/HtcListItem2LineText;

    iget-object v5, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 106
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->checked:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 108
    const-string v4, "[SoundEffectAdapter]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- getView, item.mIsEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-boolean v4, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsEnabled:Z

    if-eqz v4, :cond_4

    .line 110
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemColorIcon;->setEnabled(Z)V

    .line 111
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->checked:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 114
    invoke-virtual {p2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 123
    :goto_3
    const-string v4, "[SoundEffectAdapter]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- getView, item.mIsSelected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-boolean v4, v2, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsSelected:Z

    if-eqz v4, :cond_5

    .line 125
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {v4, v8}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    .line 126
    new-instance v4, Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;

    invoke-direct {v4, p0}, Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;-><init>(Lcom/htc/video/Common/SoundEffectAdapter;)V

    iput-object v4, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;

    .line 127
    iget-object v4, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;

    iget-object v5, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcListItemRadioButton;

    iput-object v5, v4, Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;->checked:Lcom/htc/widget/HtcListItemRadioButton;

    .line 128
    iget-object v4, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mSelectedHolder:Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;

    iput-object v2, v4, Lcom/htc/video/Common/SoundEffectAdapter$SelectedHolder;->item:Lcom/htc/video/VideoUtility/SoundEffectItem;

    .line 134
    :goto_4
    const-string v4, "[SoundEffectAdapter]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-- getView, position: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ---"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p2

    .line 136
    .end local p2
    .restart local v0       #convertView:Landroid/view/View;
    goto/16 :goto_0

    .line 92
    .end local v0           #convertView:Landroid/view/View;
    .end local v1           #holder:Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;

    .restart local v1       #holder:Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;
    goto/16 :goto_1

    .line 101
    :cond_3
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    goto/16 :goto_2

    .line 116
    :cond_4
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->effectIcon:Lcom/htc/widget/HtcListItemColorIcon;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemColorIcon;->setEnabled(Z)V

    .line 117
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->checked:Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 120
    invoke-virtual {p2, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    .line 130
    :cond_5
    iget-object v4, v1, Lcom/htc/video/Common/SoundEffectAdapter$ViewHolder;->btn:Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {v4, v7}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    goto :goto_4
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/htc/video/Common/SoundEffectAdapter;->refineList()V

    .line 176
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 177
    return-void
.end method

.method public refineList()V
    .locals 5

    .prologue
    .line 180
    iget-object v3, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 181
    .local v1, listLen:I
    if-gtz v1, :cond_0

    .line 197
    :goto_0
    return-void

    .line 184
    :cond_0
    const/4 v2, 0x0

    .line 186
    .local v2, visibleCount:I
    sget-object v3, Lcom/htc/video/Common/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 187
    sget-object v3, Lcom/htc/video/Common/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 189
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 190
    iget-object v3, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/video/VideoUtility/SoundEffectItem;

    iget-boolean v3, v3, Lcom/htc/video/VideoUtility/SoundEffectItem;->mIsVisible:Z

    if-eqz v3, :cond_2

    .line 191
    sget-object v3, Lcom/htc/video/Common/SoundEffectAdapter;->mShowList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 192
    add-int/lit8 v2, v2, 0x1

    .line 189
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 196
    :cond_3
    iput v2, p0, Lcom/htc/video/Common/SoundEffectAdapter;->mListVisibleCount:I

    goto :goto_0
.end method
