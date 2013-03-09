.class public Lcom/htc/album/SocialNetwork/ActivitySearchView;
.super Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;
.source "ActivitySearchView.java"


# static fields
.field public static final REQUEST_DATA_UPDATE_BY_FILTER:I = 0x9c41

.field public static final RESUME_ADAPTER:I = 0xa411

.field public static mFriendKeepList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mButtonClear:Landroid/widget/Button;

.field private mButtonLogin:Landroid/widget/Button;

.field private mCurMode:I

.field private mEditWindowTitleIcon:Landroid/widget/ImageView;

.field private mLayoutListView:Landroid/widget/RelativeLayout;

.field private mLayoutLoginView:Landroid/widget/LinearLayout;

.field private mTextViewLogin:Landroid/widget/TextView;

.field private mbClearTop5:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;-><init>()V

    .line 45
    const-class v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    .line 53
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/LinearLayout;

    .line 55
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    .line 56
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    .line 57
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Landroid/widget/Button;

    .line 58
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonClear:Landroid/widget/Button;

    .line 60
    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowTitleIcon:Landroid/widget/ImageView;

    .line 66
    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    .line 67
    iput v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mCurMode:I

    return-void
.end method

.method public static addTop5FriendList(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;)V
    .locals 7
    .parameter "a"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 193
    if-nez p0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 195
    :cond_0
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5FriendList()V

    .line 198
    :cond_1
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    .line 200
    .local v1, index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 203
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 208
    .end local v1           #index:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;
    :cond_3
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_4

    .line 210
    const-string v3, "Kabaeva"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivitySearchView][addTop5FriendList]: addFriendToKeepList - Remove : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;

    invoke-virtual {v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    :cond_4
    const-string v2, "Kabaeva"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][ActivitySearchView][addTop5FriendList]: Add : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v2, v5, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static deinitTop5FriendList()V
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 180
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 181
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    .line 183
    :cond_0
    return-void
.end method

.method public static getTop5FriendList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPerson;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5FriendList()V

    .line 188
    :cond_0
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static initTop5FriendList()V
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->deinitTop5FriendList()V

    .line 171
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mFriendKeepList:Ljava/util/ArrayList;

    .line 173
    return-void
.end method

.method private setButtonOnClickListener()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Landroid/widget/Button;

    new-instance v1, Lcom/htc/album/SocialNetwork/ActivitySearchView$1;

    invoke-direct {v1, p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView$1;-><init>(Lcom/htc/album/SocialNetwork/ActivitySearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    :cond_0
    return-void
.end method


# virtual methods
.method public RelayoutPageView(I)V
    .locals 6
    .parameter "nLayoutType"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 338
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][ActivitySearchView][RelayoutPageView]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 346
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 354
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->setActivityTitle()V

    .line 356
    if-ne v5, p1, :cond_3

    .line 358
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->setButtonOnClickListener()V

    .line 363
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v0, v3}, Lcom/htc/album/SocialNetwork/ListViewSearch;->showControlTitleBat(Z)V

    .line 377
    :cond_1
    :goto_1
    return-void

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v0, v0, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v1, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0030

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->syncListViewLayout()V

    .line 373
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v0, v5}, Lcom/htc/album/SocialNetwork/ListViewSearch;->showControlTitleBat(Z)V

    goto :goto_1
.end method

.method public initButtonClear()V
    .locals 2

    .prologue
    .line 136
    const v0, 0x202019a

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonClear:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonClear:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonClear:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonClear:Landroid/widget/Button;

    .line 142
    :cond_0
    return-void
.end method

.method public initEditWindow()V
    .locals 4

    .prologue
    .line 114
    const v1, 0x2020050

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowTitleIcon:Landroid/widget/ImageView;

    .line 116
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowTitleIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    const-string v1, "service_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowTitleIcon:Landroid/widget/ImageView;

    const v2, 0x20802f4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 128
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mEditWindowTitleIcon:Landroid/widget/ImageView;

    const v2, 0x20802f6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public initPageComponents()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    .line 289
    new-instance v0, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getUIHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/htc/album/SocialNetwork/ListViewAdapterSearch;-><init>(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_1

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/DisplayManager;->setMainViewContainerId(I)V

    .line 298
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/DisplayManager;->setControlBarViewContainerId(I)V

    .line 299
    new-instance v1, Lcom/htc/album/SocialNetwork/ListViewSearch;

    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/AdapterBase;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getUIHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v0, v2, p0, v3}, Lcom/htc/album/SocialNetwork/ListViewSearch;-><init>(Lcom/htc/opensense2/album/AdapterBase;Lcom/htc/opensense2/album/DisplayManagerInterface;Landroid/app/Activity;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    if-eqz v1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v0, v1}, Lcom/htc/opensense2/album/DisplayManager;->addTemplate(Lcom/htc/opensense2/album/ViewTemplateBase;)Z

    .line 302
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mDispMgr:Lcom/htc/opensense2/album/DisplayManager;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/ViewTemplateBase;->getId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/DisplayManager;->switchTemplate(ILandroid/os/Bundle;Z)V

    .line 309
    :cond_2
    const v0, 0x7f0a0062

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutLoginView:Landroid/widget/LinearLayout;

    .line 310
    const v0, 0x7f0a0075

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLayoutListView:Landroid/widget/RelativeLayout;

    .line 317
    const v0, 0x7f0a0071

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mButtonLogin:Landroid/widget/Button;

    .line 318
    const v0, 0x7f0a0072

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mTextViewLogin:Landroid/widget/TextView;

    .line 319
    return-void
.end method

.method public initTop5List()V
    .locals 3

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 152
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 164
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 154
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v2, "clear_top5_frined_list"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    .line 156
    iget-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    if-eqz v2, :cond_0

    .line 158
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->deinitTop5FriendList()V

    .line 159
    invoke-static {}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5FriendList()V

    .line 160
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mbClearTop5:Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 250
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onActivityResult]: Begin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/16 v1, 0x4e2a

    if-ne v1, p1, :cond_0

    if-eqz p3, :cond_0

    .line 253
    const-string v1, "contact_update"

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 254
    .local v0, bIsUpdate:Z
    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onActivityResult]: update contact list."

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const v2, 0x9c41

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 260
    .end local v0           #bIsUpdate:Z
    :cond_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onActivityResult]: End"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public onButtonClickLogin()V
    .locals 4

    .prologue
    .line 470
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e2d

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 471
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 79
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onCreate]: Begin"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const v1, 0x7f030034

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->setContentView(I)V

    .line 81
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onCreate(Landroid/os/Bundle;)V

    .line 82
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onCreate()V

    .line 84
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 85
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "upload_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mCurMode:I

    .line 88
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->initTop5List()V

    .line 91
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->enableBroadcastReceiver()V

    .line 94
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 96
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][ActivitySearchView][onCreate]: End"

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivitySearchView][onDestroy]: Begin"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onDestroy()V

    .line 245
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDestroy()V

    .line 246
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivitySearchView][onDestroy]: End"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public onMediaDisconnected(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->finish()V

    .line 107
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[onMediaDisconnected] Go finish now..."

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuContactPicker()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method

.method public onMenuRefresh()V
    .locals 4

    .prologue
    .line 442
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    const/16 v1, 0x4e28

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onDataUpdateNotify(ILjava/lang/Object;I)V

    .line 443
    return-void
.end method

.method public onMessageHandler(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 474
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 492
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onMessageHandler(Landroid/os/Message;)V

    .line 495
    :goto_0
    :sswitch_0
    return-void

    .line 477
    :sswitch_1
    invoke-virtual {p0, v3}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->RelayoutPageView(I)V

    goto :goto_0

    .line 480
    :sswitch_2
    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->RelayoutPageView(I)V

    goto :goto_0

    .line 485
    :sswitch_3
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v2, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mLoadingText:Ljava/lang/String;

    .line 486
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onMessageHandler(Landroid/os/Message;)V

    goto :goto_0

    .line 489
    :sswitch_4
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    check-cast v0, Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v0}, Lcom/htc/album/SocialNetwork/ListViewSearch;->getMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mListView:Lcom/htc/opensense2/album/ViewTemplateBase;

    check-cast v1, Lcom/htc/album/SocialNetwork/ListViewSearch;

    invoke-virtual {v1}, Lcom/htc/album/SocialNetwork/ListViewSearch;->getAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 474
    :sswitch_data_0
    .sparse-switch
        0x2724 -> :sswitch_3
        0x274f -> :sswitch_2
        0x2750 -> :sswitch_0
        0x4e84 -> :sswitch_1
        0xa411 -> :sswitch_4
    .end sparse-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 446
    const/4 v0, 0x0

    .line 448
    .local v0, bResult:Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 466
    :goto_0
    return v0

    .line 452
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->onMenuContactPicker()V

    .line 453
    const/4 v0, 0x1

    goto :goto_0

    .line 448
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onPause()V

    .line 238
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onPause()V

    .line 239
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 381
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 223
    invoke-super {p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;->onResume()V

    .line 225
    iget v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mCurMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/htc/sunny2/frameworks/utils/DeviceStorageManager;->isExternalStorageReady(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->finish()V

    .line 229
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][ActivitySearchView][onResume]: finish() from onResume() Bcz ExternalStorage is not rdy !"

    invoke-static {v0, v1}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/AdapterBaseSocialNetwork;->onResume()V

    goto :goto_0
.end method

.method public setActivityTitle()V
    .locals 2

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, viewText:Landroid/widget/TextView;
    const v1, 0x2020054

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #viewText:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #viewText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    :cond_0
    const v1, 0x2020053

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #viewText:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #viewText:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getServiceInfo()Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_1
    return-void
.end method

.method protected showDialogErrorCommunication()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 517
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0037

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0038

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 522
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivitySearchView$2;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView$2;-><init>(Lcom/htc/album/SocialNetwork/ActivitySearchView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 529
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method protected showDialogNoConnection()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 533
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x20c0162

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x20c0156

    invoke-virtual {p0, v2}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 538
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x20c0200

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivitySearchView$3;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView$3;-><init>(Lcom/htc/album/SocialNetwork/ActivitySearchView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 556
    const v1, 0x20c01d6

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivitySearchView$4;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView$4;-><init>(Lcom/htc/album/SocialNetwork/ActivitySearchView;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 563
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public syncExternalRequest()V
    .locals 4

    .prologue
    .line 265
    const/4 v0, 0x0

    .line 266
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 268
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    if-nez v1, :cond_0

    .line 269
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    invoke-direct {v1, p0}, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;-><init>(Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost;)V

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    const-string v1, "service_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    .line 273
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 274
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    .line 280
    :goto_0
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][ActivitySearchView][syncExternalRequest]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v3, v3, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_1
    return-void

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    iget-object v1, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mServiceName:Ljava/lang/String;

    sget-object v2, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 276
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivitySearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b002b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivitySearchView;->mServiceInfo:Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;

    const-string v1, "service_display"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v2, Lcom/htc/opensense2/album/SocialNetworkManager/ActivityMainMaBaseHost$ServiceInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method
