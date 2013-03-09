.class public Lcom/htc/dockmode/shortcut/ApplicationInfo;
.super Ljava/lang/Object;
.source "ApplicationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/htc/dockmode/shortcut/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_PREFIX:Ljava/lang/String; = "ApplicationInfo"


# instance fields
.field private mCompName:Landroid/content/ComponentName;

.field private mInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    new-instance v0, Lcom/htc/dockmode/shortcut/ApplicationInfo$1;

    invoke-direct {v0}, Lcom/htc/dockmode/shortcut/ApplicationInfo$1;-><init>()V

    sput-object v0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 64
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 58
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    .line 59
    return-void
.end method

.method public static getApplicationInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Lcom/htc/dockmode/shortcut/ApplicationInfo;
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 52
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    invoke-direct {v0, p0, p1}, Lcom/htc/dockmode/shortcut/ApplicationInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/dockmode/shortcut/ApplicationInfo;
    .locals 8
    .parameter "context"
    .parameter "packageName"
    .parameter "className"

    .prologue
    const/4 v4, 0x0

    .line 25
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 26
    :cond_0
    const-string v5, "ApplicationInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationInfo null packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " className:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :goto_0
    return-object v4

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 31
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .local v0, comp:Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 34
    .local v2, info:Landroid/content/pm/ActivityInfo;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 40
    :goto_1
    if-nez v2, :cond_2

    .line 41
    const-string v5, "ApplicationInfo"

    const-string v6, "getApplicationInfo null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 37
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 38
    const-string v5, "ApplicationInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getApplicationInfo exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 44
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    new-instance v4, Lcom/htc/dockmode/shortcut/ApplicationInfo;

    invoke-direct {v4, p0, v2}, Lcom/htc/dockmode/shortcut/ApplicationInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pkgMng"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .parameter "pkgMng"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public startApplication(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    iget-object v1, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    const/high16 v1, 0x1200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    invoke-static {p1, v0}, Lcom/htc/dockmode/utils/ActivityUtil;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flag"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    iget-object v0, p0, Lcom/htc/dockmode/shortcut/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 109
    return-void
.end method
