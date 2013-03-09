.class public Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;
.super Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;
.source "DetailsSummaryMusicViewBinder.java"


# direct methods
.method public constructor <init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V
    .locals 0
    .parameter "dfeToc"
    .parameter "account"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;-><init>(Lcom/google/android/finsky/api/model/DfeToc;Landroid/accounts/Account;)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->goToArtistPage()V

    return-void
.end method

.method private goToArtistPage()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 80
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getDetailsUrl()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, artistDetailsUrl:Ljava/lang/String;
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    iget-object v3, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v3}, Lcom/google/android/finsky/api/model/Document;->getDetailsUrl()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method private hasArtistLink()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v0}, Lcom/google/android/finsky/api/model/Document;->getAlbumDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$AlbumDetails;->getDisplayArtist()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getDetailsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected setupItemDetails()V
    .locals 8

    .prologue
    const v7, 0x7f0800f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 28
    invoke-super {p0}, Lcom/google/android/finsky/activities/DetailsSummaryViewBinder;->setupItemDetails()V

    .line 30
    const v4, 0x7f0800f3

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, creatorPanel:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->hasArtistLink()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    if-eqz v4, :cond_3

    .line 34
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-virtual {v1, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 36
    const v4, 0x7f020062

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 37
    new-instance v4, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;

    invoke-direct {v4, p0}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder$1;-><init>(Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    :cond_0
    :goto_0
    const v4, 0x7f0800f5

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/DecoratedTextView;

    .line 52
    .local v2, tipperStickerView:Lcom/google/android/finsky/layout/DecoratedTextView;
    iget-object v4, p0, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-static {v4, v2}, Lcom/google/android/finsky/utils/BadgeUtils;->configureTipperSticker(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/layout/DecoratedTextView;)V

    .line 53
    invoke-virtual {v2}, Lcom/google/android/finsky/layout/DecoratedTextView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 56
    const v4, 0x7f0800ed

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 57
    .local v3, title:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->setSingleLine()V

    .line 58
    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 61
    .end local v3           #title:Landroid/widget/TextView;
    :cond_1
    const v4, 0x7f0800c8

    invoke-virtual {p0, v4}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, buttonContainer:Landroid/view/View;
    instance-of v4, v0, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;

    if-eqz v4, :cond_2

    .line 64
    check-cast v0, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;

    .end local v0           #buttonContainer:Landroid/view/View;
    invoke-virtual {v0, v6}, Lcom/google/android/finsky/layout/DetailsButtonColumnLayout;->setMinimumRowCount(I)V

    .line 66
    :cond_2
    return-void

    .line 45
    .end local v2           #tipperStickerView:Lcom/google/android/finsky/layout/DecoratedTextView;
    :cond_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 46
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 47
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/activities/DetailsSummaryMusicViewBinder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
