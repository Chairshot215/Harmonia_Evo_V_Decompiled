.class public Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;
.super Lcom/htc/music/widget/MusicListActivity;
.source "MusicAutoHeaderFooterListActivity.java"

# interfaces
.implements Lcom/htc/music/widget/IMusicTabActivityInterface;
.implements Lcom/htc/music/widget/IDismissBubbleInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "[MusicOnlineListActivity]"


# instance fields
.field private mHeaderBar:Lcom/htc/widget/HeaderBar;

.field protected mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

.field protected mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

.field private mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

.field protected mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

.field private mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field protected mIsOnlineInnerType:Z

.field private mMiniPlayer:Lcom/htc/music/MiniPlayer;

.field protected mOnlineSearchAction:Landroid/view/View$OnClickListener;

.field private mOrientation:I

.field private mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

.field private mUseCustomLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicListActivity;-><init>()V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    iput-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    iput v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$1;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$2;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$3;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$4;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity$5;-><init>(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)V

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private resetHeaderMiniPlayerButton(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTitleStyle(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setCategoryProgressVisible(Z)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setCategorySwitcherStyleTitle()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setStoreSwitchStyleTitle()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private startListenStore()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.music.online.strorefont"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "InnerActivityType"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "[MusicOnlineListActivity]"

    const-string v3, "Opps, we can\'t launch store activity!!"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public disableCategoryDropDown()V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->disableCategoryDropDown()V

    :cond_1
    return-void
.end method

.method public dismissPopupBubble()V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarImage;->dismiss()V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1, p1}, Lcom/htc/music/MiniPlayer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected initMiniPlayer()V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetMiniPlayer(Z)V

    if-ne v4, v0, :cond_1

    :goto_1
    invoke-direct {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetHeaderMiniPlayerButton(Z)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method protected initOnlineTitleLayout()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-nez v3, :cond_0

    const v3, 0x7f0800b9

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const v3, 0x7f0800ba

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBar;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const v3, 0x7f08004a

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v7}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    :cond_2
    const v3, 0x7f08004b

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarText;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v6}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    :cond_3
    const v3, 0x7f08004e

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f070105

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x20808fb

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderMiniPlayer:Lcom/htc/widget/HeaderBarImage;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarLanchGlanceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    const v3, 0x7f08004d

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_5
    const v3, 0x7f08004c

    invoke-virtual {p0, v3}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HeaderBarImage;

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v3, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    :cond_6
    new-instance v3, Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v3, p0}, Lcom/htc/music/widget/StoreSwitcherAdapter;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_8

    new-instance v3, Lcom/htc/music/widget/DismissBubbleItemClickListener;

    new-instance v4, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;

    iget-object v5, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-direct {v4, p0, v5}, Lcom/htc/music/widget/StoreSwitcherAdapter$OnStoreSwitcherItemClickListener;-><init>(Landroid/app/Activity;Lcom/htc/music/widget/StoreSwitcherAdapter;)V

    invoke-direct {v3, p0, v4}, Lcom/htc/music/widget/DismissBubbleItemClickListener;-><init>(Lcom/htc/music/widget/IDismissBubbleInterface;Landroid/widget/AdapterView$OnItemClickListener;)V

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    :goto_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x3

    if-eqz v1, :cond_7

    const-string v3, "InnerActivityType"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_7
    invoke-direct {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setTitleStyle(I)V

    invoke-virtual {v0, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v3}, Lcom/htc/music/widget/StoreSwitcherAdapter;->releaseAdapter()V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "[MusicOnlineListActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive activity result, requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0xc351

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->startListenStore()V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/htc/music/widget/MusicListActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    if-ne v4, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetMiniPlayer(Z)V

    iget v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    if-ne v4, v0, :cond_2

    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->resetHeaderMiniPlayerButton(Z)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public onContentChanged()V
    .locals 1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onContentChanged()V

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->initOnlineTitleLayout()V

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->initMiniPlayer()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOrientation:I

    return-void
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-static {p0}, Lcom/htc/music/util/OnlineMusicUtils;->createNoNetworkDialog(Landroid/app/Activity;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xaae61
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onResume()V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/htc/music/widget/MusicListActivity;->onStop()V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v0}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    :cond_0
    return-void
.end method

.method protected resetMiniPlayer(Z)V
    .locals 4

    const/4 v3, 0x0

    const v2, 0x7f08006c

    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-nez v1, :cond_0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->stopMonitor()V

    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/htc/music/MiniPlayer$MiniPlayerCreator;->createMiniPlayer(Landroid/app/Activity;)Lcom/htc/music/MiniPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {p0, v2}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->startMonitor()V

    goto :goto_0

    :cond_4
    const-string v1, "[MusicOnlineListActivity]"

    const-string v2, "can\'t find R.id.listview_content_layout!! so we can\'t add mini player view"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    invoke-virtual {v1}, Lcom/htc/music/MiniPlayer;->release()V

    iput-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mMiniPlayer:Lcom/htc/music/MiniPlayer;

    goto :goto_0
.end method

.method public setCategoryLeftBtnEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setCategoryLeftBtnVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryLeftBtnVisible(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryProgressVisible(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryProgressVisible(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBar;->setProgressVisibility(I)V

    goto :goto_0
.end method

.method protected setCategoryRightBtn(Z)V
    .locals 5

    iget-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v3, :cond_1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v3, :cond_2

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    iput v1, p0, Lcom/htc/music/widget/MusicMaActivity;->mEnableRightBtn:I

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "InnerActivityType"

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_4
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->setStoreRightBtn()V

    :goto_1
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x7f0700e9

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const v4, 0x2080954

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v4, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mOnlineSearchAction:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_1
.end method

.method public setCategoryRightBtn2Enable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn2Enable(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Image(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn2Image(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2OnClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn2OnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setCategoryRightBtn2Visible(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtn2Visible(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn2:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategoryRightBtnEnable(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtnEnable(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCategoryRightBtnImage(II)V
    .locals 1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    :cond_0
    return-void
.end method

.method public setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtnImage(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCategoryRightBtnOnClick(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eq p0, v0, :cond_1

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setCategoryRightBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setCategoryRightBtnVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method public setCategorySwitcherStyleTitle()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "[MusicOnlineListActivity]"

    const-string v1, "setCategorySwitcherStyleTitle"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0700d6

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    :cond_2
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    const v0, 0x7f030042

    if-eq v0, p1, :cond_0

    const v0, 0x7f030043

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    :goto_0
    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->setContentView(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    goto :goto_0
.end method

.method public setMainTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    :cond_0
    return-void
.end method

.method public setMainTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    :cond_0
    return-void
.end method

.method public setSecondaryTitle(I)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(I)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitle(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryTitleVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    goto :goto_0
.end method

.method public setStoreRightBtn()V
    .locals 3

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v2}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchTagResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v2}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getSwitchIconResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setEnabled(Z)V

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1}, Lcom/htc/music/widget/StoreSwitcherAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarStoreClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreSwitcherAdapter:Lcom/htc/music/widget/StoreSwitcherAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mStoreItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    iget-object v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarPopupBubbleClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderRightBtn3:Lcom/htc/widget/HeaderBarImage;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setStoreSwitchStyleTitle()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const v1, 0x7f0700e8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarText;->setSecondaryLeftVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->enableBackIndicator(Z)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBarBackClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderLeftBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mHeaderBar:Lcom/htc/widget/HeaderBar;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBar;->enableLeftDivider(Z)V

    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/String;IILandroid/view/View$OnClickListener;)V
    .locals 3

    iget-boolean v2, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mUseCustomLayout:Z

    if-eqz v2, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/music/widget/MusicListActivity;->setTitle(Ljava/lang/String;IILandroid/view/View$OnClickListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->findRootParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/htc/music/widget/IMusicTabActivityInterface;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/htc/music/widget/IMusicTabActivityInterface;

    invoke-interface {v1, p1}, Lcom/htc/music/widget/IMusicTabActivityInterface;->setSecondaryTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/htc/music/widget/MusicListActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x2

    invoke-super {p0, p1, v0}, Lcom/htc/music/widget/MusicListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    iget-boolean v0, p0, Lcom/htc/music/widget/MusicAutoHeaderFooterListActivity;->mIsOnlineInnerType:Z

    if-nez v0, :cond_0

    if-ltz p2, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x2

    invoke-super {p0, p1, v0}, Lcom/htc/music/widget/MusicListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public startMaActivity(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x2

    invoke-super {p0, p2, v0}, Lcom/htc/music/widget/MusicListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startMaActivityForResult(Landroid/content/Intent;ILcom/htc/music/widget/MusicMaActivity;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/htc/music/widget/MusicListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
