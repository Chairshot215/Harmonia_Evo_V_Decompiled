.class public Lcom/htc/android/htcime/util/IMEBaseActivity;
.super Landroid/app/Activity;
.source "IMEBaseActivity.java"


# instance fields
.field protected final HTC_IME_PACKAGENAME:Ljava/lang/String;

.field protected final HTC_RESOURCE_PACKAGENAME:Ljava/lang/String;

.field protected mIMERes:Landroid/content/res/Resources;

.field protected mRes:Landroid/content/res/Resources;

.field protected mbNeedAddRightBtn:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/htcime/util/IMEBaseActivity;->mbNeedAddRightBtn:Z

    .line 35
    const-string v0, "com.htc"

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEBaseActivity;->HTC_RESOURCE_PACKAGENAME:Ljava/lang/String;

    .line 36
    const-string v0, "com.htc.android.htcime"

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEBaseActivity;->HTC_IME_PACKAGENAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.htc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEBaseActivity;->mRes:Landroid/content/res/Resources;

    .line 45
    invoke-virtual {p0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.htc.android.htcime"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/htcime/util/IMEBaseActivity;->mIMERes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/android/htcime/util/IMEBaseActivity;->requestWindowFeature(I)Z

    .line 50
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected setActionBar(I)Z
    .locals 1
    .parameter "titleId"

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method protected setHeaderText(I)V
    .locals 3
    .parameter "titleId"

    .prologue
    .line 57
    const v2, 0x7f0e0004

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/IMEBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, mHeaderBarView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 59
    const v2, 0x7f0e0068

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    .line 60
    .local v1, titleText:Lcom/htc/widget/HeaderBarText;
    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v1, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(I)V

    .line 62
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 65
    .end local v1           #titleText:Lcom/htc/widget/HeaderBarText;
    :cond_0
    return-void
.end method

.method protected setHeaderText(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 68
    const v2, 0x7f0e0004

    invoke-virtual {p0, v2}, Lcom/htc/android/htcime/util/IMEBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, mHeaderBarView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 70
    const v2, 0x7f0e0068

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarText;

    .line 71
    .local v1, titleText:Lcom/htc/widget/HeaderBarText;
    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1, p1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 73
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 76
    .end local v1           #titleText:Lcom/htc/widget/HeaderBarText;
    :cond_0
    return-void
.end method
