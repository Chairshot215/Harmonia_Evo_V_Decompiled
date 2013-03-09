.class public Lcom/android/htcdialer/theme/ThemeAdapter;
.super Ljava/lang/Object;
.source "ThemeAdapter.java"


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field public static final DEFAULT_PACKAGE_NAME:Ljava/lang/String; = ""

.field private static final HTC_FREAMWORK:Ljava/lang/String; = "com.htc"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.htcdialer"

.field private static final TAG:Ljava/lang/String; = "ThemeAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mRes:Landroid/content/res/Resources;

.field private static sPackageArray:[Ljava/lang/String;

.field private static sSkinPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    const-string v0, ""

    sput-object v0, Lcom/android/htcdialer/theme/ThemeAdapter;->sSkinPackageName:Ljava/lang/String;

    .line 45
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/htcdialer/theme/ThemeAdapter;->sSkinPackageName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.htcdialer"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.htc"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/htcdialer/theme/ThemeAdapter;->sPackageArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .parameter "name"
    .parameter "defType"
    .parameter "defRes"

    .prologue
    .line 58
    const/4 v3, 0x0

    .line 59
    .local v3, id:I
    sget-object v0, Lcom/android/htcdialer/theme/ThemeAdapter;->sPackageArray:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 60
    .local v1, defPackage:Ljava/lang/String;
    sget-object v5, Lcom/android/htcdialer/theme/ThemeAdapter;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v5, p0, p1, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 63
    .end local v1           #defPackage:Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_2

    .end local v3           #id:I
    :goto_1
    return v3

    .line 59
    .restart local v1       #defPackage:Ljava/lang/String;
    .restart local v3       #id:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #defPackage:Ljava/lang/String;
    :cond_2
    move v3, p2

    .line 63
    goto :goto_1
.end method

.method public static getSkinPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    invoke-static {}, Lcom/android/htcdialer/util/BuildUtils$Customization;->isTmoProject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    sget-object v1, Lcom/android/htcdialer/theme/ThemeAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/res/HtcResources;->getCurrentThemePackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 84
    .end local v0           #name:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/htc/util/skin/HtcSkinUtil;->getAppliedSkinPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isSkinPackageChanged()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-static {}, Lcom/android/htcdialer/theme/ThemeAdapter;->getSkinPackageName()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, skin:Ljava/lang/String;
    sget-object v2, Lcom/android/htcdialer/theme/ThemeAdapter;->sSkinPackageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return v1

    .line 71
    :cond_1
    sget-object v2, Lcom/android/htcdialer/theme/ThemeAdapter;->sSkinPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    sput-object v0, Lcom/android/htcdialer/theme/ThemeAdapter;->sSkinPackageName:Ljava/lang/String;

    .line 75
    sget-object v2, Lcom/android/htcdialer/theme/ThemeAdapter;->sPackageArray:[Ljava/lang/String;

    sget-object v3, Lcom/android/htcdialer/theme/ThemeAdapter;->sSkinPackageName:Ljava/lang/String;

    aput-object v3, v2, v1

    .line 76
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 51
    sput-object p0, Lcom/android/htcdialer/theme/ThemeAdapter;->mContext:Landroid/content/Context;

    .line 52
    sget-object v0, Lcom/android/htcdialer/theme/ThemeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/theme/ThemeAdapter;->mRes:Landroid/content/res/Resources;

    .line 53
    invoke-static {}, Lcom/android/htcdialer/theme/ThemeAdapter;->getSkinPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/htcdialer/theme/ThemeAdapter;->sSkinPackageName:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/android/htcdialer/theme/ThemeAdapter;->sPackageArray:[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/htcdialer/theme/ThemeAdapter;->sSkinPackageName:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 55
    return-void
.end method

.method public static setBackground(Landroid/view/View;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "resName"

    .prologue
    .line 87
    const-string v1, "drawable"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/htcdialer/theme/ThemeAdapter;->getIdentifier(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, resId:I
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 89
    sget-object v1, Lcom/android/htcdialer/theme/ThemeAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    :cond_0
    return-void
.end method
