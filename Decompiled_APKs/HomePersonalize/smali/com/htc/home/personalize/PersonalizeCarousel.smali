.class public Lcom/htc/home/personalize/PersonalizeCarousel;
.super Lcom/htc/widget/CarouselActivity;
.source "PersonalizeCarousel.java"


# static fields
.field public static final ACTION_FINISH_PERSONALIZE:Ljava/lang/String; = "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

.field static final AUTHORITY:Ljava/lang/String; = "com.htc.home.personalize.PersonalizeCarouselProvider"

.field public static final EXTRA_APPLY_SKIN:Ljava/lang/String; = "extra_apply_skin"

.field public static final EXTRA_SKIN_APPLY_INTENT:Ljava/lang/String; = "extra_skin_apply_intent"

.field public static final EXTRA_SKIN_PACKAGE_NAME:Ljava/lang/String; = "extra_skin_package_name"

.field static final GID:Ljava/lang/String; = "com.htc.home.personalize"

.field public static final KEY_APPLY_SKIN:Ljava/lang/String; = "key_apply_skin"

.field private static final TAG:Ljava/lang/String; = "PersonalizeCarousel"


# instance fields
.field public listUpdatedTabID:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarouselWidget:Lcom/htc/widget/CarouselWidget;

.field private mIsOnPause:Z

.field private mPanelHost:Lcom/htc/widget/CarouselHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "com.htc.home.personalize.PersonalizeCarouselProvider"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mIsOnPause:Z

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->listUpdatedTabID:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Lcom/htc/home/personalize/PersonalizeCarousel$1;

    invoke-direct {v0, p0}, Lcom/htc/home/personalize/PersonalizeCarousel$1;-><init>(Lcom/htc/home/personalize/PersonalizeCarousel;)V

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 36
    return-void
.end method

.method private initTab()V
    .locals 9

    .prologue
    const/16 v8, 0x65

    .line 72
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mPanelHost:Lcom/htc/widget/CarouselHost;

    .line 73
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->getCarouselWidget()Lcom/htc/widget/CarouselWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mCarouselWidget:Lcom/htc/widget/CarouselWidget;

    .line 75
    const/4 v7, 0x0

    .line 76
    .local v7, intent:Landroid/content/Intent;
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v0, "com.htc.personalize.ACTION_HOMEPERSONALIZE_MAIN"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v0, "personalize_tab_id"

    const/16 v1, 0x7d1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "add_to_home"

    const v3, 0x7f09006f

    const v4, 0x2080825

    const v5, 0x2080824

    const v6, 0x2080ab4

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 85
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v0, "com.htc.personalize.ACTION_HOMEPERSONALIZE_MAIN"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v0, "personalize_tab_id"

    const/16 v1, 0x7d2

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 87
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "display"

    const v3, 0x7f09006c

    const v4, 0x2080863

    const v5, 0x2080862

    const v6, 0x2080abb

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 94
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v0, "com.htc.personalize.ACTION_HOMEPERSONALIZE_MAIN"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v0, "personalize_tab_id"

    const/16 v1, 0x7d3

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mPanelHost:Lcom/htc/widget/CarouselHost;

    const-string v1, "sound"

    const v3, 0x7f09006e

    const v4, 0x2080ade

    const v5, 0x2080add

    const v6, 0x2080ad1

    move-object v2, p0

    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 103
    return-void
.end method

.method public static launchHome(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 130
    const-string v3, "Personalize"

    const-string v4, "launchHome()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, category:Ljava/lang/String;
    const-string v3, "uimode"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/UiModeManager;

    .line 134
    .local v2, uiModeMgr:Landroid/app/UiModeManager;
    invoke-virtual {v2}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 142
    const-string v0, "android.intent.category.HOME"

    .line 145
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void

    .line 136
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_0
    const-string v0, "android.intent.category.CAR_DOCK"

    .line 137
    goto :goto_0

    .line 139
    :pswitch_1
    const-string v0, "android.intent.category.DESK_DOCK"

    .line 140
    goto :goto_0

    .line 134
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->finish()V

    .line 168
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 45
    const-string v0, "com.htc.home.personalize"

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeCarousel;->setGId(Ljava/lang/String;)V

    .line 46
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const-string v0, "common_app_bkg"

    const v1, 0x20806b7

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 48
    .local v6, background:I
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->listUpdatedTabID:Ljava/util/ArrayList;

    .line 51
    invoke-direct {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->initTab()V

    .line 54
    invoke-virtual {p0}, Lcom/htc/home/personalize/PersonalizeCarousel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/home/personalize/fusionwidget/FxWigetProviderMetaData$FxWidgetTableMedata;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 55
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_1

    .line 56
    :cond_0
    new-instance v9, Landroid/content/Intent;

    const-string v0, "com.htc.rosie.ACTION_START_SCAN_HTC_WIDGET"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .local v9, scanIntent:Landroid/content/Intent;
    invoke-virtual {p0, v9}, Lcom/htc/home/personalize/PersonalizeCarousel;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    .end local v9           #scanIntent:Landroid/content/Intent;
    :cond_1
    if-eqz v7, :cond_3

    .line 60
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 61
    :cond_2
    const/4 v7, 0x0

    .line 64
    :cond_3
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v8, intentFilter:Landroid/content/IntentFilter;
    const-string v0, "com.htc.home.personalize.ACTION_FINISH_AND_LAUNCH_HOME"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v8}, Lcom/htc/home/personalize/PersonalizeCarousel;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->listUpdatedTabID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/home/personalize/PersonalizeCarousel;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 161
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onDestroy()V

    .line 162
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->listUpdatedTabID:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 178
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onPause()V

    .line 179
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onResume()V

    .line 173
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 154
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onStart()V

    .line 155
    return-void
.end method

.method public setCarouselWidgetVisibility(Z)V
    .locals 2
    .parameter "showCarouselWidget"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mCarouselWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/htc/home/personalize/PersonalizeCarousel;->mCarouselWidget:Lcom/htc/widget/CarouselWidget;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/htc/widget/CarouselWidget;->setVisibility(I)V

    .line 109
    :cond_0
    return-void

    .line 107
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
