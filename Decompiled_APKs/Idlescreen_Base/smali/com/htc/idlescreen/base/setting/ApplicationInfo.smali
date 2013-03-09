.class public Lcom/htc/idlescreen/base/setting/ApplicationInfo;
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
            "Lcom/htc/idlescreen/base/setting/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_PREFIX:Ljava/lang/String; = "ApplicationInfo"


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mClassName:Ljava/lang/String;

.field private mCompName:Landroid/content/ComponentName;

.field private mInfo:Landroid/content/pm/ActivityInfo;

.field private mPackageName:Ljava/lang/String;

.field private mShadowBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 173
    new-instance v0, Lcom/htc/idlescreen/base/setting/ApplicationInfo$1;

    invoke-direct {v0}, Lcom/htc/idlescreen/base/setting/ApplicationInfo$1;-><init>()V

    sput-object v0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "packageName"
    .parameter "className"
    .parameter "appName"

    .prologue
    .line 74
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mPackageName:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mClassName:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mAppName:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 77
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iput-object p2, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mPackageName:Ljava/lang/String;

    .line 80
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iput-object p3, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mClassName:Ljava/lang/String;

    .line 83
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    iput-object p4, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mAppName:Ljava/lang/String;

    .line 86
    :cond_2
    invoke-direct {p0, p1}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->init(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "parcel"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 35
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mPackageName:Ljava/lang/String;

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mClassName:Ljava/lang/String;

    .line 33
    const-string v1, ""

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mAppName:Ljava/lang/String;

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v0, v2

    .line 39
    .local v0, exist:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 40
    sget-object v1, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ActivityInfo;

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_3

    move v0, v2

    .line 43
    :goto_1
    if-eqz v0, :cond_1

    .line 44
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    .line 46
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mPackageName:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mClassName:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mAppName:Ljava/lang/String;

    .line 49
    return-void

    .end local v0           #exist:Z
    :cond_2
    move v0, v3

    .line 38
    goto :goto_0

    .restart local v0       #exist:Z
    :cond_3
    move v0, v3

    .line 42
    goto :goto_1
.end method

.method private getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method static getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .parameter "manager"
    .parameter "info"

    .prologue
    .line 185
    const/4 v5, 0x0

    .line 187
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    :try_start_0
    sget-boolean v7, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    if-nez v7, :cond_0

    .line 188
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 213
    :goto_0
    return-object v5

    .line 191
    :cond_0
    iget-object v7, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 193
    .local v6, resources:Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 194
    .local v0, cfg:Landroid/content/res/Configuration;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 195
    .local v1, dm:Landroid/util/DisplayMetrics;
    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 196
    .local v3, fOriginalDensity:F
    iget v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 199
    .local v4, fOriginalDpi:I
    const/high16 v7, 0x3fc0

    iput v7, v1, Landroid/util/DisplayMetrics;->density:F

    .line 200
    const/16 v7, 0xf0

    iput v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 201
    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 203
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 206
    iput v3, v1, Landroid/util/DisplayMetrics;->density:F

    .line 207
    iput v4, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 208
    invoke-virtual {v6, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    .end local v0           #cfg:Landroid/content/res/Configuration;
    .end local v1           #dm:Landroid/util/DisplayMetrics;
    .end local v3           #fOriginalDensity:F
    .end local v4           #fOriginalDpi:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .line 211
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mClassName:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/htc/idlescreen/base/setting/SettingDB;->getActivityInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    .line 91
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public getAppName(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1
    .parameter "pkgMng"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mAppName:Ljava/lang/String;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    .line 155
    const-string v0, ""

    .line 157
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pkgMng"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-static {p1, v0}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->getApplicationIcon(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getIconShadow(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "pkgMng"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 108
    invoke-virtual {p0, p1}, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->getIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 109
    .local v0, src:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/htc/idlescreen/base/util/ImageUtil;->getShadow(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 111
    .end local v0           #src:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mShadowBitmap:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 149
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public isExist()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startApplication(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 122
    const-string v0, "lockscreen_start_activity"

    .line 123
    .local v0, KEY_LOCKSCREEN_START_ACTIVITY_TYPE:Ljava/lang/String;
    const/4 v2, 0x1

    .line 124
    .local v2, START_ACTIVITY_SHORTCUT:I
    const/4 v1, 0x2

    .line 125
    .local v1, START_ACTIVITY_HOTKEY:I
    iget-object v5, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    if-nez v5, :cond_0

    .line 142
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 130
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    const-string v5, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v5, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 134
    const/high16 v5, 0x1200

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    const-string v5, "lockscreen_start_activity"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 139
    :catch_0
    move-exception v3

    .line 140
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "ApplicationInfo"

    const-string v6, "startApplication fail to start activity"

    invoke-static {v5, v6, v3}, Lcom/htc/idlescreen/base/MyLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flag"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ActivityInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    :goto_1
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/htc/idlescreen/base/setting/ApplicationInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    return-void

    .line 57
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
