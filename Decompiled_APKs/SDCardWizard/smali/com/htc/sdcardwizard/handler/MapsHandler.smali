.class final Lcom/htc/sdcardwizard/handler/MapsHandler;
.super Lcom/htc/sdcardwizard/handler/NavigatorCategoriesHandler;
.source "MapsHandler.java"


# static fields
.field private static final CATEGORY_ICON_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"

.field private static final DIRECTORY:Ljava/lang/String; = "/.data/navigator/Data/Maps"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "owner"

    .prologue
    .line 10
    new-instance v1, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    const-string v0, "com.google.android.apps.maps"

    invoke-static {p1, v0}, Lcom/htc/sdcardwizard/utils/IconHelper;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.apps.maps"

    :goto_0
    invoke-direct {v1, v0}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lcom/htc/sdcardwizard/handler/NavigatorCategoriesHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;)V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.data/navigator/Data/Maps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sdcardwizard/handler/SDCardHandler;->path:Ljava/lang/String;

    .line 15
    return-void

    .line 10
    :cond_0
    const-string v0, "com.htc.laputa"

    goto :goto_0
.end method


# virtual methods
.method protected getCategoryID()Lcom/htc/sdcardwizard/handler/CategoryID;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/htc/sdcardwizard/handler/CategoryID;->MAPS:Lcom/htc/sdcardwizard/handler/CategoryID;

    return-object v0
.end method

.method protected getSelectAllCaptionId()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f040036

    return v0
.end method

.method public getTitleId()I
    .locals 1

    .prologue
    .line 19
    const v0, 0x7f040035

    return v0
.end method
