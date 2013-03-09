.class public Leu/chainfire/supersu/Settings;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/SharedPreferences;

.field private b:Landroid/content/pm/PackageManager;

.field private c:Leu/chainfire/supersu/Settings$Default;

.field private d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->a:Landroid/content/SharedPreferences;

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->b:Landroid/content/pm/PackageManager;

    new-instance v0, Leu/chainfire/supersu/Settings$Default;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings$Default;-><init>(Leu/chainfire/supersu/Settings;)V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->a:Landroid/content/SharedPreferences;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/supersu/Settings;->b:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$Default;->d()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "config_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "default_log"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "default"

    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v0}, Leu/chainfire/supersu/Settings;->a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;

    move-result-object v0

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->d()V

    iput-boolean v5, v0, Leu/chainfire/supersu/Settings$App;->a:Z

    goto :goto_1
.end method

.method static synthetic a(Leu/chainfire/supersu/Settings;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->a:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adb shell"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "adb shell"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x87

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_3

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v5, v4

    move v2, v1

    :goto_1
    if-lt v2, v5, :cond_6

    :cond_3
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_4

    iget-object v4, v3, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    array-length v5, v4

    move v2, v1

    :goto_2
    if-lt v2, v5, :cond_8

    :cond_4
    iget-object v2, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_5

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    array-length v4, v3

    move v2, v1

    :goto_3
    if-lt v2, v4, :cond_a

    :cond_5
    :goto_4
    move v0, v1

    goto :goto_0

    :cond_6
    aget-object v6, v4, v2

    iget-object v7, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_7

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "eu.chainfire.supersu.meta.contentlogging.problematic"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    aget-object v6, v4, v2

    iget-object v7, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_9

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "eu.chainfire.supersu.meta.contentlogging.problematic"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_a
    aget-object v5, v3, v2

    iget-object v6, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_b

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "eu.chainfire.supersu.meta.contentlogging.problematic"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4
.end method

.method static synthetic b(Leu/chainfire/supersu/Settings;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->b:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "supersu.salt."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".peppa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    :goto_2
    return-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "eu.chainfire.supersu.pro"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Leu/chainfire/supersu/Settings;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Leu/chainfire/supersu/Settings$App;
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Leu/chainfire/supersu/Settings$App;

    invoke-direct {v0, p0}, Leu/chainfire/supersu/Settings$App;-><init>(Leu/chainfire/supersu/Settings;)V

    iput-object p1, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    iget-object v1, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    iget v1, v1, Leu/chainfire/supersu/Settings$Default;->i:I

    iput v1, v0, Leu/chainfire/supersu/Settings$App;->i:I

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->d()V

    iget-object v1, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    iget-object v2, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public final a()Leu/chainfire/supersu/Settings$Default;
    .locals 1

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 14

    const/4 v13, -0x1

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "rm /data/data/eu.chainfire.supersu/files/supersu.cfg"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->b(Ljava/lang/String;)Ljava/util/List;

    :try_start_0
    const-string v0, "supersu.cfg"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v6, "\n"

    const-string v0, "[%s]%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v7, "default"

    aput-object v7, v1, v2

    const/4 v2, 0x1

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v7, "notify"

    aput-object v7, v1, v2

    const/4 v2, 0x1

    iget-object v7, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    iget v7, v7, Leu/chainfire/supersu/Settings$Default;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v7, "log"

    aput-object v7, v1, v2

    const/4 v2, 0x1

    iget-object v7, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    iget v7, v7, Leu/chainfire/supersu/Settings$Default;->h:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v0, "%s=%d%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v7, "access"

    aput-object v7, v1, v2

    const/4 v2, 0x1

    iget-object v7, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    iget v7, v7, Leu/chainfire/supersu/Settings$Default;->i:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chown 0.0 /data/data/eu.chainfire.supersu/files/supersu.cfg"

    aput-object v1, v0, v3

    const-string v1, "chown 0:0 /data/data/eu.chainfire.supersu/files/supersu.cfg"

    aput-object v1, v0, v4

    const-string v1, "chown root.root /data/data/eu.chainfire.supersu/files/supersu.cfg"

    aput-object v1, v0, v11

    const-string v1, "chown root:root /data/data/eu.chainfire.supersu/files/supersu.cfg"

    aput-object v1, v0, v12

    const/4 v1, 0x4

    const-string v2, "chmod 600 /data/data/eu.chainfire.supersu/files/supersu.cfg"

    aput-object v2, v0, v1

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a([Ljava/lang/String;)Ljava/util/List;

    return-void

    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    invoke-static {v0}, Leu/chainfire/supersu/Settings$App;->b(Leu/chainfire/supersu/Settings$App;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[%s]%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    aput-object v9, v2, v8

    const/4 v8, 0x1

    aput-object v6, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget v1, v0, Leu/chainfire/supersu/Settings$App;->g:I

    if-eq v1, v13, :cond_2

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "notify"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    iget v9, v0, Leu/chainfire/supersu/Settings$App;->g:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x2

    aput-object v6, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_2
    iget v1, v0, Leu/chainfire/supersu/Settings$App;->h:I

    if-eq v1, v13, :cond_3

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "log"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    iget v9, v0, Leu/chainfire/supersu/Settings$App;->h:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x2

    aput-object v6, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Leu/chainfire/supersu/Settings;->c:Leu/chainfire/supersu/Settings$Default;

    iget v1, v1, Leu/chainfire/supersu/Settings$Default;->h:I

    if-ne v1, v11, :cond_4

    const-string v2, "%s=%d%s"

    const/4 v1, 0x3

    new-array v8, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v9, "nodefaultcontentlog"

    aput-object v9, v8, v1

    const/4 v9, 0x1

    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->b:Ljava/lang/String;

    const-string v10, ""

    invoke-static {p1, v1, v10}, Leu/chainfire/supersu/Settings;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v9

    const/4 v1, 0x2

    aput-object v6, v8, v1

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_4
    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "access"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    iget v9, v0, Leu/chainfire/supersu/Settings$App;->i:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x2

    aput-object v6, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "%s=%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "forceshell"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    iget-object v9, v0, Leu/chainfire/supersu/Settings$App;->c:Ljava/lang/String;

    aput-object v9, v2, v8

    const/4 v8, 0x2

    aput-object v6, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_5
    iget v1, v0, Leu/chainfire/supersu/Settings$App;->d:I

    if-ltz v1, :cond_6

    const-string v1, "%s=%d%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "forceuser"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    iget v9, v0, Leu/chainfire/supersu/Settings$App;->d:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v2, v8

    const/4 v8, 0x2

    aput-object v6, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_6
    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    const-string v1, ""

    move v2, v3

    :goto_3
    iget-object v8, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v2, v8, :cond_9

    const-string v0, "%s=%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "forcegroups"

    aput-object v9, v2, v8

    const/4 v8, 0x1

    aput-object v1, v2, v8

    const/4 v1, 0x2

    aput-object v6, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v5, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_8
    move v1, v3

    goto/16 :goto_2

    :cond_9
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v8, v0, Leu/chainfire/supersu/Settings$App;->e:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_a

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method

.method public final b()[Leu/chainfire/supersu/Settings$App;
    .locals 3

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    new-instance v1, Leu/chainfire/supersu/Settings$1;

    invoke-direct {v1, p0}, Leu/chainfire/supersu/Settings$1;-><init>(Leu/chainfire/supersu/Settings;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [Leu/chainfire/supersu/Settings$App;

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    return-object v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    invoke-virtual {v0}, Leu/chainfire/supersu/Settings$App;->a()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Leu/chainfire/supersu/Settings;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leu/chainfire/supersu/Settings$App;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1
.end method
