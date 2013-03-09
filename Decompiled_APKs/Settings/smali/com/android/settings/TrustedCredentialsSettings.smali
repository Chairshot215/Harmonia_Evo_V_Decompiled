.class public Lcom/android/settings/TrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TrustedCredentialsSettings$4;,
        Lcom/android/settings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/settings/TrustedCredentialsSettings$ViewHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/android/settings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TrustedCredentialsSettings"


# instance fields
.field private final mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabWidget:Landroid/widget/TabWidget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 149
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    invoke-direct {v0}, Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    .line 439
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings/TrustedCredentialsSettings;)Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mStore:Lorg/apache/harmony/xnet/provider/jsse/TrustedCertificateStore;

    return-object v0
.end method

.method private addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;I)V
    .locals 7
    .parameter "tab"
    .parameter "resource"

    .prologue
    .line 169
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    #getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$700(Lcom/android/settings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    #getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mLabel:I
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v5

    invoke-direct {p0, v5, p2}, Lcom/android/settings/TrustedCredentialsSettings;->createIndicatorView(II)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setIndicator(Landroid/view/View;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    #getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mView:I
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    .line 172
    .local v3, systemSpec:Landroid/widget/TabHost$TabSpec;
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 174
    iget-object v4, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    #getter for: Lcom/android/settings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$800(Lcom/android/settings/TrustedCredentialsSettings$Tab;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 175
    .local v1, lv:Landroid/widget/ListView;
    new-instance v0, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    const/4 v4, 0x0

    invoke-direct {v0, p0, p1, v4}, Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$1;)V

    .line 176
    .local v0, adapter:Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    new-instance v4, Lcom/android/settings/TrustedCredentialsSettings$1;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/TrustedCredentialsSettings$1;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "item_background_holo_dark"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 186
    .local v2, resId:I
    if-eqz v2, :cond_0

    .line 187
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelector(I)V

    .line 190
    :cond_0
    return-void
.end method

.method private createIndicatorView(I)Landroid/view/View;
    .locals 7
    .parameter "lableRes"

    .prologue
    .line 477
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 478
    .local v0, context:Landroid/content/Context;
    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 479
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x109009d

    iget-object v5, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 481
    .local v2, tabIndicator:Landroid/view/View;
    const v4, 0x1020016

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 482
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    const-string v4, "tab_indicator"

    const v5, 0x108057c

    invoke-static {v0, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 486
    return-object v2
.end method

.method private createIndicatorView(II)Landroid/view/View;
    .locals 8
    .parameter "lableRes"
    .parameter "drawableRes"

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 491
    .local v0, context:Landroid/content/Context;
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 492
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v5, 0x109009d

    iget-object v6, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 494
    .local v3, tabIndicator:Landroid/view/View;
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 495
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    const v5, 0x1020006

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 498
    .local v1, iconView:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 500
    const-string v5, "tab_indicator"

    const v6, 0x108057c

    invoke-static {v0, v5, v6}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 501
    return-object v3
.end method

.method private showCertDialog(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 13
    .parameter "certHolder"

    .prologue
    const/high16 v12, -0x100

    .line 379
    #getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mSslCert:Landroid/net/http/SslCertificate;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$2600(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Landroid/net/http/SslCertificate;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v8

    .line 382
    .local v8, view:Landroid/view/View;
    const-class v9, Landroid/widget/TextView;

    invoke-static {v8, v9}, Lcom/android/settings/framework/util/HtcViewFinder;->findViewsByClass(Landroid/view/View;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v5

    .line 383
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .local v7, v:Landroid/view/View;
    check-cast v7, Landroid/widget/TextView;

    .end local v7           #v:Landroid/view/View;
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 386
    :cond_0
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 387
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v9, 0x10404b7

    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 388
    invoke-virtual {v1, v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 389
    const v9, 0x104000a

    new-instance v10, Lcom/android/settings/TrustedCredentialsSettings$2;

    invoke-direct {v10, p0}, Lcom/android/settings/TrustedCredentialsSettings$2;-><init>(Lcom/android/settings/TrustedCredentialsSettings;)V

    invoke-virtual {v1, v9, v10}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 394
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 396
    .local v2, certDialog:Landroid/app/Dialog;
    const v9, 0x10202db

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 397
    .local v0, body:Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 398
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v9, 0x7f04008d

    const/4 v10, 0x0

    invoke-virtual {v4, v9, v0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 402
    .local v6, removeButton:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "common_button_small"

    const v11, 0x2080011

    invoke-static {v9, v10, v11}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 407
    invoke-virtual {v6, v12}, Landroid/widget/Button;->setTextColor(I)V

    .line 410
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 411
    #getter for: Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/settings/TrustedCredentialsSettings$Tab;
    invoke-static {p1}, Lcom/android/settings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)Lcom/android/settings/TrustedCredentialsSettings$Tab;

    move-result-object v9

    #calls: Lcom/android/settings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v9, p1}, Lcom/android/settings/TrustedCredentialsSettings$Tab;->access$2700(Lcom/android/settings/TrustedCredentialsSettings$Tab;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setText(I)V

    .line 412
    new-instance v9, Lcom/android/settings/TrustedCredentialsSettings$3;

    invoke-direct {v9, p0, p1, v2}, Lcom/android/settings/TrustedCredentialsSettings$3;-><init>(Lcom/android/settings/TrustedCredentialsSettings;Lcom/android/settings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 437
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "parent"
    .parameter "savedInstanceState"

    .prologue
    .line 156
    const v0, 0x7f04008e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 157
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 158
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabWidget:Landroid/widget/TabWidget;

    .line 159
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const v1, 0x7f0200a5

    invoke-direct {p0, v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;I)V

    .line 161
    sget-object v0, Lcom/android/settings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/settings/TrustedCredentialsSettings$Tab;

    const v1, 0x7f0200a6

    invoke-direct {p0, v0, v1}, Lcom/android/settings/TrustedCredentialsSettings;->addTab(Lcom/android/settings/TrustedCredentialsSettings$Tab;I)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabWidget:Landroid/widget/TabWidget;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method
