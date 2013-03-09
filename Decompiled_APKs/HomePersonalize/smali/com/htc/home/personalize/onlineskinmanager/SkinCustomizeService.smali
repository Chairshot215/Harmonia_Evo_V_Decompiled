.class public Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;
.super Landroid/app/Service;
.source "SkinCustomizeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$SkinUninstallObserver;,
        Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;
    }
.end annotation


# static fields
.field private static final LOG:Z = false

.field private static final TAG:Ljava/lang/String; = "SkinCustomizeService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;)Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->mSkinDB:Lcom/htc/home/personalize/onlineskinmanager/SkinDatabase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->uninstallApk(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->cleanPreSkinPackage()V

    return-void
.end method

.method private cleanPreSkinPackage()V
    .locals 4

    .prologue
    .line 144
    const-string v2, "default"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 145
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 146
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preskinpackage"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 147
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 148
    return-void
.end method

.method private uninstallApk(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;)V
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "observer"

    .prologue
    .line 102
    const-string v2, "SkinCustomizeService"

    const-string v3, "uninstallApk"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string v2, "SkinCustomizeService"

    const-string v3, "invalid context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 109
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 110
    .local v0, deleteFlags:I
    invoke-virtual {v1, p2, p3, v0}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;->mContext:Landroid/content/Context;

    .line 49
    new-instance v0, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;

    invoke-direct {v0, p0, p1}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;-><init>(Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/htc/home/personalize/onlineskinmanager/SkinCustomizeService$CustomizeThread;->start()V

    .line 51
    const/4 v0, 0x0

    return v0
.end method
