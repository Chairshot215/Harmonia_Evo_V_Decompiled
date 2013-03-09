.class public Lcom/google/android/googlequicksearchbox/google/Maps;
.super Ljava/lang/Object;
.source "Maps.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMapsPlacesActivity:Landroid/content/pm/ActivityInfo;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/googlequicksearchbox/google/Maps;->mVersion:I

    .line 59
    iput-object p1, p0, Lcom/google/android/googlequicksearchbox/google/Maps;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method private declared-synchronized getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 5

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/Maps;->mMapsPlacesActivity:Landroid/content/pm/ActivityInfo;

    if-nez v3, :cond_2

    .line 64
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/Maps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 65
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, mapsIntent:Landroid/content/Intent;
    const-string v3, "com.google.android.apps.maps"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    const-string v3, "http://maps.google.com/maps?q=%s+cid:%s&iwd=1"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 68
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 70
    .local v2, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 71
    :cond_0
    const-string v3, "QSB.Maps"

    const-string v4, "Maps app not found"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    const/4 v3, 0x0

    .line 77
    .end local v0           #mapsIntent:Landroid/content/Intent;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    monitor-exit p0

    return-object v3

    .line 74
    .restart local v0       #mapsIntent:Landroid/content/Intent;
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    .restart local v2       #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, p0, Lcom/google/android/googlequicksearchbox/google/Maps;->mMapsPlacesActivity:Landroid/content/pm/ActivityInfo;

    .line 77
    .end local v0           #mapsIntent:Landroid/content/Intent;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/Maps;->mMapsPlacesActivity:Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized getVersion()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 81
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/google/android/googlequicksearchbox/google/Maps;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 84
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_1
    iget-object v3, p0, Lcom/google/android/googlequicksearchbox/google/Maps;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.android.apps.maps"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 91
    :goto_0
    if-nez v1, :cond_1

    :goto_1
    :try_start_2
    iput v2, p0, Lcom/google/android/googlequicksearchbox/google/Maps;->mVersion:I

    .line 94
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    iget v2, p0, Lcom/google/android/googlequicksearchbox/google/Maps;->mVersion:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    .line 88
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 89
    .local v0, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_3
    const-string v3, "QSB.Maps"

    const-string v4, "Could not get package info for Maps"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 81
    .end local v0           #nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 91
    .restart local v1       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_4
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public getBusinessUrl(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 8
    .parameter "cid"
    .parameter "query"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    :try_start_0
    new-instance v3, Ljava/math/BigInteger;

    const/16 v4, 0x10

    invoke-direct {v3, p1, v4}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/Maps;->getVersion()I

    move-result v2

    .line 112
    .local v2, version:I
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 113
    .local v0, f:Ljava/util/Formatter;
    if-nez v2, :cond_0

    .line 114
    const-string v3, "http://maps.google.com/maps/place?cid=%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 123
    :goto_1
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 107
    .end local v0           #f:Ljava/util/Formatter;
    .end local v2           #version:I
    :catch_0
    move-exception v1

    .line 108
    .local v1, nfe:Ljava/lang/NumberFormatException;
    const-string v3, "QSB.Maps"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot parse CID as hex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 115
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    .restart local v0       #f:Ljava/util/Formatter;
    .restart local v2       #version:I
    :cond_0
    const/16 v3, 0x1130

    if-lt v2, v3, :cond_1

    .line 116
    const-string v3, "http://maps.google.com/maps/place?cid=%s"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_1

    .line 119
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 120
    const-string v3, "http://maps.google.com/maps?q=%s+cid:%s&iwd=1"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v6

    aput-object p1, v4, v7

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 98
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/Maps;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 99
    .local v0, activity:Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-direct {p0}, Lcom/google/android/googlequicksearchbox/google/Maps;->getVersion()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
