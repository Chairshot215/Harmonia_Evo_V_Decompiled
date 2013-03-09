.class public Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;
.super Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;
.source "ContactDetailPluginAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$1;,
        Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;,
        Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;
    }
.end annotation


# static fields
.field private static final CONTACTS_CHANGED_MESSAGE:I = 0x3e8

.field private static final MENU_EDIT:I = 0x2

.field private static final MENU_UPDATE_NOW:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mAlbumAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

.field private mBundleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mExteriorListAdapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense/plugin/ExteriorListAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mHasExteriorInit:Z

.field private mHasExteriorLoaded:Z

.field protected mIndexGridAdapter:Lcom/android/htccontacts/widget/IndexListGridAdapter;

.field protected mIndexListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

.field private mIsDirty:Z

.field private mObserver:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;

.field protected mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-string v0, "ContactDetailPluginAlbumActivity"

    sput-object v0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;-><init>()V

    .line 75
    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexListAdapter:Lcom/android/htccontacts/widget/IndexListAdapter;

    .line 77
    iput-object v1, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexGridAdapter:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIsDirty:Z

    .line 81
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mHasExteriorInit:Z

    .line 82
    iput-boolean v2, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mHasExteriorLoaded:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mBundleList:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;-><init>(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$1;)V

    iput-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mObserver:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;

    .line 370
    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->isAdapterStillLoading()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mBundleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->isMyContactType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mObserver:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseListActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method private isAdapterStillLoading()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 359
    sget-object v3, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->TAG:Ljava/lang/String;

    const-string v6, "============================================"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mBundleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 361
    .local v2, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/os/Bundle;

    const-string v6, "isLoading"

    invoke-virtual {v3, v6, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 362
    .local v1, isLoading:Z
    sget-object v6, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "> isLoading: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-ne v4, v1, :cond_0

    move v3, v4

    .line 367
    .end local v1           #isLoading:Z
    .end local v2           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    :goto_0
    return v3

    :cond_1
    move v3, v5

    goto :goto_0
.end method


# virtual methods
.method protected doUpdate()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 305
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 306
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 307
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 308
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    const/4 v1, 0x0

    .line 309
    .local v1, bundle:Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mBundleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 310
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    sget-object v6, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doUpdate <"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ">"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->getItemSeparationText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 312
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v1           #bundle:Landroid/os/Bundle;
    check-cast v1, Landroid/os/Bundle;

    .restart local v1       #bundle:Landroid/os/Bundle;
    goto :goto_1

    .line 315
    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/String;Landroid/os/Bundle;>;"
    :cond_1
    if-eqz v1, :cond_2

    .line 316
    const-string v5, "album_update"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    const-string v5, "isLoading"

    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 318
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->setListLoading()V

    .line 319
    invoke-virtual {v0, v1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->setDataBundle(Landroid/os/Bundle;)V

    .line 320
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unloadData()V

    .line 321
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->loadData()V

    .line 323
    :cond_2
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mObserver:Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;

    invoke-virtual {v5}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorDataSetObserver;->resetLoading()V

    goto :goto_0

    .line 325
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const v0, 0x7f0a00da

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 231
    const/4 v4, -0x1

    if-eq p2, v4, :cond_0

    .line 250
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 235
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const/16 v4, 0x2f1

    if-ne v4, p1, :cond_2

    .line 237
    const-string v4, "pure_flickr"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 239
    .local v0, bPureFlickr:Z
    const-string v4, "rollback_contact"

    invoke-virtual {p3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 241
    .local v1, bShouldRollBack:Z
    if-eq v6, v0, :cond_1

    if-ne v6, v1, :cond_2

    .line 242
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 243
    .local v3, uriFixed:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 245
    invoke-virtual {v2, v3}, Lcom/android/htccontacts/HtcContactInfo;->forceContactChange(Landroid/net/Uri;)V

    .line 249
    .end local v0           #bPureFlickr:Z
    .end local v1           #bShouldRollBack:Z
    .end local v3           #uriFixed:Landroid/net/Uri;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContactChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "infoReadyType"

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 138
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIsDirty:Z

    .line 139
    iget-boolean v1, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsForegroundActivity:Z

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 141
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    const-string v1, "ENTITY_QUERY_COMPLETED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->startQueryAlbum()V

    .line 144
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIsDirty:Z

    .line 147
    .end local v0           #contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const v2, 0x7f030009

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->setContentView(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->setTitleBar()V

    .line 170
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 171
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportGridAlbumView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 175
    :cond_0
    const v2, 0x7f07001c

    invoke-virtual {p0, v2}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 176
    .local v0, emptyTextView:Landroid/widget/TextView;
    const v2, 0x7f0a01e8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    .line 179
    .local v1, parent:Landroid/app/Activity;
    instance-of v2, v1, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 180
    check-cast v2, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    .line 185
    :goto_0
    new-instance v2, Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mAlbumAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    .line 186
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mExteriorListAdapters:Ljava/util/List;

    .line 187
    return-void

    .line 183
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 265
    const v0, 0x7f0a01f8

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080a9d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 266
    const/4 v0, 0x2

    const v1, 0x7f0a013c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080324

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 267
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 268
    return v3
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 191
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onDestroy()V

    .line 193
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 194
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 197
    .local v0, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    iget-object v2, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mAlbumAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-virtual {v2, v0}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->removeExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 198
    invoke-virtual {v0}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unloadData()V

    .line 199
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 201
    .end local v0           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :cond_0
    return-void
.end method

.method public onDetailInfoInit()V
    .locals 5

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onDetailInfoInit()V

    .line 116
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 117
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-boolean v3, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIsDirty:Z

    if-eqz v3, :cond_1

    .line 119
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIsDirty:Z

    .line 122
    :cond_0
    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 124
    .local v1, lContactId:J
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 125
    const-wide/16 v3, -0x1

    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->startQueryAlbum()V

    .line 131
    .end local v1           #lContactId:J
    :cond_1
    return-void
.end method

.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 254
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->isSupportGridAlbumView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ContactDetailPluginAlbumActivity.onListItemClick() position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mAlbumAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mAlbumAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V

    .line 261
    :cond_0
    return-void
.end method

.method public onMoreItemClick()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexGridAdapter:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIndexGridAdapter:Lcom/android/htccontacts/widget/IndexListGridAdapter;

    invoke-virtual {v0}, Lcom/android/htccontacts/widget/IndexListGridAdapter;->calculateGridView()V

    .line 498
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    .line 282
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v2

    .line 283
    .local v2, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 300
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    :goto_0
    return v5

    .line 285
    :pswitch_0
    const-string v6, "ANALYTIC_HtcContacts"

    const-string v7, "[ContactDetailPluginAlbumActivity]Edit contact"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-wide v0, v2, Lcom/android/htccontacts/HtcContactInfoBase;->id:J

    .line 287
    .local v0, contactId:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/contacts/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 288
    .local v3, contactUri:Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v4, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 294
    .end local v0           #contactId:J
    .end local v3           #contactUri:Landroid/net/Uri;
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_1
    const-string v6, "ANALYTIC_HtcContacts"

    const-string v7, "[ContactDetailPluginAlbumActivity]Update now"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->doUpdate()V

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onPause()V

    .line 224
    iget-object v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mExteriorListAdapters:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mHasExteriorLoaded:Z

    .line 227
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 273
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v1

    .line 274
    .local v1, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/htccontacts/HtcContactInfo;->isAllSocialNetworkAccountTyupe()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .line 276
    .local v0, bEditable:Z
    :goto_0
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 277
    return v2

    .end local v0           #bEditable:Z
    :cond_0
    move v0, v2

    .line 274
    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const-wide/16 v3, -0x1

    .line 205
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseContactDetailLayerTabActivity;->onResume()V

    .line 206
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getContactInfo()Lcom/android/htccontacts/HtcContactInfo;

    move-result-object v0

    .line 207
    .local v0, contactInfo:Lcom/android/htccontacts/HtcContactInfo;
    iget-boolean v5, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIsDirty:Z

    if-eqz v5, :cond_1

    .line 209
    iget-object v5, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v5}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->isDetailInfoLoaded()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 210
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mIsDirty:Z

    .line 212
    :cond_0
    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->getContactUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 214
    .local v1, lContactId:J
    :goto_0
    cmp-long v3, v3, v1

    if-eqz v3, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->startQueryAlbum()V

    .line 219
    .end local v1           #lContactId:J
    :cond_1
    return-void

    :cond_2
    move-wide v1, v3

    .line 213
    goto :goto_0
.end method

.method protected setTitleBar()V
    .locals 2

    .prologue
    .line 157
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 158
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/DetailHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 160
    return-void
.end method

.method protected startQueryAlbum()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 88
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$OpenSense;->isOpenSenseEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    iget-boolean v3, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mHasExteriorInit:Z

    if-nez v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mParent:Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;

    invoke-virtual {v3}, Lcom/android/htccontacts/app/BaseDetailLayerCarouselActivity;->getItemAccountMap()Ljava/util/HashMap;

    move-result-object v0

    .line 91
    .local v0, accountMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string v4, "OpenSense"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "accountMap - count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_1

    const-string v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-nez v0, :cond_2

    .line 110
    .end local v0           #accountMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_0
    :goto_1
    return-void

    .line 91
    .restart local v0       #accountMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    .line 96
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mExteriorListAdapters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 97
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/opensense/plugin/ExteriorListAdapter;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense/plugin/ExteriorListAdapter;

    .line 100
    .local v1, adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    iget-object v3, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mAlbumAdapters:Lcom/android/htccontacts/widget/PartitionedHostAdapter;

    invoke-virtual {v3, v1}, Lcom/android/htccontacts/widget/PartitionedHostAdapter;->removeExteriorAdapter(Lcom/htc/opensense/plugin/ExteriorListAdapter;)V

    .line 101
    invoke-virtual {v1}, Lcom/htc/opensense/plugin/ExteriorListAdapter;->unloadData()V

    .line 102
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 104
    .end local v1           #adapter:Lcom/htc/opensense/plugin/ExteriorListAdapter;
    :cond_3
    new-instance v3, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;

    invoke-direct {v3, p0, v0}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;-><init>(Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;Ljava/util/HashMap;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity$ExteriorAdapterLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    iput-boolean v6, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mHasExteriorLoaded:Z

    .line 106
    iput-boolean v6, p0, Lcom/android/htccontacts/ContactDetailPluginAlbumActivity;->mHasExteriorInit:Z

    goto :goto_1
.end method
