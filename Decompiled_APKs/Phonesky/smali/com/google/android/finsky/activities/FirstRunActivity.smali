.class public Lcom/google/android/finsky/activities/FirstRunActivity;
.super Landroid/app/Activity;
.source "FirstRunActivity.java"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/finsky/activities/FirstRunActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    const-string v1, "continue_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 86
    return-object v0
.end method

.method public static requiresFirstRun()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-gt v3, v6, :cond_0

    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->viewedFirstRunDialog:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v5

    .line 97
    .local v2, shouldSkip:Z
    :goto_0
    if-eqz v2, :cond_2

    move v3, v4

    .line 112
    :goto_1
    return v3

    .end local v2           #shouldSkip:Z
    :cond_1
    move v2, v4

    .line 95
    goto :goto_0

    .line 101
    .restart local v2       #shouldSkip:Z
    :cond_2
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageInfoRepository()Lcom/google/android/finsky/appstate/PackageStateRepository;

    move-result-object v1

    .line 102
    .local v1, repo:Lcom/google/android/finsky/appstate/PackageStateRepository;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/finsky/appstate/PackageStateRepository;->get(Ljava/lang/String;)Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;

    move-result-object v3

    iget-boolean v0, v3, Lcom/google/android/finsky/appstate/PackageStateRepository$PackageState;->isUpdatedSystemApp:Z

    .line 106
    .local v0, isUpdate:Z
    if-nez v0, :cond_3

    .line 107
    sget-object v3, Lcom/google/android/finsky/utils/FinskyPreferences;->viewedFirstRunDialog:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->put(Ljava/lang/Object;)V

    move v3, v4

    .line 108
    goto :goto_1

    :cond_3
    move v3, v5

    .line 112
    goto :goto_1
.end method


# virtual methods
.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FirstRunActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 119
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v2, 0x7f040076

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->setContentView(I)V

    .line 37
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->setResult(I)V

    .line 39
    const v2, 0x7f08013d

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 42
    .local v1, pinstripe:Landroid/view/View;
    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FirstRunActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 44
    .local v0, backgroundTile:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 45
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    const v2, 0x7f08013e

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/finsky/activities/FirstRunActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, p0, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    const v2, 0x7f08013f

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/FirstRunActivity$1;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/FirstRunActivity$1;-><init>(Lcom/google/android/finsky/activities/FirstRunActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v2, 0x7f08004e

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/activities/FirstRunActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/google/android/finsky/activities/FirstRunActivity$2;

    invoke-direct {v3, p0}, Lcom/google/android/finsky/activities/FirstRunActivity$2;-><init>(Lcom/google/android/finsky/activities/FirstRunActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    return-void
.end method
