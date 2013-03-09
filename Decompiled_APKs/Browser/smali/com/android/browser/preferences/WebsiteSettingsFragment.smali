.class public Lcom/android/browser/preferences/WebsiteSettingsFragment;
.super Landroid/app/ListFragment;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;,
        Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    }
.end annotation


# static fields
.field private static final EXTRA_SITE:Ljava/lang/String; = "site"

.field private static sMBStored:Ljava/lang/String;


# instance fields
.field private LOGTAG:Ljava/lang/String;

.field private mAdapter:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

.field private mSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->sMBStored:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 63
    const-string v0, "WebsiteSettingsActivity"

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->LOGTAG:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mAdapter:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    .line 66
    iput-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 193
    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/preferences/WebsiteSettingsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->finish()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/preferences/WebsiteSettingsFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->sMBStored:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/preferences/WebsiteSettingsFragment;)Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mAdapter:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    return-object v0
.end method

.method private finish()V
    .locals 3

    .prologue
    .line 677
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 678
    .local v0, activity:Landroid/preference/PreferenceActivity;
    if-eqz v0, :cond_0

    .line 679
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/preference/PreferenceActivity;->finishPreferencePanel(Landroid/app/Fragment;ILandroid/content/Intent;)V

    .line 681
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 658
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 659
    sget-object v0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->sMBStored:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 660
    const v0, 0x7f0c013c

    invoke-virtual {p0, v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->sMBStored:Ljava/lang/String;

    .line 662
    :cond_0
    new-instance v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040037

    invoke-direct {v0, p0, v1, v2}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mAdapter:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    .line 663
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    if-eqz v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mAdapter:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    #setter for: Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-static {v0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->access$702(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;)Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 666
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mAdapter:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 667
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mAdapter:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 668
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 685
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 705
    :goto_0
    return-void

    .line 688
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c014c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c014d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c014e

    new-instance v2, Lcom/android/browser/preferences/WebsiteSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$1;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c014f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x7f0d008f
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 643
    const v3, 0x7f040036

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 644
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 645
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 646
    const-string v3, "site"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    iput-object v3, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 648
    :cond_0
    iget-object v3, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    if-nez v3, :cond_1

    .line 649
    const v3, 0x7f0d008f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 650
    .local v1, clear:Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 651
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    .end local v1           #clear:Landroid/view/View;
    :cond_1
    return-object v2
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 672
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 673
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment;->mAdapter:Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;

    invoke-virtual {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForOrigins()V

    .line 674
    return-void
.end method
