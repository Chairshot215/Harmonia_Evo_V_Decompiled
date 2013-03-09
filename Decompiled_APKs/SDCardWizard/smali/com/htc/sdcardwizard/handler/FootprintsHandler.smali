.class final Lcom/htc/sdcardwizard/handler/FootprintsHandler;
.super Lcom/htc/sdcardwizard/handler/MediatorActionHandler;
.source "FootprintsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;
    }
.end annotation


# static fields
.field private static final FOOTPRINTS_DELETE_ACTION:Ljava/lang/String; = "com.htc.footprints.intent.DELETE_FOOTPRINTS"

.field private static final FOOTPRINTS_INFO_URI:Ljava/lang/String; = "content://com.htc.footprints.provider.footprints/info"

.field private static final FOOTPRINTS_PACKAGE_NAME:Ljava/lang/String; = "com.htc.android.footprints"

.field private static final LOCATIONS_DELETE_ACTION:Ljava/lang/String; = "com.htc.locations.intent.DELETE_FOOTPRINTS"

.field private static final LOCATIONS_INFO_URI:Ljava/lang/String; = "content://com.htc.locations.provider.footprints/info"

.field private static final LOCATIONS_PACKAGE_NAME:Ljava/lang/String; = "com.htc.laputa"


# instance fields
.field private final settings:Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "owner"

    .prologue
    .line 30
    invoke-static {p1}, Lcom/htc/sdcardwizard/handler/FootprintsHandler;->getAppSettings(Landroid/content/Context;)Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/htc/sdcardwizard/handler/FootprintsHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;)V
    .locals 2
    .parameter "owner"
    .parameter "settings"

    .prologue
    .line 40
    new-instance v0, Lcom/htc/sdcardwizard/handler/PackageIconGetter;

    iget-object v1, p2, Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/htc/sdcardwizard/handler/PackageIconGetter;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;->infoUri:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/sdcardwizard/handler/MediatorActionHandler;-><init>(Landroid/app/Activity;Lcom/htc/sdcardwizard/handler/IconGetter;Ljava/lang/String;)V

    .line 41
    iput-object p2, p0, Lcom/htc/sdcardwizard/handler/FootprintsHandler;->settings:Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;

    .line 42
    return-void
.end method

.method private static getAppSettings(Landroid/content/Context;)Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;
    .locals 5
    .parameter "context"

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc.android.footprints"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 47
    new-instance v1, Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;

    const-string v2, "content://com.htc.footprints.provider.footprints/info"

    const-string v3, "com.htc.footprints.intent.DELETE_FOOTPRINTS"

    const-string v4, "com.htc.android.footprints"

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;

    const-string v2, "content://com.htc.locations.provider.footprints/info"

    const-string v3, "com.htc.locations.intent.DELETE_FOOTPRINTS"

    const-string v4, "com.htc.laputa"

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected getDeleteAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/sdcardwizard/handler/FootprintsHandler;->settings:Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;

    iget-object v0, v0, Lcom/htc/sdcardwizard/handler/FootprintsHandler$AppSettings;->deleteAction:Ljava/lang/String;

    return-object v0
.end method
