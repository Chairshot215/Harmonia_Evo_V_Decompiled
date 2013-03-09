.class public Lcom/htc/music/PluginPropertyListActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "PluginPropertyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    }
.end annotation


# static fields
.field public static final NEW_PROPERTY:Ljava/lang/String; = "com.htc.music.newproperty"


# instance fields
.field private final PROPERTY_ALBUM:I

.field private final PROPERTY_ARTIST:I

.field private final PROPERTY_COMPOSER:I

.field private final PROPERTY_FILENAME:I

.field private final PROPERTY_GENRE:I

.field private final PROPERTY_LENGTH:I

.field private final PROPERTY_LOCATION:I

.field private final PROPERTY_TRACK:I

.field private TAG:Ljava/lang/String;

.field private mListItemArray:[I

.field private mPluginPropertyAdapter:Landroid/widget/BaseAdapter;

.field private mPluginPropertyList:Lcom/htc/widget/HtcListView;

.field private mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/htc/music/IMediaPlaybackService;

.field private mStatusListener:Landroid/content/BroadcastReceiver;

.field protected osc:Landroid/content/ServiceConnection;

.field private titleArray:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    const-string v0, "[PluginPropertyListActivity]"

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_LENGTH:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_FILENAME:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_TRACK:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_ARTIST:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_ALBUM:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_GENRE:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_COMPOSER:I

    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/music/PluginPropertyListActivity;->PROPERTY_LOCATION:I

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    new-instance v0, Lcom/htc/music/PluginPropertyListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/PluginPropertyListActivity$1;-><init>(Lcom/htc/music/PluginPropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->osc:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/htc/music/PluginPropertyListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/PluginPropertyListActivity$2;-><init>(Lcom/htc/music/PluginPropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/PluginPropertyListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/PluginPropertyListActivity$3;-><init>(Lcom/htc/music/PluginPropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/htc/music/PluginPropertyListActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/PluginPropertyListActivity$4;-><init>(Lcom/htc/music/PluginPropertyListActivity;)V

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mPluginPropertyAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/PluginPropertyListActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/IMediaPlaybackService;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/music/PluginPropertyListActivity;Lcom/htc/music/IMediaPlaybackService;)Lcom/htc/music/IMediaPlaybackService;
    .locals 0

    iput-object p1, p0, Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/music/PluginPropertyListActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/htc/music/PluginPropertyListActivity;->showPoperty()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/music/PluginPropertyListActivity;)Lcom/htc/music/PluginPropertyListActivity$PropertyItems;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/music/PluginPropertyListActivity;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/music/PluginPropertyListActivity;)[I
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    return-object v0
.end method

.method private showPoperty()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mPluginPropertyList:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcListView;->invalidateViews()V

    return-void
.end method


# virtual methods
.method getProperties()[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    invoke-virtual {v0}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->isFileNameValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v3, v0, v3

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v4, v0, v4

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v5, v0, v5

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v6, v0, v6

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v7, v0, v7

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x6

    const/4 v2, 0x6

    aput v2, v0, v1

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput v2, v0, v1

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f070074

    invoke-virtual {p0, v2}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f070075

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const v2, 0x7f070079

    invoke-virtual {p0, v2}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x7f07007d

    invoke-virtual {p0, v2}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v3, v0, v3

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x1

    aput v4, v0, v1

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v5, v0, v4

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v6, v0, v5

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    aput v7, v0, v6

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x6

    aput v1, v0, v7

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mListItemArray:[I

    const/4 v1, 0x6

    const/4 v2, 0x7

    aput v2, v0, v1

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const v1, 0x7f070073

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const v2, 0x7f070075

    invoke-virtual {p0, v2}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const v1, 0x7f070076

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f070077

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    const v1, 0x7f070078

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const v1, 0x7f070079

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const v2, 0x7f07007d

    invoke-virtual {p0, v2}, Lcom/htc/music/PluginPropertyListActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->setVolumeControlStream(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->requestWindowFeature(I)Z

    new-instance v1, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    invoke-direct {v1, p0}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;-><init>(Lcom/htc/music/PluginPropertyListActivity;)V

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mPropertyItems:Lcom/htc/music/PluginPropertyListActivity$PropertyItems;

    invoke-virtual {p0}, Lcom/htc/music/PluginPropertyListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/music/PluginPropertyListActivity$PropertyItems;->setItems(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mService:Lcom/htc/music/IMediaPlaybackService;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/music/PluginPropertyListActivity;->osc:Landroid/content/ServiceConnection;

    invoke-static {p0, v1, v2}, Lcom/htc/music/util/MusicUtils;->bindToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/ServiceConnection;)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/PluginPropertyListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.htc.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.htc.music.newproperty"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/music/PluginPropertyListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v1, 0x7f03004f

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/htc/music/PluginPropertyListActivity;->getProperties()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->titleArray:[Ljava/lang/String;

    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mPluginPropertyList:Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/music/PluginPropertyListActivity;->mPluginPropertyList:Lcom/htc/widget/HtcListView;

    iget-object v2, p0, Lcom/htc/music/PluginPropertyListActivity;->mPluginPropertyAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const v1, 0x7f070072

    invoke-virtual {p0, v1}, Lcom/htc/music/PluginPropertyListActivity;->setTitle(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/PluginPropertyListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/htc/music/PluginPropertyListActivity;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/music/PluginPropertyListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/music/util/MusicUtils;->unbindFromService(Landroid/content/Context;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    invoke-direct {p0}, Lcom/htc/music/PluginPropertyListActivity;->showPoperty()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v1, "configchange"

    invoke-virtual {p0}, Lcom/htc/music/PluginPropertyListActivity;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
