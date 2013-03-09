.class public Lcom/htc/res/HtcResources;
.super Ljava/lang/Object;
.source "HtcResources.java"


# static fields
.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.htc"

.field private static sContext:Landroid/content/Context;

.field private static sRes:Landroid/content/res/Resources;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/htc/res/HtcResources;->sRes:Landroid/content/res/Resources;

    .line 31
    sput-object v0, Lcom/htc/res/HtcResources;->sContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommonDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/htc/res/HtcResources;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 54
    const-string v0, "com.htc"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/htc/res/HtcResources;->sContext:Landroid/content/Context;

    .line 56
    :cond_0
    return-object p0
.end method

.method public static getCurrentThemePackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, themePackage:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 158
    .end local v0           #themePackage:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "com.htc"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "layout"

    const-string v2, "com.htc"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/htc/res/HtcResources;->sRes:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.htc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/htc/res/HtcResources;->sRes:Landroid/content/res/Resources;

    .line 42
    :cond_0
    sget-object v0, Lcom/htc/res/HtcResources;->sRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method private static getThemeStyleAttr(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "attrName"

    .prologue
    .line 145
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getCurrentThemePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, themePackage:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 147
    const/4 v1, 0x0

    .line 149
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "attr"

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getThemeStyleColor(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0
    .parameter "context"
    .parameter "resName"
    .parameter "default_color"

    .prologue
    .line 124
    return p2
.end method

.method private static getThemeStyleDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "resName"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getCurrentThemePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, themePackage:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "drawable"

    invoke-virtual {v3, p1, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, resId:I
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0
.end method

.method public static getThemeStyleDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .parameter "context"
    .parameter "resName"

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public static inflateLayout(Landroid/content/Context;I)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "layout"

    .prologue
    .line 71
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 73
    .local v1, inflater:Landroid/view/LayoutInflater;
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 78
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static resolveDefaultStyleAttr(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 0
    .parameter "context"
    .parameter "attrName"
    .parameter "fallbackAttrId"

    .prologue
    .line 141
    return p2
.end method

.method public static updateThemedBackground(Landroid/content/Context;Landroid/view/View;ILjava/lang/String;I)V
    .locals 3
    .parameter "context"
    .parameter "root"
    .parameter "viewId"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 191
    if-nez p2, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 195
    invoke-static {p0, p3, p4}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 196
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
