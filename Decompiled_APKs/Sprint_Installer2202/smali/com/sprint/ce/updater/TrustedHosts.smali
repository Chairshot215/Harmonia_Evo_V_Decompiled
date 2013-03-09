.class public Lcom/sprint/ce/updater/TrustedHosts;
.super Ljava/lang/Object;
.source "TrustedHosts.java"


# static fields
.field private static final ENTRIES:Ljava/lang/String; = "entries"

.field private static final HOST:Ljava/lang/String; = "host"

.field private static final LAST_UPDATED:Ljava/lang/String; = "last_updated"

.field private static final PREFS_NAME:Ljava/lang/String; = "TRUSTED_HOST"

.field private static final TAG:Ljava/lang/String; = "SprintUpdater"

.field private static final TTL:Ljava/lang/String; = "ttl"

.field private static mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;


# instance fields
.field private mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdated:J

.field private mTtl:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static getInstance()Lcom/sprint/ce/updater/TrustedHosts;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/sprint/ce/updater/TrustedHosts;->mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/sprint/ce/updater/TrustedHosts;

    invoke-direct {v0}, Lcom/sprint/ce/updater/TrustedHosts;-><init>()V

    sput-object v0, Lcom/sprint/ce/updater/TrustedHosts;->mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;

    .line 33
    sget-object v0, Lcom/sprint/ce/updater/TrustedHosts;->mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;

    invoke-direct {v0}, Lcom/sprint/ce/updater/TrustedHosts;->read()V

    .line 35
    :cond_0
    sget-object v0, Lcom/sprint/ce/updater/TrustedHosts;->mTrustedHosts:Lcom/sprint/ce/updater/TrustedHosts;

    return-object v0
.end method

.method private read()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 127
    invoke-static {}, Lcom/sprint/ce/updater/DownloadUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "TRUSTED_HOST"

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 129
    .local v3, settings:Landroid/content/SharedPreferences;
    const-string v4, "ttl"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sprint/ce/updater/TrustedHosts;->mTtl:Ljava/lang/String;

    .line 130
    const-string v4, "last_updated"

    const-wide/16 v5, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sprint/ce/updater/TrustedHosts;->mLastUpdated:J

    .line 131
    const-string v4, "entries"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 132
    .local v2, num:I
    if-lez v2, :cond_0

    .line 133
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    .line 135
    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-le v1, v2, :cond_1

    .line 140
    return-void

    .line 136
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "host"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 138
    iget-object v4, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private save()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 102
    invoke-static {}, Lcom/sprint/ce/updater/DownloadUtil;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "TRUSTED_HOST"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 103
    .local v4, settings:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v6, "entries"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 107
    .local v3, num:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-le v2, v3, :cond_1

    .line 111
    const-string v6, "ttl"

    iget-object v7, p0, Lcom/sprint/ce/updater/TrustedHosts;->mTtl:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 112
    const-string v6, "last_updated"

    iget-wide v7, p0, Lcom/sprint/ce/updater/TrustedHosts;->mLastUpdated:J

    invoke-interface {v0, v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 113
    const-string v6, "entries"

    iget-object v7, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    if-nez v7, :cond_2

    :goto_1
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 114
    const/4 v2, 0x1

    .line 115
    iget-object v5, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 116
    iget-object v5, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 121
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 122
    return-void

    .line 108
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "host"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_2
    iget-object v5, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_1

    .line 116
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    .local v1, host:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "host"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getHosts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTtl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sprint/ce/updater/TrustedHosts;->mTtl:Ljava/lang/String;

    return-object v0
.end method

.method public isUptoDate()Z
    .locals 9

    .prologue
    .line 78
    iget-object v5, p0, Lcom/sprint/ce/updater/TrustedHosts;->mTtl:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-wide v5, p0, Lcom/sprint/ce/updater/TrustedHosts;->mLastUpdated:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    .local v0, curTime:J
    const-wide/16 v3, 0x0

    .line 81
    .local v3, ttl:J
    :try_start_0
    iget-object v5, p0, Lcom/sprint/ce/updater/TrustedHosts;->mTtl:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 85
    :cond_0
    :goto_0
    iget-wide v5, p0, Lcom/sprint/ce/updater/TrustedHosts;->mLastUpdated:J

    sub-long v5, v0, v5

    const-wide/32 v7, 0xea60

    mul-long/2addr v7, v3

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 86
    const/4 v5, 0x1

    .line 88
    .end local v0           #curTime:J
    .end local v3           #ttl:J
    :goto_1
    return v5

    .line 82
    .restart local v0       #curTime:J
    .restart local v3       #ttl:J
    :catch_0
    move-exception v2

    .line 83
    .local v2, e:Ljava/lang/NumberFormatException;
    sget-boolean v5, Lcom/sprint/ce/updater/DownloadUtil;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "SprintUpdater"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Trusted Host Ttl invalid ttl: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sprint/ce/updater/TrustedHosts;->mTtl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0           #curTime:J
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v3           #ttl:J
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public isValidHost(Ljava/lang/String;)Z
    .locals 6
    .parameter "hostUrl"

    .prologue
    const/4 v3, 0x0

    .line 61
    iget-object v4, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v3

    .line 64
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 65
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, hostName:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, host:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public removeAll()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/sprint/ce/updater/TrustedHosts;->mTtl:Ljava/lang/String;

    .line 94
    iput-object v0, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sprint/ce/updater/TrustedHosts;->mLastUpdated:J

    .line 96
    invoke-direct {p0}, Lcom/sprint/ce/updater/TrustedHosts;->save()V

    .line 97
    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "ttl"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, hosts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/sprint/ce/updater/TrustedHosts;->mTtl:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/sprint/ce/updater/TrustedHosts;->mHosts:Ljava/util/ArrayList;

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sprint/ce/updater/TrustedHosts;->mLastUpdated:J

    .line 55
    invoke-direct {p0}, Lcom/sprint/ce/updater/TrustedHosts;->save()V

    .line 57
    :cond_0
    return-void
.end method
