.class public Lcom/google/android/gm/LabelSynchronizationActivity;
.super Lcom/google/android/gm/GmailBaseListActivity;
.source "LabelSynchronizationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mCurrentOption:Ljava/lang/String;

.field private mGmail:Lcom/google/android/gm/provider/Gmail;

.field private mIncludedLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLabel:Ljava/lang/String;

.field private mPartialLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPerformActionsInternally:Z

.field private mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

.field private mSyncAll:Ljava/lang/String;

.field private mSyncNone:Ljava/lang/String;

.field private mSyncPartial:Ljava/lang/String;

.field private mWidgetIdToUpdate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Lcom/google/android/gm/GmailBaseListActivity;-><init>()V

    .line 52
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mWidgetIdToUpdate:I

    .line 58
    iput-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 59
    iput-object v1, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gm/LabelSynchronizationActivity;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->finish()V

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/google/android/gm/GmailBaseListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v9, 0x7f04003d

    invoke-virtual {p0, v9}, Lcom/google/android/gm/LabelSynchronizationActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 75
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "account"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mAccount:Ljava/lang/String;

    .line 76
    const-string v9, "label"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mLabel:Ljava/lang/String;

    .line 77
    const-string v9, "perform-actions-internally"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPerformActionsInternally:Z

    .line 78
    const-string v9, "update-widgetid-on-sync-change"

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mWidgetIdToUpdate:I

    .line 80
    iget-boolean v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPerformActionsInternally:Z

    if-nez v9, :cond_0

    .line 81
    const-string v9, "included-labels"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mIncludedLabels:Ljava/util/ArrayList;

    .line 82
    const-string v9, "partial-labels"

    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPartialLabels:Ljava/util/ArrayList;

    .line 83
    const-string v9, "num-of-sync-days"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 100
    .local v5, numOfDays:I
    :goto_0
    iget-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mAccount:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mLabel:Ljava/lang/String;

    invoke-static {p0, v9, v10}, Lcom/google/android/gm/provider/LabelManager;->getLabel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v4

    .line 101
    .local v4, label:Lcom/google/android/gm/provider/Label;
    if-nez v4, :cond_1

    .line 102
    const-string v9, "Gmail"

    const-string v10, "Unable to get label: %s for account: %s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mLabel:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mAccount:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-static {v9, v10, v11}, Lcom/google/android/gm/provider/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 104
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->finish()V

    .line 145
    :goto_1
    return-void

    .line 86
    .end local v4           #label:Lcom/google/android/gm/provider/Label;
    .end local v5           #numOfDays:I
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 87
    .local v7, resolver:Landroid/content/ContentResolver;
    invoke-static {v7}, Lcom/google/android/gm/comm/longshadow/LongShadowUtils;->getContentProviderMailAccess(Landroid/content/ContentResolver;)Lcom/google/android/gm/provider/Gmail;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    .line 90
    iget-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mAccount:Ljava/lang/String;

    invoke-virtual {v9, p0, v10}, Lcom/google/android/gm/provider/Gmail;->getSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gm/provider/Gmail$Settings;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    .line 92
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mIncludedLabels:Ljava/util/ArrayList;

    .line 93
    iget-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mIncludedLabels:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v10}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsIncluded()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPartialLabels:Ljava/util/ArrayList;

    .line 95
    iget-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPartialLabels:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v10}, Lcom/google/android/gm/provider/Gmail$Settings;->getLabelsPartial()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 97
    iget-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v9}, Lcom/google/android/gm/provider/Gmail$Settings;->getConversationAgeDays()J

    move-result-wide v9

    long-to-int v5, v9

    .restart local v5       #numOfDays:I
    goto :goto_0

    .line 107
    .end local v7           #resolver:Landroid/content/ContentResolver;
    .restart local v4       #label:Lcom/google/android/gm/provider/Label;
    :cond_1
    invoke-virtual {v4}, Lcom/google/android/gm/provider/Label;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/google/android/gm/LabelSynchronizationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 110
    .local v8, resources:Landroid/content/res/Resources;
    const v9, 0x7f0c010d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncNone:Ljava/lang/String;

    .line 111
    const v9, 0x7f100017

    invoke-static {p0, v9, v5}, Lcom/google/android/gm/Utils;->formatPlural(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncPartial:Ljava/lang/String;

    .line 112
    const v9, 0x7f0c010c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncAll:Ljava/lang/String;

    .line 116
    invoke-virtual {v4}, Lcom/google/android/gm/provider/Label;->getForceSyncAllOrPartial()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 117
    const/4 v9, 0x2

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncPartial:Ljava/lang/String;

    aput-object v10, v1, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncAll:Ljava/lang/String;

    aput-object v10, v1, v9

    .line 123
    .local v1, data:[Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mIncludedLabels:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mLabel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 124
    iget-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncAll:Ljava/lang/String;

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mCurrentOption:Ljava/lang/String;

    .line 130
    :goto_3
    const/4 v6, 0x0

    .line 131
    .local v6, position:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    array-length v9, v1

    if-ge v2, v9, :cond_2

    .line 132
    aget-object v9, v1, v2

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mCurrentOption:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 133
    move v6, v2

    .line 138
    :cond_2
    new-instance v9, Landroid/widget/ArrayAdapter;

    const v10, 0x7f04003e

    invoke-direct {v9, p0, v10, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v9}, Lcom/google/android/gm/LabelSynchronizationActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 140
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v6, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 141
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 143
    const v9, 0x7f0f00ab

    invoke-virtual {p0, v9}, Lcom/google/android/gm/LabelSynchronizationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 144
    .local v0, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 119
    .end local v0           #cancelButton:Landroid/widget/Button;
    .end local v1           #data:[Ljava/lang/String;
    .end local v2           #i:I
    .end local v6           #position:I
    :cond_3
    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncNone:Ljava/lang/String;

    aput-object v10, v1, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncPartial:Ljava/lang/String;

    aput-object v10, v1, v9

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncAll:Ljava/lang/String;

    aput-object v10, v1, v9

    .restart local v1       #data:[Ljava/lang/String;
    goto :goto_2

    .line 125
    :cond_4
    iget-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPartialLabels:Ljava/util/ArrayList;

    iget-object v10, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mLabel:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 126
    iget-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncPartial:Ljava/lang/String;

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mCurrentOption:Ljava/lang/String;

    goto :goto_3

    .line 128
    :cond_5
    iget-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncNone:Ljava/lang/String;

    iput-object v9, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mCurrentOption:Ljava/lang/String;

    goto :goto_3

    .line 131
    .restart local v2       #i:I
    .restart local v6       #position:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, -0x1

    .line 149
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, syncOption:Ljava/lang/String;
    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mCurrentOption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->finish()V

    .line 181
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mIncludedLabels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 157
    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPartialLabels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 158
    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncAll:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mIncludedLabels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPerformActionsInternally:Z

    if-nez v2, :cond_4

    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, result:Landroid/content/Intent;
    const-string v2, "included-labels"

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mIncludedLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 167
    const-string v2, "partial-labels"

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPartialLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v5, v0}, Lcom/google/android/gm/LabelSynchronizationActivity;->setResult(ILandroid/content/Intent;)V

    .line 177
    .end local v0           #result:Landroid/content/Intent;
    :goto_2
    iget v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mWidgetIdToUpdate:I

    if-eq v2, v5, :cond_2

    .line 178
    iget v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mWidgetIdToUpdate:I

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mLabel:Ljava/lang/String;

    invoke-static {p0, v2, v3, v4}, Lcom/google/android/gm/widget/BaseWidgetProvider;->updateWidget(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gm/LabelSynchronizationActivity;->finish()V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSyncPartial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPartialLabels:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 171
    :cond_4
    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mIncludedLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/Gmail$Settings;->setLabelsIncluded(Ljava/util/Collection;)V

    .line 172
    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mPartialLabels:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/google/android/gm/provider/Gmail$Settings;->setLabelsPartial(Ljava/util/Collection;)V

    .line 174
    iget-object v2, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mGmail:Lcom/google/android/gm/provider/Gmail;

    iget-object v3, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mAccount:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gm/LabelSynchronizationActivity;->mSettings:Lcom/google/android/gm/provider/Gmail$Settings;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gm/provider/Gmail;->setSettings(Ljava/lang/String;Lcom/google/android/gm/provider/Gmail$Settings;)V

    goto :goto_2
.end method
