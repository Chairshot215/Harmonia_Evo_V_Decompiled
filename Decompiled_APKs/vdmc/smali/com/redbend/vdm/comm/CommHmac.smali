.class public Lcom/redbend/vdm/comm/CommHmac;
.super Ljava/lang/Object;
.source "CommHmac.java"


# instance fields
.field private _algorithm:Ljava/lang/String;

.field private _mac:Ljava/lang/String;

.field private _username:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    const-string v0, "MD5"

    invoke-direct {p0, v1, v1, v0}, Lcom/redbend/vdm/comm/CommHmac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "mac"

    .prologue
    .line 33
    const-string v0, "MD5"

    invoke-direct {p0, p1, p2, v0}, Lcom/redbend/vdm/comm/CommHmac;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "algorithm"
    .parameter "username"
    .parameter "mac"

    .prologue
    .line 45
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/redbend/vdm/comm/CommHmac;->_algorithm:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/redbend/vdm/comm/CommHmac;->_username:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/redbend/vdm/comm/CommHmac;->_mac:Ljava/lang/String;

    .line 49
    return-void
.end method


# virtual methods
.method public fromHttpHeaderField(Ljava/lang/String;)V
    .locals 9
    .parameter "header"

    .prologue
    .line 124
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v1, hmacMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, s:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v2, v0, v3

    .line 127
    .local v2, hpart:Ljava/lang/String;
    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 128
    .local v6, sub:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    .end local v2           #hpart:Ljava/lang/String;
    .end local v6           #sub:[Ljava/lang/String;
    :cond_0
    const-string v7, "algorithm"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/redbend/vdm/comm/CommHmac;->_algorithm:Ljava/lang/String;

    .line 131
    const-string v7, "username"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/redbend/vdm/comm/CommHmac;->_username:Ljava/lang/String;

    .line 132
    const-string v7, "mac"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, Lcom/redbend/vdm/comm/CommHmac;->_mac:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public get_algorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/redbend/vdm/comm/CommHmac;->_algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public get_mac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/redbend/vdm/comm/CommHmac;->_mac:Ljava/lang/String;

    return-object v0
.end method

.method public get_username()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/redbend/vdm/comm/CommHmac;->_username:Ljava/lang/String;

    return-object v0
.end method

.method public set_algorithm(Ljava/lang/String;)V
    .locals 0
    .parameter "_algorithm"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/redbend/vdm/comm/CommHmac;->_algorithm:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public set_mac(Ljava/lang/String;)V
    .locals 0
    .parameter "_mac"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/redbend/vdm/comm/CommHmac;->_mac:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public set_username(Ljava/lang/String;)V
    .locals 0
    .parameter "_username"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/redbend/vdm/comm/CommHmac;->_username:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toHttpHeaderField()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "algorithm="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/redbend/vdm/comm/CommHmac;->_algorithm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "username=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/redbend/vdm/comm/CommHmac;->_username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mac="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/redbend/vdm/comm/CommHmac;->_mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
