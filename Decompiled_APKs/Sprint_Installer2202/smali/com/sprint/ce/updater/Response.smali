.class public Lcom/sprint/ce/updater/Response;
.super Ljava/lang/Object;
.source "Response.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SprintUpdater"


# instance fields
.field private entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sprint/ce/updater/Entry;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/Throwable;

.field private maxRetryCount:I

.field private retryInterval:I

.field private ttl:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public addEntry(Lcom/sprint/ce/updater/Entry;)V
    .locals 1
    .parameter "entry"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sprint/ce/updater/Response;->entries:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sprint/ce/updater/Response;->entries:Ljava/util/List;

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/sprint/ce/updater/Response;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public getEligibleEntries(Landroid/content/Context;Ljava/lang/String;Lcom/sprint/ce/updater/TrustedHosts;Ljava/lang/String;Z)Ljava/util/List;
    .locals 15
    .parameter "context"
    .parameter "packageName"
    .parameter "trustedHosts"
    .parameter "jsonUrl"
    .parameter "allowOverride"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/sprint/ce/updater/TrustedHosts;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/ce/updater/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 150
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v2, eligibleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/ce/updater/Entry;>;"
    iget-object v10, p0, Lcom/sprint/ce/updater/Response;->entries:Ljava/util/List;

    if-nez v10, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-object v2

    .line 154
    :cond_1
    iget-object v10, p0, Lcom/sprint/ce/updater/Response;->entries:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sprint/ce/updater/Entry;

    .line 155
    .local v3, entry:Lcom/sprint/ce/updater/Entry;
    iget-object v11, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_d

    .line 157
    iget-object v11, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 158
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "SprintUpdater"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "skipping (packageName doesn\'t match): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 162
    :cond_3
    iget-object v11, v3, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    if-eqz v11, :cond_4

    iget-object v11, v3, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/sprint/ce/updater/TrustedHosts;->isValidHost(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 163
    :cond_4
    const-string v11, "SprintUpdater"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "skipping (not a trusted host): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v3, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 167
    :cond_5
    iget-object v11, v3, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 168
    .local v8, uri:Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, host:Ljava/lang/String;
    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 170
    .local v9, uri2:Landroid/net/Uri;
    invoke-virtual {v9}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 172
    .local v5, host2:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 173
    const-string v11, "SprintUpdater"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "skipping (URL host not the same as JSON host): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v3, Lcom/sprint/ce/updater/Entry;->url:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " json url: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 177
    :cond_6
    iget-boolean v11, v3, Lcom/sprint/ce/updater/Entry;->force:Z

    if-eqz v11, :cond_7

    .line 179
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "SprintUpdater"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "eligible (force=true): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 185
    :cond_7
    iget-object v11, v3, Lcom/sprint/ce/updater/Entry;->validUntil:Ljava/util/Date;

    if-eqz v11, :cond_8

    .line 186
    iget-object v11, v3, Lcom/sprint/ce/updater/Entry;->validUntil:Ljava/util/Date;

    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-gez v11, :cond_8

    .line 187
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "SprintUpdater"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "skipping (expired): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 191
    :cond_8
    :try_start_0
    iget-object v11, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 192
    .local v6, info:Landroid/content/pm/PackageInfo;
    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v12, v3, Lcom/sprint/ce/updater/Entry;->minVersionCode:I

    if-ge v11, v12, :cond_9

    .line 193
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "SprintUpdater"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "skipping (less than min version): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 194
    iget-object v13, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";versionCode(installed)="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 195
    iget v13, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";versionCode(min)="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/sprint/ce/updater/Entry;->minVersionCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 193
    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 216
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 218
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    sget-boolean v10, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "SprintUpdater"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "eligible (not yet installed): "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 196
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v6       #info:Landroid/content/pm/PackageInfo;
    :cond_9
    :try_start_1
    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v12, v3, Lcom/sprint/ce/updater/Entry;->versionCode:I

    if-ge v11, v12, :cond_a

    .line 198
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    sget-boolean v10, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "SprintUpdater"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "eligible (older version installed): "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 201
    :cond_a
    iget v11, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v12, v3, Lcom/sprint/ce/updater/Entry;->versionCode:I

    if-ne v11, v12, :cond_c

    .line 202
    if-eqz p5, :cond_b

    .line 203
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    sget-boolean v10, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "SprintUpdater"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "eligible (same version installed and override allowed): "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 207
    :cond_b
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "SprintUpdater"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "skipping (same version installed): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    iget-object v13, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";versionCode(installed)="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 209
    iget v13, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";versionCode(new)="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/sprint/ce/updater/Entry;->versionCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 207
    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 212
    :cond_c
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "SprintUpdater"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "skipping (newer version installed): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    iget-object v13, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";versionCode(installed)="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 214
    iget v13, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";versionCode(new)="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v3, Lcom/sprint/ce/updater/Entry;->versionCode:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 212
    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 224
    .end local v4           #host:Ljava/lang/String;
    .end local v5           #host2:Ljava/lang/String;
    .end local v6           #info:Landroid/content/pm/PackageInfo;
    .end local v8           #uri:Landroid/net/Uri;
    .end local v9           #uri2:Landroid/net/Uri;
    :cond_d
    sget-boolean v11, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "SprintUpdater"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "skipping (not package name provided): "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v3, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getEligibleEntries(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    .locals 10
    .parameter "context"
    .parameter "packageName"
    .parameter "allowOverride"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/ce/updater/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 79
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, eligibleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sprint/ce/updater/Entry;>;"
    iget-object v5, p0, Lcom/sprint/ce/updater/Response;->entries:Ljava/util/List;

    if-nez v5, :cond_1

    .line 138
    :cond_0
    return-object v1

    .line 83
    :cond_1
    iget-object v5, p0, Lcom/sprint/ce/updater/Response;->entries:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sprint/ce/updater/Entry;

    .line 85
    .local v2, entry:Lcom/sprint/ce/updater/Entry;
    if-eqz p2, :cond_3

    iget-object v6, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v6, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 86
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "skipping (packageName doesn\'t match): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_3
    iget-boolean v6, v2, Lcom/sprint/ce/updater/Entry;->force:Z

    if-eqz v6, :cond_4

    .line 92
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "eligible (force=true): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 97
    :cond_4
    iget-object v6, v2, Lcom/sprint/ce/updater/Entry;->validUntil:Ljava/util/Date;

    if-eqz v6, :cond_5

    .line 98
    iget-object v6, v2, Lcom/sprint/ce/updater/Entry;->validUntil:Ljava/util/Date;

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_5

    .line 99
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "skipping (expired): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :cond_5
    iget-object v6, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_a

    .line 104
    :try_start_0
    iget-object v6, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 105
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v7, v2, Lcom/sprint/ce/updater/Entry;->minVersionCode:I

    if-ge v6, v7, :cond_6

    .line 106
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "skipping (less than min version): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget-object v8, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";versionCode(installed)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 108
    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";versionCode(min)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/sprint/ce/updater/Entry;->minVersionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 127
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "eligible (not yet installed): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 109
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    :cond_6
    :try_start_1
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v7, v2, Lcom/sprint/ce/updater/Entry;->versionCode:I

    if-ge v6, v7, :cond_7

    .line 111
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "eligible (older version installed): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 113
    :cond_7
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v7, v2, Lcom/sprint/ce/updater/Entry;->versionCode:I

    if-ne v6, v7, :cond_9

    .line 114
    if-eqz p3, :cond_8

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "eligible (same version installed and override allowed): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 118
    :cond_8
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "skipping (same version installed): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    iget-object v8, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";versionCode(installed)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 120
    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";versionCode(new)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/sprint/ce/updater/Entry;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 118
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 123
    :cond_9
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "skipping (newer version installed): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v8, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";versionCode(installed)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 125
    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";versionCode(new)="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Lcom/sprint/ce/updater/Entry;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 123
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 134
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :cond_a
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    sget-boolean v6, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "SprintUpdater"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "eligible (no info: need to download): "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v2, Lcom/sprint/ce/updater/Entry;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sprint/ce/updater/Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sprint/ce/updater/Response;->entries:Ljava/util/List;

    return-object v0
.end method

.method public getError()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sprint/ce/updater/Response;->error:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMaxRetryCount()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/sprint/ce/updater/Response;->maxRetryCount:I

    return v0
.end method

.method public getRetryInterval()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/sprint/ce/updater/Response;->retryInterval:I

    return v0
.end method

.method public getTtl()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sprint/ce/updater/Response;->ttl:I

    return v0
.end method

.method public parseJson(Ljava/lang/String;)V
    .locals 7
    .parameter "jsonString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, json:Lorg/json/JSONObject;
    const-string v5, "response"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 66
    .local v4, resp:Lorg/json/JSONObject;
    const-string v5, "ttl"

    const v6, 0xa8c0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sprint/ce/updater/Response;->ttl:I

    .line 67
    const-string v5, "retryInterval"

    const/16 v6, 0x5a0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sprint/ce/updater/Response;->retryInterval:I

    .line 68
    const-string v5, "maxRetryCount"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sprint/ce/updater/Response;->maxRetryCount:I

    .line 69
    const-string v5, "entries"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 70
    .local v3, jsonEntries:Lorg/json/JSONArray;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sprint/ce/updater/Response;->entries:Ljava/util/List;

    .line 71
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 75
    return-void

    .line 72
    :cond_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 73
    .local v0, entry:Lorg/json/JSONObject;
    iget-object v5, p0, Lcom/sprint/ce/updater/Response;->entries:Ljava/util/List;

    new-instance v6, Lcom/sprint/ce/updater/Entry;

    invoke-direct {v6, v0}, Lcom/sprint/ce/updater/Entry;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setError(Ljava/lang/Throwable;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sprint/ce/updater/Response;->error:Ljava/lang/Throwable;

    .line 49
    return-void
.end method
