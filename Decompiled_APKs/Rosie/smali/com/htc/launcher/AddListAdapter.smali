.class public final Lcom/htc/launcher/AddListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/launcher/AddListAdapter$OnAddAdapterListener;,
        Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;
    }
.end annotation


# static fields
.field public static localLOGV:Z


# instance fields
.field private isAddAdapterReady:Z

.field private mAdapter:Lcom/htc/launcher/AddAdapter;

.field private mIsAssignFunction:Z

.field private mKeepPosition:[I

.field private mLauncher:Lcom/htc/launcher/Launcher;

.field private mLevel:I

.field private mLoadAddAdapterThread:Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;

.field private mSelected:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/launcher/AddListAdapter;->localLOGV:Z

    return-void
.end method

.method public constructor <init>(Lcom/htc/launcher/Launcher;Landroid/content/Context;Z)V
    .locals 5
    .parameter "launcher"
    .parameter "context"
    .parameter "forFolder"

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    iput-object v3, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    .line 17
    iput v2, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    .line 18
    iput-boolean v2, p0, Lcom/htc/launcher/AddListAdapter;->mIsAssignFunction:Z

    .line 20
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/htc/launcher/AddListAdapter;->mSelected:[I

    .line 21
    iput-boolean v2, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    .line 22
    iput-object v3, p0, Lcom/htc/launcher/AddListAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 23
    iput-object v3, p0, Lcom/htc/launcher/AddListAdapter;->mLoadAddAdapterThread:Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;

    .line 24
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/htc/launcher/AddListAdapter;->mKeepPosition:[I

    .line 26
    iput-object p1, p0, Lcom/htc/launcher/AddListAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    .line 27
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/launcher/AddListAdapter;->mKeepPosition:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/htc/launcher/AddListAdapter;->mKeepPosition:[I

    aput v2, v1, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    if-nez v1, :cond_1

    .line 33
    iput-boolean v2, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    .line 34
    new-instance v1, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;

    invoke-direct {v1, p0}, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;-><init>(Lcom/htc/launcher/AddListAdapter;)V

    iput-object v1, p0, Lcom/htc/launcher/AddListAdapter;->mLoadAddAdapterThread:Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;

    .line 35
    iget-object v1, p0, Lcom/htc/launcher/AddListAdapter;->mLoadAddAdapterThread:Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;

    invoke-virtual {v1}, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->start()V

    .line 37
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/htc/launcher/AddListAdapter;)Lcom/htc/launcher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 12
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/launcher/AddListAdapter;Lcom/htc/launcher/AddAdapter;)Lcom/htc/launcher/AddAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    return-object p1
.end method

.method static synthetic access$202(Lcom/htc/launcher/AddListAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    return p1
.end method


# virtual methods
.method public callback()V
    .locals 4

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_0
    iget v0, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    .line 149
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    iget v1, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    iget-object v2, p0, Lcom/htc/launcher/AddListAdapter;->mSelected:[I

    iget v3, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    aget v2, v2, v3

    iget-boolean v3, p0, Lcom/htc/launcher/AddListAdapter;->mIsAssignFunction:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/launcher/AddAdapter;->setAdapter(IIZ)V

    .line 150
    invoke-virtual {p0}, Lcom/htc/launcher/AddListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-boolean v1, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    if-nez v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    if-eqz v1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v0}, Lcom/htc/launcher/AddAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "idx"

    .prologue
    .line 85
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "arg0"

    .prologue
    .line 130
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/AddAdapter;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getKeepPosition()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v2, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    if-nez v2, :cond_1

    move v0, v1

    .line 169
    :cond_0
    :goto_0
    return v0

    .line 158
    :cond_1
    const/4 v0, 0x0

    .line 159
    .local v0, keepPosition:I
    iget v2, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_4

    iget v2, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/htc/launcher/AddListAdapter;->mKeepPosition:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 161
    iget-object v2, p0, Lcom/htc/launcher/AddListAdapter;->mKeepPosition:[I

    iget v3, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    add-int/lit8 v3, v3, 0x1

    aget v0, v2, v3

    .line 162
    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v2}, Lcom/htc/launcher/AddAdapter;->getCount()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 163
    :cond_2
    const/4 v0, 0x0

    .line 164
    :cond_3
    iget-object v2, p0, Lcom/htc/launcher/AddListAdapter;->mKeepPosition:[I

    iget v3, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    add-int/lit8 v3, v3, 0x1

    aput v1, v2, v3

    .line 167
    :cond_4
    iget v2, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    if-nez v2, :cond_0

    move v0, v1

    .line 168
    goto :goto_0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    return v0
.end method

.method public getTitleString()I
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 101
    const v0, 0x7f0b0022

    .line 106
    :goto_0
    return v0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v0}, Lcom/htc/launcher/AddAdapter;->getTitleString()I

    move-result v0

    goto :goto_0

    .line 106
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
    .line 110
    iget-boolean v0, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/htc/launcher/AddAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x6

    return v0
.end method

.method public isAddAdapterReady()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/AddAdapter;->isEnabled(I)Z

    move-result v0

    .line 209
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
    .line 200
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/launcher/AddAdapter;->onSummaryUpdate(Landroid/content/Intent;)V

    .line 202
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .parameter "isAssignFunction"

    .prologue
    const/4 v3, 0x0

    .line 174
    iput-boolean p1, p0, Lcom/htc/launcher/AddListAdapter;->mIsAssignFunction:Z

    .line 175
    iget-boolean v0, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 177
    :cond_0
    iput v3, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    .line 178
    iget-boolean v0, p0, Lcom/htc/launcher/AddListAdapter;->mIsAssignFunction:Z

    if-nez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mLauncher:Lcom/htc/launcher/Launcher;

    invoke-virtual {v0}, Lcom/htc/launcher/Launcher;->resetMiddleButton()V

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    iget v1, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    iget-boolean v2, p0, Lcom/htc/launcher/AddListAdapter;->mIsAssignFunction:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/htc/launcher/AddAdapter;->setAdapter(IIZ)V

    .line 182
    invoke-virtual {p0}, Lcom/htc/launcher/AddListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public resetItems()V
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v0}, Lcom/htc/launcher/AddAdapter;->resetItems()V

    goto :goto_0
.end method

.method public setClick(II)V
    .locals 3
    .parameter "selectedId"
    .parameter "position"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/htc/launcher/AddListAdapter;->isAddAdapterReady:Z

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 137
    :cond_0
    iget v0, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    .line 138
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mSelected:[I

    iget v1, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    aput p1, v0, v1

    .line 139
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mKeepPosition:[I

    iget v1, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    aput p2, v0, v1

    .line 140
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    iget v1, p0, Lcom/htc/launcher/AddListAdapter;->mLevel:I

    iget-boolean v2, p0, Lcom/htc/launcher/AddListAdapter;->mIsAssignFunction:Z

    invoke-virtual {v0, v1, p1, v2}, Lcom/htc/launcher/AddAdapter;->setAdapter(IIZ)V

    .line 141
    invoke-virtual {p0}, Lcom/htc/launcher/AddListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public setHeightPriority()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mLoadAddAdapterThread:Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;

    invoke-virtual {v0}, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mLoadAddAdapterThread:Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;

    invoke-virtual {v0}, Lcom/htc/launcher/AddListAdapter$LoadAddAdapterThread;->needUpSpeed()V

    .line 43
    :cond_0
    return-void
.end method

.method public updateSummary()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/htc/launcher/AddListAdapter;->mAdapter:Lcom/htc/launcher/AddAdapter;

    invoke-virtual {v0}, Lcom/htc/launcher/AddAdapter;->updateSummary()V

    .line 197
    :cond_0
    return-void
.end method
