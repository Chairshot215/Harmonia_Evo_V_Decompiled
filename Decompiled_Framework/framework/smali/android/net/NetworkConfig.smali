.class public Landroid/net/NetworkConfig;
.super Ljava/lang/Object;
.source "NetworkConfig.java"


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field public static final EXCLUSIVE:Ljava/lang/String; = "exclusive"

.field public static final LAN:Ljava/lang/String; = "lan"

.field public static final WAN:Ljava/lang/String; = "wan"


# instance fields
.field public dependencyMet:Z

.field public mExclusiveRadioType:I

.field public mNetType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public priority:I

.field public radio:I

.field public restoreTime:I

.field public type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10

    const/4 v6, 0x6

    const/4 v9, 0x1

    const/4 v8, -0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/NetworkConfig;->type:I

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/NetworkConfig;->radio:I

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/NetworkConfig;->priority:I

    const/4 v5, 0x0

    iput v5, p0, Landroid/net/NetworkConfig;->restoreTime:I

    const/4 v5, 0x4

    aget-object v4, v1, v5

    if-eqz v4, :cond_0

    const-string/jumbo v5, "infinite"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, -0x1

    iput v5, p0, Landroid/net/NetworkConfig;->restoreTime:I

    :cond_0
    :goto_0
    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Landroid/net/NetworkConfig;->dependencyMet:Z

    array-length v5, v1

    if-le v5, v6, :cond_1

    const/4 v5, 0x6

    aget-object v5, v1, v5

    iput-object v5, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    :cond_1
    iget-object v5, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    if-nez v5, :cond_2

    iget v5, p0, Landroid/net/NetworkConfig;->type:I

    iget v6, p0, Landroid/net/NetworkConfig;->radio:I

    if-ne v5, v6, :cond_6

    const-string/jumbo v5, "wan"

    :goto_1
    iput-object v5, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    :cond_2
    const/4 v5, -0x1

    iput v5, p0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    const-string v5, "exclusive"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    iget-object v5, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v2, :cond_4

    iget-object v5, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    const-string v6, "exclusive"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "wifi"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    iput v5, p0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    :cond_3
    :goto_2
    const-string v5, "exclusive"

    iput-object v5, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_3
    return-void

    :cond_5
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Landroid/net/NetworkConfig;->restoreTime:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0

    :cond_6
    :try_start_2
    const-string v5, "apn"

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "wimax"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x6

    iput v5, p0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v5, "NetworkConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "init error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "dummy"

    iput-object v5, p0, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    iput v8, p0, Landroid/net/NetworkConfig;->type:I

    iput v8, p0, Landroid/net/NetworkConfig;->radio:I

    iput v8, p0, Landroid/net/NetworkConfig;->priority:I

    iput v9, p0, Landroid/net/NetworkConfig;->restoreTime:I

    const-string v5, "WAN"

    iput-object v5, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    iput v8, p0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    goto :goto_3

    :cond_8
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "usbnet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v5, 0x12

    iput v5, p0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    goto :goto_2

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "mobile"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    iput v5, p0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method


# virtual methods
.method public isDefault()Z
    .locals 2

    iget v0, p0, Landroid/net/NetworkConfig;->type:I

    iget v1, p0, Landroid/net/NetworkConfig;->radio:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExclusive()Z
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    const-string v1, "exclusive"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLAN()Z
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    const-string/jumbo v1, "lan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isWAN()Z
    .locals 2

    iget-object v0, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    const-string/jumbo v1, "wan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkConfig: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkConfig;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkConfig;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", restoreTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkConfig;->restoreTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", netType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/NetworkConfig;->mNetType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exclusiveRadioType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/NetworkConfig;->mExclusiveRadioType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
