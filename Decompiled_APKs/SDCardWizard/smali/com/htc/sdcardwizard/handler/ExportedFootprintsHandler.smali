.class final Lcom/htc/sdcardwizard/handler/ExportedFootprintsHandler;
.super Lcom/htc/sdcardwizard/handler/FileCasperHandler;
.source "ExportedFootprintsHandler.java"


# static fields
.field private static final DIRECTORY:Ljava/lang/String; = "/My Documents/Footprints"

.field private static final FILTER:Ljava/lang/String; = ".kmz"

.field private static final FOOTPRINTS_PACKAGE_NAME:Ljava/lang/String; = "com.htc.android.footprints"

.field private static final LOCATIONS_PACKAGE_NAME:Ljava/lang/String; = "com.htc.laputa"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 16
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    invoke-static {p1}, Lcom/htc/sdcardwizard/handler/ExportedFootprintsHandler;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/htc/sdcardwizard/handler/FileCasperHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/My Documents/Footprints"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 69
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc.android.footprints"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 70
    const-string v1, "com.htc.android.footprints"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-object v1

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "com.htc.laputa"

    goto :goto_0
.end method


# virtual methods
.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->EXP_FOOTPRINTS:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method public getDeleteButtonCaptionId()I
    .locals 1

    .prologue
    .line 27
    const v0, 0x7f04001b

    return v0
.end method

.method protected getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, ".kmz"

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f04002c

    return v0
.end method

.method public getSelectAllIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/htc/sdcardwizard/handler/ExportedFootprintsHandler;->getCategoryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 22
    const v0, 0x7f04002b

    return v0
.end method

.method public final isInstalled()Z
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    const-string v2, "com.htc.android.footprints"

    invoke-static {v1, v2}, Lcom/htc/sdcardwizard/utils/IconHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 38
    .local v0, result:Z
    if-nez v0, :cond_0

    .line 39
    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->owner:Landroid/app/Activity;

    const-string v2, "com.htc.laputa"

    invoke-static {v1, v2}, Lcom/htc/sdcardwizard/utils/IconHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 41
    :cond_0
    return v0
.end method
