.class public Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;
.super Landroid/app/Activity;
.source "VoiceDataInstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;
    }
.end annotation


# instance fields
.field private mConfig:Lcom/google/android/tts/TtsConfig;

.field private mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

.field private final mDownloadSetObserver:Landroid/database/DataSetObserver;

.field private final mInstalledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mLangCountryHelper:Lcom/google/android/tts/local/LangCountryHelper;

.field private mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

.field private mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;

.field private final mVoiceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private mVoicesListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceList:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mInstalledList:Ljava/util/List;

    .line 48
    new-instance v0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$1;

    invoke-direct {v0, p0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$1;-><init>(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)V

    iput-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mDownloadSetObserver:Landroid/database/DataSetObserver;

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->onActiveDownloadSetChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->formatText1(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Lcom/google/android/tts/voicepack/VoiceDataManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->handleDeleteVoice(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Lcom/google/android/tts/voicepack/VoiceDownloadHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->formatText2(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)Lcom/google/android/tts/local/LangCountryHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mLangCountryHelper:Lcom/google/android/tts/local/LangCountryHelper;

    return-object v0
.end method

.method private buildVoiceLists()V
    .locals 5

    .prologue
    .line 93
    iget-object v3, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    invoke-virtual {v3}, Lcom/google/android/tts/voicepack/MetadataManager;->getVoiceMetadata()Ljava/util/List;

    move-result-object v0

    .line 95
    .local v0, availableDownloads:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;>;"
    iget-object v3, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 96
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;

    .line 97
    .local v2, m:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    iget-object v3, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;

    invoke-virtual {v2}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/tts/voicepack/VoiceDataManager;->isSystemLocale(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    iget-object v3, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    .end local v2           #m:Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;
    :cond_1
    return-void
.end method

.method private formatText1(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;
    .locals 1
    .parameter "voice"

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getLocale()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/tts/voicepack/MetadataManager;->getDisplayString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatText2(Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;)Ljava/lang/String;
    .locals 5
    .parameter "voice"

    .prologue
    .line 227
    const v0, 0x7f06000a

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/android/tts/voicepack/VoiceMetadataProto$Metadata;->getSizeKb()I

    move-result v3

    mul-int/lit16 v3, v3, 0x400

    int-to-long v3, v3

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDeleteVoice(Ljava/lang/String;)V
    .locals 2
    .parameter "voiceLocale"
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end parameter

    .prologue
    .line 206
    new-instance v0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;-><init>(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 220
    return-void
.end method

.method private onActiveDownloadSetChanged()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->buildVoiceLists()V

    .line 109
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoicesListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;

    invoke-virtual {v0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;->notifyDataSetChanged()V

    .line 111
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoicesListView:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 113
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 115
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const/high16 v1, 0x7f02

    invoke-virtual {p0, v1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->setContentView(I)V

    .line 61
    invoke-static {p0}, Lcom/google/android/tts/GoogleTtsApplication;->get(Landroid/content/Context;)Lcom/google/android/tts/GoogleTtsApplication;

    move-result-object v0

    .line 62
    .local v0, app:Lcom/google/android/tts/GoogleTtsApplication;
    invoke-virtual {v0}, Lcom/google/android/tts/GoogleTtsApplication;->getVoiceDataManager()Lcom/google/android/tts/voicepack/VoiceDataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoiceDataManager:Lcom/google/android/tts/voicepack/VoiceDataManager;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/tts/GoogleTtsApplication;->getMetadataManager()Lcom/google/android/tts/voicepack/MetadataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mMetadataManager:Lcom/google/android/tts/voicepack/MetadataManager;

    .line 64
    invoke-virtual {v0}, Lcom/google/android/tts/GoogleTtsApplication;->getVoiceDownloadManager()Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    .line 65
    invoke-virtual {v0}, Lcom/google/android/tts/GoogleTtsApplication;->getLangCountryHelper()Lcom/google/android/tts/local/LangCountryHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mLangCountryHelper:Lcom/google/android/tts/local/LangCountryHelper;

    .line 66
    invoke-virtual {v0}, Lcom/google/android/tts/GoogleTtsApplication;->getTtsConfig()Lcom/google/android/tts/TtsConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mConfig:Lcom/google/android/tts/TtsConfig;

    .line 68
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->buildVoiceLists()V

    .line 70
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoicesListView:Landroid/widget/ListView;

    .line 71
    iget-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mVoicesListView:Landroid/widget/ListView;

    new-instance v2, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;

    invoke-direct {v2, p0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity$VoiceListAdapter;-><init>(Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 90
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    iget-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mDownloadSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->unregisterDownloadSetObserver(Landroid/database/DataSetObserver;)V

    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 77
    invoke-direct {p0}, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->onActiveDownloadSetChanged()V

    .line 78
    iget-object v0, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mDownloadManager:Lcom/google/android/tts/voicepack/VoiceDownloadHelper;

    iget-object v1, p0, Lcom/google/android/tts/voicepack/VoiceDataInstallActivity;->mDownloadSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/google/android/tts/voicepack/VoiceDownloadHelper;->registerDownloadSetObserver(Landroid/database/DataSetObserver;)V

    .line 79
    return-void
.end method
