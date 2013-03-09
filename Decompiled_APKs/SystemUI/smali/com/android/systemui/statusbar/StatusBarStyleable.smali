.class public Lcom/android/systemui/statusbar/StatusBarStyleable;
.super Ljava/lang/Object;
.source "StatusBarStyleable.java"


# static fields
.field private static final HTC_DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "StatusBarStyleable"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNewSkinPackage:Ljava/lang/String;

.field private mOldSkinPackage:Ljava/lang/String;

.field private mRes:Landroid/content/res/Resources;

.field private mStyleChanged:Z

.field private mThemeRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mRes:Landroid/content/res/Resources;

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mOldSkinPackage:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mStyleChanged:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->init()V

    return-void
.end method

.method private getSkinPackageName()Ljava/lang/String;
    .locals 4

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v3, v1, Landroid/content/res/Configuration;->skin:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    const-string v3, ""

    goto :goto_0
.end method

.method private init()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getSkinPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatusBarStyleable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No skin package matches with the given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getStyleChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mStyleChanged:Z

    return v0
.end method

.method public getStyleableDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "StatusBarStyleable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No resource \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" exists in skin package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public updateStyleName()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarStyleable;->getSkinPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mOldSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mStyleChanged:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mStyleChanged:Z

    if-eqz v1, :cond_0

    const-string v1, "StatusBarStyleable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateResources: mOldSkinPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mOldSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNewSkinPackage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mOldSkinPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mThemeRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "StatusBarStyleable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No skin package matches with the given name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarStyleable;->mNewSkinPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
