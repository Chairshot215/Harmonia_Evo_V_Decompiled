.class Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mShowBackground:Z

.field final mState:Lcom/android/settings/applications/RunningState;

.field final synthetic this$0:Lcom/android/settings/applications/RunningProcessesView;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningProcessesView;Lcom/android/settings/applications/RunningState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    .line 212
    invoke-virtual {p1}, Lcom/android/settings/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 215
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 290
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v4, v3, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 291
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p2, v3, :cond_0

    .line 295
    monitor-exit v4

    .line 302
    :goto_0
    return-void

    .line 297
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 298
    .local v2, vh:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 299
    .local v1, item:Lcom/android/settings/applications/RunningState$MergedItem;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v5, v5, Lcom/android/settings/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v1, v5}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    .line 300
    .local v0, ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    iget-object v3, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    monitor-exit v4

    goto :goto_0

    .end local v0           #ai:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .end local v1           #item:Lcom/android/settings/applications/RunningState$MergedItem;
    .end local v2           #vh:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method getShowBackground()Z
    .locals 1

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 274
    if-nez p2, :cond_0

    .line 275
    invoke-virtual {p0, p3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    .line 280
    return-object v0

    .line 277
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mIsProcess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04007e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, v:Landroid/view/View;
    new-instance v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 286
    return-object v0
.end method

.method refreshItems()V
    .locals 2

    .prologue
    .line 232
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 235
    .local v0, newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_0

    .line 236
    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    .line 241
    :cond_1
    return-void

    .line 232
    .end local v0           #newItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/RunningState$MergedItem;>;"
    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method setShowBackground(Z)V
    .locals 2
    .parameter "showBackground"

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    if-eq v0, p1, :cond_0

    .line 219
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    .line 220
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->refreshItems()V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 223
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    iget-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->mShowBackground:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LinearColorBar;->setShowingGreen(Z)V

    .line 225
    :cond_0
    return-void
.end method
