.class public Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;
.super Landroid/widget/FrameLayout;
.source "ShortcutSettingIcon.java"


# instance fields
.field private mApIcon:Landroid/widget/ImageView;

.field private mApInfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;

.field private mApLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->initView()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->initView()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    invoke-direct {p0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->initView()V

    .line 23
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mContext:Landroid/content/Context;

    const v1, 0x7f030007

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    const v0, 0x7f0a0051

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApIcon:Landroid/widget/ImageView;

    .line 40
    const v0, 0x7f0a0052

    invoke-virtual {p0, v0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApLabel:Landroid/widget/TextView;

    .line 41
    return-void
.end method


# virtual methods
.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApInfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApInfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;

    invoke-virtual {v0}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    goto :goto_0
.end method

.method public getApplicationInfo()Lcom/htc/dockmode/shortcut/ApplicationInfo;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApInfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;

    return-object v0
.end method

.method public setApInfo(Lcom/htc/dockmode/shortcut/ApplicationInfo;)V
    .locals 3
    .parameter "apInfo"

    .prologue
    .line 44
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApInfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;

    .line 48
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApInfo:Lcom/htc/dockmode/shortcut/ApplicationInfo;

    invoke-virtual {v0}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getClassName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/htc/dockmode/shortcut/DefaultShortcut;->APP_CLASSs:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mApLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/htc/dockmode/shortcut/ShortcutSettingIcon;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/dockmode/shortcut/ApplicationInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
