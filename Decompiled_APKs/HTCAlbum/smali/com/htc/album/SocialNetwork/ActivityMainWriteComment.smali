.class public Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;
.super Lcom/htc/album/modules/ui/ControlBarHostActivity;
.source "ActivityMainWriteComment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final FOOTER_BAR_ONLINE_WRITE_COMMENTS:I

.field private final HEADER_BAR_ONLINE_WRITE_COMMENTS:I

.field private mEditText:Landroid/widget/EditText;

.field private mEnableCommentBtn:Z

.field private mListenerButtonComment:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;-><init>()V

    .line 33
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->HEADER_BAR_ONLINE_WRITE_COMMENTS:I

    .line 34
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->FOOTER_BAR_ONLINE_WRITE_COMMENTS:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Landroid/widget/EditText;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    .line 137
    new-instance v0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;

    invoke-direct {v0, p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$2;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V

    iput-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mListenerButtonComment:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Lcom/htc/album/modules/ui/ControlBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Lcom/htc/album/modules/ui/ControlBarManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private initPageComponents()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 70
    iget-object v2, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const v1, 0x7f0a0013

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Lcom/htc/album/modules/ui/ControlBarManager;->attach(Landroid/view/ViewGroup;)V

    .line 71
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v5, v5}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 72
    iget-object v1, p0, Lcom/htc/album/modules/ui/ControlBarHostActivity;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v3, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createControlBar(II)V

    .line 76
    const v1, 0x7f0a0014

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 77
    .local v0, editLayout:Landroid/widget/RelativeLayout;
    invoke-static {p0, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->getHeight(Landroid/content/Context;I)I

    move-result v1

    invoke-static {p0}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->getHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v4, v1, v4, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 80
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Landroid/widget/EditText;

    .line 81
    iget-object v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Landroid/widget/EditText;

    new-instance v2, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;

    invoke-direct {v2, p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment$1;-><init>(Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 113
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 114
    return-void
.end method

.method private onWriteComment()V
    .locals 4

    .prologue
    .line 185
    sget-object v2, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][ActivitymainWriteComment][onClick]: "

    invoke-static {v2, v3}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, szComment:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 190
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "comment_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setResult(ILandroid/content/Intent;)V

    .line 193
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->finish()V

    .line 194
    return-void
.end method

.method private setActivityTitle()V
    .locals 3

    .prologue
    const v2, 0x20c01f3

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, viewText:Landroid/widget/TextView;
    const v1, 0x2020054

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #viewText:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #viewText:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    :cond_0
    const v1, 0x2020053

    invoke-virtual {p0, v1}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #viewText:Landroid/widget/TextView;
    check-cast v0, Landroid/widget/TextView;

    .restart local v0       #viewText:Landroid/widget/TextView;
    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_1
    return-void
.end method


# virtual methods
.method public RelayoutPageView()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public getHeaderSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20c01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onBubbleDismissed()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public onBubblePopped()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 117
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 118
    return-void
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 161
    :goto_0
    return-void

    .line 158
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->onWriteComment()V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->requestWindowFeature(I)Z

    .line 44
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->setContentView(I)V

    .line 46
    invoke-super {p0, p1}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-direct {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->initPageComponents()V

    .line 50
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_WindowDefaultBackground(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 51
    return-void
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 220
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 221
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 222
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 223
    const/16 v3, 0x9

    const v5, 0x7f0b0111

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 225
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 3
    .parameter "id"

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .line 200
    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onPause()V

    .line 61
    return-void
.end method

.method public onRefreshFooterBar(Lcom/htc/album/modules/ui/widget/GalleryFooterBar;)V
    .locals 2
    .parameter "footer"

    .prologue
    .line 230
    const/16 v1, 0x9

    invoke-virtual {p1, v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->findButton(I)Lcom/htc/album/modules/ui/widget/ControlButton;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/FooterButton;

    .line 231
    .local v0, btnComment:Lcom/htc/album/modules/ui/widget/FooterButton;
    iget-boolean v1, p0, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->mEnableCommentBtn:Z

    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/FooterButton;->setEnabled(Z)V

    .line 232
    return-void
.end method

.method public onRefreshHeaderBar(Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->getHeaderTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->setTitle(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 54
    invoke-super {p0}, Lcom/htc/album/modules/ui/ControlBarHostActivity;->onResume()V

    .line 56
    invoke-virtual {p0}, Lcom/htc/album/SocialNetwork/ActivityMainWriteComment;->RelayoutPageView()V

    .line 57
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method
