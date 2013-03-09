.class public Landroid/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# instance fields
.field private mBase:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    iput p2, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    return-void
.end method

.method private initializeTheme()V
    .locals 4

    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    :cond_0
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v3, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    return-void
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v0

    iput v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    const v1, 0x2030058

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    const v1, 0x203009b

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    const v1, 0x203009c

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0
.end method

.method public getThemeResId()I
    .locals 1

    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    iput p1, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    return-void
.end method
