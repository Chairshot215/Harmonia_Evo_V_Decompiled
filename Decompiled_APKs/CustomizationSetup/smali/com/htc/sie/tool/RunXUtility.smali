.class public Lcom/htc/sie/tool/RunXUtility;
.super Ljava/lang/Object;
.source "RunXUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/sie/tool/RunXUtility$ApkInstallObserver;
    }
.end annotation


# static fields
.field private static final KEY_SYSTEM_LOCALE:Ljava/lang/String; = "system_locale"

.field protected static final LOG_TAG:Ljava/lang/String; = null

.field private static final URI_CUSTOMIZATION:Ljava/lang/String; = "content://customization_settings/SettingTable"

.field private static mSem:Ljava/util/concurrent/Semaphore;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLanguage:Landroid/os/Bundle;

.field private mPackageInstalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-class v0, Lcom/htc/sie/tool/RunXUtility;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/sie/tool/RunXUtility;->LOG_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/htc/sie/tool/RunXUtility;->mSem:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/htc/sie/tool/RunXUtility;->mLanguage:Landroid/os/Bundle;

    .line 33
    iput-object v0, p0, Lcom/htc/sie/tool/RunXUtility;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/sie/tool/RunXUtility;->mPackageInstalled:Z

    .line 38
    iput-object p1, p0, Lcom/htc/sie/tool/RunXUtility;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/htc/sie/tool/RunXUtility;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/htc/sie/tool/RunXUtility;->mPackageInstalled:Z

    return p1
.end method

.method static synthetic access$100()Ljava/util/concurrent/Semaphore;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/htc/sie/tool/RunXUtility;->mSem:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method public static bundle2ByteArray(Landroid/os/Bundle;)[B
    .locals 2
    .parameter "bundle"

    .prologue
    .line 84
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 85
    .local v0, parcel:Landroid/os/Parcel;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1
.end method

.method public static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 91
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 92
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 97
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method


# virtual methods
.method public getApplicationInfo(Landroid/net/Uri;)Landroid/content/pm/ApplicationInfo;
    .locals 6
    .parameter "packageURI"

    .prologue
    .line 42
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, archiveFilePath:Ljava/lang/String;
    new-instance v2, Landroid/content/pm/PackageParser;

    invoke-direct {v2, v0}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 44
    .local v2, packageParser:Landroid/content/pm/PackageParser;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v4, sourceFile:Ljava/io/File;
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    .line 47
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v3

    .line 48
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-nez v3, :cond_0

    .line 49
    const/4 v5, 0x0

    .line 51
    :goto_0
    return-object v5

    :cond_0
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method public getLocaleDataSet()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/htc/sie/tool/RunXUtility;->mLanguage:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 147
    const-string v0, "system_locale"

    invoke-virtual {p0, v0}, Lcom/htc/sie/tool/RunXUtility;->getModule(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/sie/tool/RunXUtility;->mLanguage:Landroid/os/Bundle;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/htc/sie/tool/RunXUtility;->mLanguage:Landroid/os/Bundle;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v3, p0, Lcom/htc/sie/tool/RunXUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://customization_settings/SettingTable/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 105
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 106
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 127
    :goto_0
    return-object v2

    .line 109
    :cond_0
    const-string v3, "value"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 110
    .local v10, valueIndx:I
    const/4 v3, -0x1

    if-ne v3, v10, :cond_1

    .line 111
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 114
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 116
    const/4 v8, 0x0

    .line 118
    .local v8, data:[B
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 125
    invoke-static {v8}, Lcom/htc/sie/tool/RunXUtility;->byteArray2Bundle([B)Landroid/os/Bundle;

    move-result-object v6

    .line 126
    .local v6, bundle:Landroid/os/Bundle;
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v2, v6

    .line 127
    goto :goto_0

    .line 120
    .end local v6           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v9

    .line 121
    .local v9, e:Landroid/database/CursorIndexOutOfBoundsException;
    sget-object v3, Lcom/htc/sie/tool/RunXUtility;->LOG_TAG:Ljava/lang/String;

    const-string v4, "no customized data support"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getSets(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1
    .parameter "bundle"
    .parameter "key"

    .prologue
    .line 140
    if-nez p1, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 142
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public getSingleSet(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "bundle"
    .parameter "key"
    .parameter "itemkey"

    .prologue
    const/4 v1, 0x0

    .line 131
    if-nez p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-object v1

    .line 133
    :cond_1
    const-string v2, ""

    if-ne v2, p2, :cond_2

    move-object v0, p1

    .line 134
    .local v0, childbundle:Landroid/os/Bundle;
    :goto_1
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 133
    .end local v0           #childbundle:Landroid/os/Bundle;
    :cond_2
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method public installAPK(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 9
    .parameter "packageUri"

    .prologue
    const/4 v8, 0x0

    .line 55
    sget-object v4, Lcom/htc/sie/tool/RunXUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "install APK, packageUri="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v2, 0x0

    .line 57
    .local v2, installFlags:I
    or-int/lit8 v2, v2, 0x2

    .line 58
    iget-object v4, p0, Lcom/htc/sie/tool/RunXUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 59
    .local v3, pm:Landroid/content/pm/PackageManager;
    sget-object v4, Lcom/htc/sie/tool/RunXUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "install flags="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iput-boolean v8, p0, Lcom/htc/sie/tool/RunXUtility;->mPackageInstalled:Z

    .line 61
    new-instance v4, Lcom/htc/sie/tool/RunXUtility$ApkInstallObserver;

    iget-object v5, p0, Lcom/htc/sie/tool/RunXUtility;->mContext:Landroid/content/Context;

    const-string v6, ""

    invoke-direct {v4, p0, v5, v6}, Lcom/htc/sie/tool/RunXUtility$ApkInstallObserver;-><init>(Lcom/htc/sie/tool/RunXUtility;Landroid/content/Context;Ljava/lang/String;)V

    const-string v5, "HTCInstaller"

    invoke-virtual {v3, p1, v4, v2, v5}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 63
    :try_start_0
    sget-object v4, Lcom/htc/sie/tool/RunXUtility;->LOG_TAG:Ljava/lang/String;

    const-string v5, "wait for complete, max for 60 seconds..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    sget-object v4, Lcom/htc/sie/tool/RunXUtility;->mSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v5, 0x3c

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 65
    .local v0, bAcquire:Ljava/lang/Boolean;
    sget-object v4, Lcom/htc/sie/tool/RunXUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "install apk ok, bAcquire="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",bInstall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/Boolean;

    iget-boolean v7, p0, Lcom/htc/sie/tool/RunXUtility;->mPackageInstalled:Z

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-boolean v5, p0, Lcom/htc/sie/tool/RunXUtility;->mPackageInstalled:Z

    and-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 69
    .end local v0           #bAcquire:Ljava/lang/Boolean;
    :goto_0
    return-object v4

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Lcom/htc/sie/tool/RunXUtility;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installAPK exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method public saveToDb(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6
    .parameter "category"
    .parameter "module"
    .parameter "bundle"

    .prologue
    .line 74
    iget-object v4, p0, Lcom/htc/sie/tool/RunXUtility;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 75
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v3, values:Landroid/content/ContentValues;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, key:Ljava/lang/String;
    const-string v4, "key"

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v4, "value"

    invoke-static {p3}, Lcom/htc/sie/tool/RunXUtility;->bundle2ByteArray(Landroid/os/Bundle;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 79
    const-string v4, "content://customization_settings/SettingTable"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 81
    return-void
.end method
