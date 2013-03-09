.class public Lcom/google/android/finsky/layout/ListingView;
.super Landroid/widget/LinearLayout;
.source "ListingView.java"


# instance fields
.field private mCurrentPageUrl:Ljava/lang/String;

.field private mDoc:Lcom/google/android/finsky/api/model/Document;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListingLayout:Landroid/widget/LinearLayout;

.field private mRows:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/finsky/layout/ListingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/finsky/layout/ListingView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mCurrentPageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/finsky/layout/ListingView;)Lcom/google/android/finsky/api/model/Document;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    return-object v0
.end method

.method private addEmailLinkRow(ILjava/lang/String;I)V
    .locals 7
    .parameter "titleId"
    .parameter "link"
    .parameter "iconId"

    .prologue
    .line 315
    const-string v3, "mailto"

    const/4 v4, 0x0

    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 316
    .local v1, emailUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/google/android/finsky/utils/IntentUtils;->createSendIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 317
    .local v0, clickIntent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.SUBJECT"

    iget-object v4, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v4}, Lcom/google/android/finsky/api/model/Document;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040095

    iget-object v5, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ListingRow;

    .line 320
    .local v2, rowView:Lcom/google/android/finsky/layout/ListingRow;
    invoke-virtual {v2, p1, p2, p3}, Lcom/google/android/finsky/layout/ListingRow;->populate(ILjava/lang/String;I)V

    .line 322
    new-instance v3, Lcom/google/android/finsky/layout/ListingView$2;

    invoke-direct {v3, p0, v0, v1, p2}, Lcom/google/android/finsky/layout/ListingView$2;-><init>(Lcom/google/android/finsky/layout/ListingView;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/finsky/layout/ListingRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    iget v3, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    .line 334
    return-void
.end method

.method private addFlagContentRow(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V
    .locals 5
    .parameter "navigationManager"

    .prologue
    .line 337
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040095

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ListingRow;

    .line 339
    .local v0, rowView:Lcom/google/android/finsky/layout/ListingRow;
    const v2, 0x7f0701f6

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    const v1, 0x7f0701f7

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/layout/ListingRow;->populate(II)V

    .line 341
    new-instance v1, Lcom/google/android/finsky/layout/ListingView$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/finsky/layout/ListingView$3;-><init>(Lcom/google/android/finsky/layout/ListingView;Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/layout/ListingRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 348
    return-void

    .line 339
    :cond_0
    const v1, 0x7f0701f9

    goto :goto_0
.end method

.method private addHowToRow(III)V
    .locals 5
    .parameter "titleId"
    .parameter "subtitleId"
    .parameter "iconId"

    .prologue
    .line 283
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040095

    iget-object v3, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/layout/ListingRow;

    .line 285
    .local v0, rowView:Lcom/google/android/finsky/layout/ListingRow;
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/finsky/layout/ListingRow;->populate(III)V

    .line 286
    invoke-virtual {v0}, Lcom/google/android/finsky/layout/ListingRow;->hideSeparator()V

    .line 288
    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 289
    iget v1, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    .line 290
    return-void
.end method

.method private addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "titleId"
    .parameter "link"
    .parameter "iconId"
    .parameter "linkType"

    .prologue
    .line 294
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/finsky/utils/IntentUtils;->createViewIntentForUrl(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 295
    .local v0, clickIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040095

    iget-object v4, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ListingRow;

    .line 297
    .local v1, rowView:Lcom/google/android/finsky/layout/ListingRow;
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/finsky/layout/ListingRow;->populate(ILjava/lang/String;I)V

    .line 299
    new-instance v2, Lcom/google/android/finsky/layout/ListingView$1;

    invoke-direct {v2, p0, v0, p4, p2}, Lcom/google/android/finsky/layout/ListingView$1;-><init>(Lcom/google/android/finsky/layout/ListingView;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/finsky/layout/ListingRow;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v2, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    iget v2, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    .line 312
    return-void
.end method


# virtual methods
.method public bindFlagContent(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/navigationmanager/NavigationManager;Z)V
    .locals 2
    .parameter "doc"
    .parameter "navigationManager"
    .parameter "isLoaded"

    .prologue
    .line 201
    iput-object p1, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 203
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f070208

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 207
    iget-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 208
    invoke-direct {p0, p2}, Lcom/google/android/finsky/layout/ListingView;->addFlagContentRow(Lcom/google/android/finsky/navigationmanager/NavigationManager;)V

    .line 209
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    .line 213
    :goto_0
    return-void

    .line 211
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bindHowToConsume(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .locals 8
    .parameter "currentPageUrl"
    .parameter "doc"

    .prologue
    const v3, 0x7f070277

    const/4 v7, 0x0

    const v6, 0x7f07027e

    const v5, 0x7f020071

    const v4, 0x7f070279

    .line 65
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 66
    .local v0, context:Landroid/content/Context;
    iput-object p1, p0, Lcom/google/android/finsky/layout/ListingView;->mCurrentPageUrl:Ljava/lang/String;

    .line 67
    iput v7, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    .line 68
    iput-object p2, p0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 70
    iget-object v2, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 72
    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v1

    .line 73
    .local v1, documentType:I
    packed-switch v1, :pswitch_data_0

    .line 112
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    if-nez v2, :cond_0

    .line 113
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    .line 118
    :goto_1
    return-void

    .line 75
    :pswitch_1
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 76
    const v2, 0x7f07027a

    const v3, 0x7f020070

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    .line 78
    const v2, 0x7f07027f

    invoke-direct {p0, v6, v2, v5}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    goto :goto_0

    .line 87
    :pswitch_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 88
    const v2, 0x7f07027d

    const v3, 0x7f020072

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    goto :goto_0

    .line 94
    :pswitch_3
    const v2, 0x7f070274

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 95
    const v2, 0x7f07027c

    const v3, 0x7f020074

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    .line 97
    const v2, 0x7f070281

    invoke-direct {p0, v6, v2, v5}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    goto :goto_0

    .line 104
    :pswitch_4
    const v2, 0x7f070278

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 105
    const v2, 0x7f07027b

    const v3, 0x7f020073

    invoke-direct {p0, v4, v2, v3}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    .line 107
    const v2, 0x7f070280

    invoke-direct {p0, v6, v2, v5}, Lcom/google/android/finsky/layout/ListingView;->addHowToRow(III)V

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0, v7}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public bindLinks(Ljava/lang/String;Lcom/google/android/finsky/api/model/Document;)V
    .locals 17
    .parameter "currentPageUrl"
    .parameter "doc"

    .prologue
    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 122
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/layout/ListingView;->mCurrentPageUrl:Ljava/lang/String;

    .line 123
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    .line 124
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    .line 126
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 128
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/finsky/api/model/Document;->getDocumentType()I

    move-result v8

    .line 129
    .local v8, documentType:I
    packed-switch v8, :pswitch_data_0

    .line 191
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/google/android/finsky/layout/ListingView;->mRows:I

    if-nez v14, :cond_6

    .line 192
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    .line 197
    :goto_1
    return-void

    .line 131
    :pswitch_1
    const v14, 0x7f070135

    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v15}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 133
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getAppDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;

    move-result-object v2

    .line 134
    .local v2, appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperWebsite()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 135
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperWebsite()Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, developerWebsite:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 137
    const v14, 0x7f070150

    const v15, 0x7f02006d

    const-string v16, "developerLink"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v7, v15, v1}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V

    .line 142
    .end local v7           #developerWebsite:Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->hasDeveloperEmail()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 143
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;->getDeveloperEmail()Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, developerEmail:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 145
    const v14, 0x7f070151

    const v15, 0x7f02006b

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v6, v15}, Lcom/google/android/finsky/layout/ListingView;->addEmailLinkRow(ILjava/lang/String;I)V

    .line 149
    .end local v6           #developerEmail:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getPrivacyPolicyUrl()Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, privacyPolicyUrl:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 151
    const v14, 0x7f070152

    const v15, 0x7f02006d

    const-string v16, "privacyPolicy"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v11, v15, v1}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 158
    .end local v2           #appDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$AppDetails;
    .end local v11           #privacyPolicyUrl:Ljava/lang/String;
    :pswitch_2
    const v14, 0x7f07013a

    invoke-virtual {v5, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v15}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/android/finsky/layout/ListingView;->mDoc:Lcom/google/android/finsky/api/model/Document;

    invoke-virtual {v14}, Lcom/google/android/finsky/api/model/Document;->getArtistDetails()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;

    move-result-object v3

    .line 160
    .local v3, artistDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->hasExternalLinks()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 161
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;->getExternalLinks()Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;

    move-result-object v4

    .line 162
    .local v4, artistLinks:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlCount()I

    move-result v14

    if-lez v14, :cond_4

    .line 163
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getWebsiteUrlList()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 164
    .local v12, websiteUrl:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 165
    const v14, 0x7f070150

    const v15, 0x7f02006d

    const-string v16, "developerLink"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v12, v15, v1}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 171
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v12           #websiteUrl:Ljava/lang/String;
    :cond_4
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasYoutubeChannelUrl()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 172
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getYoutubeChannelUrl()Ljava/lang/String;

    move-result-object v13

    .line 173
    .local v13, youtubeChannelUrl:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 174
    const v14, 0x7f070153

    const v15, 0x7f02006e

    const-string v16, "artistYoutubeLink"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v13, v15, v1}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V

    .line 179
    .end local v13           #youtubeChannelUrl:Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->hasGooglePlusProfileUrl()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 180
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;->getGooglePlusProfileUrl()Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, googlePlusProfileUrl:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 182
    const v14, 0x7f070154

    const v15, 0x7f02006c

    const-string v16, "artistGooglePlusLink"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v9, v15, v1}, Lcom/google/android/finsky/layout/ListingView;->addWebLinkRow(ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 195
    .end local v3           #artistDetails:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistDetails;
    .end local v4           #artistLinks:Lcom/google/android/finsky/remoting/protos/DocDetails$ArtistExternalLinks;
    .end local v9           #googlePlusProfileUrl:Ljava/lang/String;
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto/16 :goto_1

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bindRentalTerms(Lcom/google/android/finsky/api/model/Document;I)V
    .locals 9
    .parameter "doc"
    .parameter "offerType"

    .prologue
    const/4 v8, 0x0

    .line 216
    iget-object v5, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 217
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getMovieRentalTerms()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;

    .line 218
    .local v4, term:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getOfferType()I

    move-result v5

    if-ne v5, p2, :cond_0

    .line 219
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getRentalHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 220
    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;->getTermList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;

    .line 221
    .local v3, subterm:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    iget-object v5, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f040095

    iget-object v7, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/layout/ListingRow;

    .line 223
    .local v2, row:Lcom/google/android/finsky/layout/ListingRow;
    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getHeader()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;->getBody()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/finsky/layout/ListingRow;->populateAsHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {v2}, Lcom/google/android/finsky/layout/ListingRow;->hideSeparator()V

    .line 225
    iget-object v5, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 227
    .end local v2           #row:Lcom/google/android/finsky/layout/ListingRow;
    .end local v3           #subterm:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm$Term;
    :cond_1
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    goto :goto_0

    .line 230
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #term:Lcom/google/android/finsky/remoting/protos/DocDetails$VideoRentalTerm;
    :cond_2
    return-void
.end method

.method public bindSubscriptionInfo(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;)V
    .locals 10
    .parameter "doc"
    .parameter "subscriptionEntry"

    .prologue
    const v9, 0x7f040095

    const/4 v8, 0x0

    .line 233
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v3

    .line 234
    .local v3, offers:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/finsky/remoting/protos/Common$Offer;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 235
    iget-object v6, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 237
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f070275

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getBackend()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/google/android/finsky/layout/ListingView;->setupHeader(Ljava/lang/String;I)V

    .line 239
    invoke-virtual {p1}, Lcom/google/android/finsky/api/model/Document;->getAvailableOffers()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/finsky/remoting/protos/Common$Offer;

    .line 242
    .local v2, offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    iget-object v6, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/layout/ListingRow;

    .line 244
    .local v1, descriptionRow:Lcom/google/android/finsky/layout/ListingRow;
    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/android/finsky/remoting/protos/Common$Offer;->getFormattedDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/google/android/finsky/layout/ListingRow;->populateAsHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Lcom/google/android/finsky/layout/ListingRow;->hideSeparator()V

    .line 247
    iget-object v6, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 250
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {p1, v2, v6}, Lcom/google/android/finsky/layout/SubscriptionView;->getSubscriptionPriceDescription(Lcom/google/android/finsky/api/model/Document;Lcom/google/android/finsky/remoting/protos/Common$Offer;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    .line 253
    .local v5, priceDescription:Ljava/lang/String;
    new-instance v0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;

    invoke-direct {v0}, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;-><init>()V

    .line 255
    .local v0, dateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v0, p2, v6}, Lcom/google/android/finsky/layout/SubscriptionView;->fillSubscriptionDateInfo(Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;Lcom/google/android/finsky/library/LibrarySubscriptionEntry;Landroid/content/res/Resources;)V

    .line 257
    iget-object v6, p0, Lcom/google/android/finsky/layout/ListingView;->mInflater:Landroid/view/LayoutInflater;

    iget-object v7, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/finsky/layout/ListingRow;

    .line 259
    .local v4, paymentRow:Lcom/google/android/finsky/layout/ListingRow;
    const v6, 0x7f070276

    iget-object v7, v0, Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;->renewalDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6, v5, v7}, Lcom/google/android/finsky/layout/ListingRow;->populate(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 261
    invoke-virtual {v4}, Lcom/google/android/finsky/layout/ListingRow;->hideSeparator()V

    .line 262
    iget-object v6, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    invoke-virtual {p0, v8}, Lcom/google/android/finsky/layout/ListingView;->setVisibility(I)V

    .line 266
    .end local v0           #dateInfo:Lcom/google/android/finsky/layout/SubscriptionView$SubscriptionDateInfo;
    .end local v1           #descriptionRow:Lcom/google/android/finsky/layout/ListingRow;
    .end local v2           #offer:Lcom/google/android/finsky/remoting/protos/Common$Offer;
    .end local v4           #paymentRow:Lcom/google/android/finsky/layout/ListingRow;
    .end local v5           #priceDescription:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 61
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/layout/ListingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/android/finsky/layout/ListingView;->mListingLayout:Landroid/widget/LinearLayout;

    .line 62
    return-void
.end method

.method protected setupHeader(Ljava/lang/String;I)V
    .locals 3
    .parameter "headerString"
    .parameter "headerBackendId"

    .prologue
    .line 269
    const v2, 0x7f0800af

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/layout/ListingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 270
    .local v1, headerView:Landroid/widget/TextView;
    if-eqz v1, :cond_1

    .line 271
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 273
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/layout/ListingView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/google/android/finsky/utils/CorpusResourceUtils;->getBackendHintColor(Landroid/content/Context;I)I

    move-result v0

    .line 278
    .local v0, color:I
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    .end local v0           #color:I
    :cond_1
    return-void
.end method
