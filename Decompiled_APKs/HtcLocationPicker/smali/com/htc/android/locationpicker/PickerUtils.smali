.class public Lcom/htc/android/locationpicker/PickerUtils;
.super Ljava/lang/Object;
.source "PickerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/locationpicker/PickerUtils$SearchListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PickerUtils"

.field private static final TIMEOUT_PREVIOUS_THREAD:I = 0x2710

.field private static final TIMEOUT_STOP_SEARCH:I = 0xbb8

.field private static mInstance:Lcom/htc/android/locationpicker/PickerUtils;

.field private static searchThread:Ljava/lang/Thread;


# instance fields
.field private mAddress:Landroid/location/Address;

.field private mAddressLine:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

.field private mTargetLocation:Landroid/location/Location;

.field private mTitle:Ljava/lang/String;

.field private stopSearch:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->mTitle:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->mAddressLine:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->stopSearch:Z

    .line 25
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerUtils;->mTargetLocation:Landroid/location/Location;

    .line 27
    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerUtils;->mListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/htc/android/locationpicker/PickerUtils;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->stopSearch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/htc/android/locationpicker/PickerUtils;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/htc/android/locationpicker/PickerUtils;->stopSearch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/htc/android/locationpicker/PickerUtils;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerUtils;->startGeocoding()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/htc/android/locationpicker/PickerUtils;)Lcom/htc/android/locationpicker/PickerUtils$SearchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->mListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/android/locationpicker/PickerUtils;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/locationpicker/PickerUtils;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->mAddressLine:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/android/locationpicker/PickerUtils;)Landroid/location/Address;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->mAddress:Landroid/location/Address;

    return-object v0
.end method

.method private composeAddressLine(Landroid/location/Address;)Ljava/lang/String;
    .locals 5
    .parameter "address"

    .prologue
    .line 165
    invoke-virtual {p1}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    .line 166
    .local v2, maxAddressLineNum:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    .local v0, addressLine:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 169
    if-lez v1, :cond_0

    .line 170
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p1, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 175
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/htc/android/locationpicker/PickerUtils;
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    sget-object v0, Lcom/htc/android/locationpicker/PickerUtils;->mInstance:Lcom/htc/android/locationpicker/PickerUtils;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/htc/android/locationpicker/PickerUtils;

    invoke-direct {v0, p0}, Lcom/htc/android/locationpicker/PickerUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/android/locationpicker/PickerUtils;->mInstance:Lcom/htc/android/locationpicker/PickerUtils;

    .line 41
    :cond_0
    sget-object v0, Lcom/htc/android/locationpicker/PickerUtils;->mInstance:Lcom/htc/android/locationpicker/PickerUtils;

    return-object v0
.end method

.method public static isFootprintExist(Landroid/content/Context;)Z
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 205
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, allApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 207
    .local v1, apps:Landroid/content/pm/ApplicationInfo;
    const-string v5, "com.htc.android.footprints"

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.htc.laputa"

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 209
    :cond_1
    const/4 v4, 0x1

    .line 212
    .end local v1           #apps:Landroid/content/pm/ApplicationInfo;
    :cond_2
    return v4
.end method

.method public static isLaputaExist(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 219
    .local v1, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.htc.laputa"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    const/4 v2, 0x1

    .line 222
    :goto_0
    return v2

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, result:Z
    if-eqz p0, :cond_0

    .line 67
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 68
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 70
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 71
    const/4 v2, 0x1

    .line 75
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v1           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method public static isWirelessEnabled(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, enabled:Z
    if-eqz p0, :cond_0

    .line 53
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 54
    .local v0, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 56
    .local v2, info:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_0

    .line 57
    const/4 v1, 0x1

    .line 61
    .end local v0           #connectivity:Landroid/net/ConnectivityManager;
    .end local v2           #info:Landroid/net/NetworkInfo;
    :cond_0
    return v1
.end method

.method private searchFromGgeocoder()V
    .locals 3

    .prologue
    .line 118
    sget-object v0, Lcom/htc/android/locationpicker/PickerUtils;->searchThread:Ljava/lang/Thread;

    .line 120
    .local v0, previousThread:Ljava/lang/Thread;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/locationpicker/PickerUtils$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/locationpicker/PickerUtils$1;-><init>(Lcom/htc/android/locationpicker/PickerUtils;Ljava/lang/Thread;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/htc/android/locationpicker/PickerUtils;->searchThread:Ljava/lang/Thread;

    .line 160
    sget-object v1, Lcom/htc/android/locationpicker/PickerUtils;->searchThread:Ljava/lang/Thread;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 161
    sget-object v1, Lcom/htc/android/locationpicker/PickerUtils;->searchThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 162
    return-void
.end method

.method private declared-synchronized startGeocoding()Z
    .locals 9

    .prologue
    .line 179
    monitor-enter p0

    const/4 v8, 0x0

    .line 181
    .local v8, result:Z
    :try_start_0
    new-instance v0, Landroid/location/Geocoder;

    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    .local v0, geoCoder:Landroid/location/Geocoder;
    :try_start_1
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerUtils;->mTargetLocation:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iget-object v3, p0, Lcom/htc/android/locationpicker/PickerUtils;->mTargetLocation:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v7

    .line 186
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 187
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Address;

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerUtils;->mAddress:Landroid/location/Address;

    .line 188
    iget-object v1, p0, Lcom/htc/android/locationpicker/PickerUtils;->mAddress:Landroid/location/Address;

    invoke-direct {p0, v1}, Lcom/htc/android/locationpicker/PickerUtils;->composeAddressLine(Landroid/location/Address;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerUtils;->mAddressLine:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    const/4 v8, 0x1

    .line 200
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    :cond_0
    :goto_0
    monitor-exit p0

    return v8

    .line 192
    :catch_0
    move-exception v6

    .line 193
    .local v6, e:Ljava/lang/IllegalArgumentException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 194
    const-string v1, "PickerUtils"

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 179
    .end local v0           #geoCoder:Landroid/location/Geocoder;
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 196
    .restart local v0       #geoCoder:Landroid/location/Geocoder;
    :catch_1
    move-exception v6

    .line 197
    .local v6, e:Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 198
    const-string v1, "PickerUtils"

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getAddressFromNetwork(DDLcom/htc/android/locationpicker/PickerUtils$SearchListener;)V
    .locals 3
    .parameter "latitude"
    .parameter "longitude"
    .parameter "listener"

    .prologue
    .line 109
    const-string v1, "PickerUtils"

    const-string v2, "getAddressFromNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, location:Landroid/location/Location;
    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 112
    invoke-virtual {v0, p3, p4}, Landroid/location/Location;->setLongitude(D)V

    .line 113
    invoke-virtual {p0, v0, p5}, Lcom/htc/android/locationpicker/PickerUtils;->getAddressFromNetwork(Landroid/location/Location;Lcom/htc/android/locationpicker/PickerUtils$SearchListener;)V

    .line 114
    return-void
.end method

.method public getAddressFromNetwork(Landroid/location/Location;Lcom/htc/android/locationpicker/PickerUtils$SearchListener;)V
    .locals 2
    .parameter "location"
    .parameter "listener"

    .prologue
    .line 98
    const-string v0, "PickerUtils"

    const-string v1, "getAddressFromNetwork"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->mTitle:Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/htc/android/locationpicker/PickerUtils;->mTargetLocation:Landroid/location/Location;

    .line 101
    iput-object p2, p0, Lcom/htc/android/locationpicker/PickerUtils;->mListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/android/locationpicker/PickerUtils;->stopSearch:Z

    .line 104
    invoke-direct {p0}, Lcom/htc/android/locationpicker/PickerUtils;->searchFromGgeocoder()V

    .line 106
    return-void
.end method

.method public stopTitleSearch()V
    .locals 4

    .prologue
    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/android/locationpicker/PickerUtils;->mListener:Lcom/htc/android/locationpicker/PickerUtils$SearchListener;

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/locationpicker/PickerUtils;->stopSearch:Z

    .line 87
    sget-object v1, Lcom/htc/android/locationpicker/PickerUtils;->searchThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 90
    :try_start_0
    sget-object v1, Lcom/htc/android/locationpicker/PickerUtils;->searchThread:Ljava/lang/Thread;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "PickerUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in stopTitleSearch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
