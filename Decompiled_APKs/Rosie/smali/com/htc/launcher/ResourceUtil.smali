.class public Lcom/htc/launcher/ResourceUtil;
.super Ljava/lang/Object;
.source "ResourceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "manager"
    .parameter "info"

    .prologue
    .line 50
    const/4 v5, 0x0

    .line 52
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget v7, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDpi:I

    const/16 v8, 0xa0

    if-ne v7, v8, :cond_0

    .line 53
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 79
    :goto_0
    return-object v5

    .line 56
    :cond_0
    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 58
    .local v6, resources:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 59
    .local v0, cfg:Landroid/content/res/Configuration;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 60
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 61
    .local v3, fOriginalDensity:F
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 64
    .local v4, fOriginalDpi:I
    sget v7, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDensity:F

    iput v7, v1, Landroid/util/DisplayMetrics;->density:F

    .line 65
    sget v7, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDpi:I

    iput v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 66
    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 68
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 71
    iput v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 72
    iput v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 73
    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v0           #cfg:Landroid/content/res/Configuration;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #fOriginalDensity:F
    .end local v4           #fOriginalDpi:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 76
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static getDrawable(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "resources"
    .parameter "id"

    .prologue
    .line 18
    const/4 v2, 0x0

    .line 20
    .local v2, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget v6, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDpi:I

    const/16 v7, 0xa0

    if-ne v6, v7, :cond_0

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 46
    :goto_0
    return-object v2

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 25
    .local v0, cfg:Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 26
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    .line 27
    .local v4, fOriginalDensity:F
    iget v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 30
    .local v5, fOriginalDpi:I
    sget v6, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDensity:F

    iput v6, v1, Landroid/util/DisplayMetrics;->density:F

    .line 31
    sget v6, Lcom/htc/launcher/settings/SettingUtil;->sOverrideDpi:I

    iput v6, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 32
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 34
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 37
    iput v4, v1, Landroid/util/DisplayMetrics;->density:F

    .line 38
    iput v5, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 39
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 42
    .end local v0           #cfg:Landroid/content/res/Configuration;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v4           #fOriginalDensity:F
    .end local v5           #fOriginalDpi:I
    :catch_0
    move-exception v3

    .line 43
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
