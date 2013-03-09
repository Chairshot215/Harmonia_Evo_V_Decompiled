.class Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;
.super Landroid/widget/ArrayAdapter;
.source "WebsiteSettingsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/preferences/WebsiteSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SiteAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field private mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLocationAllowedIcon:Landroid/graphics/Bitmap;

.field private mLocationDisallowedIcon:Landroid/graphics/Bitmap;

.field private mResource:I

.field private mUsageEmptyIcon:Landroid/graphics/Bitmap;

.field private mUsageHighIcon:Landroid/graphics/Bitmap;

.field private mUsageLowIcon:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;


# direct methods
.method public constructor <init>(Lcom/android/browser/preferences/WebsiteSettingsFragment;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "rsc"

    .prologue
    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment;Landroid/content/Context;ILcom/android/browser/preferences/WebsiteSettingsFragment$Site;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/android/browser/preferences/WebsiteSettingsFragment;Landroid/content/Context;ILcom/android/browser/preferences/WebsiteSettingsFragment$Site;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "rsc"
    .parameter "site"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    .line 210
    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 211
    iput p3, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mResource:I

    .line 212
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 213
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 215
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageEmptyIcon:Landroid/graphics/Bitmap;

    .line 217
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageLowIcon:Landroid/graphics/Bitmap;

    .line 219
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020031

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageHighIcon:Landroid/graphics/Bitmap;

    .line 221
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002b

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationAllowedIcon:Landroid/graphics/Bitmap;

    .line 223
    invoke-virtual {p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationDisallowedIcon:Landroid/graphics/Bitmap;

    .line 225
    iput-object p4, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 226
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForOrigins()V

    .line 229
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 193
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->addFeatureToSite(Ljava/util/Map;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationAllowedIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mLocationDisallowedIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .locals 1
    .parameter "x0"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;)Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    return-object p1
.end method

.method private addFeatureToSite(Ljava/util/Map;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter "origin"
    .parameter "feature"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    const/4 v0, 0x0

    .line 237
    .local v0, site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    check-cast v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 243
    .restart local v0       #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    :goto_0
    invoke-virtual {v0, p3}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->addFeature(I)V

    .line 244
    return-void

    .line 240
    :cond_0
    new-instance v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .end local v0           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-direct {v0, p2}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;-><init>(Ljava/lang/String;)V

    .line 241
    .restart local v0       #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public askForGeolocation(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    new-instance v1, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$2;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 283
    return-void
.end method

.method public askForOrigins()V
    .locals 2

    .prologue
    .line 256
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    new-instance v1, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$1;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 268
    return-void
.end method

.method public backKeyPressed()Z
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    if-eqz v0, :cond_0

    .line 426
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 427
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->askForOrigins()V

    .line 428
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public currentSite()Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    if-nez v0, :cond_0

    .line 400
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 402
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    invoke-virtual {v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getFeatureCount()I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 463
    if-nez p2, :cond_3

    .line 464
    iget-object v12, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v13, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mResource:I

    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v12, v13, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 469
    .local v11, view:Landroid/view/View;
    :goto_0
    const v12, 0x7f0d0005

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 470
    .local v9, title:Landroid/widget/TextView;
    const v12, 0x7f0d0094

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 471
    .local v7, subtitle:Landroid/widget/TextView;
    const v12, 0x7f0d0063

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 472
    .local v3, icon:Landroid/widget/ImageView;
    const v12, 0x7f0d0093

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 473
    .local v2, featureIcon:Landroid/widget/ImageView;
    const v12, 0x7f0d0092

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 474
    .local v10, usageIcon:Landroid/widget/ImageView;
    const v12, 0x7f0d0091

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 475
    .local v4, locationIcon:Landroid/widget/ImageView;
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 478
    iget-object v12, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    if-nez v12, :cond_5

    .line 480
    invoke-virtual/range {p0 .. p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 481
    .local v6, site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-virtual {v6}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getPrettyTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    invoke-virtual {v6}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getPrettyOrigin()Ljava/lang/String;

    move-result-object v8

    .line 483
    .local v8, subtitleText:Ljava/lang/String;
    if-eqz v8, :cond_4

    .line 484
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 485
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 486
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 487
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    :goto_1
    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    const/4 v12, 0x4

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    const/4 v12, 0x4

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    invoke-virtual {v6}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 499
    .local v1, bmp:Landroid/graphics/Bitmap;
    if-nez v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 502
    :cond_0
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 505
    invoke-virtual {v11, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 507
    invoke-virtual {v6}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getOrigin()Ljava/lang/String;

    move-result-object v5

    .line 508
    .local v5, origin:Ljava/lang/String;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hasFeature(I)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 509
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v12

    new-instance v13, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;

    invoke-direct {v13, p0, v10}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$3;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v12, v5, v13}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 519
    :cond_1
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->hasFeature(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 520
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 521
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v12

    new-instance v13, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;

    invoke-direct {v13, p0, v4}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$4;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {v12, v5, v13}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 573
    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v6           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .end local v8           #subtitleText:Ljava/lang/String;
    :cond_2
    :goto_2
    return-object v11

    .line 466
    .end local v2           #featureIcon:Landroid/widget/ImageView;
    .end local v3           #icon:Landroid/widget/ImageView;
    .end local v4           #locationIcon:Landroid/widget/ImageView;
    .end local v5           #origin:Ljava/lang/String;
    .end local v7           #subtitle:Landroid/widget/TextView;
    .end local v9           #title:Landroid/widget/TextView;
    .end local v10           #usageIcon:Landroid/widget/ImageView;
    .end local v11           #view:Landroid/view/View;
    :cond_3
    move-object/from16 v11, p2

    .restart local v11       #view:Landroid/view/View;
    goto/16 :goto_0

    .line 489
    .restart local v2       #featureIcon:Landroid/widget/ImageView;
    .restart local v3       #icon:Landroid/widget/ImageView;
    .restart local v4       #locationIcon:Landroid/widget/ImageView;
    .restart local v6       #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .restart local v7       #subtitle:Landroid/widget/TextView;
    .restart local v8       #subtitleText:Ljava/lang/String;
    .restart local v9       #title:Landroid/widget/TextView;
    .restart local v10       #usageIcon:Landroid/widget/ImageView;
    :cond_4
    const/16 v12, 0x8

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    const/4 v12, 0x2

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 491
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_1

    .line 534
    .end local v6           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    .end local v8           #subtitleText:Ljava/lang/String;
    :cond_5
    const/16 v12, 0x8

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 535
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 536
    const/16 v12, 0x8

    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 537
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 538
    iget-object v12, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    invoke-virtual {v12}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getOrigin()Ljava/lang/String;

    move-result-object v5

    .line 539
    .restart local v5       #origin:Ljava/lang/String;
    iget-object v12, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getFeatureByIndex(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    goto :goto_2

    .line 541
    :pswitch_0
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v12

    new-instance v13, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;

    invoke-direct {v13, p0, v9, v7, v2}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$5;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v12, v5, v13}, Landroid/webkit/WebStorage;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    .line 554
    :pswitch_1
    const v12, 0x7f0c0144

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    .line 555
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v12

    new-instance v13, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;

    invoke-direct {v13, p0, v7, v2}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$6;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v12, v5, v13}, Landroid/webkit/GeolocationPermissions;->getAllowed(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_2

    .line 539
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v6, 0x1080027

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 580
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    if-eqz v1, :cond_1

    .line 581
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mCurrentSite:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    invoke-virtual {v1, p3}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getFeatureByIndex(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 583
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0138

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c0139

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c013a

    new-instance v4, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;

    invoke-direct {v4, p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$7;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c013b

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 604
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0147

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c0148

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c0149

    new-instance v4, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$8;

    invoke-direct {v4, p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$8;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f0c014a

    invoke-virtual {v1, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 624
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 625
    .local v7, site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-virtual {v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 626
    .local v0, activity:Landroid/preference/PreferenceActivity;
    if-eqz v0, :cond_0

    .line 627
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 628
    .local v2, args:Landroid/os/Bundle;
    const-string v1, "site"

    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 629
    const-class v1, Lcom/android/browser/preferences/WebsiteSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;->getPrettyTitle()Ljava/lang/String;

    move-result-object v4

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 581
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public populateIcons(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    new-instance v0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;

    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;-><init>(Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;Landroid/content/Context;Ljava/util/Map;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter$UpdateFromBookmarksDbTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    return-void
.end method

.method public populateOrigins(Ljava/util/Map;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, sites:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->clear()V

    .line 383
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 384
    .local v0, elements:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 385
    .local v2, entryIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 387
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;

    .line 388
    .local v3, site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    invoke-virtual {p0, v3}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 391
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;>;"
    .end local v3           #site:Lcom/android/browser/preferences/WebsiteSettingsFragment$Site;
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->notifyDataSetChanged()V

    .line 393
    invoke-virtual {p0}, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 394
    iget-object v4, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    #calls: Lcom/android/browser/preferences/WebsiteSettingsFragment;->finish()V
    invoke-static {v4}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->access$200(Lcom/android/browser/preferences/WebsiteSettingsFragment;)V

    .line 396
    :cond_1
    return-void
.end method

.method public setIconForUsage(Landroid/widget/ImageView;J)V
    .locals 6
    .parameter "usageIcon"
    .parameter "usageInBytes"

    .prologue
    const/high16 v5, 0x40a0

    const-wide v3, 0x3fb999999999999aL

    .line 439
    long-to-float v1, p2

    const/high16 v2, 0x4980

    div-float v0, v1, v2

    .line 444
    .local v0, usageInMegabytes:F
    float-to-double v1, v0

    cmpg-double v1, v1, v3

    if-gtz v1, :cond_1

    .line 445
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageEmptyIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    cmpg-float v1, v0, v5

    if-gtz v1, :cond_2

    .line 447
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageLowIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 448
    :cond_2
    cmpl-float v1, v0, v5

    if-lez v1, :cond_0

    .line 449
    iget-object v1, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->mUsageHighIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public sizeValueToString(J)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    const/high16 v5, 0x4120

    .line 408
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-gtz v3, :cond_0

    .line 409
    iget-object v3, p0, Lcom/android/browser/preferences/WebsiteSettingsFragment$SiteAdapter;->this$0:Lcom/android/browser/preferences/WebsiteSettingsFragment;

    #getter for: Lcom/android/browser/preferences/WebsiteSettingsFragment;->LOGTAG:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/browser/preferences/WebsiteSettingsFragment;->access$300(Lcom/android/browser/preferences/WebsiteSettingsFragment;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sizeValueToString called with non-positive value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v3, "0"

    .line 415
    :goto_0
    return-object v3

    .line 412
    :cond_0
    long-to-float v3, p1

    const/high16 v4, 0x4980

    div-float v0, v3, v4

    .line 413
    .local v0, megabytes:F
    mul-float v3, v0, v5

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 414
    .local v2, truncated:I
    int-to-float v3, v2

    div-float v1, v3, v5

    .line 415
    .local v1, result:F
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
