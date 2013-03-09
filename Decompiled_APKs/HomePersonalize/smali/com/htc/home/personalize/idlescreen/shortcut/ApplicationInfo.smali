.class public Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;
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
            "Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;",
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
    .line 123
    new-instance v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo$1;

    invoke-direct {v0}, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo$1;-><init>()V

    sput-object v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 73
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 76
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 3
    .parameter "context"
    .parameter "info"

    .prologue
    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 68
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "parcel"

    .prologue
    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 62
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    .line 63
    return-void
.end method

.method public static getApplicationInfo(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 53
    if-nez p1, :cond_0

    .line 54
    const/4 v0, 0x0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;

    invoke-direct {v0, p0, p1}, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method

.method public static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;
    .locals 8
    .parameter "context"
    .parameter "packageName"
    .parameter "className"

    .prologue
    const/4 v4, 0x0

    .line 27
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 29
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

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_0
    return-object v4

    .line 33
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 34
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .local v0, comp:Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 39
    .local v2, info:Landroid/content/pm/ActivityInfo;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 45
    :goto_1
    if-nez v2, :cond_2

    .line 46
    const-string v5, "ApplicationInfo"

    const-string v6, "getApplicationInfo null"

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    .line 42
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 43
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

    invoke-static {v5, v6}, Lcom/htc/home/personalize/abstractresource/Logger;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 49
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    new-instance v4, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;

    invoke-direct {v4, p0, v2}, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pkgMng"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .parameter "pkgMng"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public startApplication(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 96
    const/high16 v1, 0x1200

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 98
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "parcel"
    .parameter "flag"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 120
    iget-object v0, p0, Lcom/htc/home/personalize/idlescreen/shortcut/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    return-void
.end method
