.class Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;
.super Landroid/widget/BaseAdapter;
.source "SynchronizationSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/android/mail/easclient/SynchronizationSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScheduleAdapter"
.end annotation


# instance fields
.field mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;",
            ">;"
        }
    .end annotation
.end field

.field mListView:Lcom/htc/widget/HtcListView;

.field final synthetic this$0:Lcom/htc/android/mail/easclient/SynchronizationSetting;


# direct methods
.method public constructor <init>(Lcom/htc/android/mail/easclient/SynchronizationSetting;[Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;Lcom/htc/widget/HtcListView;)V
    .locals 5
    .parameter
    .parameter "itemList"
    .parameter "listView"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;->this$0:Lcom/htc/android/mail/easclient/SynchronizationSetting;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 143
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;->mItemList:Ljava/util/ArrayList;

    .line 145
    iput-object p3, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;->mListView:Lcom/htc/widget/HtcListView;

    .line 146
    move-object v0, p2

    .local v0, arr$:[Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 147
    .local v2, item:Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;
    iget-object v4, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    .end local v2           #item:Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 158
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x0

    .line 166
    iget-object v4, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;

    .line 167
    .local v1, item:Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;
    iget-object v4, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v4, p1}, Lcom/htc/widget/HtcListView;->isItemChecked(I)Z

    move-result v0

    .line 168
    .local v0, check:Z
    const/4 v3, 0x0

    .line 170
    .local v3, v:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 171
    move-object v3, p2

    .line 176
    :goto_0
    const v4, 0x7f0900b9

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 177
    .local v2, listText:Lcom/htc/widget/HtcListItem2LineText;
    iget-object v4, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;->label:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItem2LineText;->setVisibility(I)V

    .line 179
    iget-object v4, v1, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleItem;->description:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 180
    const v4, 0x7f0900bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/widget/HtcListItemRadioButton;

    invoke-virtual {v4, v0}, Lcom/htc/widget/HtcListItemRadioButton;->setChecked(Z)V

    .line 182
    return-object v3

    .line 173
    .end local v2           #listText:Lcom/htc/widget/HtcListItem2LineText;
    :cond_0
    iget-object v4, p0, Lcom/htc/android/mail/easclient/SynchronizationSetting$ScheduleAdapter;->this$0:Lcom/htc/android/mail/easclient/SynchronizationSetting;

    #getter for: Lcom/htc/android/mail/easclient/SynchronizationSetting;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/android/mail/easclient/SynchronizationSetting;->access$000(Lcom/htc/android/mail/easclient/SynchronizationSetting;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030017

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .end local v3           #v:Landroid/view/View;
    check-cast v3, Lcom/htc/widget/HtcListItem;

    .restart local v3       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method
