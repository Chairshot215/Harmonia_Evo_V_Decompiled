.class public Leu/chainfire/supersu/Installer;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Leu/chainfire/supersu/Installer;->a:I

    iput v0, p0, Leu/chainfire/supersu/Installer;->b:I

    iput v0, p0, Leu/chainfire/supersu/Installer;->c:I

    iput v0, p0, Leu/chainfire/supersu/Installer;->d:I

    iput-boolean v1, p0, Leu/chainfire/supersu/Installer;->e:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/Installer;->f:Z

    iput-boolean v1, p0, Leu/chainfire/supersu/Installer;->g:Z

    return-void
.end method

.method private static a(J)Z
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    const-string v2, "/system/xbin"

    invoke-direct {v1, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    div-long v2, p0, v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x62

    iput v0, p0, Leu/chainfire/supersu/Installer;->a:I

    const-string v0, "su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->b:I

    const-string v0, "/system/bin/.ext/.su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->c:I

    const-string v0, "/system/.bash/.ssu"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Leu/chainfire/supersu/Installer;->d:I

    iget v0, p0, Leu/chainfire/supersu/Installer;->b:I

    iget v3, p0, Leu/chainfire/supersu/Installer;->a:I

    if-ge v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->e:Z

    iget v0, p0, Leu/chainfire/supersu/Installer;->c:I

    iget v3, p0, Leu/chainfire/supersu/Installer;->a:I

    if-ge v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->g:Z

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "superuser"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->f:Z

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->f:Z

    if-nez v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Leu/chainfire/supersu/Installer;->e:Z

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public final a(Landroid/content/Context;ZLjava/lang/Runnable;)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v1, Leu/chainfire/supersu/Installer$1;

    invoke-direct {v1, p0, p1, v0, p3}, Leu/chainfire/supersu/Installer$1;-><init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;Ljava/lang/Boolean;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Leu/chainfire/supersu/Installer$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->e:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;)Z
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Leu/chainfire/supersu/Installer$UninstallMode;->a:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne p2, v2, :cond_1

    const-string v2, "/system/bin/.ext/.su"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "mount -o rw,remount /system /system"

    aput-object v4, v3, v0

    const-string v4, "rm /system/bin/su"

    aput-object v4, v3, v1

    const-string v4, "rm /system/xbin/su"

    aput-object v4, v3, v7

    const/4 v4, 0x3

    const-string v5, "mount -o ro,remount /system /system"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    const-string v2, "su"

    invoke-static {v2}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const-string v2, "/system/bin/.ext/.su"

    invoke-static {v2}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)I

    move-result v2

    if-lt v2, v8, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    iput-boolean v0, p0, Leu/chainfire/supersu/Installer;->f:Z

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->b(Landroid/content/Context;)Z

    invoke-virtual {p0, p1}, Leu/chainfire/supersu/Installer;->a(Landroid/content/Context;)V

    const-string v2, "chattr.png"

    invoke-static {p1, v2}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "mount -o rw,remount /system /system"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "chmod 0755 %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Leu/chainfire/supersu/Installer$UninstallMode;->d:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq p2, v4, :cond_2

    const-string v4, "rm %s"

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "/system/.pin"

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v4, Leu/chainfire/supersu/Installer$UninstallMode;->b:Leu/chainfire/supersu/Installer$UninstallMode;

    if-ne p2, v4, :cond_3

    const-string v4, "%s -i %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const-string v6, "/system/bin/su"

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/bin/su"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "%s -i %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const-string v6, "/system/xbin/su"

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/xbin/su"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v4, "%s -i %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const-string v6, "/system/.bash/.ssu"

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/.bash/.ssu"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/.bash/*"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm -rf /system/.bash"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rmdir /system/.bash"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "%s -i %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const-string v6, "/system/su-backup"

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/su-backup"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "%s -i %s"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v2, v5, v0

    const-string v6, "/system/bin/.ext/.su"

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/bin/.ext/.su"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/bin/.ext/*"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm -rf /system/bin/.ext"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rmdir /system/bin/.ext"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/superuser.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/Superuser.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /system/app/SuperUser.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v4, Leu/chainfire/supersu/Installer$UninstallMode;->c:Leu/chainfire/supersu/Installer$UninstallMode;

    if-eq p2, v4, :cond_4

    const-string v4, "rm /data/app/com.noshufou.android.su.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /data/app/com.noshufou.android.su-*.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "pm uninstall com.noshufou.android.su"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v4, "rm /data/app/eu.chainfire.supersu.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm /data/app/eu.chainfire.supersu-*.apk"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "pm uninstall eu.chainfire.supersu"

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "rm %s"

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "mount -o ro,remount /system /system"

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "su"

    iget v2, p0, Leu/chainfire/supersu/Installer;->b:I

    if-ge v2, v8, :cond_5

    const-string v0, "/system/bin/.ext/.su"

    :cond_5
    invoke-static {v0, v3}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move v0, v1

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;Z)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "chattr.png"

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const-string v0, "su"

    iget v1, p0, Leu/chainfire/supersu/Installer;->b:I

    const/4 v5, -0x1

    if-ge v1, v5, :cond_3

    const-string v0, "/system/bin/.ext/.su"

    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "mount -o rw,remount /system /system"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "chmod 0755 %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "%s %s %s"

    const/4 v1, 0x3

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v4, v7, v2

    if-eqz p2, :cond_4

    const-string v1, "+i"

    :goto_1
    aput-object v1, v7, v3

    const/4 v1, 0x2

    const-string v8, "/system/bin/.ext/.su"

    aput-object v8, v7, v1

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "rm %s"

    new-array v6, v3, [Ljava/lang/Object;

    aput-object v4, v6, v2

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "mount -o ro,remount /system /system"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, v5}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move v0, v3

    goto :goto_0

    :cond_4
    const-string v1, "-i"

    goto :goto_1
.end method

.method public final b(Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;)V
    .locals 2

    new-instance v0, Leu/chainfire/supersu/Installer$2;

    invoke-direct {v0, p0, p1, p2}, Leu/chainfire/supersu/Installer$2;-><init>(Leu/chainfire/supersu/Installer;Landroid/content/Context;Leu/chainfire/supersu/Installer$UninstallMode;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Leu/chainfire/supersu/Installer$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final b()Z
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Leu/chainfire/supersu/Installer;->b:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Leu/chainfire/supersu/Installer;->c:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Leu/chainfire/supersu/Installer;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Leu/chainfire/supersu/Installer;->a()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Leu/chainfire/supersu/Installer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "supersu.png"

    invoke-static {p1, v0}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v0, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Leu/chainfire/supersu/Installer;->a(J)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_1
    const-string v3, "chattr.png"

    invoke-static {p1, v3}, Leu/chainfire/supersu/Asset;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v3, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iget v6, p0, Leu/chainfire/supersu/Installer;->b:I

    const/4 v7, -0x1

    if-lt v6, v7, :cond_c

    const-string v3, "su"

    :cond_2
    :goto_2
    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "mount -o rw,remount /system /system"

    aput-object v7, v6, v1

    const-string v7, "mount -o rw,remount / /"

    aput-object v7, v6, v2

    invoke-static {v3, v6}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "cat /system/app/Maps.apk > /Maps.apk"

    aput-object v7, v6, v1

    const-string v7, "cat /system/app/GMS_Maps.apk > /GMS_Maps.apk"

    aput-object v7, v6, v2

    const-string v7, "cat /system/app/YouTube.apk > /YouTube.apk"

    aput-object v7, v6, v11

    const-string v7, "rm /system/app/Maps.apk"

    aput-object v7, v6, v12

    const-string v7, "rm /system/app/GMS_Maps.apk"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "rm /system/app/YouTube.apk"

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    :cond_3
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Leu/chainfire/supersu/Installer;->a(J)Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, 0x1a

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "mkdir /system/xbin"

    aput-object v7, v6, v1

    const-string v7, "chmod 755 /system/xbin"

    aput-object v7, v6, v2

    const-string v7, "chown 0.2000 /system/xbin"

    aput-object v7, v6, v11

    const-string v7, "chown 0:2000 /system/xbin"

    aput-object v7, v6, v12

    const-string v7, "chown root.shell /system/xbin"

    aput-object v7, v6, v13

    const/4 v7, 0x5

    const-string v8, "chown root:shell /system/xbin"

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "mkdir %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x7

    const-string v8, "chown 0.0 %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "chown 0:0 %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x9

    const-string v8, "chown root.root %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "chown root:root %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xb

    const-string v8, "chmod 600 %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/requests/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xc

    const-string v8, "mkdir %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xd

    const-string v8, "chown 0.0 %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xe

    const-string v8, "chown 0:0 %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xf

    const-string v8, "chown root.root %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x10

    const-string v8, "chown root:root %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x11

    const-string v8, "chmod 755 %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/data/data/eu.chainfire.supersu/logs/"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x12

    const-string v8, "rm %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/system/.tmpsu"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x13

    const-string v8, "cat %s > %s"

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v4, v9, v1

    const-string v10, "/system/.tmpsu"

    aput-object v10, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x14

    const-string v8, "chown 0.0 %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/system/.tmpsu"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x15

    const-string v8, "chown 0:0 %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/system/.tmpsu"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x16

    const-string v8, "chown root.root %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/system/.tmpsu"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x17

    const-string v8, "chown root:root %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/system/.tmpsu"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x18

    const-string v8, "chmod 06755 %s"

    new-array v9, v2, [Ljava/lang/Object;

    const-string v10, "/system/.tmpsu"

    aput-object v10, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x19

    const-string v8, "chmod 0755 %s"

    new-array v9, v2, [Ljava/lang/Object;

    aput-object v5, v9, v1

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v6}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    const-string v3, "/system/.tmpsu"

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "%s -i %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v1

    const-string v9, "/system/bin/su"

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rm /system/bin/su"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v7, p0, Leu/chainfire/supersu/Installer;->e:Z

    if-eqz v7, :cond_4

    const-string v7, "%s -i %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v1

    const-string v9, "/system/xbin/su"

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rm /system/xbin/su"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v7, "%s -i %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v1

    const-string v9, "/system/.bash/.ssu"

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rm /system/.bash/.ssu"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rm /system/.bash/*"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rm -rf /system/.bash"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rmdir /system/.bash"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "%s -i %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v1

    const-string v9, "/system/su-backup"

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rm /system/su-backup"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "%s -i %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v5, v8, v1

    const-string v9, "/system/bin/.ext/.su"

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rm /system/bin/.ext/.su"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rm /system/bin/.ext/*"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rm -rf /system/bin/.ext"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "rmdir /system/bin/.ext"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v7, p0, Leu/chainfire/supersu/Installer;->f:Z

    if-nez v7, :cond_5

    iget-boolean v7, p0, Leu/chainfire/supersu/Installer;->e:Z

    if-eqz v7, :cond_5

    const-string v7, "cat %s > %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v1

    const-string v9, "/system/xbin/su"

    aput-object v9, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "chown 0.0 %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/xbin/su"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "chown 0:0 %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/xbin/su"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "chown root.root %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/xbin/su"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "chown root:root %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/xbin/su"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "chmod 06755 %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/xbin/su"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string v7, "mkdir %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/bin/.ext"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "chown 0.0 %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/bin/.ext"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "chown 0:0 %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/bin/.ext"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "chown root.root %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/bin/.ext"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "chown root:root %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/bin/.ext"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "chmod 0777 %s"

    new-array v8, v2, [Ljava/lang/Object;

    const-string v9, "/system/bin/.ext"

    aput-object v9, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v7, "cat %s > %s"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v4, v8, v1

    const-string v4, "/system/bin/.ext/.su"

    aput-object v4, v8, v2

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "chown 0.0 %s"

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "/system/bin/.ext/.su"

    aput-object v8, v7, v1

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "chown 0:0 %s"

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "/system/bin/.ext/.su"

    aput-object v8, v7, v1

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "chown root.root %s"

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "/system/bin/.ext/.su"

    aput-object v8, v7, v1

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "chown root:root %s"

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "/system/bin/.ext/.su"

    aput-object v8, v7, v1

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "chmod 06755 %s"

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "/system/bin/.ext/.su"

    aput-object v8, v7, v1

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v7, "survival"

    invoke-interface {v4, v7, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "%s +i %s"

    new-array v7, v11, [Ljava/lang/Object;

    aput-object v5, v7, v1

    const-string v8, "/system/bin/.ext/.su"

    aput-object v8, v7, v2

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string v4, "chmod 0711 %s"

    new-array v7, v2, [Ljava/lang/Object;

    const-string v8, "/system/bin/.ext"

    aput-object v8, v7, v1

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v6}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    iget-boolean v3, p0, Leu/chainfire/supersu/Installer;->f:Z

    if-nez v3, :cond_e

    const-string v3, "su"

    :goto_3
    if-eqz v0, :cond_9

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v4, "cat /Maps.apk > /system/app/Maps.apk"

    aput-object v4, v0, v1

    const-string v4, "cat /GMS_Maps.apk > /system/app/GMS_Maps.apk"

    aput-object v4, v0, v2

    const-string v4, "cat /YouTube.apk > /system/app/YouTube.apk"

    aput-object v4, v0, v11

    const-string v4, "chown 0.0 /system/app/Maps.apk"

    aput-object v4, v0, v12

    const-string v4, "chown 0.0 /system/app/GMS_Maps.apk"

    aput-object v4, v0, v13

    const/4 v4, 0x5

    const-string v6, "chown 0.0 /system/app/YouTube.apk"

    aput-object v6, v0, v4

    const/4 v4, 0x6

    const-string v6, "chmod 644 /system/app/Maps.apk"

    aput-object v6, v0, v4

    const/4 v4, 0x7

    const-string v6, "chmod 644 /system/app/GMS_Maps.apk"

    aput-object v6, v0, v4

    const/16 v4, 0x8

    const-string v6, "chmod 644 /system/app/YouTube.apk"

    aput-object v6, v0, v4

    const/16 v4, 0x9

    const-string v6, "rm /Maps.apk"

    aput-object v6, v0, v4

    const/16 v4, 0xa

    const-string v6, "rm /GMS_Maps.apk"

    aput-object v6, v0, v4

    const/16 v4, 0xb

    const-string v6, "rm /YouTube.apk"

    aput-object v6, v0, v4

    invoke-static {v3, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    new-instance v0, Ljava/io/File;

    const-string v4, "/system/app/Maps.apk"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_7

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rm /system/app/Maps.apk"

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    :cond_7
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/app/GMS_Maps.apk"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_8

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rm /system/app/GMS_Maps.apk"

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    :cond_8
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/app/YouTube.apk"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-nez v0, :cond_9

    new-array v0, v2, [Ljava/lang/String;

    const-string v4, "rm /system/app/YouTube.apk"

    aput-object v4, v0, v1

    invoke-static {v3, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    :cond_9
    new-array v0, v13, [Ljava/lang/String;

    const-string v4, "rm %s"

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "/system/.tmpsu"

    aput-object v7, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "rm %s"

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    const-string v4, "mount -o ro,remount / /"

    aput-object v4, v0, v11

    const-string v4, "mount -o ro,remount /system /system"

    aput-object v4, v0, v12

    invoke-static {v3, v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    const-string v0, "su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x62

    if-ge v0, v3, :cond_a

    iget-boolean v0, p0, Leu/chainfire/supersu/Installer;->f:Z

    if-eqz v0, :cond_0

    :cond_a
    const-string v0, "/system/bin/.ext/.su"

    invoke-static {v0}, Leu/chainfire/supersu/SuperUser;->a(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x62

    if-lt v0, v3, :cond_0

    move v1, v2

    goto/16 :goto_0

    :cond_b
    move v0, v2

    goto/16 :goto_1

    :cond_c
    iget v6, p0, Leu/chainfire/supersu/Installer;->c:I

    const/4 v7, -0x1

    if-lt v6, v7, :cond_d

    const-string v3, "/system/bin/.ext/.su"

    goto/16 :goto_2

    :cond_d
    iget v6, p0, Leu/chainfire/supersu/Installer;->d:I

    const/4 v7, -0x1

    if-lt v6, v7, :cond_2

    const-string v3, "/system/.bash/.ssu"

    goto/16 :goto_2

    :cond_e
    const-string v3, "/system/bin/.ext/.su"

    goto/16 :goto_3
.end method
