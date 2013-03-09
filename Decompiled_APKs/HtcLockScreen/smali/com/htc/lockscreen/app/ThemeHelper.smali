.class public Lcom/htc/lockscreen/app/ThemeHelper;
.super Ljava/lang/Object;
.source "ThemeHelper.java"


# static fields
.field private static final LOG_PREFIX:Ljava/lang/String; = "ThemeHelper"

.field private static sSkin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/lockscreen/app/ThemeHelper;->sSkin:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getColor(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .parameter "themeContext"
    .parameter "context"
    .parameter "name"
    .parameter "defId"

    .prologue
    .line 74
    if-eqz p0, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-static {p0, p2, v1}, Lcom/htc/lockscreen/app/ThemeHelper;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 76
    .local v0, resId:I
    if-lez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 80
    .end local v0           #resId:I
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0
.end method

.method private static getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 146
    const-string v0, "color"

    invoke-static {p0, v0, p1, p2}, Lcom/htc/lockscreen/app/ThemeHelper;->getResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "themeContext"
    .parameter "context"
    .parameter "name"
    .parameter "defId"

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    .line 60
    .local v1, resId:I
    if-eqz p0, :cond_0

    .line 61
    const/4 v2, 0x0

    invoke-static {p0, p2, v2}, Lcom/htc/lockscreen/app/ThemeHelper;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 62
    if-lez v1, :cond_0

    .line 63
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 66
    :cond_0
    if-nez v0, :cond_1

    .line 67
    const-string v2, "ThemeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDrawable not found - name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sSkin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/lockscreen/app/ThemeHelper;->sSkin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " resId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    :cond_1
    return-object v0
.end method

.method private static getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1
    .parameter "context"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 142
    const-string v0, "drawable"

    invoke-static {p0, v0, p1, p2}, Lcom/htc/lockscreen/app/ThemeHelper;->getResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getResIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .parameter "context"
    .parameter "resType"
    .parameter "resName"
    .parameter "defRes"

    .prologue
    .line 151
    sget-object v1, Lcom/htc/lockscreen/app/ThemeHelper;->sSkin:Ljava/lang/String;

    .line 152
    .local v1, packageName:Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    :cond_0
    const-string v2, "ThemeHelper"

    const-string v3, "getResIdentifier default"

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .end local p3
    :goto_0
    return p3

    .line 156
    .restart local p3
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 157
    .local v0, id:I
    if-nez v0, :cond_2

    .line 158
    const-string v2, "ThemeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResIdentifier No such resource was found with give resType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , requested by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move p3, v0

    .line 162
    goto :goto_0
.end method

.method public static getThemeContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 5
    .parameter "context"

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 38
    .local v1, skinContext:Landroid/content/Context;
    sget-object v2, Lcom/htc/lockscreen/app/ThemeHelper;->sSkin:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 40
    :try_start_0
    sget-object v2, Lcom/htc/lockscreen/app/ThemeHelper;->sSkin:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/htc/lockscreen/app/util/MyUtil;->prepareContext(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 46
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 47
    const-string v2, "ThemeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThemeContext not found - sSkin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/lockscreen/app/ThemeHelper;->sSkin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    move-object v1, p0

    .line 50
    :cond_1
    return-object v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static isDefaultSkin(Ljava/lang/String;)Z
    .locals 2
    .parameter "skinString"

    .prologue
    const/4 v0, 0x1

    .line 121
    if-nez p0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v0

    .line 124
    :cond_1
    const-string v1, "default"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static skinChange()Z
    .locals 5

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, result:Z
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, skinString:Ljava/lang/String;
    const-string v2, "ThemeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skinChange sSkin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/lockscreen/app/ThemeHelper;->sSkin:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " skinString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/lockscreen/app/debug/MyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v2, Lcom/htc/lockscreen/app/ThemeHelper;->sSkin:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    sget-object v2, Lcom/htc/lockscreen/app/ThemeHelper;->sSkin:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/lockscreen/app/ThemeHelper;->isDefaultSkin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/htc/lockscreen/app/ThemeHelper;->isDefaultSkin(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    :goto_0
    sput-object v1, Lcom/htc/lockscreen/app/ThemeHelper;->sSkin:Ljava/lang/String;

    .line 117
    :cond_0
    return v0

    .line 113
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static skinChange(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    invoke-static {}, Lcom/htc/lockscreen/app/ThemeHelper;->skinChange()Z

    move-result v0

    return v0
.end method

.method public static skinChange(Landroid/content/res/Configuration;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 100
    invoke-static {}, Lcom/htc/lockscreen/app/ThemeHelper;->skinChange()Z

    move-result v0

    return v0
.end method

.method public static updateTheme()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method setThemeStyle(Landroid/content/Context;Landroid/content/Context;)V
    .locals 0
    .parameter "symContext"
    .parameter "resContext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method
