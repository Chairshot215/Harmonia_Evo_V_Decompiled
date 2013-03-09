.class public final Lcom/htc/home/personalize/AddListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/AddListAdapter$OnAddAdapterListener;,
        Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;
    }
.end annotation


# static fields
.field public static localLOGV:Z


# instance fields
.field private isAddAdapterReady:Z

.field private mAdapter:Lcom/htc/home/personalize/AddAdapter;

.field private mIsAssignFunction:Z

.field private mKeepPosition:[I

.field private mLevel:I

.field private mLoadAddAdapterThread:Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;

.field private mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

.field private mSelected:[I

.field private mTabID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/home/personalize/AddListAdapter;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/home/personalize/PersonalizeMain;Landroid/content/Context;ZI)V
    .locals 5
    .parameter "personalizeMain"
    .parameter "context"
    .parameter "forFolder"
    .parameter "tabId"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    iput-object v3, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    .line 17
    iput v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    .line 18
    iput-boolean v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mIsAssignFunction:Z

    .line 20
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mSelected:[I

    .line 21
    iput-boolean v2, p0, Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z

    .line 22
    iput-object v3, p0, Lcom/htc/home/personalize/AddListAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    .line 23
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mTabID:I

    .line 24
    iput-object v3, p0, Lcom/htc/home/personalize/AddListAdapter;->mLoadAddAdapterThread:Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;

    .line 25
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mKeepPosition:[I

    .line 27
    iput-object p1, p0, Lcom/htc/home/personalize/AddListAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    .line 28
    iput p4, p0, Lcom/htc/home/personalize/AddListAdapter;->mTabID:I

    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mKeepPosition:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mKeepPosition:[I

    aput v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    if-nez v1, :cond_1

    .line 35
    iput-boolean v2, p0, Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z

    .line 36
    new-instance v1, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;

    invoke-direct {v1, p0}, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;-><init>(Lcom/htc/home/personalize/AddListAdapter;)V

    iput-object v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mLoadAddAdapterThread:Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;

    .line 37
    iget-object v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mLoadAddAdapterThread:Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;

    invoke-virtual {v1}, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->start()V

    .line 39
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/AddListAdapter;)Lcom/htc/home/personalize/PersonalizeMain;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mPersonalizeMain:Lcom/htc/home/personalize/PersonalizeMain;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/home/personalize/AddListAdapter;Lcom/htc/home/personalize/AddAdapter;)Lcom/htc/home/personalize/AddAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/AddListAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mTabID:I

    return v0
.end method

.method static synthetic access$302(Lcom/htc/home/personalize/AddListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z

    return p1
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 145
    :goto_0
    return-void

    .line 142
    :cond_0
    iget v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    .line 143
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    iget v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    iget-object v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mSelected:[I

    iget v3, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    aget v2, v2, v3

    iget-boolean v3, p0, Lcom/htc/home/personalize/AddListAdapter;->mIsAssignFunction:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/home/personalize/AddAdapter;->setAdapter(IIZ)V

    .line 144
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-boolean v1, p0, Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    if-eqz v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "idx"

    .prologue
    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 124
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    .line 115
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/AddAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getKeepPosition()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 149
    iget-object v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    if-nez v2, :cond_1

    move v0, v1

    .line 163
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    const/4 v0, 0x0

    .line 153
    .local v0, keepPosition:I
    iget v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_4

    iget v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/home/personalize/AddListAdapter;->mKeepPosition:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 155
    iget-object v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mKeepPosition:[I

    iget v3, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    add-int/lit8 v3, v3, 0x1

    aget v0, v2, v3

    .line 156
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    invoke-virtual {v2}, Lcom/htc/home/personalize/AddAdapter;->getCount()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 157
    :cond_2
    const/4 v0, 0x0

    .line 158
    :cond_3
    iget-object v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mKeepPosition:[I

    iget v3, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    add-int/lit8 v3, v3, 0x1

    aput v1, v2, v3

    .line 161
    :cond_4
    iget v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    if-nez v2, :cond_0

    move v0, v1

    .line 162
    goto :goto_0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    return v0
.end method

.method public getTitleString()I
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 95
    const v0, 0x7f090074

    .line 100
    :goto_0
    return v0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddAdapter;->getTitleString()I

    move-result v0

    goto :goto_0

    .line 100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/home/personalize/AddAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x6

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/AddAdapter;->isEnabled(I)Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onSummaryUpdate(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/AddAdapter;->onSummaryUpdate(Landroid/content/Intent;)V

    .line 198
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .parameter "isAssignFunction"

    .prologue
    const/4 v3, 0x0

    .line 168
    iput-boolean p1, p0, Lcom/htc/home/personalize/AddListAdapter;->mIsAssignFunction:Z

    .line 169
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 179
    :goto_0
    return-void

    .line 171
    :cond_0
    iput v3, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    .line 176
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    iget v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    iget-boolean v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mIsAssignFunction:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/home/personalize/AddAdapter;->setAdapter(IIZ)V

    .line 178
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public resetItems()V
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddAdapter;->resetItems()V

    goto :goto_0
.end method

.method public setClick(II)V
    .locals 3
    .parameter "selectedId"
    .parameter "position"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/htc/home/personalize/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 136
    :goto_0
    return-void

    .line 131
    :cond_0
    iget v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    .line 132
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mSelected:[I

    iget v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    aput p1, v0, v1

    .line 133
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mKeepPosition:[I

    iget v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    aput p2, v0, v1

    .line 134
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    iget v1, p0, Lcom/htc/home/personalize/AddListAdapter;->mLevel:I

    iget-boolean v2, p0, Lcom/htc/home/personalize/AddListAdapter;->mIsAssignFunction:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/home/personalize/AddAdapter;->setAdapter(IIZ)V

    .line 135
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setHeightPriority()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mLoadAddAdapterThread:Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mLoadAddAdapterThread:Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddListAdapter$LoadAddAdapterThread;->needUpSpeed()V

    .line 45
    :cond_0
    return-void
.end method

.method public setListItemsData(Ljava/lang/String;)V
    .locals 1
    .parameter "keyword"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/home/personalize/AddAdapter;->setItemsData(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/htc/home/personalize/AddListAdapter;->notifyDataSetChanged()V

    .line 211
    return-void
.end method

.method public updateSummary()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/htc/home/personalize/AddListAdapter;->mAdapter:Lcom/htc/home/personalize/AddAdapter;

    invoke-virtual {v0}, Lcom/htc/home/personalize/AddAdapter;->updateSummary()V

    .line 193
    :cond_0
    return-void
.end method
