.class Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "ContactDetailPluginAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExteriorDataSetObserver"
.end annotation


# instance fields
.field private hasLoadingComplete:Z

.field final synthetic this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;


# direct methods
.method private constructor <init>(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 329
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->hasLoadingComplete:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 327
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;-><init>(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    #calls: Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->isAdapterStillLoading()Z
    invoke-static {v0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->access$100(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-boolean v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->hasLoadingComplete:Z

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->hasLoadingComplete:Z

    .line 342
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexGridAdapter:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    if-eqz v0, :cond_0

    .line 343
    :cond_2
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportGridAlbumView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 344
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v0, v0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexGridAdapter:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/IndexListGridAdapter;->calculateGridView()V

    .line 345
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexGridAdapter:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v1, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->this$0:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;

    iget-object v1, v1, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method public resetLoading()V
    .locals 1

    .prologue
    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->hasLoadingComplete:Z

    .line 333
    return-void
.end method
